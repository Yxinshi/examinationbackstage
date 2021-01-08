package com.bgs.examinationbackstage.service;

import com.bgs.examinationbackstage.pojo.ExaminationPaper;
import com.bgs.examinationbackstage.pojo.TestPaper;

import java.util.List;

//共享试卷库
public interface ShareTestPaperService {

    //查询试卷
    List<TestPaper> selectExaminationPaper(String testPaperStartTime, String testPaperEndTime, String testPaperName, String roleName, String content);
}
