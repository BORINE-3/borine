package com.code.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

import java.lang.Integer;

/**
 * ClassName:Byyqinfo
 * Description: 毕业要求实体类
 */
@TableName("Byyqinfo")
public class Byyqinfo {

    @TableId(type = IdType.AUTO) //主键自增
    /**
     * 要求编号
     */
    private Integer yqid;
    /**
     * 课程名称
     */
    private String mname;
    /**
     * 目标1
     */
    private String m1;
    /**
     * 目标2
     */
    private String m2;
    /**
     * 目标3
     */
    private String m3;
    /**
     * 指标点
     */
    private String mcontent;
    /**
     * 要求备注
     */
    private String mintro;


    public Integer getYqid() {
        return yqid;
    }

    public void setYqid(Integer yqid) {
        this.yqid = yqid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getM1() {
        return m1;
    }

    public void setM1(String m1) {
        this.m1 = m1;
    }

    public String getM2() {
        return m2;
    }

    public void setM2(String m2) {
        this.m2 = m2;
    }

    public String getM3() {
        return m3;
    }

    public void setM3(String m3) {
        this.m3 = m3;
    }

    public String getMcontent() {
        return mcontent;
    }

    public void setMcontent(String mcontent) {
        this.mcontent = mcontent;
    }

    public String getMintro() {
        return mintro;
    }

    public void setMintro(String mintro) {
        this.mintro = mintro;
    }


}
