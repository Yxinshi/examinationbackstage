package com.bgs.examinationbackstage.pojo;


import lombok.Data;

import java.util.Date;
@Data
public class ExaminationPaper {

  private Integer testPaperId;
  private String testPaperName;
  private Date testPaperDate;
  private String testPaperStartTime;
  private String testPaperEndTime;
  private String testPaperState;
  private String testPaperTime;
  private String itemBankClassify;
  private String wayToDraw;
  private String testPaperPassMark;
  private String testPaperFullMark;
  private String testPaperNumberOfParticipants;
  private String testPaperByTheNumberOf;
  private String testPaperPassingRate;
  private String testPaperAverageScore;
  private String testPaperFounder;//试卷创建人  用户id  关联
  private boolean testPaperCollect;//收藏（收藏1，没收藏0）
  private boolean testPaperLike;//点赞（点赞1，未点赞0）

  private Integer id;
  private String name;//姓名
  private String jobNumber;
  private Integer totalPoints;
  private Integer passState;


}
