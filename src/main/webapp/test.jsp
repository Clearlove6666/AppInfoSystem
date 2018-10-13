<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/statics/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath}/statics/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath}/statics/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="${pageContext.request.contextPath}/statics/css/animate.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <%--<link href="${pageContext.request.contextPath}/statics/css/custom.min.css" rel="stylesheet">--%>
    <!-- iCheck -->
    <link href="${pageContext.request.contextPath}/statics/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="${pageContext.request.contextPath}/statics/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="${pageContext.request.contextPath}/statics/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- local css -->
    <link href="${pageContext.request.contextPath}/statics/localcss/applist.css" rel="stylesheet"/>
</head>
<body>

<div style="padding: 100px">
    <button class="btn btn-primary" data-toggle="tooltip" title="提示">按钮</button>
    <div style="width: 110px;height: 50px;">
        <div class="btn-group">
            <button class="btn btn-primary">点击操作</button>
            <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu">
                <li><a href="#" data-original-title="内容1内容1内容1内容1内容1" data-toggle="tooltip">内容1</a></li>
                <li><a href="#" data-original-title="内容1内容1内容1内容1内容1" data-toggle="tooltip">内容1</a></li>
                <li><a href="#" data-original-title="内容1内容1内容1内容1内容1" data-toggle="tooltip">内容1</a></li>
                <li><a href="#" data-original-title="内容1内容1内容1内容1内容1" data-toggle="tooltip">内容1</a></li>

            </ul>
        </div>
    </div>
</div>



<!-- jQuery -->
<script src="${pageContext.request.contextPath}/statics/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/statics/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<!-- NProgress -->
<script src="${pageContext.request.contextPath}/statics/vendors/nprogress/nprogress.js"></script>
<!-- bootstrap-progressbar -->
<script src="${pageContext.request.contextPath}/statics/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- iCheck -->
<script src="${pageContext.request.contextPath}/statics/vendors/iCheck/icheck.min.js"></script>
<!-- JQVMap -->
<script src="${pageContext.request.contextPath}/statics/vendors/jqvmap/dist/jquery.vmap.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
<!-- Custom Theme Scripts -->
<script src="${pageContext.request.contextPath}/statics/js/custom.min.js"></script>
</body>
</html>
