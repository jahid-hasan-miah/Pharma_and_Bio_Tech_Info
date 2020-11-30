
import java.sql.Date;

public class user4 {
    
    private int id1;
    private int id2;
    private int id3;
    private Date date;
    private String title;
    
    
    public user4(int id1,int id2,int id3,Date date,String title)
    {
        this.id1 = id1;
        this.id2 = id2;
        this.id3 = id3;
        this.date = date;
        this.title = title;
    }

    user4(int aInt, String string, String string0, int aInt0) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public int getId()
    {
        return id1;
    }
    public int getId2()
    {
        return id2;
    }
    
    public int getid3()
    {
        return id3;
    }
    
    public Date getdate()
    {
        return date;
    }
    
    public String gettitle()
    {
        return title;
    }
}
