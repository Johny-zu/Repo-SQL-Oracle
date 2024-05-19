module com.isb.conexionbd {
    requires javafx.controls;
    requires javafx.fxml;

    requires org.controlsfx.controls;
    requires java.desktop;

    opens com.isb.conexionbd to javafx.fxml;
    opens com.isb.conexionbd.logIn to javafx.fxml;
    opens com.isb.conexionbd.VInicio to javafx.fxml;

    exports com.isb.conexionbd;
    exports com.isb.conexionbd.logIn;
    exports com.isb.conexionbd.VInicio;
}