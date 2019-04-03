/**
 * Created by bomi on 2019-03-26.
 */
public class User {
    String userId;
    String password;
    String name;
    String email;
    int department;

    public User(String userId, String password, String name, String email, int department) {
        this.userId = userId;
        this.password = password;
        this.name = name;
        this.email = email;
        this.department = department;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getDepartment() {
        return department;
    }

    public void setDepartment(int department) {
        this.department = department;
    }
}
