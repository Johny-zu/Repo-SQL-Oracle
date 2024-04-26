module com.conexion.conn {
    requires javafx.controls;
    requires javafx.fxml;


    opens com.conexion.conn to javafx.fxml;
    exports com.conexion.conn;
}