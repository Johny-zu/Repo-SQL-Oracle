module com.isb.conexionbd {
    requires javafx.controls;
    requires javafx.fxml;

    requires org.controlsfx.controls;

    opens com.isb.conexionbd to javafx.fxml;
    exports com.isb.conexionbd;
    exports com.isb.conexionbd.logIn;
    exports com.isb.conexionbd.VInicio;
}