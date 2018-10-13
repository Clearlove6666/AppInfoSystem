<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/header.jsp" %>
<div class="right_col" role="main">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2> 新增APP基础信息
                        <i class="fa fa-user"></i>
                        <small>测试用户001</small>
                    </h2>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content1">
                    <form class="form-horizontal form-label-left" method="post" action="">
                        <input type="hidden" name="id" id="id" value="">
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                软件名称 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" class="form-control col-md-7 col-xs-12"
                                       data-validate-length-range="20" data-validate-words="1" required
                                       placeholder="请输入软件名称" readonly value="${appInfo.softwareName}">
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                APK名称 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" class="form-control col-md-7 col-xs-12"
                                       data-validate-length-range="20" data-validate-words="1" required
                                       placeholder="请输入APK名称" readonly value="${appInfo.APKName}">
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                支持ROM <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" class="form-control col-md-7 col-xs-12"
                                       data-validate-length-range="20" data-validate-words="1" required
                                       placeholder="请输入支持的ROM" readonly value="${appInfo.supportROM}">
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                界面语言 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" class="form-control col-md-7 col-xs-12"
                                       data-validate-length-range="20" data-validate-words="1" required
                                       placeholder="请输入界面语言" readonly value="${appInfo.interfaceLanguage}">
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                软件大小 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" class="form-control col-md-7 col-xs-12"
                                       data-validate-minmax="10,500" data-validate-words="1" required
                                       placeholder="请输入软件大小，单位为MB" readonly value="${appInfo.softwareSize}">
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                下载次数 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" class="form-control col-md-7 col-xs-12"
                                       data-validate-length-range="20" data-validate-words="1" required
                                       placeholder="请输入下载次数" readonly value="${appInfo.downloads}">
                            </div>
                        </div>

                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                所属平台 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" class="form-control col-md-7 col-xs-12"
                                       data-validate-length-range="20" data-validate-words="1" required
                                       readonly value="${appInfo.downloads}">
                            </div>
                        </div>

                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                一级分类 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" class="form-control col-md-7 col-xs-12"
                                       data-validate-length-range="20" data-validate-words="1" required
                                       readonly value="${appInfo.categoryLevel1Name}">
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                二级分类 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" class="form-control col-md-7 col-xs-12"
                                       data-validate-length-range="20" data-validate-words="1" required
                                       readonly value="${appInfo.categoryLevel2Name}">
                            </div>
                        </div>

                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                三级分类 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" class="form-control col-md-7 col-xs-12"
                                       data-validate-length-range="20" data-validate-words="1" required
                                       readonly value="${appInfo.categoryLevel3Name}">
                            </div>
                        </div>

                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                APP状态 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" class="form-control col-md-7 col-xs-12" readonly value="${appInfo.statusName}">
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                应用简介 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <textarea required placeholder="请输入本软件的相关信息，本信息作为软件的详细信息进行软件的介绍。"
                                          class="form-control col-md-7 col-xs-12"  readonly>${appInfo.appInfo}</textarea>
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                LOGO图片 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">

                                <img src="${appInfo.logoPicPath}" width="100px">
                                <input type="hidden" id="logoPicPath" name="logoPicPath" value="${appInfo.logoPicPath}"/>
                                <input type="hidden" id="logoLocPath" name="logoLocPath" value="${appInfo.logoLocPath}"/>
                                <div id="uploadfile" style="display: none">
                                    <input id="attach"  type="file" class="form-control col-md-7 col-xs-12" name="attach">
                                    <p><span style="color:red;font-weight: bold;">*注：1、大小不得超过500k.2、图片格式：jpg、png、jpeg、pneg</span></p>
                                </div>
                                <div id="logoFile"></div>
                                <%--${fileUploadError }--%>

                                <%--<input  id="logoPicPath" type="file" class="form-control col-md-7 col-xs-12" required value="${appInfo.logoLocPath}">--%>

                            </div>
                        </div>
                        <div class="ln_solid"></div>

                    </form>
                </div>
                <div class="clearfix"></div>
                <div class="x_title">
                    <h2>历史版本列表</h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li>
                            <a href="#" class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="row">
                        <div class="col-sm-12">
                            <table class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th style="width: 70px">软件名称</th>
                                    <th style="width: 10px">版本号</th>
                                    <th style="width: 90px">版本大小(单位:M)</th>
                                    <th style="width: 50px">发布状态</th>
                                    <th style="width: 50px">APK文件下载</th>
                                    <th style="width: 50px">最新更新时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${appversion}" var="version">
                                    <tr class="odd" role="row">
                                        <td>${version.appName}</td>
                                        <td>${version.versionNo}</td>
                                        <td>${version.versionSize}</td>
                                        <td>${version.publishStatusName}</td>
                                        <td>${version.apkFileName}</td>
                                        <td>${version.modifyDate}</td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-6 col-md-offset-3">
                        <button type="button" class="btn btn-primary">返回</button>
                    </div>
                </div>
                <div class="clearfix"></div>
                <br><br>
            </div>

        </div>
    </div>

</div>
<%@include file="common/footer.jsp" %>
