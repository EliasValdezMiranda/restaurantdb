package com.informes;

import com.pgsql.Database;
import org.apache.poi.xwpf.usermodel.*;
import javax.swing.JOptionPane;
import java.io.*;
import java.sql.*;
import java.awt.Desktop;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Word {

    private Database database;
    
    public Word(Database database) {
        this.database = database;
    }
    
    public boolean generarInforme() {

        // ==================== DATOS CLIENTES =====================
        int regulares = contar("Regular");
        int plata = contar("Plata");
        int oro = contar("Oro");
        int platino = contar("Platino");
        int mesas = mesasOcupadasManana(); // CAMBIADO según tu corrección
        int clientesActuales = clientesHoy();
        String mayorDeudor = clienteMayorDeuda();
        double montoMayorDeuda = montoClienteMayorDeuda(); // NUEVO
        double promedioDeuda = promedioDeudas();

        // ==================== RESERVAS =====================
        int reservasManana = reservasParaManana();
        int clientesManana = clientesQueVendranManana(); // ahora usa number_in_party
        String mesaPopular = mesaMasSolicitada();

        // ==================== NUEVOS =====================
        String menuActual = obtenerMenuActual(); // AHORA obtiene menu_item_description
        String objetoPopular = objetoMasPopular();
        String ingredientePopular = ingredienteMasPopular(); // ID + nombre
        int empleados = totalEmpleados();
        String rolPopular = rolMasCubierto();
        double costoPromedioMesa = costoPromedioMesas();

        return generarInformeWord(regulares, plata, oro, platino,
                mesas, clientesActuales, mayorDeudor, montoMayorDeuda, promedioDeuda,
                reservasManana, clientesManana, mesaPopular,
                menuActual, objetoPopular, ingredientePopular, empleados, rolPopular, costoPromedioMesa);
        }

    // ========================= GENERAR WORD ===============================

    private boolean generarInformeWord(int reg, int pla, int oro, int plat,
                int mesas, int activos, String maxDeudor, double deudaMaxima, double prom,
                int reservasM, int clientesM, String mesaPop,
                String menu, String objetoM, String ingredienteM, int empleados, String rolM, double costoMesa) {

        try {

            String fecha = LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd-MM-yyyy HH-mm"));

            String projectRoot = System.getProperty("user.dir");
            String carpeta = projectRoot + File.separator + "informes" + File.separator;

            new File(carpeta).mkdirs();

            String ruta = carpeta + "RestaurantDB Informe " + fecha + ".docx";

            XWPFDocument doc = new XWPFDocument();

            // TÍTULO
            XWPFParagraph titulo = doc.createParagraph();
            XWPFRun t = titulo.createRun();
            t.setBold(true);
            t.setFontSize(18);
            t.setText("RestaurantDB Informe");

            agregarLinea(doc, "Generado en: " + fecha);
            agregarLinea(doc, "----------------------------------------");

            // ================= CLIENTES =================
            agregarLinea(doc, "Cantidad de clientes regulares: " + reg);
            agregarLinea(doc, "Cantidad de clientes plata: " + pla);
            agregarLinea(doc, "Cantidad de clientes oro: " + oro);
            agregarLinea(doc, "Cantidad de clientes platino: " + plat);
            agregarLinea(doc, "Mesas ocupadas mañana: " + mesas);
            agregarLinea(doc, "Número de clientes con reservaciones hoy: " + activos);
            agregarLinea(doc, "Cliente con más deudas: " + maxDeudor + "  |  Deuda total: $" + deudaMaxima);
            agregarLinea(doc, "Promedio de deudas: $" + prom);

            // ================= RESERVAS =================
            agregarLinea(doc, "");
            agregarLinea(doc, "Reservas para mañana: " + reservasM);
            agregarLinea(doc, "Clientes que vendrán mañana: " + clientesM);
            agregarLinea(doc, "Mesa más solicitada: " + mesaPop);

            // ================= MENU & OBJETOS =================
            agregarLinea(doc, "");
            agregarLinea(doc, "Menú actual: #" + menu);
            agregarLinea(doc, "Objeto más popular: #" + objetoM);
            agregarLinea(doc, "Ingrediente más popular: #" + ingredienteM); // Ahora muestra ID + descripción
            agregarLinea(doc, "Cantidad de empleados: " + empleados);
            agregarLinea(doc, "Rol más cubierto: " + rolM);
            agregarLinea(doc, "Costo promedio de mesas: $" + costoMesa);

            FileOutputStream fos = new FileOutputStream(ruta);
            doc.write(fos);
            fos.close();
            doc.close();

            Desktop.getDesktop().open(new File(ruta));
            return true;

        } catch (Exception ex) {
            com.error.Error jFrameError = new com.error.Error("Error: " + ex.getMessage());
            jFrameError.setVisible(true);
            throw new RuntimeException("Fallo en la escritura del archivo", ex);
        }
    }

    private void agregarLinea(XWPFDocument doc, String texto){
        XWPFParagraph p = doc.createParagraph();
        XWPFRun r = p.createRun();
        r.setFontSize(13);
        r.setText(texto);
    }

    // ===================== CONSULTAS =========================

    private int contar(String tipo){
        return consultaInt("SELECT COUNT(*) FROM customer WHERE tier = '"+tipo+"';");
    }

    private int mesasOcupadasManana(){
        return consultaInt("""
            SELECT COUNT(*)
            FROM booking
            WHERE booking_date::date = CURRENT_DATE + INTERVAL '1 day'
        """);
    }

    private int clientesHoy(){
        return consultaInt("""
            SELECT COUNT(*)
            FROM booking
            WHERE booking_date::date = CURRENT_DATE
        """);
    }

    private String clienteMayorDeuda(){
        return consultaTexto("""
            SELECT customer_first_name
            FROM customer
            ORDER BY debt DESC LIMIT 1
        """);
    }

    private double montoClienteMayorDeuda(){
        return consultaDouble("""
            SELECT debt FROM customer
            ORDER BY debt DESC LIMIT 1
        """);
    }

   private double promedioDeudas(){
    return consultaDouble("""
        SELECT ROUND(AVG(debt::numeric), 2) 
        FROM customer
    """);
}

    private int reservasParaManana(){
        return consultaInt("""
            SELECT COUNT(*) FROM booking
            WHERE booking_date::date = CURRENT_DATE + INTERVAL '1 day'
        """);
    }

    private int clientesQueVendranManana(){
    return consultaInt("""
        SELECT COALESCE(SUM(number_in_party),0)
        FROM booking
        WHERE booking_date::date = CURRENT_DATE + INTERVAL '1 day'
    """);
}

    private String mesaMasSolicitada(){
        return consultaTexto("""
            SELECT table_number FROM booking
            GROUP BY table_number
            ORDER BY COUNT(*) DESC LIMIT 1
        """);
    }

   private String obtenerMenuActual(){
    return consultaTexto("""
        SELECT menu_id || ' - ' || menu_date::text AS menu_info
        FROM menu
        WHERE menu_date = (
            SELECT MAX(menu_date)
            FROM menu
            WHERE menu_date <= CURRENT_DATE
        );
    """);
}
   
   private String objetoMasPopular() {
        return consultaTexto("""
            SELECT CONCAT(mi.menu_item_id, ' - ', mi.menu_item_description, ' - Veces ordenado: ', SUM(omi.order_menu_item_quantity)) AS popular_item_info
            FROM menu_item mi
            JOIN order_menu_item omi ON mi.menu_item_id = omi.menu_item_id
            GROUP BY mi.menu_item_id, mi.menu_item_description
            ORDER BY SUM(omi.order_menu_item_quantity) DESC
            LIMIT 1;                    
        """);
   }
   
    private String ingredienteMasPopular(){
        return consultaTexto("""
            SELECT mi.ingredient_id || ' - ' || ing.ingredient_name
            FROM menu_item_ingredient mi
            JOIN ingredient ing ON ing.ingredient_id = mi.ingredient_id
            GROUP BY mi.ingredient_id, ing.ingredient_name
            ORDER BY COUNT(*) DESC LIMIT 1
        """);
    }

    private int totalEmpleados(){
        return consultaInt("SELECT COUNT(*) FROM Staff;");
    }

    private String rolMasCubierto(){
        return consultaTexto("""
           SELECT staff_role_description
           FROM staff_role GROUP BY staff_role_description
           ORDER BY COUNT(*) DESC LIMIT 1
        """);
    }

    private double costoPromedioMesas(){
        return consultaDouble("SELECT AVG(table_price::numeric) FROM \"table\"");
    }

    // ===================== FUNCIONES DE APOYO =========================

    private int consultaInt(String sql){
        try{
            Connection conn = conectar();
            ResultSet rs = conn.prepareStatement(sql).executeQuery();
            if(rs.next()) return rs.getInt(1);
        }catch(Exception ex){
            com.error.Error jFrameError = new com.error.Error("Error: " + ex.getMessage());
            jFrameError.setVisible(true);
            throw new RuntimeException("Fallo en la consulta: " + sql, ex);
        }
        return 0;
    }

    private double consultaDouble(String sql){
        try{
            Connection conn = conectar();
            ResultSet rs = conn.prepareStatement(sql).executeQuery();
            if(rs.next()) return rs.getDouble(1);
        }catch(Exception ex){
            com.error.Error jFrameError = new com.error.Error("Error: " + ex.getMessage());
            jFrameError.setVisible(true);
            throw new RuntimeException("Fallo en la consulta: " + sql, ex);
        }
        return 0;
    }

    private String consultaTexto(String sql){
        try{
            Connection conn = conectar();
            ResultSet rs = conn.prepareStatement(sql).executeQuery();
            if(rs.next()) return rs.getString(1);
        }catch(Exception ex){
            com.error.Error jFrameError = new com.error.Error("Error: " + ex.getMessage());
            jFrameError.setVisible(true);
            throw new RuntimeException("Fallo en la consulta: " + sql, ex);
        }
        return "Sin datos";
    }

    private Connection conectar() throws SQLException{
        return database.con;
    }
}