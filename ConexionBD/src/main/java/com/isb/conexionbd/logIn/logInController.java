package com.isb.conexionbd.logIn;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyEvent;

import javax.swing.*;
import java.net.URL;
import java.util.ResourceBundle;

public class logInController implements Initializable {
    @FXML
    private TextField txtUsername;
    @FXML
    private PasswordField txtPass;
    @FXML
    private Button btnAceptar;
    @FXML
    private void eventKey(KeyEvent event) {
        Object evt = event.getSource();
        if (evt.equals(txtUsername)){
            if(event.getCharacter().equals(" "))
                event.consume();
        } else if(evt.equals(txtPass)){
            if(event.getCharacter().equals(" "))
                event.consume();
        }
    }


    @FXML
    private void eventAction(ActionEvent event) {
        Object evt = event.getSource();
        if (evt.equals(btnAceptar)){
            if (!txtUsername.getText().isEmpty() && !txtPass.getText().isEmpty()) {
                String username = txtUsername.getText();
                String pass = txtPass.getText();

                //Min 3:48
            } else
                JOptionPane.showMessageDialog(null, "Error al iniciar sesion. datos de acceso incorrectos",
                                                                            "Advertencia", JOptionPane.WARNING_MESSAGE);
        }
    }

    public void initialize(URL location, ResourceBundle resources) {

    }
}
