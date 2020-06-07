package service.impl;

import dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import po.entity.Monitoring;
import po.entity.Share;
import po.entity.UserLogin;
import service.UserService;

import java.io.IOException;
import java.util.List;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public void addUser(UserLogin userLogin) {
        userDao.addUser(userLogin);
    }

    @Override
    public UserLogin getUser() {
        return userDao.getUser();
    }

    @Override
    public List<Monitoring> getMonitoring() throws IOException {
        return userDao.getMonitoring();
    }

    @Override
    public void saveDataServer(Share share) {
        userDao.saveDataServer(share);
    }

}
