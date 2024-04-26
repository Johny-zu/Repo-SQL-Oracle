package com.conexion.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexion {
    private static final String url = "jdbc:oracle:thin:@DESKTOP-43MCTE7:1521:XE";
    private static final String user = "system";
    private static final String pass = "0";

    public static Connection getConnection() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            return DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException e) {
            System.out.println("Error al cargar el driver JDBC de Oracle");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Error al conectar a la base de datos Oracle");
            e.printStackTrace();
        }
        return null;
    }
}
