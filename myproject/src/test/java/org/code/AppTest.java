package org.code;

import static org.junit.Assert.assertTrue;

import com.code.StartApplication;
import com.code.controller.Suanfa;
import com.code.entity.*;
import com.code.mapper.*;
import com.code.util.CommonUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;
import java.util.Random;

/**
 * Unit test for simple App.
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes = StartApplication.class)
public class AppTest {

    @Autowired
    UserinfoMapper userinfoMapper;

    @Autowired
    ByyqinfoMapper byyqinfoMapper;

    @Autowired
    DatainfoMapper datainfoMapper;

    @Autowired
    ScoreinfoMapper scoreinfoMapper;
    @Autowired
    KcmbinfoMapper kcmbinfoMapper;


    @Test
    public void 生成课程目标() {
        List<Datainfo> datainfoList = datainfoMapper.selectByMap(null);
        for (Datainfo datainfo : datainfoList) {
            Kcmbinfo kc = new Kcmbinfo();
            for (int i = 1; i <= 3; i++) {
                kc.setMbname("目标" + i);


                kc.setWkname(datainfo.getName());
                double x1 = createNum();
                kc.setCq(x1 + "");
                double x2 = createNum();
                kc.setSj(x2 + "");
                double x3 = createNum();
                kc.setBg(x3 + "");
                double x4 = createNum();
                kc.setZy(x4 + "");

                double x5 = createNum();
                kc.setKs1(x5 + "");

                double x6 = createNum();
                kc.setKs2(x6 + "");

                double x7 = createNum();
                kc.setKs3(x7 + "");

                double x8 = createNum();
                kc.setKs4(x8 + "");

                double x9 = createNum();
                kc.setKs5(x9 + "");


                kc.setKs6(Suanfa.nums3((1.0 - x1 - x2 - x3 - x4 - x5 - x6 - x7 - x8 - x9)) + "");


                kcmbinfoMapper.insert(kc);
            }
        }
    }

    private Double createNum() {
        Random random = new Random();
        return Double.valueOf(random.nextInt(200)) / 1000;
    }


    /**
     * Rigorous Test :-)
     */
    @Test
    public void shouldAnswerWithTrue() {
        List<Datainfo> datainfoList = datainfoMapper.selectByMap(null);
        for (Datainfo datainfo : datainfoList) {
            Byyqinfo byyqinfo = new Byyqinfo();
            byyqinfo.setMname(datainfo.getName());
            Random random = new Random();
            byyqinfo.setM1("0." + random.nextInt(4) + random.nextInt(10));
            byyqinfo.setM2("0." + random.nextInt(4) + random.nextInt(10));
            byyqinfo.setM3("0." + random.nextInt(4) + random.nextInt(10));
            for (int i = 1; i <= 12; i++) {
                byyqinfo.setMcontent("毕业要求" + i);
                byyqinfo.setMintro("无");
                byyqinfoMapper.insert(byyqinfo);
            }

        }
    }

    @Test
    public void shouldAnswerWithTrue2() {
        List<Userinfo> userinfoList = userinfoMapper.selectByMap(null);
        List<Datainfo> datainfoList = datainfoMapper.selectByMap(null);
        Random random = new Random();
        for (Userinfo userinfo : userinfoList) {

            for (Datainfo datainfo : datainfoList) {
                Scoreinfo s = new Scoreinfo();
                s.setUname(userinfo.getName());
                s.setTid(datainfo.getId());
                s.setTname(datainfo.getName());
                s.setCreatetime(CommonUtils.getNowDateStr());
                int[] arr = new int[10];
                int sum = 0;
                for (int i = 0; i < arr.length; i++) {
                    int n=random.nextInt(11)+3;
                    if(n>10){
                        n=10;
                    }
                    arr[i] =n ;
                    sum = sum + arr[i];
                }
                s.setBg(arr[0] + "");
                s.setCq(arr[1] + "");
                s.setSj(arr[2] + "");
                s.setZy(arr[3] + "");
                s.setKs1(arr[4] + "");
                s.setKs2(arr[5] + "");
                s.setKs3(arr[6] + "");
                s.setKs4(arr[7] + "");
                s.setKs5(arr[8] + "");
                s.setKs6(arr[9] + "");
                s.setScore(sum);

                s.setPscore(  (Double.parseDouble(s.getCq())+Double.parseDouble(s.getZy()) ) +"" );
                s.setYscore(  (Double.parseDouble(s.getSj())+Double.parseDouble(s.getBg()) ) +"" );
                s.setQscore((Double.parseDouble(s.getKs1()) + Double.parseDouble(s.getKs2()) + Double.parseDouble(s.getKs3()) + Double.parseDouble(s.getKs4())+ Double.parseDouble(s.getKs5())+Double.parseDouble(s.getKs6())  ) + "");
                scoreinfoMapper.insert(s);
            }
        }
    }

    @Test
    public void test123() {
        List<Userinfo> userinfoList = userinfoMapper.selectByMap(null);
        for (Userinfo userinfo : userinfoList) {
            System.out.println("userinfo = " + userinfo);
        }

    }
}
