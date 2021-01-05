package org.csu.jpetstore.persistence;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
    private static String driver = "com.mysql.cj.jdbc.Driver";
    private static String url = "jdbc:mysql://localhost:3306/jpetstore?useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT%2B8";
    private static String username = "root";
    private static String password = "mysql123456";

    public static Connection getConnection() throws Exception {
        Class.forName(driver);
        return DriverManager.getConnection(url, username, password);
    }

    public static void closeConnection(Connection connection) throws Exception {
        if (connection != null) {
            connection.close();
        }
    }
}
