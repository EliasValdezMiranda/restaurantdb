/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.procedimientos;

import com.pgsql.Database;
import com.pgsql.JDBCTableAdapter;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.JTable;

/**
 *
 * @author Elias
 */
public class clasificacionCliente {
    public static void actualizarClasificacionCliente(Database database, JTable jTable) {
        int fila = jTable.getSelectedRow();
        if (fila == -1) {
            JOptionPane.showMessageDialog(null, "Selecciona un cliente.");
            return;
        }

        JDBCTableAdapter modelo = (JDBCTableAdapter) jTable.getModel();
        int customerId = Integer.parseInt(modelo.getValueAt(fila, 0).toString());

        // Consulta: tier, deuda y número de reservaciones
        String sql = "SELECT tier, debt, " +
                     "(SELECT COUNT(*) FROM booking WHERE customer_id = ?) AS reservas " +
                     "FROM customer WHERE customer_id = ?";

        String tier = "";
        BigDecimal deuda = BigDecimal.ZERO;
        int reservas = 0;

        try (PreparedStatement ps = database.con.prepareStatement(sql)) {
            ps.setInt(1, customerId);
            ps.setInt(2, customerId);
            ResultSet rs = ps.executeQuery();

            if (!rs.next()) {
                JOptionPane.showMessageDialog(null, "Cliente no encontrado.");
                return;
            }

            tier = rs.getString("tier");
            deuda = rs.getBigDecimal("debt");
            reservas = rs.getInt("reservas");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error al consultar el cliente: " + ex.getMessage());
            return;
        }

        // Validar elegibilidad
        boolean elegible = false;
        if (deuda.compareTo(new BigDecimal("500")) <= 0) {
            elegible = switch (tier) {
                case "Regular" -> reservas >= 3;
                case "Plata" -> reservas >= 5;
                case "Oro" -> reservas >= 10;
                case "Platino" -> false;
                default -> false;
            };
        }

        if (!elegible) {
            JOptionPane.showMessageDialog(null, "El cliente NO es elegible para actualizar su clasificación.");
            return;
        } else {
            JOptionPane.showMessageDialog(null, "El cliente es elegible para actualizar su clasificación.");
        }

        // Determinar nuevo tier y deuda extra
        String nuevoTier = tier;
        BigDecimal deudaExtra = BigDecimal.ZERO;

        switch (tier) {
            case "Regular": nuevoTier = "Plata"; deudaExtra = new BigDecimal("100"); break;
            case "Plata": nuevoTier = "Oro"; deudaExtra = new BigDecimal("300"); break;
            case "Oro": nuevoTier = "Platino"; deudaExtra = new BigDecimal("500"); break;
            case "Platino": 
                JOptionPane.showMessageDialog(null, "El cliente ya es Platino. No puede subir más.");
                return;
            default: 
                JOptionPane.showMessageDialog(null, "Tier desconocido: " + tier);
                return;
        }

        // Confirmación
        int opcion = JOptionPane.showConfirmDialog(null,
            "El cliente subirá de " + tier + " a " + nuevoTier +
            " agregando $" + deudaExtra + " de deuda.\n¿Desea continuar?",
            "Confirmar actualización",
            JOptionPane.YES_NO_OPTION);

        if (opcion != JOptionPane.YES_OPTION) return;

        // Actualizar BD
        String sqlUpdate = "UPDATE customer SET tier = ?, debt = debt + CAST(? AS money) WHERE customer_id = ?";
        try (PreparedStatement ps = database.con.prepareStatement(sqlUpdate)) {
            ps.setString(1, nuevoTier);
            ps.setBigDecimal(2, deudaExtra);
            ps.setInt(3, customerId);
            ps.executeUpdate();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error al actualizar: " + ex.getMessage());
            return;
        }

        JOptionPane.showMessageDialog(null, "Actualización exitosa:\nNuevo tier: " + nuevoTier +
                                            "\nDeuda agregada: $" + deudaExtra);

    }
}
