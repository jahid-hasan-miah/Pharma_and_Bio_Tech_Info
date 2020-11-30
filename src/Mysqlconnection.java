
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

public class Mysqlconnection {
          
     Connection conn= null;
     
      public static Connection ConnectDB()
  
    {
    
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/biotechinfo?autoReconnect=true&useSSL=false","root","root");
            return conn;
        }
        catch(Exception e )
        {
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
    
    
    }
}
