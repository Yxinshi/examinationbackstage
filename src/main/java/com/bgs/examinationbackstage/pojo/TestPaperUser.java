package com.bgs.examinationbackstage.pojo;


import lombok.Data;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
@Data
public class TestPaperUser {
  private Integer id;
  private Integer testPaperId;
  private Integer userId;
  private Integer totalPoints;
  private Integer passMark;
  private Integer estimateStatus;
  private Integer passState;
  private Integer joinState;
  private Date startTime;
  private Date endTime;



}
