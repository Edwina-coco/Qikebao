<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/14
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <head>
        <style type="text/css" id="alertifyCSS"></style>
        <title>企客宝客户管理系统-产品信息</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="renderer" content="webkit">
        <link rel="stylesheet" href="../css/vendor/bootstrap.min.css">
        <link rel="stylesheet" href="../css/vendor/alertify.min.css">
        <link rel="stylesheet" href="../css/vendor/toastr.min.css">
        <link rel="stylesheet" href="../css/vendor/bootstrap-treeview.min.css">
        <%--<link rel="stylesheet" href="../css/vendor/asScrollable.min.css">--%>
        <link rel="stylesheet" href="../css/vendor/asProgress.min.css">
        <link rel="stylesheet" href="../css/iconfont.css">
        <link rel="stylesheet" href="../css/bootstrap-extend.css">
        <link rel="stylesheet" href="../css/main.css">
        <script type="text/javascript" src="../script/vendor/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="../script/vendor/jquery-migrate-3.0.0.min.js"></script>
        <script type="text/javascript" src="../script/vendor/bootstrap.min.js"></script>
        <script type="text/javascript" src="../script/vendor/alertify.min.js"></script>
        <script type="text/javascript" src="../script/vendor/toastr.min.js"></script>
        <script type="text/javascript" src="../script/vendor/bootstrap-treeview.min.js"></script>
        <script type="text/javascript" src="../script/vendor/jquery-asScrollbar.min.js"></script>
        <script type="text/javascript" src="../script/vendor/jquery-asScrollable.min.js"></script>
        <script type="text/javascript" src="../script/vendor/jquery-asProgress.min.js"></script>
        <script type="text/javascript" src="../script/vendor/typeahead.bundle.min.js"></script>
        <script type="text/javascript" src="../script/vendor/handlebars.min.js"></script>
        <script type="text/javascript" src="../script/common.js"></script>
        <script type="text/javascript" src="../script/entity.js"></script>
        <style type="text/css">
            .sindu_dragger li {
                margin:0;
                padding:0;
                list-style:none;
                text-align:inherit
            }
            .sindu_dragger li table, .sindu_dragger td, .sindu_dragger th, .sindu_dragger tr {
                box-sizing:border-box
            }
            .sindu_dragger.sindu_column li {
                float:left
            }
            .sindu_dragging .sindu_origin_table {
                visibility:hidden
            }
            .gu-mirror li {
                margin:0;
                padding:0;
                list-style:none;
                text-align:inherit
            }
            .gu-mirror li table, .gu-mirror td, .gu-mirror th, .gu-mirror tr {
                box-sizing:border-box
            }
        </style>
    </head>
<body class="app-product" style="padding-right: 0px;">
<div class="page narrow">
    <div class="aside">
        <div class="aside-header">
            <a href="#"><img class="brand-img" src="/picture/logo-72.png"></a>
        </div>
        <div class="aside-navi-container">
            <div id="aside-navi-wrap" class="aside-navi-wrap asScrollable is-enabled asScrollable-vertical">
                <div class="asScrollable-container" style="height: 725px; width: 87px;">
                    <div class="asScrollable-content" style="width: 70px;">
                        <ul class="aside-navi">
                            <li>
                                <a id="aside-navi-workbench" href="workbench.html" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="工作台">
                                    <i class="iconfont icon-workbench"></i> <span>工作台</span></a>
                            </li>
                            <li>
                                <a id="aside-navi-customer" href="customer.html" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="客户">
                                    <i class="iconfont icon-company"></i> <span>客户</span></a>
                            </li>
                            <li>
                                <a id="aside-navi-publicCustomer" href="publicCustomer.html" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="公海">
                                    <i class="iconfont icon-publicGroup"></i> <span>公海</span></a>
                            </li>
                            <li>
                                <a id="aside-navi-contact" href="contact.html" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="联系人">
                                    <i class="iconfont icon-contacts"></i> <span>联系人</span></a>
                            </li>
                            <li>
                                <a id="aside-navi-weixin" href="weixin.html" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="微信">
                                    <i class="iconfont icon-weixin"></i> <span>微信</span></a>
                            </li>
                            <li>
                                <a id="aside-navi-deal" href="deal.html" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="销售机会">
                                    <i class="iconfont icon-deal"></i> <span>销售机会</span></a>
                            </li>
                            <li>
                                <a id="aside-navi-contract" href="contract.html" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="合同">
                                    <i class="iconfont icon-contract"></i> <span>合同</span></a>
                            </li>
                            <li>
                                <a id="aside-navi-payment" href="payment.html" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="款项">
                                    <i class="iconfont icon-payment"></i> <span>款项</span></a>
                            </li>

                            <li>
                                <a id="aside-navi-note" href="note.html" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="跟进记录">
                                    <i class="iconfont icon-note2"></i> <span>跟进记录</span></a>
                            </li>
                            <li>
                                <a id="aside-navi-worksheet" href="worksheet.html" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="工单">
                                    <i class="iconfont icon-worksheet"></i> <span>工单</span></a>
                            </li>
                            <li>
                                <a id="aside-navi-workReport" href="workReport.html" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="工作汇报">
                                    <i class="iconfont icon-workReport"></i> <span>工作汇报</span></a>
                            </li>
                            <li>
                                <a class="selected" id="aside-navi-product" href="product.html" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="产品">
                                    <i class="iconfont icon-product"></i> <span>产品</span></a>
                            </li>
                            <li>
                                <a id="aside-navi-callCenter" href="records.html" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="呼叫中心/短信">
                                    <i class="iconfont icon-tel-busy"></i> <span>呼叫中心</span></a>
                            </li>
                            <li>
                                <a id="aside-navi-statistics" href="customer.html" data-tooltip="tooltip" data-placement="right" data-container="body" data-original-title="统计分析">
                                    <i class="iconfont icon-statistics"></i> <span>统计分析</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="asScrollable-bar asScrollable-bar-vertical asScrollable-bar-hide is-disabled" draggable="false"><div class="asScrollable-bar-handle"></div></div></div>
        </div>
    </div>
    <div class="page-main">
        <div class="page-main-header">
            <nav class="navbar navbar-default" role="navigation">
                <div class="container-fluid">
                    <div class="narrow"><a href="#" id="navi-narrow-link" data-narrow="1"><i class="iconfont"></i></a></div>
                    <div class="navbar-header">产品信息</div>
                    <div class="collapse navbar-collapse navbar-collapse-toolbar">
                        <div class="navbar-search">
                            <form>
                                <div class="form-group">
                                    <div class="input-search">
                                        <i class="search-icon iconfont icon-search"></i>
                                        <span class="twitter-typeahead" style="position: relative; display: inline-block;"><input type="text" class="form-control typeahead tt-hint" data-step="1" data-intro="快捷高效的模糊检索功能，帮您快速找到想要查看的客户" readonly="" autocomplete="off" spellcheck="false" tabindex="-1" style="position: absolute; top: 0px; left: 0px; border-color: transparent; box-shadow: none; opacity: 1; background: none 0% 0% / auto repeat scroll padding-box border-box rgba(0, 0, 0, 0);" dir="ltr"><input type="text" class="form-control typeahead tt-input" id="navbar-search-term" placeholder="输入客户名快速检索..." data-step="1" data-intro="快捷高效的模糊检索功能，帮您快速找到想要查看的客户" autocomplete="off" spellcheck="false" dir="auto" style="position: relative; vertical-align: top; background-color: transparent;"><pre aria-hidden="true" style="position: absolute; visibility: hidden; white-space: pre; font-family: &quot;Microsoft YaHei&quot;, simsun; font-size: 18px; font-style: normal; font-variant: normal; font-weight: 400; word-spacing: 0px; letter-spacing: 0px; text-indent: 0px; text-rendering: auto; text-transform: none;"></pre><div class="tt-menu" style="position: absolute; top: 100%; left: 0px; z-index: 100; display: none;"><div class="tt-dataset tt-dataset-search-cutomers"></div></div></span>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <ul class="nav navbar-toolbar navbar-right navbar-toolbar-right">
                            <li class="dropdown web-phone-dialpad-container">
                                <a data-toggle="dropdown" href="javascript:void(0)" title="呼叫中心" aria-expanded="false" data-animation="slide-bottom" role="button">
                                    <i class="font-size-22 iconfont icon-tel" aria-hidden="true"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right web-phone-panel" role="menu" id="web-phone-panel">
                                    <div class="web-phone-header" role="presentation">
                                        <div class="pull-right margin-top-10"><span data-status="0" id="callcenter-seat-status" class="offline">离线</span>
                                        </div>
                                        <h5>呼叫中心 <span id="callcenter-phone"></span></h5>
                                    </div>
                                    <div class="web-phone-dialpad">
                                        <div class="web-phone-dialpad-input-container">
                                            <input pattern="\d*" type="tel" placeholder="" id="dialpad-number-input">
                                            <a class="dialpad-number-backspace" id="dialpad-number-backspace" href="#">
                                                <i class="font-size-26 iconfont icon-backspace"></i>
                                            </a>
                                        </div>

                                        <ul class="web-phone-dialpad-number-container" id="web-phone-dialpad-number-container">
                                            <li data-value="1">1</li>
                                            <li data-value="2">2</li>
                                            <li data-value="3">3</li>
                                            <li data-value="4">4</li>
                                            <li data-value="5">5</li>
                                            <li data-value="6">6</li>
                                            <li data-value="7">7</li>
                                            <li data-value="8">8</li>
                                            <li data-value="9">9</li>
                                            <li data-value="*">*</li>
                                            <li data-value="0">0</li>
                                            <li data-value="#">#</li>
                                        </ul>

                                        <div class="text-center padding-bottom-20">
                                            <a id="dialpad-call-btn" class="dialpad-call-btn disabled" href="#">
                                                <i class="iconfont icon-tel"></i>
                                            </a>
                                            <div id="dialpad-message" class="margin-top-10 text-danger"></div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="page-main-container flex-container">
            <div class="page-main-aside">
                <div class="page-aside-inner">
                    <div data-role="container">
                        <div data-role="content">
                            <section class="page-aside-section">
                                <h5 class="page-aside-title">产品分类</h5>
                                <div id="productCategoriesTree" class="treeview">
                                    <ul class="list-group">
                                        <li class="list-group-item node-productCategoriesTree" data-nodeid="0" style="color:undefined;background-color:undefined;">
                                            <span class="icon expand-icon iconfont icon-folder-open"></span>
                                        总分类
                                        <a class="action-icon pull-right action-icon-delete icon iconfont icon-close" href="#"></a>
                                        <a class="action-icon pull-right action-icon-edit icon iconfont icon-edit" href="#"></a>
                                        <a class="action-icon pull-right action-icon-add icon iconfont icon-plus" href="#"></a>
                                        </li>
                                        <li class="list-group-item node-productCategoriesTree" data-nodeid="1" style="color:undefined;background-color:undefined;"onclick="a()">
                                            <%-- indent形成一个子文件夹--%>
                                            <span class="indent"></span>
                                            <span class="icon expand-icon iconfont icon-folder-open"></span>
                                        普通产品
                                        <a class="action-icon pull-right action-icon-delete icon iconfont icon-close" href="#"></a>
                                        <a class="action-icon pull-right action-icon-edit icon iconfont icon-edit" href="#"></a>
                                        <a class="action-icon pull-right action-icon-add icon iconfont icon-plus" href="#"></a>
                                        </li>
                                        <li class="list-group-item node-productCategoriesTree" data-nodeid="2" style="color:undefined;background-color:undefined;" onclick="b()">
                                            <%-- indent形成一个子文件夹--%>
                                            <span class="indent"></span>
                                            <span class="icon expand-icon iconfont icon-folder-open"></span>
                                            特殊产品
                                            <a class="action-icon pull-right action-icon-delete icon iconfont icon-close" href="#"></a>
                                            <a class="action-icon pull-right action-icon-edit icon iconfont icon-edit" href="#"></a>
                                            <a class="action-icon pull-right action-icon-add icon iconfont icon-plus" href="#"></a>
                                        </li>
                                        <li class="list-group-item node-productCategoriesTree" data-nodeid="3" style="color:undefined;background-color:undefined;" onclick="c()" >
                                            <%-- indent形成一个子文件夹--%>
                                            <span class="indent"></span>
                                            <span class="icon expand-icon iconfont icon-folder-open"></span>
                                            电子产品
                                            <a class="action-icon pull-right action-icon-delete icon iconfont icon-close" href="#"></a>
                                            <a class="action-icon pull-right action-icon-edit icon iconfont icon-edit" href="#"></a>
                                            <a class="action-icon pull-right action-icon-add icon iconfont icon-plus" href="#"></a>
                                        </li
                                    </ul>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
            <div class="page-main-content">
                <div class="pull-right page-main-actions">
                    <button type="button" data-toggle="modal" data-target="#productModal" class="btn btn-success btn-sm">
                        创建产品信息
                    </button>
                </div>
                <div class="padding-top-20"></div>
                <hr>
                <div>
                    <input type="hidden" id="isSelectModal" value="0">

                    <div class="action-bar padding-top-10 clearfix">
                        <div class="pull-right">
                            <div>
                                <form id="search-field-form" action="/product/select">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-btn auto-width dropdown" id="search-dropdown">
                                                <button class="btn btn-default btn-inverse" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <span id="search-dropdown-label" data-id="name" data-description="1" data-type="1">产品名</span>
                                                    <span class="caret"></span>
                                                </button>
                                                <div class="dropdown-menu" role="menu">
                                                    <div class="dropdown-menu-list" style="max-height:400px;" id="search-dropdown-list">
                                                        <div data-role="container">
                                                            <div data-role="content">
                                                                <div role="presentation" class="dropdown-menu-item">
                                                                    <a href="#" role="menuitem" data-description="1" data-id="name" data-type="1">产品名</a></div>
                                                                <div role="presentation" class="dropdown-menu-item">
                                                                    <a href="#" role="menuitem" data-id="124569" data-type="1" data-description="2">简介</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <input name="product_class" type="hidden" value="${requestScope.get('class')}"/>
                                                 <span id="search-control-container">
          <input type="text" class="form-control search-control" id="search-field-keyword" name="name" placeholder="检索...">
        </span>
                                                <span class="input-group-btn auto-width">
          <button type="submit" id="search-field-button" class="btn btn-success">
                                                    <i class="icon iconfont icon-search" aria-hidden="true"></i>
          </button>
        </span>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <button type="button" class="btn btn-sm btn-default" id="entity-list-delete-btn">
                            <i class="icon iconfont icon-trash" aria-hidden="true"></i>删除</button>
                    </div>

                    <div class="table-responsive page-content-table padding-top-20" id="product-item-list">
                        <table class="table table-pointer table-hover sindu_origin_table" id="product-list-table">
                            <thead>
                            <tr data-product="true">
                                <th class="cell-60 text-center idx">
                                </th>
                                <th id="header-field-name" class="handle cell-180 sindu_handle" data-field="name">
                                    <a href="#" data-sortorder="0" class="sort-title" data-sortfield="name">产品名称</a>
                                </th>
                                <th id="header-field-no" class="handle cell-180 sindu_handle" data-field="no">
                                    <a href="#" data-sortorder="0" class="sort-title" data-sortfield="no">编号</a>
                                </th>
                                <th id="header-field-amount" class="handle cell-180 sindu_handle" data-field="amount">
                                    <a href="#" data-sortorder="0" class="sort-title" data-sortfield="amount">售价价格</a>
                                </th>
                                <th id="header-field-cost" class="handle cell-180 sindu_handle" data-field="cost">
                                    <a href="#" data-sortorder="0" class="sort-title" data-sortfield="cost">成本</a>
                                </th>
                                <th class="cell-300">
                                    <a class="sort-title asc" href="#" data-sortfield="" data-sortorder="1">简介</a>
                                </th>
                            </tr>
                            </thead>
                            <tbody id="product-body">
                            <c:forEach var="product" items="${requestScope.get('list')}">
                                <tr id="product-item-clone">
                                    <td class="idx">
                                        <div class="checkbox-custom checkbox-primary">
                                        <input type="checkbox" name="item-checkbox"
                                        id="item-checkbox" value="${product.getProduct_id()}">
                                        <label></label>
                                        </div>
                                    </td>
                                    <td class="item-name">
                                    ${product.getProduct_name()}
                                    </td>
                                    <td class="item-id">
                                    ${product.getProduct_id()}
                                    </td>
                                    <td class="item-price">
                                    ${product.getProduct_price()}
                                    </td>
                                    <td class="item-cost">
                                    ${product.getProduct_cost()}
                                    </td>
                                    <td class="item-profile">
                                    ${product.getProduct_profile()}
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function a() {
        $(window).attr("location","${pageContext.request.contextPath}/product/view");
    }
    function b(){
        $(window).attr("location","${pageContext.request.contextPath}/product/view1");
    }
    function c(){
        $(window).attr("location","${pageContext.request.contextPath}/product/view2");
    }
    $(function () {

        $("#entity-list-delete-btn").click(function () {
            var check=$("input[name='item-checkbox']:checked").length; //获取选择复选框中要删除的产品的个数
            if(check==0)
            {
                alert("请至少选择一项");
                return false;
            }
            if(confirm("确认要删除该产品信息吗？删除后不可恢复")){
                var class1=${requestScope.get('class')}; //获取删除产品的类别
                var deletelist=new Array(); //初始化一个数组
                $("input[name='item-checkbox']:checked").each(function () {
                    deletelist.push($(this).val()); //将每一个要删除的产品编号放入数组中 <input type="checkbox" name="item-checkbox"
                    <%--//id="item-checkbox" value="${product.getProduct_id()}">--%>
//                    这时设置了复选框的值为产品id
                });
                $.ajax({
                    url:"${pageContext.request.contextPath}/product/delete"+"?Product_class="+class1,
                    data:{
                        deleteitems:deletelist.toString()  //传递数组的字符串格式
                    },
                    type:"post",
                    success:function(data){
                        alert("删除成功");
                        if(class1==0)
                        $(window).attr("location","${pageContext.request.contextPath}/product/view");
                        if(class1==1)
                            $(window).attr("location","${pageContext.request.contextPath}/product/view1");
                        if(class1==2)
                            $(window).attr("location","${pageContext.request.contextPath}/product/view2");
                    },
                    error:function(data){
                      alert("删除失败!");
                    }
                });
            }
        }),
        $("#add-product-btn").click(function () {
            var Product_name=$("#Product_name").val();
            var Product_id=$("#Product_id").val();
            var Product_price=$("#Product_price").val();
            var Product_profile=$("#Product_profile").val();
            var Product_cost=$("#Product_cost").val();
            var Product_class=$("#product-productCategoryId").val();
            $.ajax({
                url:"${pageContext.request.contextPath}/product/addProduct"+"?Product_class="+Product_class,
                data:{
                    Product_name:Product_name,
                Product_id:Product_id,
                Product_price:Product_price,
                Product_cost:Product_cost,
                Product_profile:Product_profile
                },
                async:"false",
                type:"post",
                cache:"false",
                success:function(data)
                {
                    alert("添加成功");
                    $("#productModal").modal('hide');
                    if(Product_class==1)
                        window.location.href="${pageContext.request.contextPath}/product/view";
                    if(Product_class==1)
                        window.location.href="${pageContext.request.contextPath}/product/view1";
                    if(Product_class==2)
                        window.location.href="${pageContext.request.contextPath}/product/view2";
                },
                error:function (data) {
                    alert("请填写完整的数据");
                }
            })
        })
    })
</script>
<div class="modal fade" id="productModal" aria-hidden="true" role="dialog" data-backdrop="static" data-keyboard="false" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" aria-hidden="true" data-dismiss="modal">×</button>
                <h4 class="modal-title">创建产品信息</h4>
            </div>
            <div class="modal-body padding-horizontal-20">
                <form class="form-horizontal" id="form-add-product">
                    <div class="form-group">
                        <label class="col-sm-3 control-label required" for="Product_name">产品名称</label>
                        <div class="col-sm-9">
                            <input class="form-control" id="Product_name" name="Product_name" data-field-required="true" value="">
                            <small class="help-block"></small>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label required" for="Product_id">产品编号</label>
                        <div class="col-sm-9">
                            <input class="form-control" id="Product_id" name="Product_id" data-field-required="true" value="">
                            <small class="help-block"></small>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="product-productCategoryId">产品分类</label>
                        <div class="col-sm-9">
                            <select class="selectpicker show-tick form-control" name="product-productCategoryId" id="product-productCategoryId" >
                                <option value="0">普通产品</option>
                                <option value="1">特殊产品</option>
                                <option value="2">电子产品</option>
                            </select>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-3 control-label required" for="Product_price">产品售价</label>
                        <div class="col-sm-9">
                            <input class="form-control" id="Product_price" name="Product_price" data-field-required="true" data-field-number="true" value="">
                            <small class="help-block"></small>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label required" for="Product_cost">产品成本</label>
                        <div class="col-sm-9">
                            <input class="form-control" id="Product_cost" name="Product_cost" data-field-required="true" data-field-number="true" value="">
                            <small class="help-block"></small>
                        </div>
                    </div>

                    <div id="entity-field-custom">
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="Product_profile">简介</label>
                            <div class="col-sm-9">
                                <textarea class="form-control"  id="Product_profile"name="Product_profile" data-field-required="false" data-duplicate-key="124569" data-duplicate="false"></textarea>
                                <small class="help-block"></small>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" id="add-product-btn" type="button">确定</button>
                <a class="btn btn-sm btn-white btn-pure" data-dismiss="modal" href="javascript:void(0)">取消</a>
            </div>
        </div>
    </div>
</div>
<link rel="stylesheet" href="../css/vendor/bootstrap-datepicker.min.css">
<link rel="stylesheet" href="../css/vendor/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="../css/vendor/bootstrap-select2.min.css">
<link rel="stylesheet" href="../css/vendor/slidePanel.min.css">
<link rel="stylesheet" href="../css/vendor/bootstrap-editable.min.css">
<link rel="stylesheet" href="../css/vendor/magnific-popup.min.css">
<script type="text/javascript" src="../script/vendor/moment.min.js"></script>
<script type="text/javascript" src="../script/vendor/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="../script/vendor/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="../script/vendor/bootstrap-select2.min.js"></script>
<script type="text/javascript" src="../script/vendor/jquery-slidePanel.min.js"></script>
<script type="text/javascript" src="../script/vendor/bootstrap-editable.min.js"></script>
<script type="text/javascript" src="../script/vendor/plupload.full.min.js"></script>
<script type="text/javascript" src="../script/vendor/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="../script/vendor/table-dragger.min.js"></script>
</body>
</html>