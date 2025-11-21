/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pgsql;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Properties;

/**
 *
 * @author Elias
 */
public class Propiedades {
    private final Path direccionPropiedades = Paths.get("src", "main", "resources", "restaurantdb.properties");
    private final Properties propiedades;
    
    public Propiedades() {
        this.propiedades = cargarCredenciales();
    }
    
    public Properties getPropiedades() {
        return propiedades;
    }
    
    public Path getDireccionPropiedades() {
        return direccionPropiedades;
    }
    
    private Properties cargarCredenciales() {
        Properties properties = new Properties();
        try (InputStream input = getClass().getClassLoader().getResourceAsStream("restaurantdb.properties")) {
            if (input == null) {
                System.out.println("No se encontró restaurantdb.properties");
                return null;
            }
            properties.load(input);
            return properties;
        } catch (Exception ex) {
            com.error.Error jFrameError = new com.error.Error("Error: " + ex.getMessage());
            jFrameError.setVisible(true);
            throw new RuntimeException("Archivo propiedades no encontrado", ex);
        }
    }
    
    public void guardarCredenciales(String db, String port, String user, String password) {
        propiedades.setProperty("DATABASE", db);
        propiedades.setProperty("PORT", port);
        propiedades.setProperty("USER", user);
        propiedades.setProperty("PASSWD",password);
        
        try (OutputStream out = Files.newOutputStream(direccionPropiedades)) {
            propiedades.store(out, "");
        } catch (IOException ex) {
            com.error.Error jFrameError = new com.error.Error("Error: " + ex.getMessage());
            jFrameError.setVisible(true);
            throw new RuntimeException("Fallo en escribir al archivo de propiedades", ex);
        }
    }
}
