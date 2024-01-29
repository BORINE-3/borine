package com.code.controller;

import com.code.entity.Datainfo;
import com.code.entity.Kcmbinfo;
import com.code.entity.Scoreinfo;


import java.util.List;

public class Suanfa {


    /**
     * 计算课程 k1 k2 k3 课程达成度 试卷达成度
     *
     * @param kcmbinfoList
     * @param datainfo
     * @return
     */
    public Datainfo k1k2k3(List<Kcmbinfo> kcmbinfoList,List<Scoreinfo> scoreinfoList, Datainfo datainfo) {

        double k1 = 0;
        double k2 = 0;
        double k3 = 0;
        double v1=0;
        double v2=0;
        double v3=0;
        for (Kcmbinfo kcmbinfo : kcmbinfoList) {
            if (kcmbinfo.getMbname().equals("目标1")) {
                for (Scoreinfo scoreinfo : scoreinfoList) {
                    double result = getResult(kcmbinfo, scoreinfo);
                    k1 = k1 + result;
                    v1 += getVVV(kcmbinfo, scoreinfo);
                }
                k1 = k1 / scoreinfoList.size();
            } else if (kcmbinfo.getMbname().equals("目标2")) {
                for (Scoreinfo scoreinfo : scoreinfoList) {
                    double result = getResult(kcmbinfo, scoreinfo);
                    k2 = k2 + result;
                    v2 += getVVV(kcmbinfo, scoreinfo);
                }
                k2 = k2 / scoreinfoList.size();
            } else { //目标3
                for (Scoreinfo scoreinfo : scoreinfoList) {
                    double result = getResult(kcmbinfo, scoreinfo);
                    k3 = k3 + result;
                    v3 += getVVV(kcmbinfo, scoreinfo);
                }
                k3 = k3 / scoreinfoList.size();
            }
        }
        datainfo.setK1(nums3(k1) + "");
        datainfo.setK2(nums3(k2) + "");
        datainfo.setK3(nums3(k3) + "");
        datainfo.set课程达成度(nums3(((k1+k2+k3)/3)) + "");

        double 试卷达成度=(v1+v2+v3)/3/scoreinfoList.size();

        datainfo.set试卷达成度(nums3(试卷达成度) + "");

        return datainfo;
    }

    //试卷达成度 计算步骤
    private double getVVV(Kcmbinfo kcmbinfo, Scoreinfo scoreinfo) {
        double v1=0;
        v1+=(Double.parseDouble(scoreinfo.getKs1()) /10)*(Double.parseDouble(kcmbinfo.getKs1())/0.6);
        v1+=(Double.parseDouble(scoreinfo.getKs2()) /10)*(Double.parseDouble(kcmbinfo.getKs2())/0.6);
        v1+=(Double.parseDouble(scoreinfo.getKs3()) /10)*(Double.parseDouble(kcmbinfo.getKs3())/0.6);
        v1+=(Double.parseDouble(scoreinfo.getKs4()) /10)*(Double.parseDouble(kcmbinfo.getKs4())/0.6);
        v1+=(Double.parseDouble(scoreinfo.getKs5()) /10)*(Double.parseDouble(kcmbinfo.getKs5())/0.6);
        v1+=(Double.parseDouble(scoreinfo.getKs6()) /10)*(Double.parseDouble(kcmbinfo.getKs6())/0.6);
        return v1;
    }

    /**
     * 学生课程达成度
     *
     * @param kcmbinfo
     * @param scoreinfo
     * @return
     */
    private double getResult(Kcmbinfo kcmbinfo, Scoreinfo scoreinfo) {
        double bg = Double.parseDouble(kcmbinfo.getBg());
        double sj = Double.parseDouble(kcmbinfo.getSj());
        double cq = Double.parseDouble(kcmbinfo.getCq());
        double zy = Double.parseDouble(kcmbinfo.getZy());
        double ks1 = Double.parseDouble(kcmbinfo.getKs1());
        double ks2 = Double.parseDouble(kcmbinfo.getKs2());
        double ks3 = Double.parseDouble(kcmbinfo.getKs3());
        double ks4 = Double.parseDouble(kcmbinfo.getKs4());
        double ks5 = Double.parseDouble(kcmbinfo.getKs5());
        double ks6 = Double.parseDouble(kcmbinfo.getKs6());
        double result = Double.parseDouble(scoreinfo.getCq()) * cq +
                Double.parseDouble(scoreinfo.getZy()) * zy +
                Double.parseDouble(scoreinfo.getBg()) * bg +
                Double.parseDouble(scoreinfo.getSj()) * sj +
                Double.parseDouble(scoreinfo.getKs1()) * ks1 +
                Double.parseDouble(scoreinfo.getKs2()) * ks2 +
                Double.parseDouble(scoreinfo.getKs3()) * ks3 +
                Double.parseDouble(scoreinfo.getKs4()) * ks4 +
                Double.parseDouble(scoreinfo.getKs5()) * ks5 +
                Double.parseDouble(scoreinfo.getKs6()) * ks6;
        result = result / 10;
        return result;
    }


    public double 学生课程达成度计算(List<Kcmbinfo> kcmbinfoList,Scoreinfo scoreinfo, Datainfo datainfo) {
        double rs = 0;
        double r1 = 0;
        double r2 = 0;
        double r3 = 0;
        for (Kcmbinfo kcmbinfo : kcmbinfoList) {
            if (kcmbinfo.getMbname().equals("目标1")) {
                double result = getResult(kcmbinfo, scoreinfo);
                r1 = result;
            } else if (kcmbinfo.getMbname().equals("目标2")) {
                double result = getResult(kcmbinfo, scoreinfo);
                r2 = result;
            } else { //目标3
                double result = getResult(kcmbinfo, scoreinfo);
                r3 = result;
            }
        }
        rs = (r1 + r2 + r3) / 3;
        return nums3(rs);
    }



    /**
     * 字符串转换为数字
     *
     * @param s
     * @return
     */
    public static double toNums(String s) {
        return Double.parseDouble(s);
    }


    /**
     * 保留三位小数
     *
     * @param a
     * @return
     */
    public static double nums3(double a) {
        String a_str = String.format("%.3f", a); //以字符串形式保留位数，此处保留3位小数
        double a_1 = Double.parseDouble(a_str); //将字符串转回double类型
        return a_1;
    }

    //测试函数
    public static void main(String[] args) {
        double a = 12.123456789;
        String a_str = String.format("%.3f", a); //以字符串形式保留位数，此处保留3位小数

        double a_1 = Double.parseDouble(a_str); //将字符串转回double类型
        System.out.println("a_1 = " + a_1);
    }


}
