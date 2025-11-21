/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pgsql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import com.error.Error;

/**
 *
 * @author Elias
 */
public class Database {
    public Connection con;
    public boolean enTransaccion = false;
    
   // Objeto singleton
    private static Database DB = null;

    private Database(String driver, String database, String port, String user, String password) {
        super();
        con = null;

        try {

            // Cargar el driver
            Class.forName(driver);
            Properties props = new Properties();
            props.setProperty("user", user);
            props.setProperty("password", password);
            // Abrir una conexion a la base de datos
            String DB_URL = crearURL(database,port);
            con = DriverManager.getConnection(DB_URL, props);

        } catch (ClassNotFoundException ex) {
            Error jFrameError = new Error("Error: Driver \"" + ex.getMessage() + "\" no encontrado");
            jFrameError.setVisible(true);
            throw new RuntimeException("Database driver no encontrado", ex);
        } catch (SQLException ex) {
            Error jFrameError = new Error("Código: " + ex.getErrorCode()
                    + "\nError: " + ex.getMessage());
            jFrameError.setVisible(true);
            throw new RuntimeException("Conexión fallida", ex);
        }
    }

    private String crearURL(String database, String port){ 
        return "jdbc:postgresql://localhost:" + port + "/" + database;
    }
    
    // Abrir la conexión y regresar objeto Database
    public static Database getDatabase(String driver, String database, String port, String user, String pass) {
        if (DB == null) {
            DB = new Database(driver, database, port, user, pass);
        }
        return DB;
    }

    public ResultSet query(String sql) throws SQLException {

        ResultSet rs = null;
        Statement statement = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                ResultSet.CONCUR_READ_ONLY);
        rs = statement.executeQuery(sql);

        return rs;
    }

    public ResultSet query(String sql, int scroll, int concur) throws SQLException {

        ResultSet rs = null;

        Statement statement = con.createStatement(scroll, concur);
        rs = statement.executeQuery(sql);

        return rs;
    }

    public int update(String sql) throws SQLException {
        int result = -1;

        Statement statement = con.createStatement();
        result = statement.executeUpdate(sql);
        return result;
    }
    
    public void empezarTransaccion() throws SQLException {
        if (enTransaccion) {
            throw new SQLException("Transacción en progreso");
        }
        con.setAutoCommit(false);
        enTransaccion = true;
    }

    public void commit() throws SQLException {
        if (!enTransaccion) {
            throw new SQLException("No hay transacción en progreso");
        }
        con.commit();
        con.setAutoCommit(true);
        enTransaccion = false;
    }

    public void rollback() throws SQLException {
        if (!enTransaccion) {
            throw new SQLException("No hay transacción en progreso");
        }
        con.rollback();
        con.setAutoCommit(true);
        enTransaccion = false;
    }
}
