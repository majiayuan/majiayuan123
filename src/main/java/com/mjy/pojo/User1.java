package com.mjy.pojo;

public class User1 {
    private String userName1;
    private String department1;
    private String duty1;

    public String getUserName1() {
        return userName1;
    }

    public void setUserName1(String userName1) {
        this.userName1 = userName1;
    }

    public String getDepartment1() {
        return department1;
    }

    public void setDepartment1(String department1) {
        this.department1 = department1;
    }

    public String getDuty1() {
        return duty1;
    }

    public void setDuty1(String duty1) {
        this.duty1 = duty1;
    }

    @Override
    public String toString() {
        return "User1{" +
                "userName1='" + userName1 + '\'' +
                ", department1='" + department1 + '\'' +
                ", duty1='" + duty1 + '\'' +
                '}';
    }
}
