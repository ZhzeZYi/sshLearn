package service;

import po.entity.Monitoring;
import po.entity.Share;
import po.entity.UserLogin;

import java.io.IOException;
import java.util.List;

public interface UserService {

    public void addUser(UserLogin userLogin);

    public UserLogin getUser();

    public List<Monitoring> getMonitoring() throws IOException;

    public void saveDataServer(Share share);

}
