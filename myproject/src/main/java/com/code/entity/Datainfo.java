package com.code.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

import java.lang.Integer;
import java.lang.Integer;

/**
 * ClassName:Datainfo
 * Description: 课程信息实体类
 */
@TableName("Datainfo")
public class Datainfo {

    @TableId(type = IdType.AUTO) //主键自增
    /**
     * 编号
     */
    private Integer id;
    /**
     * 名称
     */
    private String name;

    /**
     * 图片地址
     */
    private String picurl;
    /**
     * 浏览量
     */
    private Integer nums;
    /**
     * 分类
     */
    private String sorttype;
    /**
     * 发布用户
     */
    private String adduser;
    /**
     * 备注
     */
    private String intro;
    /**
     * 添加时间
     */
    private String addtime;
    /**
     * 课程目标1
     */
    @TableField(exist = false)
    private String k1;
    /**
     * 课程目标2
     */
    @TableField(exist = false)
    private String k2;
    /**
     * 课程目标3
     */
    @TableField(exist = false)
    private String k3;






    @TableField(exist = false)
    private String 课程达成度;

    @TableField(exist = false)
    private String 试卷达成度;



    /**
     * 课程内容
     */
    private String kcnr;
    /**
     * 课程要求
     */
    private String kcyq;
    /**
     * 课程目标1
     */
    private String mb1;
    /**
     * 课程目标2
     */
    private String mb2;
    /**
     * 课程目标3
     */
    private String mb3;


    public String getKcnr() {
        return kcnr;
    }

    public void setKcnr(String kcnr) {
        this.kcnr = kcnr;
    }

    public String getKcyq() {
        return kcyq;
    }

    public void setKcyq(String kcyq) {
        this.kcyq = kcyq;
    }

    public String getMb1() {
        return mb1;
    }

    public void setMb1(String mb1) {
        this.mb1 = mb1;
    }

    public String getMb2() {
        return mb2;
    }

    public void setMb2(String mb2) {
        this.mb2 = mb2;
    }

    public String getMb3() {
        return mb3;
    }

    public void setMb3(String mb3) {
        this.mb3 = mb3;
    }

    public String get试卷达成度() {
        return 试卷达成度;
    }

    public void set试卷达成度(String 试卷达成度) {
        this.试卷达成度 = 试卷达成度;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



    public String getPicurl() {
        return picurl;
    }

    public void setPicurl(String picurl) {
        this.picurl = picurl;
    }

    public Integer getNums() {
        return nums;
    }

    public void setNums(Integer nums) {
        this.nums = nums;
    }

    public String getSorttype() {
        return sorttype;
    }

    public void setSorttype(String sorttype) {
        this.sorttype = sorttype;
    }

    public String getAdduser() {
        return adduser;
    }

    public void setAdduser(String adduser) {
        this.adduser = adduser;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }

    public String getK1() {
        return k1;
    }

    public void setK1(String k1) {
        this.k1 = k1;
    }

    public String getK2() {
        return k2;
    }

    public void setK2(String k2) {
        this.k2 = k2;
    }

    public String getK3() {
        return k3;
    }

    public void setK3(String k3) {
        this.k3 = k3;
    }



    public String get课程达成度() {
        return 课程达成度;
    }

    public void set课程达成度(String 课程达成度) {
        this.课程达成度 = 课程达成度;
    }
}
