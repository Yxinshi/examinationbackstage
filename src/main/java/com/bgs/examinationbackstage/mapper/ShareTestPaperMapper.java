package com.bgs.examinationbackstage.mapper;

import com.bgs.examinationbackstage.pojo.ExaminationPaper;
import com.bgs.examinationbackstage.pojo.TestPaper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

//共享试卷库
@Repository
public interface ShareTestPaperMapper {

    //查询试卷基本信息
    List<TestPaper> selectExaminationPaper(@Param("testPaperStartTime") String testPaperStartTime, @Param("testPaperEndTime") String testPaperEndTime, @Param("testPaperName") String testPaperName, @Param("roleName") String roleName, @Param("content") String content);

  }
