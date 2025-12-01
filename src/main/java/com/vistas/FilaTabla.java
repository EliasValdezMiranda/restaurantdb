/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.vistas;

import javax.swing.table.TableModel;

/**
 *
 * @author Elias
 */
public class FilaTabla {
    private final Object[] datos;
    private final int indiceFila;
    
    public FilaTabla(TableModel modelo, int indiceFila) {
        this.indiceFila = indiceFila;
        this.datos = new Object[modelo.getColumnCount()];
        for (int i = 0; i < datos.length; i++) {
            datos[i] = modelo.getValueAt(indiceFila, i);
        }
    }
    
    public Object getValue(int columnIndex) {
        return datos[columnIndex];
    }
    
    public Object[] getData() {
        return datos.clone();
    }
    
    public int getRowIndex() {
        return indiceFila;
    }
}