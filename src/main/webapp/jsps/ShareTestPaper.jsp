<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/30
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>试卷共享库</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/table/bootstrap-table.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap/table/bootstrap-table.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap-table-zh-CN.min.js"></script>

    <%--<!-- 引入js -->
    <jsp:include page=""></jsp:include>--%>
    <%--
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <script src="//at.alicdn.com/t/font_2302535_vccyu1eoe0b.js"></script>
    <script>


        $(function () {
            loadingList();

            //矢量图点击事件（收藏、点赞）

            $(document).on("click",".collect",function(){
                alert(111111)
                 //获取点击的是哪个矢量图
                 var icon = $(this).html();
                alert(icon)
                if (icon==true) {
                    //已收藏
                    var icon = "#icon-favor-active";
                }else{
                    //未收藏
                    var icon = "#icon-shoucang1";
                }
                //icon-shoucang1为 未收藏
                if (icon === "#icon-favor-active") {
                    //改变为已收藏
                    icon.baseVal = "#icon-shoucang1";
                    return;
                }
                //icon-favor-active为 已收藏
                if (icon === "#icon-shoucang1") {
                    //改变为未收藏
                    icon.baseVal = "#icon-favor-active";
                    return;
                }



              /*  //点赞
                if (data[i].testPaperLike==true) {
                    //已点赞
                    var baseVal = "#icon-fabulous";
                }else{
                    //未点赞
                    var baseVal = "#icon-dianzan";
                }*/

                 /*//icon-shoucang1为 未点赞
                 if (icon.animVal === "#icon-dianzan") {
                     //改变为已点赞
                     icon.baseVal = "#icon-fabulous";
                     return;
                 }
                 if (icon.animVal === "#icon-fabulous") {
                     //改变为未点赞
                     icon.baseVal = "#icon-dianzan";
                 }*/

            });
        });


        
        //加载列表
        function loadingList() {
            var testPaperStartTime=$("#testPaperStartTime").val();
            var testPaperEndTime = $("#testPaperEndTime").val();
            var testPaperName = $("#testPaperName").val();
            var roleName = $("#roleName").val();
            var content =$("#content option:selected").val();
            $.ajax({
                url:'${pageContext.request.contextPath}/ShareTestPaper/selectExaminationPaper',
                dataType:'post',
                data:{
                    "testPaperStartTime":testPaperStartTime,
                    "testPaperEndTime":testPaperEndTime,
                    "testPaperName":testPaperName,
                    "roleName":roleName,
                    "content":content
                },
                dataType:'json',
                success:function(data){
                    if(data){
                       var str = "";
                        for (var i = 0; i < data.length; i++) {
                            //收藏
                            if (data[i].testPaperCollect==true) {
                                //已收藏
                                var yangshi = "#icon-favor-active";
                            }else{
                                //未收藏
                                var yangshi = "#icon-shoucang1";
                            }
                            //点赞
                            if (data[i].testPaperLike==true) {
                                //已点赞
                                var baseVal = "#icon-fabulous";
                            }else{
                                //未点赞
                                var baseVal = "#icon-dianzan";
                            }
                            str += "   <table class=\"table table-bordered\" id=\"Table\"><div class=\"table-top\">\n" +
                                "            <div class=\"top-one\"><label><input type=\"checkbox\"/> 试卷名称：<span>" + data[i].testPaperName + "</span></label></div>\n" +
                                "            <div class=\"top-two\"><input type=\"checkbox\" style=\"visibility: hidden\"> 创建单位：<span>" + data[i].roleName +" </span>\n" +
                                "                创建人：<span>" + data[i].testPaperFounderName + "</span> 创建时间：<span>" + data[i].createTime + "</span><br/></div>\n" +
                                "        </div>\n" +
                                "        <thead>\n" +
                                "        <tr>\n" +
                                "            <th colspan=\"5\">题目数量</th>\n" +
                                "            <th colspan=\"3\" rowspan=\"3\" style=\"margin-top: -10px\">\n" +
                                "                <svg class=\"icon\" aria-hidden=\"true\">\n" +
                                "                    <use xlink:href=\'"+yangshi+"\' class=\"collect\">" + data[i].testPaperCollect + "</use>\n" +
                                "                </svg>\n" +
                                "                <br/>\n" +
                                "                收藏\n" +
                                "            </th>\n" +
                                "            <th rowspan=\"3\" colspan=\"3\">\n" +
                                "                <svg class=\"icon\" aria-hidden=\"true\">\n" +
                                "                    <use xlink:href=\'"+baseVal +"\'>" + data[i].testPaperLike + "</use>\n" +
                                "                </svg>\n" +
                                "                <br/>\n" +
                                "                点赞\n" +
                                "            </th>\n" +
                                "        </tr>\n" +
                                "        <tr>\n" +
                                "            <th>单选题</th>\n" +
                                "            <th>多选题</th>\n" +
                                "            <th>判断题</th>\n" +
                                "            <th>填空题</th>\n" +
                                "            <th>简答题</th>\n" +
                                "        </tr>\n" +
                                "        <tr>\n" +
                                "            <th>" + data[i].danXuanTi + "</th>\n" +
                                "            <th>" + data[i].duoXuanTi + "</th>\n" +
                                "            <th>" + data[i].panDuanTi + "</th>\n" +
                                "            <th>" + data[i].tianKongTi + "</th>\n" +
                                "            <th>" + data[i].jianDaTi + "</th>\n" +
                                "        </tr>\n" +
                                "        <tr>\n" +
                                "\n" +
                                "        </tr>\n" +
                                "        </thead></table>\n"+
                                "       <div>\n" +
                                "           <button type=\"button\" class=\"btn btn-primary\" onclick=\"\">查看试卷</button>\n" +
                                "       </div>"

                        }
                        $("#All").html(str);
                    }
                }
            })
        }
        //查询
        function queryTest() {
            loadingList();
        }

        //重置
            function resetTest() {
                window.location.reload();
            }



        /**
         * 分页函数
         * pno--页数
         * psize--每页显示记录数
         * 分页部分是从真实数据行开始，因而勋在加减某个常熟，以确实真正的记录数
         * 纯js分页实质是数据行全部加载，通过是否显示属性完成分页功能
         * */

      function goPage(pno,psize){
          alert(pno);
          alert(psize)
            var itable = document.getElementById("Table");
            var num = itable.rows.length;//表格所有行数(所有记录数)
            var totalPage = 0;//总页数
            var pageSize = psize;//每页显示行数
            //总共分几页
            if(num/pageSize>parseInt(num/pageSize)){
                totalPage = parseInt(num/pageSize)+1;
             }else{
                totalPage = parseInt(num/pageSize);
            }
            var currentPage=pno;//当前页数
            var startRow = (currentPage-1)*pageSize+1;//开始显示的行
            var endRow = currentPage * pageSize;//结束显示的行
            endRow = (endRow>num)?num:endRow;
            //遍历显示数据实现分页
            for(var i =1;i<num;i++){
                var irow = itable.rows[i];
                if(i>=startRow && i<endRow){
                    irow.style.display="";
                }else{
                    irow.style.display="none";
                }
            }
            var pageEnd = document.getElementById("pageEnd");
            var tempStr = "共"+(num+1)+"条记录    分"+totalPage+ "页      当前第"+currentPage+"页";
            if(currentPage>1){
                tempStr +="<a href=\"#\" onClick=\"goPage("+(1)+","+psize+")\">  首页</a>";
                tempStr +="<a href=\"#\" onclick=\"goPage("+(currentPage-1)+","+psize+")\">  <上一页</a>"
            }else{
                tempStr +="    首页";
                tempStr +="   <上一页";
            }
            if(currentPage<totalPage){
                tempStr +="<a href=\"#\" onclick=\"goPage("+(currentPage+1)+","+psize+")\">   下一页></a>";
                tempStr +="<a href=\"#\" onclick=\"goPage("+(totalPage)+","+psize+")\">    尾页</a>";
            }else{
                tempStr +="   下一页>";
                tempStr +="   尾页";
            }
            document.getElementById("barcon").innerHTML = tempStr
            }

    </script>
    <style>
        /*矢量图标志*/
        .icon {
            width: 3em;
            height: 5em;
            vertical-align: -0.15em;
            fill: currentColor;
            overflow: hidden;
        }

        /* 表格样式 */
        .table thead > tr > th {
            text-align: center;
        }

        /*表格宽度*/
        .table {
            width: 65%;
        }

        /*给上面部分字体加粗、*/
        .table-top > div {
            font-weight: 600;
            margin: 0.5% 0.5% 0.5% 0.5%;
        }

        /*给最大div设置边距*/
        #All,form {
            margin-top: 1%;
            margin-left: 5%;
        }
        form .col-md-6{
            padding-bottom: 1%;
        }
        form button{
            margin-right: 10px;
        }
    </style>


</head>
<body>

<!--模糊查询-->
<form class="form-horizontal" role="form">

    <div class="col-md-6 cy-text-right-md">
        <div class="form-inline">
            <div class="form-group cy-mar-ver-s" style="margin-right:0px">共享时间：</div>
            <div class="input-daterange input-group" id="datepicker">
                <input type="text" class="form-control" name="testPaperStartTime" id="testPaperStartTime"
                       placeholder="请输入开始时间"/>
                <span class="input-group-addon" style="border: 0px;background-color:white">——</span>
                <input type="text" class="form-control" name="testPaperEndTime" id="testPaperEndTime"
                       placeholder="请输入结束时间"/>
            </div>
        </div>
    </div>
    <div class="col-md-6 cy-text-right-md">
        <div class="form-inline">
            <div class="form-group cy-mar-ver-s" style="margin-right:0px">试题名称：</div>
            <div class="input-daterange input-group" id="testName">
                <input type="text" class="form-control" name="testPaperName" id="testPaperName"/>
            </div>
        </div>
    </div>
    <div class="col-md-5 cy-text-right-md">
        <div class="form-inline">
            <div class="form-group cy-mar-ver-s" style="margin-right:0px">单位名称：</div>
            <div class="input-daterange input-group">
                <input type="text" class="form-control" name="roleName" id="roleName"/>
            </div>
        </div>
    </div>

    <div class="col-md-7 cy-text-right-md">
        <div class="form-inline">
            <div class="form-group cy-mar-ver-s" style="margin-right:0px">内 容：</div>
            <div class="input-daterange input-group" style="width: 20%;">
                <select class="form-control" id="content">
                    <option value="">默认选择</option>
                    <option value="">默认选择</option>
                    <option value="">默认选择</option>
                    <option value="">默认选择</option>
                </select>
            </div>
            <div class="input-daterange input-group">
                <button type="button" class="btn btn-primary" onclick="queryTest()">查询</button>
                <button type="button" class="btn btn-primary" onclick="resetTest()">重置</button>
                <button type="button" class="btn btn-primary" onclick="">导出</button>
            </div>
        </div>
    </div>
</form>



<div id="All">
    <table class="table table-bordered">
        <div class="table-top">
            <div class="top-one"><input type="checkbox"/> 试卷名称：<span>试卷名称</span></div>
            <div class="top-two"><input type="checkbox" style="visibility: hidden"> 创建单位：<span>XXXXXXXX</span>
                创建人：<span>XXX</span> 创建时间：<span>2012年12月11日</span><br/></div>
        </div>
        <thead>
        <tr>
            <th colspan="5">题目数量</th>
            <th colspan="2" rowspan="3" style="margin-top: -10px">
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-shoucang1"></use>
                </svg>
                <br/>
                收藏
            </th>
            <th rowspan="3" colspan="2">
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-dianzan"></use>
                </svg>
                <br/>
                点赞
            </th>
        </tr>
        <tr>
            <th>单选题</th>
            <th>多选题</th>
            <th>判断题</th>
            <th>填空题</th>
            <th>简答题</th>
        </tr>
        <tr>
            <th>1</th>
            <th>2</th>
            <th>3</th>
            <th>4</th>
            <th>5</th>
        </tr>
        <tr>

        </tr>
        </thead>
    </table>
    <div>
        <button type="button" class="btn btn-primary" onclick="">查看试卷</button>
    </div>

    <table align="left">
        <tr><td><div id ="barcon"></div></td></tr>
    </table>
</div>
<%--<ul>
    <li class="list_btn">上一页</li>
    <li class="page_num"></li>
    <li class="page_num"></li>
    <li class="page_num action"></li>
    <li class="page_num"></li>
    <li class="page_num"></li>
    <li class="list_btn">下一页</li>
</ul>--%>

</body>
</html>


