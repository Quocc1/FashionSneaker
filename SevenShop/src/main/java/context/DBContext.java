package context;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
    public Connection getConnection()throws Exception {
        String url = "jdbc:sqlserver://" +serverName + ":1433;DatabaseName=" + dbName + ";encrypt=true;trustServerCertificate=true";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return(DriverManager.getConnection(url, userID, password));
    }
    
    private final String serverName = "localhost";
    private final String dbName = "SevenShop";
    private final String userID = "sa";
    private final String password = "sa";  

//    public static void main(String[] args) {
//        try {    
//            System.out.println(new DBContext().getConnection());
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//    }
}
