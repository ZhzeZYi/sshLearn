package dao.impl;

import Gson.ResultUtils;
import dao.UserDao;
import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import po.entity.Monitoring;
import po.entity.Share;
import po.entity.UserLogin;

import java.io.IOException;
import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    @Transactional
    public void addUser(UserLogin userLogin) {
        Session session = sessionFactory.getCurrentSession();
        //Transaction tr=session.beginTransaction();
        session.save(userLogin);
        //tr.commit();
    }

    @Override
    @Transactional(readOnly = true)
    public UserLogin getUser() {
        Session session = sessionFactory.getCurrentSession();
        UserLogin userLogin = (UserLogin) session.get(UserLogin.class, 1);
        return userLogin;
    }

    /**
     * 查询Monitoring表
     *
     * @return
     */
    @Override
    @Transactional(readOnly = true)
    public List<Monitoring> getMonitoring() throws IOException {
        Session session = sessionFactory.getCurrentSession();
        String hql = "FROM Monitoring";
        List<Monitoring> list = session.createQuery(hql).list();
        ResultUtils.toJson(ServletActionContext.getResponse(), list);
        System.out.println(list.toString());
        return list;
    }

    @Override
    @Transactional
    public void saveDataServer(Share share) {
        Session session = sessionFactory.getCurrentSession();
        session.save(share);

    }

}
