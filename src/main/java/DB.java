import java.sql.*;
import javax.swing.JOptionPane;
public class DB {
    private Connection con = null;
    private Statement st = null;
    private ResultSet rs = null;
    private String url = "jdbc:mysql://localhost:3306/schorlarshipproject";
    private String username = "root";
    private String password = "";
    
    public void connectDB()throws SQLException {
        try{
            con = DriverManager.getConnection(url,username,password);
        }
        catch(Exception e){
            
        }
    }
    
    public void DisconnectDB()throws SQLException {
        try{
            con.close();
        }
        catch(Exception e){
            System.out.println("Error");
        }
    }
    
    public boolean execute(String SQL)throws SQLException {
        try{
            connectDB();
            st = con.createStatement();
            st.execute(SQL);
            DisconnectDB();
            return true;
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, e.getMessage());
            return false;
        }
        
    }
    
    public ResultSet getResultSet(String SQL)throws SQLException {
        try{
            connectDB();
            st = con.createStatement();
            rs = st.executeQuery(SQL);
            return rs;
        }
        catch(Exception e){
         return null;   
        }
    }
}