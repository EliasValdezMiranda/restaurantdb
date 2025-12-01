package com.login;

import com.dashboard.Dashboard;
import com.formdev.flatlaf.FlatLightLaf;
import com.pgsql.Database;
import com.pgsql.Propiedades;
import java.awt.Color;
import java.util.Properties;
import static com.pgsql.Database.getDatabase;
import javax.swing.JOptionPane;

/**
 *
 * @author Elias
 */
public class Login extends javax.swing.JFrame {
    
    private static final java.util.logging.Logger logger = java.util.logging.Logger.getLogger(Login.class.getName());
    
    private int xMouse, yMouse;
    private final Propiedades PROPIEDADES = new Propiedades();
    
    
    public Login() {
        FlatLightLaf.setup();
        initComponents();
        if (PROPIEDADES.getPropiedades() == null) {
            return;
        }
        llenarCampos(PROPIEDADES.getPropiedades());
    }
    
    private void llenarCampos(Properties propiedades) {
        jLabelDriver.setText("driver: " + propiedades.getProperty("DRIVER"));
        jLabelDriver.setToolTipText(propiedades.getProperty("DRIVER"));
        textFieldDB.setText(propiedades.getProperty("DATABASE"));
        textFieldPuerto.setText(propiedades.getProperty("PORT"));
        textFieldUsuario.setText(propiedades.getProperty("USER"));
        jPasswordField.setText(propiedades.getProperty("PASSWD"));
    }
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        fondo = new javax.swing.JPanel();
        panelAzul = new javax.swing.JPanel();
        header = new javax.swing.JPanel();
        panelExitButton = new javax.swing.JPanel();
        jLabelExitButton = new javax.swing.JLabel();
        jLabelDriver = new javax.swing.JLabel();
        labelTitulo = new javax.swing.JLabel();
        labelDB = new javax.swing.JLabel();
        textFieldDB = new javax.swing.JTextField();
        jSeparator1 = new javax.swing.JSeparator();
        labelPuerto = new javax.swing.JLabel();
        textFieldPuerto = new javax.swing.JTextField();
        jSeparator2 = new javax.swing.JSeparator();
        labelUsuario = new javax.swing.JLabel();
        textFieldUsuario = new javax.swing.JTextField();
        jSeparator3 = new javax.swing.JSeparator();
        labelPassword = new javax.swing.JLabel();
        jSeparator4 = new javax.swing.JSeparator();
        jPasswordField = new javax.swing.JPasswordField();
        jPanelEntrarBG = new javax.swing.JPanel();
        jLabelEntrarTexto = new javax.swing.JLabel();
        jCheckBoxCredenciales = new javax.swing.JCheckBox();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setLocationByPlatform(true);
        setMaximumSize(new java.awt.Dimension(800, 500));
        setMinimumSize(new java.awt.Dimension(800, 500));
        setUndecorated(true);
        setResizable(false);
        setSize(new java.awt.Dimension(0, 0));

        fondo.setBackground(new java.awt.Color(255, 255, 255));
        fondo.setPreferredSize(new java.awt.Dimension(800, 500));
        fondo.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        panelAzul.setBackground(new java.awt.Color(0, 57, 122));

        javax.swing.GroupLayout panelAzulLayout = new javax.swing.GroupLayout(panelAzul);
        panelAzul.setLayout(panelAzulLayout);
        panelAzulLayout.setHorizontalGroup(
            panelAzulLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 200, Short.MAX_VALUE)
        );
        panelAzulLayout.setVerticalGroup(
            panelAzulLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 520, Short.MAX_VALUE)
        );

        fondo.add(panelAzul, new org.netbeans.lib.awtextra.AbsoluteConstraints(600, 0, 200, 520));

        header.setBackground(new java.awt.Color(255, 255, 255));
        header.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                headerMouseDragged(evt);
            }
        });
        header.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                headerMousePressed(evt);
            }
        });

        panelExitButton.setBackground(new java.awt.Color(255, 255, 255));

        jLabelExitButton.setFont(new java.awt.Font("sansserif", 1, 24)); // NOI18N
        jLabelExitButton.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabelExitButton.setText("X");
        jLabelExitButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jLabelExitButton.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        jLabelExitButton.setMaximumSize(new java.awt.Dimension(50, 50));
        jLabelExitButton.setMinimumSize(new java.awt.Dimension(50, 50));
        jLabelExitButton.setName(""); // NOI18N
        jLabelExitButton.setPreferredSize(new java.awt.Dimension(50, 50));
        jLabelExitButton.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabelExitButtonMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                jLabelExitButtonMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                jLabelExitButtonMouseExited(evt);
            }
        });

        javax.swing.GroupLayout panelExitButtonLayout = new javax.swing.GroupLayout(panelExitButton);
        panelExitButton.setLayout(panelExitButtonLayout);
        panelExitButtonLayout.setHorizontalGroup(
            panelExitButtonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabelExitButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        panelExitButtonLayout.setVerticalGroup(
            panelExitButtonLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabelExitButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        jLabelDriver.setForeground(new java.awt.Color(204, 204, 204));
        jLabelDriver.setText("Driver: ");

        javax.swing.GroupLayout headerLayout = new javax.swing.GroupLayout(header);
        header.setLayout(headerLayout);
        headerLayout.setHorizontalGroup(
            headerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(headerLayout.createSequentialGroup()
                .addComponent(panelExitButton, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(30, 30, 30)
                .addComponent(jLabelDriver, javax.swing.GroupLayout.PREFERRED_SIZE, 442, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 278, Short.MAX_VALUE))
        );
        headerLayout.setVerticalGroup(
            headerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(panelExitButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, headerLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabelDriver)
                .addContainerGap())
        );

        fondo.add(header, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 800, 50));

        labelTitulo.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        labelTitulo.setText("PROYECTO FINAL - EQUIPO 12");
        labelTitulo.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        fondo.add(labelTitulo, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 50, -1, -1));

        labelDB.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        labelDB.setText("Base de datos:");
        fondo.add(labelDB, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 100, -1, -1));

        textFieldDB.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        textFieldDB.setBorder(null);
        fondo.add(textFieldDB, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 130, 440, -1));

        jSeparator1.setForeground(new java.awt.Color(0, 0, 0));
        fondo.add(jSeparator1, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 150, 440, 10));

        labelPuerto.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        labelPuerto.setText("Puerto:");
        fondo.add(labelPuerto, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 180, -1, -1));

        textFieldPuerto.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        textFieldPuerto.setBorder(null);
        fondo.add(textFieldPuerto, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 210, 440, -1));

        jSeparator2.setForeground(new java.awt.Color(0, 0, 0));
        fondo.add(jSeparator2, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 230, 440, 10));

        labelUsuario.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        labelUsuario.setText("Usuario:");
        fondo.add(labelUsuario, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 260, -1, -1));

        textFieldUsuario.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        textFieldUsuario.setBorder(null);
        fondo.add(textFieldUsuario, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 290, 440, -1));

        jSeparator3.setForeground(new java.awt.Color(0, 0, 0));
        fondo.add(jSeparator3, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 310, 440, 10));

        labelPassword.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        labelPassword.setText("Contraseña:");
        fondo.add(labelPassword, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 340, -1, -1));

        jSeparator4.setForeground(new java.awt.Color(0, 0, 0));
        fondo.add(jSeparator4, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 390, 440, 10));

        jPasswordField.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jPasswordField.setBorder(null);
        fondo.add(jPasswordField, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 370, 430, 20));

        jPanelEntrarBG.setBackground(new java.awt.Color(0, 153, 255));
        jPanelEntrarBG.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        jLabelEntrarTexto.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabelEntrarTexto.setForeground(new java.awt.Color(255, 255, 255));
        jLabelEntrarTexto.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabelEntrarTexto.setText("ENTRAR");
        jLabelEntrarTexto.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jLabelEntrarTexto.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabelEntrarTextoMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                jLabelEntrarTextoMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                jLabelEntrarTextoMouseExited(evt);
            }
        });

        javax.swing.GroupLayout jPanelEntrarBGLayout = new javax.swing.GroupLayout(jPanelEntrarBG);
        jPanelEntrarBG.setLayout(jPanelEntrarBGLayout);
        jPanelEntrarBGLayout.setHorizontalGroup(
            jPanelEntrarBGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabelEntrarTexto, javax.swing.GroupLayout.DEFAULT_SIZE, 440, Short.MAX_VALUE)
        );
        jPanelEntrarBGLayout.setVerticalGroup(
            jPanelEntrarBGLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabelEntrarTexto, javax.swing.GroupLayout.DEFAULT_SIZE, 40, Short.MAX_VALUE)
        );

        fondo.add(jPanelEntrarBG, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 450, 440, 40));

        jCheckBoxCredenciales.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jCheckBoxCredenciales.setSelected(true);
        jCheckBoxCredenciales.setText("Guardar nuevas credenciales de inicio");
        fondo.add(jCheckBoxCredenciales, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 410, -1, -1));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(fondo, javax.swing.GroupLayout.PREFERRED_SIZE, 800, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(fondo, javax.swing.GroupLayout.DEFAULT_SIZE, 520, Short.MAX_VALUE)
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void headerMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_headerMousePressed
        xMouse = evt.getX();
        yMouse = evt.getY();
    }//GEN-LAST:event_headerMousePressed

    private void headerMouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_headerMouseDragged
        int x = evt.getXOnScreen();
        int y = evt.getYOnScreen();
        this.setLocation(x - xMouse, y - yMouse);
    }//GEN-LAST:event_headerMouseDragged

    private void jLabelExitButtonMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabelExitButtonMouseClicked
        System.exit(0);
    }//GEN-LAST:event_jLabelExitButtonMouseClicked

    private void jLabelExitButtonMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabelExitButtonMouseEntered
        panelExitButton.setBackground(Color.red);
        jLabelExitButton.setForeground(Color.white);
    }//GEN-LAST:event_jLabelExitButtonMouseEntered

    private void jLabelExitButtonMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabelExitButtonMouseExited
        panelExitButton.setBackground(Color.white);
        jLabelExitButton.setForeground(Color.black);
    }//GEN-LAST:event_jLabelExitButtonMouseExited

    private void jLabelEntrarTextoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabelEntrarTextoMouseClicked
        Database db = getDatabase(
                jLabelDriver.getToolTipText()
                ,textFieldDB.getText()
                ,textFieldPuerto.getText()
                ,textFieldUsuario.getText()
                ,String.valueOf(jPasswordField.getPassword()));
        if (db != null) {
            if (jCheckBoxCredenciales.isSelected()) {
                PROPIEDADES.guardarCredenciales(textFieldDB.getText()
                        ,textFieldPuerto.getText()
                        ,textFieldUsuario.getText()
                        ,String.valueOf(jPasswordField.getPassword()));
            }
            this.dispose();
            java.awt.EventQueue.invokeLater(() -> new Dashboard(db).setVisible(true));
        }
    }//GEN-LAST:event_jLabelEntrarTextoMouseClicked
    
    private void jLabelEntrarTextoMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabelEntrarTextoMouseEntered
        jPanelEntrarBG.setBackground(new Color(51,102,255));
    }//GEN-LAST:event_jLabelEntrarTextoMouseEntered

    private void jLabelEntrarTextoMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabelEntrarTextoMouseExited
        jPanelEntrarBG.setBackground(new Color(0,153,255));
    }//GEN-LAST:event_jLabelEntrarTextoMouseExited

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ReflectiveOperationException | javax.swing.UnsupportedLookAndFeelException ex) {
            logger.log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(() -> new Login().setVisible(true));
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel fondo;
    private javax.swing.JPanel header;
    private javax.swing.JCheckBox jCheckBoxCredenciales;
    private javax.swing.JLabel jLabelDriver;
    private javax.swing.JLabel jLabelEntrarTexto;
    private javax.swing.JLabel jLabelExitButton;
    private javax.swing.JPanel jPanelEntrarBG;
    private javax.swing.JPasswordField jPasswordField;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JSeparator jSeparator3;
    private javax.swing.JSeparator jSeparator4;
    private javax.swing.JLabel labelDB;
    private javax.swing.JLabel labelPassword;
    private javax.swing.JLabel labelPuerto;
    private javax.swing.JLabel labelTitulo;
    private javax.swing.JLabel labelUsuario;
    private javax.swing.JPanel panelAzul;
    private javax.swing.JPanel panelExitButton;
    private javax.swing.JTextField textFieldDB;
    private javax.swing.JTextField textFieldPuerto;
    private javax.swing.JTextField textFieldUsuario;
    // End of variables declaration//GEN-END:variables
}
