<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    //    获取主机和应用的名称
    String app = request.getContextPath();
//    可以将该对象放在session里,只需要在页面调用即可,应该在所有的允许用户直接访问的view中添加
    request.getSession().setAttribute("app",app);
%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="description" content="">
    <meta name="keywords" content="thema bootstrap template, thema admin, bootstrap, admin template, bootstrap admin">

    <meta name="author" content="LanceCoder">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <link rel="shortcut icon" href="">
    <title>Thema Admin Boostrap Template</title>

    <link href="${app}/css/global-plugins.css" rel="stylesheet">
    <link href="${app}/vendors/jquery-icheck/skins/all.css" rel="stylesheet" />


    <!--This css plugins uses on this page only-->
    <link href="${app}/vendors/summernote/summernote.css" rel="stylesheet" />
    <link href="${app}/vendors/bootstrap-datepicker/css/bootstrap-datepicker.css" rel="stylesheet" />
    <link href="${app}/vendors/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
    <link href="${app}/vendors/bootstrap-colorpicker/css/bootstrap-colorpicker.css" rel="stylesheet" />
    <link href="${app}/vendors/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" />
    <link href="${app}/vendors/summernote/summernote-bs3.css" rel="stylesheet" />
    <link href="${app}/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" />
    <link href="${app}/vendors/jquery.multi-select/css/multi-select.css" rel="stylesheet" />
    <link href="${app}/vendors/typeahead/css/typeahead.css" rel="stylesheet" />
    <link href="${app}/vendors/select2/select2.css" rel="stylesheet" />
    <link href="${app}/vendors/ios-switch/css/switch.css" rel="stylesheet" />
    <link href="${app}/vendors/bootstrap-star-rating/css/star-rating.css" rel="stylesheet" />
    <link href="${app}/vendors/bootstrap-fileupload/css/bootstrap-fileupload.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="${app}/css/theme.css" rel="stylesheet">
    <link href="${app}/css/style-responsive.css" rel="stylesheet"/>
    <link href="${app}/css/class-helpers.css" rel="stylesheet"/>

    <!--Color schemes-->
    <link href="${app}/css/colors/green.css" rel="stylesheet">
    <link href="${app}/css/colors/turquoise.css" rel="stylesheet">
    <link href="${app}/css/colors/blue.css" rel="stylesheet">
    <link href="${app}/css/colors/amethyst.css" rel="stylesheet">
    <link href="${app}/css/colors/cloud.css" rel="stylesheet">
    <link href="${app}/css/colors/sun-flower.css" rel="stylesheet">
    <link href="${app}/css/colors/carrot.css" rel="stylesheet">
    <link href="${app}/css/colors/alizarin.css" rel="stylesheet">
    <link href="${app}/css/colors/concrete.css" rel="stylesheet">
    <link href="${app}/css/colors/wet-asphalt.css" rel="stylesheet">

    <!--Fonts-->
    <link href="${app}/fonts/Indie-Flower/indie-flower.css" rel="stylesheet" />
    <link href="${app}/fonts/Open-Sans/open-sans.css?family=Open+Sans:300,400,700" rel="stylesheet" />

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body id="default-scheme" class="theme-sidebar-2">

<section id="container">

    <section id="main-content1">


        <section class="wrapper">


            <!--======== START CLIENT DETAILS FORM ========-->
            <div class="c_panel">

                <div class="c_title bg-info padding-top-20 padding-bottom-20">
                    <h2><span class="font-bold">课程信息修改</span></h2>
                    <div class="clearfix"></div>
                </div><!--/.c_title-->

                <div class="c_content">

                    <form method="post" class="form-horizontal" action="${app}/course/update?cid=${course.get(0).cid}">
                        <div class="form-group">
                            <label for="client-name0" class="col-sm-2 control-label">课程名 *</label>
                            <div class="col-sm-10">
                                <input type="text" name="cid" value="${course.get(0).cid}" style="display: none">
                                <input type="text" class="form-control" id="client-name0" name="cname" value="${course.get(0).cname}" placeholder="请输入课程号:101、102...">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="client-name" class="col-sm-2 control-label">上课地点 *</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="client-name" name="location" value="${course.get(0).location}" placeholder="请输入上课地点">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="client-name9" class="col-sm-2 control-label">上课时间 *</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="client-name9" name="ctime" value="${course.get(0).ctime}" placeholder="请输入上课时间">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="client-name3" class="col-sm-2 control-label">授课教师职工号 *</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="client-name3" name="tid" value="${course.get(0).teacher.tid}" placeholder="请输入职工号:100001、100002...">
                            </div>
                            <div id="tidTips" class="col-sm-2 control-label"></div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" id="submit4" class="btn btn-info btn-flat">更新</button>
                            </div>
                        </div>
                    </form>

                </div><!--/.c_content-->

            </div><!--/.c_panels-->
            <!--======== END BUG TRACKER FORM ========-->
            <script  type="text/javascript" src="${app}/js/jquery.js"></script>
            <script type="text/javascript">
                $(function (){
                    var sta=false;
                    $("#client-name3").keyup(function () {

                        $.get(
                            "${app}/course/userExisttid?tid="+$("#client-name3").val(),
                            function (result) {
                                if(result=="yes"){
                                    $("#tidTips").text("不存在");
                                    $("#submit4").addClass("disabled");
                                    sta=false;
                                }else {
                                    $("#tidTips").text(" ");
                                    $("#submit4").removeClass("disabled");
                                    sta=true;
                                }
                            }
                        );
                    });
                    $("#submit4").click(function () {
                        if (sta){
                            return true;
                        }
                        else {return false;}
                    })
                });
            </script>

        </section>
    </section>

</section><!--/.container-->


<script src="${app}/js/global-plugins.js"></script>

<!--common script init for all pages-->
<script src="${app}/js/theme.js" type="text/javascript" ></script>

<!-- For for the page that has form only -->
<script src="${app}/js/forms.js"></script>
<script src="${app}/js/form-validation.js"></script>
<script src="${app}/js/form-wizard.js"></script>
<script src="${app}/js/form-plupload.js"></script>
<script src="${app}/js/form-x-editable.js"></script>

<script type="text/javascript">


    $(document).ready(function(){
        new WOW().init();

        App.initPage();
        App.initLeftSideBar();
        App.initCounter();
        App.initNiceScroll();
        App.initPanels();
        App.initProgressBar();
        App.initSlimScroll();
        App.initNotific8();
        App.initTooltipster();
        App.initStyleSwitcher();
        App.initMenuSelected();
        App.initRightSideBar();
        App.initSummernote();
        App.initAccordion();
        App.initModal();
        App.initPopover();

    });
</script>


</body>
</html>
