package com.conexion.conn;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;

public class HelloController {
    @FXML
    private Button botonAceptar;

    @FXML
    public void initialize() {
        botonAceptar.setOnAction(event -> {
            // Código para manejar el clic del botón
            System.out.println("¡Se presionó el botón Aceptar!");
        });
    }
}