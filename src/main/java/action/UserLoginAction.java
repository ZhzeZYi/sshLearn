//<editor-fold desc="Description">
package action;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import po.entity.Monitoring;
import po.entity.Share;
import po.entity.UserLogin;
import service.UserService;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class UserLoginAction extends ActionSupport {

    @Autowired
    UserService userService;

    public String addUser() {
        userService.addUser(new UserLogin("ZHX", "123456"));
        return "ok";
    }

    public String getUser() {
        UserLogin userLogin = userService.getUser();
        System.out.println(userLogin);
        return "ok";
    }

    public String login() {
        System.out.println("login success");
        return "ok";
    }

    public String dataMonitoring() {
        System.out.println("login success");
        return "dataMonitoring";
    }

    public List<Monitoring> getMonitoring() throws IOException {
        List<Monitoring> list = userService.getMonitoring();
//        Map<Object, Object> result = new HashMap<>();
//        result.put("code", 0);
//        result.put("msg", "");
//        result.put("count", 1000);
//        result.put("data", list);
        return list;
    }

    public String saveDataServer(Share share,String name){
        System.out.println("name="+name);
        System.out.println("names="+share.getName());
        userService.saveDataServer(share);

        return "saveDataServer";
    }
}

