import java.io.Serializable;

public class Customer implements Serializable {
    String name;
    String email;
    String birthday;
    String address;

    public Customer() {
    }

    public Customer(String name, String email, String birthday, String address) {
        this.name = name;
        this.email = email;
        this.birthday = birthday;
        this.address = address;
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

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
