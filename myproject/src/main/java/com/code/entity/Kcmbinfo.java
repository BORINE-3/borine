package com.code.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

import java.lang.Integer;

/**
 * ClassName:Kcmbinfo
 * Description: 实体类
 */
@TableName("Kcmbinfo")
public class Kcmbinfo {

    @TableId(type = IdType.AUTO) //主键自增
    /**
     * 信息编号
     */
    private Integer wwid;
    /**
     * 课程名称
     */
    private String wkname;
    /**
     * 目标名称
     */
    private String mbname;
    /**
     * 出勤
     */
    private String cq;
    /**
     * 作业
     */
    private String zy;
    /**
     * 上机
     */
    private String sj;
    /**
     * 报告
     */
    private String bg;
    /**
     * 知识1
     */
    private String ks1;
    /**
     * 知识2
     */
    private String ks2;
    /**
     * 知识3
     */
    private String ks3;
    /**
     * 知识4
     */
    private String ks4;
    /**
     * 知识5
     */
    private String ks5;
    /**
     * 知识6
     */
    private String ks6;


    public Integer getWwid() {
        return wwid;
    }

    public void setWwid(Integer wwid) {
        this.wwid = wwid;
    }

    public String getWkname() {
        return wkname;
    }

    public void setWkname(String wkname) {
        this.wkname = wkname;
    }

    public String getMbname() {
        return mbname;
    }

    public void setMbname(String mbname) {
        this.mbname = mbname;
    }

    public String getCq() {
        return cq;
    }

    public void setCq(String cq) {
        this.cq = cq;
    }

    public String getZy() {
        return zy;
    }

    public void setZy(String zy) {
        this.zy = zy;
    }

    public String getSj() {
        return sj;
    }

    public void setSj(String sj) {
        this.sj = sj;
    }

    public String getBg() {
        return bg;
    }

    public void setBg(String bg) {
        this.bg = bg;
    }

    public String getKs1() {
        return ks1;
    }

    public void setKs1(String ks1) {
        this.ks1 = ks1;
    }

    public String getKs2() {
        return ks2;
    }

    public void setKs2(String ks2) {
        this.ks2 = ks2;
    }

    public String getKs3() {
        return ks3;
    }

    public void setKs3(String ks3) {
        this.ks3 = ks3;
    }

    public String getKs4() {
        return ks4;
    }

    public void setKs4(String ks4) {
        this.ks4 = ks4;
    }

    public String getKs5() {
        return ks5;
    }

    public void setKs5(String ks5) {
        this.ks5 = ks5;
    }

    public String getKs6() {
        return ks6;
    }

    public void setKs6(String ks6) {
        this.ks6 = ks6;
    }


}
