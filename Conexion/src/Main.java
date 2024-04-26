import java.sql.Connection;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args){
        Connection connection = OracleDatabase.getConnection();

        if (connection != null) {
            System.out.println("Conexión exitosa a la base de datos ESCUELA");

            // Aquí puedes realizar operaciones con la base de datos
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("Error al conectar a la base de datos");
        }
    }
}