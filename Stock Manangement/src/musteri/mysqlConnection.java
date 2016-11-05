package musteri;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;



public class mysqlConnection {
 
    Connection baglan=null;
    PreparedStatement pr=null;
    String classforname="com.mysql.jdbc.Driver";
    String dbyolu="jdbc:mysql://localhost/";
    String dbAdi="projdb";
    String dbUserName="root";
    String dbuserpassword="";

    //baglantı metodu
    public PreparedStatement baglan(String sorgu){
     
        try {
           Class.forName(classforname); 
          baglan=DriverManager.getConnection(dbyolu + dbAdi,dbUserName,dbuserpassword);
          pr=baglan.prepareStatement(sorgu);
        } catch (Exception e) {
            System.out.println("bağlantı hatası :" +e);
        }
    return pr;
    }
    //baglantı kapat
    public void baglantikapat(){
        try {

            pr.close();

        } catch (Exception e) {
            System.out.println("bağlantı kapatma hatası :" +e);
        }
    
    }
}