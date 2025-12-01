/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.controllers;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.swing.JSpinner;

/**
 *
 * @author Elias
 */
public class SpinnerDate {
    
    // Utilizado para asignar el valor a un JSpinner
    public static Date configurarFecha(String fechaEntrada) {
        SimpleDateFormat formatoFecha = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date fecha = null;
        try {
            fecha = formatoFecha.parse(fechaEntrada);
        } catch (ParseException ex) {
            com.error.Error jFrameError = new com.error.Error("Error: " + ex.getMessage());
            jFrameError.setVisible(true);
            throw new RuntimeException("Fallo en transformación de fecha ", ex);
        }
        return fecha;
    }
    
    // Utilizado para preparar un TimeStamp para su inserción en la base de datos
    public static Timestamp prepararTimestamp(JSpinner jSpinner) {
        String fecha = jSpinner.getValue().toString();
        SimpleDateFormat sdf = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy", Locale.US);
        java.util.Date date = null;
        try {
            date = sdf.parse(fecha);
        }
        catch (ParseException ex) {
            com.error.Error jFrameError = new com.error.Error("Error: " + ex.getMessage());
            jFrameError.setVisible(true);
            throw new RuntimeException("Fallo en el parsing de la fecha", ex);
        }

        return new Timestamp(date.getTime());
    }
    
    // Utilizado para tomar 
    public static Timestamp filaTimestamp(String fecha) {
        return new Timestamp (configurarFecha(fecha).getTime());
    }
}
