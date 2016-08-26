<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%-- <link rel="stylesheet" type="text/css"
           href="${pageContext.request.contextPath}/static/jquery-easyui-1.5/themes/bootstrap/easyui.css">
     <link rel="stylesheet" type="text/css"
           href="${pageContext.request.contextPath}/static/jquery-easyui-1.5/themes/icon.css">
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/reset.css">
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/menu.css">


     <script type="text/javascript"
             src="${pageContext.request.contextPath}/static/jquery-easyui-1.5/jquery.min.js"></script>
     <script type="text/javascript"
             src="${pageContext.request.contextPath}/static/jquery-easyui-1.5/jquery.easyui.min.js"></script>--%>
    <title><sitemesh:write property='title'/></title>
    <sitemesh:write property='head'/>
    <style type="text/css">
        #northPanel {
            background: #53C7A0;
            height: 60px;
            vertical-align: middle;
        }

        .top-bar-left {
            margin-left: 20px;
            margin-top: 4px;
        }

        .logo1 {
            vertical-align: middle;
        }

        .logo2 {
            vertical-align: middle;
            margin-left: 24px;
            margin-top: 8px;
        }

        .l-btn-text {
            font-size: 14px;
        }
    </style>
</head>
<body>
<div id="mainLayout" class="easyui-layout hidden" data-options="fit: true">
    <div id="northPanel" data-options="region: 'north', border: false" style="height: 60px; overflow: hidden;">
        <div id="topbar" class="top-bar">
            <div class="top-bar-left" style="display: inline-block">
                <img src="${pageContext.request.contextPath}/static/images/logo-1.png" alt="logo1" width="58"
                     height="51"
                     class="logo1"/>
                <img src="${pageContext.request.contextPath}/static/images/logo-2.png" alt="logo2"
                     class="logo2"/>
            </div>
        </div>

    </div>

    <div data-options="region: 'west', split: true, minWidth: 200, maxWidth: 400"
         class="main-sidebar">
        <div class="easyui-accordion side-left" data-options="multiple:true, border: false">
            <div title="设备管理" data-options="iconCls:'icon-1'">
                <a class="easyui-linkbutton menu-link-btn" data-options="plain:true">设备查询</a><br>
                <a class="easyui-linkbutton menu-link-btn" data-options="plain:true">新增设备</a>
            </div>
            <div title="设备数据" data-options="selected:true,iconCls:'icon-2'">
                <a class="easyui-linkbutton menu-link-btn" data-options="plain:true"
                   href="${pageContext.request.contextPath}/pages/testsite">监测数据</a>
                <a class="easyui-linkbutton menu-link-btn" data-options="plain:true"
                   href="${pageContext.request.contextPath}/pages/test2">运行参数</a>
                <a class="easyui-linkbutton menu-link-btn" data-options="plain:true" href="#">设备命令</a>
            </div>
            <div title="设备控制" data-options="iconCls:'icon-3'">
                <a class="easyui-linkbutton menu-link-btn" data-options="plain:true">短信命令</a>
                <a class="easyui-linkbutton menu-link-btn" data-options="plain:true">下发记录</a>
            </div>
        </div>
    </div>

    <div data-options="region: 'center'">
        <div class="easyui-layout" data-options="fit: true">
            <div data-options="region: 'north', split: false, border: false">
                <div class="console-title console-title-border">
                    <div class="pull-left">
                        <sitemesh:write property='div.heading-left'/>
                    </div>
                    <div class="pull-right">
                        <sitemesh:write property='div.heading-right'/>
                    </div>
                </div>
            </div>
            <div data-options="region: 'center', border: false" style="overflow: hidden;">
                <sitemesh:write property='body'/>
            </div>
        </div>
    </div>
    <div data-options="region: 'south', collapsed: false, border: false"
         style="height: 40px;" class="main-footer">
        <div style="color: #4e5766; padding: 6px 0px 0px 0px; margin: 0px auto; text-align: center; font-size:12px; font-family:微软雅黑;">
            Copyright © NEC中国研究院
        </div>
    </div>

</div>

</body>
</html>