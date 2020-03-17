/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejbs;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import javax.annotation.PostConstruct;
import javax.ejb.Stateful;

/**
 *
 * @author Анюта
 */
@Stateful
public class EJB implements EJBDemo {

    private static boolean isRegistred;
    private static int count;
    private static final Properties PROP = new Properties();

    @Override
    public boolean login(String login, String psw) {
        if (login.trim().equals(PROP.getProperty("login")) 
                && psw.trim().equals(PROP.getProperty("psw"))) {
            isRegistred = true;
        } else {
            isRegistred = false;
        }
        return isRegistred;
    }

    @Override
    public String getMessage(String login) {
        String msg = "";
        if (count < 3 && isRegistred) {
            msg = String.format(PROP.getProperty("goodMsg"), login.trim(), ++count);
        } else {
            msg = String.format(PROP.getProperty("badMsg"), login.trim());
            count = 0;
        }
        return msg;
    }

    @PostConstruct
    private void init() {
        try (InputStream is = getClass().getClassLoader()
                .getResourceAsStream("conf/properties.properties")) {
            PROP.load(is);
        } catch (IOException ex) {
            System.err.println("Properties not load!!");
        }
    }
}
