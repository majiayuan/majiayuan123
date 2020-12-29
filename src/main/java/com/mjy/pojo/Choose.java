package com.mjy.pojo;

import java.util.List;

//用于接收删除时的id
public class Choose {

    private List<Integer> chooseId;

    public List<Integer> getChooseId() {
        return chooseId;
    }

    public void setChooseId(List<Integer> chooseId) {
        this.chooseId = chooseId;
    }

    @Override
    public String toString() {
        return "Choose{" +
                "chooseId=" + chooseId +
                '}';
    }
}
