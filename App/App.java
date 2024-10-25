package App;
import java.sql.*;
import java.util.Scanner;

public class App {
    public static void main(String[] args) {


        String DB_URL = "jdbc:mysql://127.0.0.1:3306/DBMSProject";
        String DB_USER = "root";
        String DB_PASSWORD = "Whiterose@59";

        try {
            // Establish a connection
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            System.out.println("Connected to the database!");
        } catch (SQLException e) {
            System.out.println("Connection failed: " + e.getMessage());
        }

        addStudent();
    }

    public static void addStudent() {
        String DB_URL = "jdbc:mysql://127.0.0.1:3306/DBMSProject";
        String DB_USER = "root";
        String DB_PASSWORD = "Whiterose@59";

        int student_id = 2;
        String name = "Vaibhavi Sangawar";
        String username = "vaibzz";
        String password = "vaibhavi@12345";
        String email = "vaibhavi@gmail.com";

        String sql = "INSERT INTO students (student_id, full_name, username, password, email) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, student_id); // Set username
            pstmt.setString(2, name);
            pstmt.setString(3, username);
            pstmt.setString(4, password);
            pstmt.setString(5, email);// Set password
            pstmt.executeUpdate(); // Execute the insert statement

            System.out.println("Student added successfully!");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
