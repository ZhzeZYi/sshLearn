package util;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SessionHelper {

    @Autowired
    private static SessionFactory sessionFactory;

    public static Session getSession(){
        Session session=sessionFactory.getCurrentSession();
        return session;
    }

    public static void  closeSession(Session session){
        if(session!=null){
            session.close();
        }
    }
}
