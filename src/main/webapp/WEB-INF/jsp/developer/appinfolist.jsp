<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="common/header.jsp" %>
<div class="right_col" role="main">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2> APP 信息管理维护
                        <i class="fa fa-user"></i>
                        <small>${devUserSession.devName}-您可以通过搜索或者其他的筛选项对APP的信息进行修改、删除等管理操作</small>
                    </h2>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <form method="post" action="/app/appinfolist.html">
                        <input type="hidden" name="pageIndex" value="1">
                        <ul>
                            <li>
                                <div class="form-group">
                                    <lable class="control-label col-md-3 col-sm-3 col-xs-12">软件名称</lable>
                                    <div class="col-md-8 col-sm-8 col-xs-12">
                                        <input name="querySoftwareName" type="text" class="form-control col-md-7 col-xs-12" value="${querySoftwareName}">
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="form-group">
                                    <lable class="control-label col-md-3 col-sm-3 col-xs-12">APP状态</lable>
                                    <div class="col-md-8 col-sm-8 col-xs-12">
                                        <select name="queryStatus" class="form-control">
                                            <c:if test="${statusList != null }">
                                                <option value="">--请选择--</option>
                                                <c:forEach var="dataDictionary" items="${statusList}">
                                                    <option <c:if test="${dataDictionary.valueId == queryStatus }">selected="selected"</c:if>
                                                            value="${dataDictionary.valueId}">${dataDictionary.valueName}</option>
                                                </c:forEach>
                                            </c:if>
                                        </select>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="form-group">
                                    <lable class="control-label col-md-3 col-sm-3 col-xs-12">所属平台</lable>
                                    <div class="col-md-8 col-sm-8 col-xs-12">
                                        <select name="queryFlatformId" class="form-control">
                                            <c:if test="${flatFormList != null }">
                                                <option value="">--请选择--</option>
                                                <c:forEach var="dataDictionary" items="${flatFormList}">
                                                    <option <c:if test="${dataDictionary.valueId == queryFlatformId }">selected="selected"</c:if>
                                                            value="${dataDictionary.valueId}">${dataDictionary.valueName}</option>
                                                </c:forEach>
                                            </c:if>
                                        </select>


                                        <%----%>
                                        <%--<select name="queryFlatformId" class="form-control">--%>
                                            <%--<c:if test="${flatFormList != null }">--%>
                                                <%--<option value="">--请选择--</option>--%>
                                                <%--<c:forEach var="dataDictionary" items="${flatFormList}">--%>
                                                    <%--<option <c:if test="${dataDictionary.valueId == queryFlatformId }">selected="selected"</c:if>--%>
                                                            <%--value="${dataDictionary.valueId}">${dataDictionary.valueName}</option>--%>
                                                <%--</c:forEach>--%>
                                            <%--</c:if>--%>
                                        <%--</select>--%>
                                    </div>
                                </div>
                            </li>
                            <!-- 一级、二级、三级分类 -->
                            <li>
                                <div class="form-group">
                                    <lable class="control-label col-md-3 col-sm-3 col-xs-12">一级分类</lable>
                                    <div class="col-md-8 col-sm-8 col-xs-12">
                                        <select name="queryCategoryLevel1" class="form-control" id="queryCategoryLevel1">
                                            <c:if test="${categoryLevel1List!=null}">
                                                <option value="">--请选择--</option>
                                                <c:forEach items="${categoryLevel1List}" var="oneid">
                                                    <option <c:if test="${oneid.id==queryCategoryLevel1}">selected="selected"</c:if>
                                                            value="${oneid.id}">${oneid.categoryName}</option>
                                                </c:forEach>
                                            </c:if>
                                        </select>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="form-group">
                                    <lable class="control-label col-md-3 col-sm-3 col-xs-12">二级分类</lable>
                                    <div class="col-md-8 col-sm-8 col-xs-12">
                                        <select name="queryCategoryLevel2" class="form-control" id="queryCategoryLevel2">
                                            <c:if test="${queryCategoryLevel2!=null}">
                                                <option value="">--请选择--</option>
                                                <c:forEach items="${categoryLevel2List}" var="twoid">
                                                    <option <c:if test="${twoid.id==queryCategoryLevel2}">selected="selected"</c:if>
                                                            value="${twoid.id}">${twoid.categoryName}</option>
                                                </c:forEach>
                                            </c:if>
                                        </select>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="form-group">
                                    <lable class="control-label col-md-3 col-sm-3 col-xs-12">三级分类</lable>
                                    <div class="col-md-8 col-sm-8 col-xs-12">
                                        <select name="queryCategoryLevel3" class="form-control" id="queryCategoryLevel3">
                                            <c:if test="${queryCategoryLevel3!=null}">
                                                <   <option value="">--请选择--</option>
                                                <c:forEach items="${categoryLevel3List}" var="threeid">
                                                    <option <c:if test="${threeid.id==queryCategoryLevel3}">selected="selected"</c:if>
                                                            value="${threeid.id}">${threeid.categoryName}</option>
                                                </c:forEach>
                                            </c:if>
                                        </select>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <button class="btn btn-primary" type="submit">查&nbsp;&nbsp;&nbsp;&nbsp;询</button>
                            </li>
                        </ul>
                    </form>
                </div>
            </div>

        </div>
    </div>

    <div class="x_panel col-md-12 col-sm-12 col-xs-12 dataTables_wrapper">
        <div class="x_content">
            <div class="row">
                <a href="/app/appinfoadd.html" class="btn btn-success btn-sm">新增APP基础信息</a>
                <table class="table table-striped table-bordered dataTable"
                       cellspacing="0" width="100%" role="grid" aria-describedby="datatable-responsive_info">
                    <thead>
                    <tr role="row" class="odd">
                        <th tabindex="0"
                            aria-controls="datatable-responsive" rowspan="1" colspan="1"
                            aria-sort="ascending">软件名称
                        </th>
                        <th tabindex="0"
                            aria-controls="datatable-responsive" rowspan="1" colspan="1"
                            aria-sort="ascending">APK名称
                        </th>
                        <th tabindex="0"
                            aria-controls="datatable-responsive" rowspan="1" colspan="1"
                            aria-sort="ascending">软件大小(单位:M)
                        </th>
                        <th tabindex="0"
                            aria-controls="datatable-responsive" rowspan="1" colspan="1"
                            aria-sort="ascending">所属平台
                        </th>
                        <th tabindex="0"
                            aria-controls="datatable-responsive" rowspan="1" colspan="1"
                            aria-sort="ascending">所属分类(一级分类、二级分类、三级分类)
                        </th>
                        <th tabindex="0"
                            aria-controls="datatable-responsive" rowspan="1" colspan="1"
                            aria-sort="ascending">状态
                        </th>
                        <th tabindex="0"
                            aria-controls="datatable-responsive" rowspan="1" colspan="1"
                            aria-sort="ascending">下载次数
                        </th>
                        <th tabindex="0"
                            aria-controls="datatable-responsive" rowspan="1" colspan="1"
                            aria-sort="ascending">最新版本号
                        </th>
                        <th style="width:130px;">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${appInfoList}" var="api">
                        <tr>
                            <td>${api.softwareName}</td>
                            <td>${api.APKName}</td>
                            <td>${api.softwareSize}</td>
                            <td>${api.flatformName}</td>
                            <td>${api.categoryLevel1Name}-->${api.categoryLevel2Name}-->${api.categoryLevel3Name}</td>
                            <td>${api.statusName}</td>
                            <td>${api.downloads}</td>
                            <td>${api.versionNo}</td>
                            <td>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-danger">点击操作</button>
                                    <button type="button" class="btn btn-danger dropdown-toggle"
                                            data-toggle="dropdown" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">切换</span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <c:if test="${api.status==5||api.status==2}">
                                            <li>
                                                <a href=""
                                                   data-toggle="tooltip" data-placement="top" title=""
                                                   data-original-title="上架">上架</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${api.status==4}">
                                            <li>
                                                <a href=""
                                                   data-toggle="tooltip" data-placement="top" title=""
                                                   data-original-title="下架">下架</a>
                                            </li>
                                        </c:if>

                                        <li>
                                            <a href="/app/appversionadd.html?id=${api.id}" data-toggle="tooltip" data-placement="top" title=""
                                               data-original-title="新增APP版本信息">新增版本</a>
                                        </li>
                                        <c:if test="${api.versionNo!=null}">
                                            <li>
                                                <a href="/app/appVerSionModify.html?id=${api.id}"
                                                   data-toggle="tooltip" data-placement="top" title=""
                                                   data-original-title="修改APP版本信息">修改版本</a>
                                            </li>
                                        </c:if>
                                        <li>
                                            <a href="/app/appinfomodify.html?id=${api.id}" data-toggle="tooltip" data-placement="top" title=""
                                               data-original-title="修改APP基础信息">修改</a>
                                        </li>
                                        <li>
                                            <a href="/app/appinfoview.html?id=${api.id}" data-toggle="tooltip" data-placement="top" title=""
                                               data-original-title="查看APP基础信息以及全部版本信息">查看</a>
                                        </li>
                                        <li>
                                            <a href="" data-toggle="tooltip" data-placement="top" title=""
                                               data-original-title="删除APP基础信息以及全部版本信息">删除</a>
                                        </li>
                                    </ul>
                                </div>

                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="row">
                <div class="col-sm-5">
                    <div class="dataTables_info" id="datatable-responsive_info"
                         role="status" aria-live="polite">
                        共${pages.totalCount}条记录 ${pages.currentPageNo}/${pages.totalPageCount}页
                    </div>
                </div>
                <div class="col-sm-7">
                    <div class="dataTables_paginate">
                        <ul class="pagination">

                            <c:if test="${pages.currentPageNo > 1}">
                                <li class="paginate_button previous"><a
                                        href="javascript:page_nav(document.forms[0],1);"
                                        aria-controls="datatable-responsive" data-dt-idx="0"
                                        tabindex="0">首页</a>
                                </li>
                                <li class="paginate_button "><a
                                        href="javascript:page_nav(document.forms[0],${pages.currentPageNo-1});"
                                        aria-controls="datatable-responsive" data-dt-idx="1"
                                        tabindex="0">上一页</a>
                                </li>
                            </c:if>
                            <c:if test="${pages.currentPageNo < pages.totalPageCount }">
                                <li class="paginate_button "><a
                                        href="javascript:page_nav(document.forms[0],${pages.currentPageNo+1 });"
                                        aria-controls="datatable-responsive" data-dt-idx="1"
                                        tabindex="0">下一页</a>
                                </li>
                                <li class="paginate_button next"><a
                                        href="javascript:page_nav(document.forms[0],${pages.totalPageCount });"
                                        aria-controls="datatable-responsive" data-dt-idx="7"
                                        tabindex="0">最后一页</a>
                                </li>
                            </c:if>






                            <%----%>
                            <%--<li class="paginate_button previous">--%>
                                <%--<a href="${pages.currentPageNo=1}">首页</a>--%>
                            <%--</li>--%>
                            <%--<li class="paginate_button previous">--%>
                                <%--<a href="${pages.currentPageNo-1}">上一页</a>--%>
                            <%--</li>--%>
                            <%--<li class="paginate_button previous">--%>
                                <%--<a href="${pages.currentPageNo+1}">下一页</a>--%>
                            <%--</li>--%>
                            <%--<li class="paginate_button previous">--%>
                                <%--<a href="${pages.totalPageCount}">最后一页</a>--%>
                            <%--</li>--%>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="common/footer.jsp" %>
<script src="${pageContext.request.contextPath}/statics/js/appinfolist.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/rollpage.js"></script>
