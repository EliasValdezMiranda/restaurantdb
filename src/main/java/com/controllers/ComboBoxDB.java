/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.controllers;

import com.pgsql.Database;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.swing.JComboBox;

/**
 *
 * @author Elias
 */
public class ComboBoxDB {
    public static LinkedHashMap buildComboBox(Database database, String query, javax.swing.JComboBox<String> comboBox) {
        try {
            ResultSet rs = database.query(query);
            LinkedHashMap<String, Integer> ht = new LinkedHashMap<>();
            while ( rs.next() ) {
                int id = rs.getInt(1);
                String label = rs.getString(2);
                comboBox.addItem(label);
                ht.put(label, id);
            }
            return ht;
        } catch (SQLException ex) {
            com.error.Error jFrameError = new com.error.Error("Error: " + ex.getMessage());
            jFrameError.setVisible(true);
            throw new RuntimeException("Fallo en la consulta ejecutada (" + query + ")", ex);
        }
    }
    
    public static Integer conseguirID(LinkedHashMap hm, JComboBox comboBox) {
        return (Integer) hm.get(comboBox.getSelectedItem());
    }
    
    public static <K, V> int getPosicionPorValor(LinkedHashMap<K, V> map, V valor) {
    int posicion = 0;
    for (Map.Entry<K, V> par : map.entrySet()) {
        if (par.getValue().equals(valor)) {
            return posicion;
        }
        posicion++;
    }
    return -1;
}
}
