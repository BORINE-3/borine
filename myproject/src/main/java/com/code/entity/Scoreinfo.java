package com.code.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

import java.lang.Integer;
import java.lang.Integer;
import java.lang.Integer;

/**
 * ClassName:Scoreinfo
 * Description: 课程成绩实体类
 */
@TableName("Scoreinfo")
public class Scoreinfo {

    @TableId(type = IdType.AUTO) //主键自增
    /**
     * 编号
     */
    private Integer id;
    /**
     * 学号
     */
    private String uname;
    /**
     * 课程编号
     */
    private Integer tid;
    /**
     * 课程名称
     */
    private String tname;
    /**
     * 总成绩
     */
    private Integer score;
    /**
     * 平时成绩
     */
    private String pscore;
    /**
     * 实验成绩
     */
    private String yscore;
    /**
     * 考试成绩
     */
    private String qscore;
    /**
     * 创建时间
     */
    private String createtime;

    @TableField(exist = false)
    private String 学生课程达成度;


    /**
     * 出勤成绩
     */
    private String cq;
    /**
     * 作业成绩
     */
    private String zy;
    /**
     * 上机成绩
     */
    private String sj;
    /**
     * 报告成绩
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

    public String get学生课程达成度() {
        return 学生课程达成度;
    }

    public void set学生课程达成度(String 学生课程达成度) {
        this.学生课程达成度 = 学生课程达成度;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getPscore() {
        return pscore;
    }

    public void setPscore(String pscore) {
        this.pscore = pscore;
    }

    public String getQscore() {
        return qscore;
    }

    public void setQscore(String qscore) {
        this.qscore = qscore;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getYscore() {
        return yscore;
    }

    public void setYscore(String yscore) {
        this.yscore = yscore;
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
