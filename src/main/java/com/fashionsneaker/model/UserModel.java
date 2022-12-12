package com.fashionsneaker.model;

public class UserModel extends AbstractModel<UserModel> {

    private String email;
    private String full_name;
    private String phone_number;
    private String address;
    private String password;
    private boolean isAdmin;
    private Integer totalreceipt;
    private Integer moneySpent;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    public Integer getTotalreceipt() {
        return totalreceipt;
    }

    public void setTotalreceipt(Integer totalreceipt) {
        this.totalreceipt = totalreceipt;
    }

    public Integer getMoneySpent() {
        return moneySpent;
    }

    public void setMoneySpent(Integer moneySpent) {
        this.moneySpent = moneySpent;
    }

}
