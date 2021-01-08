package com.bgs.examinationbackstage.pojo;

import io.swagger.models.auth.In;

public class TestPaper {
    private String testPaperName;//试卷名称
    private String createTime;//创建时间
    private String testPaperStartTime;//开始时间
    private String testPaperEndTime;//结束时间
    private String testPaperFounderName;//用户名
    private String roleName;//角色名
    private Integer danXuanTi;//单选
    private Integer duoXuanTi;//多选
    private Integer panDuanTi;//判断
    private Integer tianKongTi;//填空
    private Integer jianDaTi;//简答题
    private boolean testPaperCollect;//收藏（收藏1，没收藏0）
    private boolean testPaperLike;//点赞（点赞1，未点赞0）

    public String getTestPaperName() {
        return testPaperName;
    }

    public void setTestPaperName(String testPaperName) {
        this.testPaperName = testPaperName;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getTestPaperStartTime() {
        return testPaperStartTime;
    }

    public void setTestPaperStartTime(String testPaperStartTime) {
        this.testPaperStartTime = testPaperStartTime;
    }

    public String getTestPaperEndTime() {
        return testPaperEndTime;
    }

    public void setTestPaperEndTime(String testPaperEndTime) {
        this.testPaperEndTime = testPaperEndTime;
    }

    public String getTestPaperFounderName() {
        return testPaperFounderName;
    }

    public void setTestPaperFounderName(String testPaperFounderName) {
        this.testPaperFounderName = testPaperFounderName;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public Integer getDanXuanTi() {
        return danXuanTi;
    }

    public void setDanXuanTi(Integer danXuanTi) {
        this.danXuanTi = danXuanTi;
    }

    public Integer getDuoXuanTi() {
        return duoXuanTi;
    }

    public void setDuoXuanTi(Integer duoXuanTi) {
        this.duoXuanTi = duoXuanTi;
    }

    public Integer getPanDuanTi() {
        return panDuanTi;
    }

    public void setPanDuanTi(Integer panDuanTi) {
        this.panDuanTi = panDuanTi;
    }

    public Integer getTianKongTi() {
        return tianKongTi;
    }

    public void setTianKongTi(Integer tianKongTi) {
        this.tianKongTi = tianKongTi;
    }

    public Integer getJianDaTi() {
        return jianDaTi;
    }

    public void setJianDaTi(Integer jianDaTi) {
        this.jianDaTi = jianDaTi;
    }

    public boolean isTestPaperCollect() {
        return testPaperCollect;
    }

    public void setTestPaperCollect(boolean testPaperCollect) {
        this.testPaperCollect = testPaperCollect;
    }

    public boolean isTestPaperLike() {
        return testPaperLike;
    }

    public void setTestPaperLike(boolean testPaperLike) {
        this.testPaperLike = testPaperLike;
    }
}
