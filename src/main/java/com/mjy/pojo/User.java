package com.mjy.pojo;

public class User {
    private Integer id;
    private String userTime;
    private String userName;
    private String sex;
    private int account;
    private String password;
    private String department;
    private String duty;
    private String email;
    private int mobile_telephone_num;
    private int family_telephone_num;
    private int work_telephone_num;
    private int fax_num;
    private String MSN;
    private String birthday;
    private String personal_page;
    private String address;
    private String remarks;

    public User() {
    }

    public User(Integer id, String userTime, String userName, String sex, int account, String password, String department, String duty, String email, int mobile_telephone_num, int family_telephone_num, int work_telephone_num, int fax_num, String MSN, String birthday, String personal_page, String address, String remarks) {
        this.id = id;
        this.userTime = userTime;
        this.userName = userName;
        this.sex = sex;
        this.account = account;
        this.password = password;
        this.department = department;
        this.duty = duty;
        this.email = email;
        this.mobile_telephone_num = mobile_telephone_num;
        this.family_telephone_num = family_telephone_num;
        this.work_telephone_num = work_telephone_num;
        this.fax_num = fax_num;
        this.MSN = MSN;
        this.birthday = birthday;
        this.personal_page = personal_page;
        this.address = address;
        this.remarks = remarks;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserTime() {
        return userTime;
    }

    public void setUserTime(String userTime) {
        this.userTime = userTime;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAccount() {
        return account;
    }

    public void setAccount(int account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getMobile_telephone_num() {
        return mobile_telephone_num;
    }

    public void setMobile_telephone_num(int mobile_telephone_num) {
        this.mobile_telephone_num = mobile_telephone_num;
    }

    public int getFamily_telephone_num() {
        return family_telephone_num;
    }

    public void setFamily_telephone_num(int family_telephone_num) {
        this.family_telephone_num = family_telephone_num;
    }

    public int getWork_telephone_num() {
        return work_telephone_num;
    }

    public void setWork_telephone_num(int work_telephone_num) {
        this.work_telephone_num = work_telephone_num;
    }

    public int getFax_num() {
        return fax_num;
    }

    public void setFax_num(int fax_num) {
        this.fax_num = fax_num;
    }

    public String getMSN() {
        return MSN;
    }

    public void setMSN(String MSN) {
        this.MSN = MSN;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getPersonal_page() {
        return personal_page;
    }

    public void setPersonal_page(String personal_page) {
        this.personal_page = personal_page;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userTime='" + userTime + '\'' +
                ", userName='" + userName + '\'' +
                ", sex='" + sex + '\'' +
                ", account=" + account +
                ", pqssword='" + password + '\'' +
                ", department='" + department + '\'' +
                ", duty='" + duty + '\'' +
                ", email='" + email + '\'' +
                ", mobile_telephone_num=" + mobile_telephone_num +
                ", family_telephone_num=" + family_telephone_num +
                ", work_telephone_num=" + work_telephone_num +
                ", fax_num=" + fax_num +
                ", MSN='" + MSN + '\'' +
                ", birthday='" + birthday + '\'' +
                ", personal_page='" + personal_page + '\'' +
                ", address='" + address + '\'' +
                ", remarks='" + remarks + '\'' +
                '}';
    }
}
