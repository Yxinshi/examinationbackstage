package com.bgs.examinationbackstage.controller;

import com.bgs.examinationbackstage.pojo.ExaminationPaper;
import com.bgs.examinationbackstage.pojo.TestPaper;
import com.bgs.examinationbackstage.service.ShareTestPaperService;
import com.bgs.examinationbackstage.service.serviceImp.ShareTestPaperServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

//共享试卷
@Controller
@RequestMapping("/ShareTestPaper")
public class ShareTestPaperController {

    @Autowired
    private ShareTestPaperService shareTestPaperService;

    //展示试卷
    @RequestMapping("/selectExaminationPaper")
    @ResponseBody
    public List<TestPaper> selectExaminationPaper(String testPaperStartTime,String testPaperEndTime,String testPaperName,String roleName,String content){
        List<TestPaper> selectTest = shareTestPaperService.selectExaminationPaper(testPaperStartTime,testPaperEndTime,testPaperName,roleName,content);
        System.out.println(selectTest);
        return selectTest;
    }
}
