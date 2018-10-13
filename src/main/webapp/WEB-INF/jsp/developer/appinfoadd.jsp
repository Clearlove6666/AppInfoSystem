<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="common/header.jsp" %>
<div class="right_col" role="main">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2> 新增APP基础信息
                        <i class="fa fa-user"></i>
                        <small>${devUserSession.devName}</small>
                    </h2>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <form class="form-horizontal form-label-left" method="post" action="/app/addappinfo" ENCTYPE="multipart/form-data">
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                软件名称 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="softwareName" class="form-control col-md-7 col-xs-12"
                                       data-validate-length-range="20" data-validate-words="1" required
                                       placeholder="请输入软件名称"  value="${appInfo.softwareName}">
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                APK名称 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" id="APKName" name="APKName" class="form-control col-md-7 col-xs-12"
                                       data-validate-length-range="20" data-validate-words="1" required
                                       placeholder="请输入APK名称" value="${appInfo.APKName}">
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                支持ROM <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="supportROM" class="form-control col-md-7 col-xs-12"
                                       data-validate-length-range="20" data-validate-words="1" required
                                       placeholder="请输入支持的ROM" value="${appInfo.supportROM}">
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                界面语言 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="interfaceLanguage" class="form-control col-md-7 col-xs-12"
                                       data-validate-length-range="20" data-validate-words="1" required
                                       placeholder="请输入界面语言" value="${appInfo.interfaceLanguage}">
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                软件大小 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="softwareSize" class="form-control col-md-7 col-xs-12"
                                       data-validate-minmax="10,500" data-validate-words="1" required
                                       placeholder="请输入软件大小，单位为MB" value="${appInfo.softwareSize}">
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                下载次数 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="downloads" class="form-control col-md-7 col-xs-12"
                                       data-validate-length-range="20" data-validate-words="1" required
                                       placeholder="请输入下载次数" value="${appInfo.downloads}">
                            </div>
                        </div>

                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                所属平台 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12" >
                                <select class="form-control" required="required" id="flatformId" name="flatformName">
                                        <%--<option value="1">--请选择--</option>--%>
                                        <%--<c:forEach items="${pingtai}" var="p">--%>
                                            <%--<option value="${p.id}">${p.valueName}</option>--%>
                                        <%--</c:forEach>--%>
                                </select>
                            </div>
                        </div>

                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                一级分类 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="hidden" value="${appInfo.categoryLevel1}" id="cl1" />
                                <select name="categoryLevel1" id="categoryLevel1" class="form-control"   required="required"> </select>
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                二级分类 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="hidden" value="${appInfo.categoryLevel2}" id="cl2" />
                                <select name="categoryLevel2" id="categoryLevel2" class="form-control"   required="required"> </select>
                            </div>
                        </div>

                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                三级分类 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="hidden" value="${appInfo.categoryLevel3}" id="cl3" />
                                <select name="categoryLevel3" id="categoryLevel3" class="form-control"   required="required"> </select>
                            </div>
                        </div>

                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                APP状态 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                待审核
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                应用简介 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <textarea required name="appInfo" placeholder="请输入本软件的相关信息，本信息作为软件的详细信息进行软件的介绍。"
                                          class="form-control col-md-7 col-xs-12"></textarea>
                            </div>
                        </div>
                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">
                                LOGO图片 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="file" class="form-control col-md-7 col-xs-12" required="required"
                                id="logofile" name="logofile">
                                文件上传失败
                            </div>
                        </div>
                        <div class="ln_solid"></div>
                        <div class="form-group">
                            <div class="ccol-md-6 col-md-offset-3">
                                <button type="submit" class="btn btn-success">保存</button>
                                <button type="button" class="btn btn-primary">返回</button>
                                <br>
                                <br>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>
<%@include file="common/footer.jsp" %>
<script src="${pageContext.request.contextPath}/statics/js/appinfoadd.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/appinfomodify.js"></script>