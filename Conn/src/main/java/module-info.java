module com.conexion.conn {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;


    opens com.conexion.conn to javafx.fxml;
    exports com.conexion.conn;
}