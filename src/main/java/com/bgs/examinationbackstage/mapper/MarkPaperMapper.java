package com.bgs.examinationbackstage.mapper;

import com.bgs.examinationbackstage.pojo.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MarkPaperMapper {
    List<ExaminationPaper> markPaperListShow(ExaminationPaper paper);

    List<ExaminationPaper> showPaperDetails(Integer id);

    List<User> showTestUser(Integer id);

    List<TestPaperUser> selectEstimateStatus(Integer id);


    List<QuestionBank> showTestPaperById(@Param("id") Integer id);

    int addScore(@Param("list") List<ExaminationAnswer> list);
}
