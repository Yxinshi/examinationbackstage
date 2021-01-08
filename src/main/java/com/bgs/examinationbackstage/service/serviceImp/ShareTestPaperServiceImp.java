package com.bgs.examinationbackstage.service.serviceImp;

import com.bgs.examinationbackstage.mapper.ShareTestPaperMapper;
import com.bgs.examinationbackstage.pojo.ExaminationPaper;
import com.bgs.examinationbackstage.pojo.TestPaper;
import com.bgs.examinationbackstage.service.ShareTestPaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.util.List;

//共享试卷库
@Service
public class ShareTestPaperServiceImp implements ShareTestPaperService {

    @Autowired
    private ShareTestPaperMapper shareTestPaperMapper;

    //查询试卷信息
    @Override
    public List<TestPaper> selectExaminationPaper(String testPaperStartTime,String testPaperEndTime,String testPaperName,String roleName,String content) {
        List<TestPaper> selectTest = shareTestPaperMapper.selectExaminationPaper(testPaperStartTime,testPaperEndTime,testPaperName,roleName,content);
        return selectTest;
    }

}
