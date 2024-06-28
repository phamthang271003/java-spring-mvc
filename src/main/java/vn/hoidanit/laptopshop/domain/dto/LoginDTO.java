package vn.hoidanit.laptopshop.domain.dto;

import vn.hoidanit.laptopshop.service.validator.RegisterChecked;

@RegisterChecked
public class LoginDTO {
    private String email;
    private String password;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
