public class user {
    
    private int id1;
    private int id2;
    private String name;
    private String contact;
    private String email;
    
    
    public user(int id1,int id2,String name,String contact,String email)
    {
        this.id1 = id1;
        this.id2 = id2;
        this.name = name;
        this.contact = contact;
        this.email = email;
    }

    user(int aInt, String string, String string0, int aInt0) {
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
    
    public String getname()
    {
        return name;
    }
    
    public String getcontact()
    {
        return contact;
    }
    
    public String getemail()
    {
        return email;
    }
}
