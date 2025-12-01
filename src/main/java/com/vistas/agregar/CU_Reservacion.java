/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package com.vistas.agregar;

import com.controllers.ComboBoxDB;
import static com.controllers.ComboBoxDB.conseguirID;
import static com.controllers.ComboBoxDB.getPosicionPorValor;
import static com.controllers.SpinnerDate.configurarFecha;
import static com.controllers.SpinnerDate.filaTimestamp;
import static com.controllers.SpinnerDate.prepararTimestamp;
import com.dashboard.Dashboard;
import com.pgsql.Database;
import com.vistas.FilaTabla;
import com.vistas.Reservacion;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.LinkedHashMap;

/**
 *
 * @author andr3
 */
public class CU_Reservacion extends javax.swing.JPanel {

    private Database database;
    private FilaTabla fila = null;
    private boolean _editado = false;
    private LinkedHashMap<String, Integer> hashMapCliente;
    private LinkedHashMap<String, Integer> hashMapMesa;
    private final String queryCliente = "SELECT customer_id, CONCAT(customer_id, ' - ', "
            + "customer_first_name, ' ', customer_surname) "
            + "FROM customer ORDER BY customer_id";
    private final String queryMesa = "SELECT table_number, CONCAT('Mesa ', table_number, "
            + "' (', table_seats_number, ' asientos, ', table_price, ')') "
            + "FROM \"table\" ORDER BY table_number";
    
    
    public CU_Reservacion(Database database, FilaTabla fila) {        
        if (fila != null) {
            this.fila = fila;
            _editado = true;
        }
        initComponents();
        this.database = database;
        hashMapCliente = ComboBoxDB.buildComboBox(this.database, queryCliente, jComboBoxCliente);
        hashMapMesa= ComboBoxDB.buildComboBox(this.database, queryMesa, jComboBoxMesa);
        if (_editado) {
            jSpinnerFecha.setValue(configurarFecha(fila.getValue(0).toString()));
            jTextFieldGrupo.setText(fila.getValue(1).toString());
            jComboBoxCliente.setSelectedIndex(getPosicionPorValor(hashMapCliente, Integer.valueOf(fila.getValue(2).toString())));
            jComboBoxMesa.setSelectedIndex(getPosicionPorValor(hashMapMesa, Integer.valueOf(fila.getValue(3).toString())));
            jLabelTitulo.setText("Editar Reservación");
        }
    }
   
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jTextField4 = new javax.swing.JTextField();
        Fondo = new javax.swing.JPanel();
        jLabelTitulo = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jButtonCancelar = new javax.swing.JButton();
        jButtonGuardar = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        jTextFieldGrupo = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jComboBoxCliente = new javax.swing.JComboBox<>();
        jComboBoxMesa = new javax.swing.JComboBox<>();
        jSpinnerFecha = new javax.swing.JSpinner();

        jTextField4.addActionListener(this::jTextField4ActionPerformed);

        setBackground(new java.awt.Color(255, 255, 255));

        Fondo.setBackground(new java.awt.Color(255, 255, 255));

        jLabelTitulo.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabelTitulo.setText("Agregar Reservación");

        jLabel2.setFont(new java.awt.Font("Segoe UI", 0, 16)); // NOI18N
        jLabel2.setText("Fecha de la reserva");

        jButtonCancelar.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jButtonCancelar.setText("Cancelar");
        jButtonCancelar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jButtonCancelarMouseClicked(evt);
            }
        });

        jButtonGuardar.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jButtonGuardar.setText("Guardar");
        jButtonGuardar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jButtonGuardarMouseClicked(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("Segoe UI", 0, 16)); // NOI18N
        jLabel3.setText("Cliente");

        jTextFieldGrupo.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N

        jLabel4.setFont(new java.awt.Font("Segoe UI", 0, 16)); // NOI18N
        jLabel4.setText("Mesa");

        jLabel5.setFont(new java.awt.Font("Segoe UI", 0, 16)); // NOI18N
        jLabel5.setText("Numero de personas en el grupo");

        jComboBoxCliente.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N

        jComboBoxMesa.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N

        jSpinnerFecha.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jSpinnerFecha.setModel(new javax.swing.SpinnerDateModel(new java.util.Date(), new java.util.Date(), null, java.util.Calendar.DAY_OF_MONTH));

        javax.swing.GroupLayout FondoLayout = new javax.swing.GroupLayout(Fondo);
        Fondo.setLayout(FondoLayout);
        FondoLayout.setHorizontalGroup(
            FondoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(FondoLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(FondoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(FondoLayout.createSequentialGroup()
                        .addComponent(jComboBoxMesa, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addContainerGap())
                    .addGroup(FondoLayout.createSequentialGroup()
                        .addGroup(FondoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jTextFieldGrupo)
                            .addGroup(FondoLayout.createSequentialGroup()
                                .addComponent(jButtonCancelar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jButtonGuardar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .addComponent(jComboBoxCliente, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addGroup(FondoLayout.createSequentialGroup()
                                .addGroup(FondoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, FondoLayout.createSequentialGroup()
                                        .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addGap(185, 185, 185))
                                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, FondoLayout.createSequentialGroup()
                                        .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addGap(3, 3, 3))
                                    .addComponent(jLabelTitulo, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(374, 374, 374)))
                        .addContainerGap())
                    .addGroup(FondoLayout.createSequentialGroup()
                        .addGroup(FondoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(FondoLayout.createSequentialGroup()
                                .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGap(476, 476, 476))
                            .addComponent(jSpinnerFecha)
                            .addGroup(FondoLayout.createSequentialGroup()
                                .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGap(570, 570, 570)))
                        .addGap(6, 6, 6))))
        );
        FondoLayout.setVerticalGroup(
            FondoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(FondoLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabelTitulo)
                .addGap(18, 18, 18)
                .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jSpinnerFecha, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jTextFieldGrupo, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jComboBoxCliente, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jComboBoxMesa, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(34, 34, 34)
                .addGroup(FondoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jButtonGuardar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jButtonCancelar, javax.swing.GroupLayout.PREFERRED_SIZE, 63, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(Fondo, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(Fondo, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents

    private void jTextField4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField4ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField4ActionPerformed

    private void jButtonCancelarMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButtonCancelarMouseClicked
        Dashboard.setContenido(new Reservacion(database));
    }//GEN-LAST:event_jButtonCancelarMouseClicked

    private void jButtonGuardarMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButtonGuardarMouseClicked
        if (!_editado) {
            agregarFila();
        }
        else {
            editarFila();
        }
        Dashboard.setContenido(new Reservacion(database));
    }//GEN-LAST:event_jButtonGuardarMouseClicked

    private void agregarFila(){
        String sql = "INSERT INTO booking(booking_date, number_in_party, customer_id, table_number) VALUES (?, ?, ?, ?);";
        try {
            database.empezarTransaccion();
            PreparedStatement statement = database.con.prepareStatement(sql);
            statement.setTimestamp(1, prepararTimestamp(jSpinnerFecha));
            statement.setInt(2, Integer.parseInt(jTextFieldGrupo.getText()));
            statement.setInt(3, conseguirID(hashMapCliente, jComboBoxCliente));
            statement.setInt(4, conseguirID(hashMapMesa, jComboBoxMesa));
            statement.executeUpdate();
            database.commit();
        }
        catch (SQLException ex) {
            try {
                database.rollback();
            } catch (SQLException ex1) {
                com.error.Error jFrameError = new com.error.Error("Error: " + ex.getMessage());
                jFrameError.setVisible(true);
                throw new RuntimeException("Fallo en hacer rollback", ex);
            }
            com.error.Error jFrameError = new com.error.Error("Error: " + ex.getMessage());
            jFrameError.setVisible(true);
            throw new RuntimeException("Fallo en la consulta ejecutada (" + sql + ")", ex);
        }
    }
    
    private void editarFila() {
        String sql = "UPDATE booking SET booking_date=?, number_in_party=?, customer_id=?, table_number=? "
                + "WHERE booking_date=? AND number_in_party=? AND customer_id=? AND table_number=?;";
        try {
                database.empezarTransaccion();
                PreparedStatement statement = database.con.prepareStatement(sql);
                statement.setTimestamp(1, prepararTimestamp(jSpinnerFecha));
                statement.setInt(2, Integer.parseInt(jTextFieldGrupo.getText()));
                statement.setInt(3, conseguirID(hashMapCliente, jComboBoxCliente));
                statement.setInt(4, conseguirID(hashMapMesa, jComboBoxMesa));
                
                statement.setTimestamp(5, filaTimestamp(fila.getValue(0).toString()));
                statement.setInt(6, Integer.parseInt(fila.getValue(1).toString()));
                statement.setInt(7, Integer.parseInt(fila.getValue(2).toString()));
                statement.setInt(8, Integer.parseInt(fila.getValue(3).toString()));
                statement.executeUpdate();
                database.commit();
            }
        catch (SQLException ex) {
            try {
                database.rollback();
            } catch (SQLException ex1) {
                com.error.Error jFrameError = new com.error.Error("Error: " + ex.getMessage());
                jFrameError.setVisible(true);
                throw new RuntimeException("Fallo en hacer rollback", ex);
            }
            com.error.Error jFrameError = new com.error.Error("Error: " + ex.getMessage());
            jFrameError.setVisible(true);
            throw new RuntimeException("Fallo en la consulta ejecutada (" + sql + ")", ex);
        }
    }

    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel Fondo;
    private javax.swing.JButton jButtonCancelar;
    private javax.swing.JButton jButtonGuardar;
    private javax.swing.JComboBox<String> jComboBoxCliente;
    private javax.swing.JComboBox<String> jComboBoxMesa;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabelTitulo;
    private javax.swing.JSpinner jSpinnerFecha;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextFieldGrupo;
    // End of variables declaration//GEN-END:variables
}
