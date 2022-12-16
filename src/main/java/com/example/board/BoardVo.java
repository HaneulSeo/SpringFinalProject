package com.example.board;

import java.util.Date;

public class BoardVo {
    private int seq;
    private String bible;
    private String identity;
    private String name;
    private String groupin;
    private String content;
    private Date regdate;
    private int cnt;
    private String prayer;
    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getBible() {
        return bible;
    }

    public void setBible(String bible) {
        this.bible = bible;
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    public int getCnt() {
        return cnt;
    }

    public void setCnt(int cnt) {
        this.cnt = cnt;
    }

    public String getPrayer() {
        return prayer;
    }

    public void setPrayer(String prayer) {
        this.prayer = prayer;
    }


    public String getGroupin() {
        return groupin;
    }

    public void setGroupin(String group) {
        this.groupin = group;
    }
}
