<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context_root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="zh-cn">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>Freedom</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<%@ include file="/resources/config/resource_config.jspf"%>
<%@ include file="/resources/config/base_css_config.jspf"%>
<!-- BEGIN THEME LAYOUT STYLES -->
<link href="${metronic_root }/v4.7/theme/assets/layouts/layout3/css/layout.min.css" rel="stylesheet" type="text/css" />
<link href="${metronic_root }/v4.7/theme/assets/layouts/layout3/css/themes/default.min.css" rel="stylesheet"
  type="text/css" id="style_color" />
<link href="${metronic_root }/v4.7/theme/assets/layouts/layout3/css/custom.min.css" rel="stylesheet" type="text/css" />

<link href="${global_css_root }/freedom.css" rel="stylesheet" type="text/css" />
<!-- END THEME LAYOUT STYLES -->

<link rel="shortcut icon" href="${global_img_root }/favicon.png" />
</head>
<!-- END HEAD -->

<body class="page-container-bg-solid">
  <div class="page-wrapper">
    <div class="page-wrapper-row">
      <div class="page-wrapper-top">
        <!-- BEGIN HEADER -->
        <div class="page-header">
          <!-- BEGIN HEADER TOP -->
          <div class="page-header-top">
            <div class="container">
              <!-- BEGIN LOGO -->
              <div class="page-logo">
                <a href="${context_root }/index.jsp"> <img src="${global_img_root }/wow.png" alt="logo"
                  class="logo-default margin-top-5">
                </a>
              </div>
              <!-- END LOGO -->
              <!-- BEGIN RESPONSIVE MENU TOGGLER -->
              <a href="javascript:;" class="menu-toggler"></a>
              <!-- END RESPONSIVE MENU TOGGLER -->
              <!-- BEGIN TOP NAVIGATION MENU -->
              <div class="top-menu">
                <ul class="nav navbar-nav pull-right">
                  <!-- BEGIN NOTIFICATION DROPDOWN -->
                  <!-- DOC: Apply "dropdown-hoverable" class after "dropdown" and remove data-toggle="dropdown" data-hover="dropdown" data-close-others="true" attributes to enable hover dropdown mode -->
                  <!-- DOC: Remove "dropdown-hoverable" and add data-toggle="dropdown" data-hover="dropdown" data-close-others="true" attributes to the below A element with dropdown-toggle class -->
                  <li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar"><a
                    href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                    data-close-others="true"> <i class="icon-bell"></i> <span class="badge badge-default">7</span>
                  </a>
                    <ul class="dropdown-menu">
                      <li class="external">
                        <h3>
                          You have <strong>12 pending</strong> tasks
                        </h3> <a href="app_todo.html">view all</a>
                      </li>
                      <li>
                        <ul class="dropdown-menu-list scroller" style="height: 250px;" data-handle-color="#637283">
                          <li><a href="javascript:;"> <span class="time">just now</span> <span class="details">
                                <span class="label label-sm label-icon label-success"> <i class="fa fa-plus"></i>
                              </span> New user registered.
                            </span>
                          </a></li>
                          <li><a href="javascript:;"> <span class="time">3 mins</span> <span class="details">
                                <span class="label label-sm label-icon label-danger"> <i class="fa fa-bolt"></i>
                              </span> Server #12 overloaded.
                            </span>
                          </a></li>
                          <li><a href="javascript:;"> <span class="time">10 mins</span> <span class="details">
                                <span class="label label-sm label-icon label-warning"> <i class="fa fa-bell-o"></i>
                              </span> Server #2 not responding.
                            </span>
                          </a></li>
                          <li><a href="javascript:;"> <span class="time">14 hrs</span> <span class="details">
                                <span class="label label-sm label-icon label-info"> <i class="fa fa-bullhorn"></i>
                              </span> Application error.
                            </span>
                          </a></li>
                          <li><a href="javascript:;"> <span class="time">2 days</span> <span class="details">
                                <span class="label label-sm label-icon label-danger"> <i class="fa fa-bolt"></i>
                              </span> Database overloaded 68%.
                            </span>
                          </a></li>
                          <li><a href="javascript:;"> <span class="time">3 days</span> <span class="details">
                                <span class="label label-sm label-icon label-danger"> <i class="fa fa-bolt"></i>
                              </span> A user IP blocked.
                            </span>
                          </a></li>
                          <li><a href="javascript:;"> <span class="time">4 days</span> <span class="details">
                                <span class="label label-sm label-icon label-warning"> <i class="fa fa-bell-o"></i>
                              </span> Storage Server #4 not responding dfdfdfd.
                            </span>
                          </a></li>
                          <li><a href="javascript:;"> <span class="time">5 days</span> <span class="details">
                                <span class="label label-sm label-icon label-info"> <i class="fa fa-bullhorn"></i>
                              </span> System Error.
                            </span>
                          </a></li>
                          <li><a href="javascript:;"> <span class="time">9 days</span> <span class="details">
                                <span class="label label-sm label-icon label-danger"> <i class="fa fa-bolt"></i>
                              </span> Storage server failed.
                            </span>
                          </a></li>
                        </ul>
                      </li>
                    </ul></li>
                  <!-- END NOTIFICATION DROPDOWN -->
                  <!-- BEGIN TODO DROPDOWN -->
                  <li class="dropdown dropdown-extended dropdown-tasks" id="header_task_bar"><a href="javascript:;"
                    class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> <i
                      class="icon-calendar"></i> <span class="badge badge-default">3</span>
                  </a>
                    <ul class="dropdown-menu extended tasks">
                      <li class="external">
                        <h3>
                          You have <strong>12 pending</strong> tasks
                        </h3> <a href="app_todo_2.html">view all</a>
                      </li>
                      <li>
                        <ul class="dropdown-menu-list scroller" style="height: 275px;" data-handle-color="#637283">
                          <li><a href="javascript:;"> <span class="task"> <span class="desc">New
                                  release v1.2 </span> <span class="percent">30%</span>
                            </span> <span class="progress"> <span style="width: 40%;"
                                class="progress-bar progress-bar-success" aria-valuenow="40" aria-valuemin="0"
                                aria-valuemax="100"> <span class="sr-only">40% Complete</span>
                              </span>
                            </span>
                          </a></li>
                          <li><a href="javascript:;"> <span class="task"> <span class="desc">Application
                                  deployment</span> <span class="percent">65%</span>
                            </span> <span class="progress"> <span style="width: 65%;"
                                class="progress-bar progress-bar-danger" aria-valuenow="65" aria-valuemin="0"
                                aria-valuemax="100"> <span class="sr-only">65% Complete</span>
                              </span>
                            </span>
                          </a></li>
                          <li><a href="javascript:;"> <span class="task"> <span class="desc">Mobile
                                  app release</span> <span class="percent">98%</span>
                            </span> <span class="progress"> <span style="width: 98%;"
                                class="progress-bar progress-bar-success" aria-valuenow="98" aria-valuemin="0"
                                aria-valuemax="100"> <span class="sr-only">98% Complete</span>
                              </span>
                            </span>
                          </a></li>
                          <li><a href="javascript:;"> <span class="task"> <span class="desc">Database
                                  migration</span> <span class="percent">10%</span>
                            </span> <span class="progress"> <span style="width: 10%;"
                                class="progress-bar progress-bar-warning" aria-valuenow="10" aria-valuemin="0"
                                aria-valuemax="100"> <span class="sr-only">10% Complete</span>
                              </span>
                            </span>
                          </a></li>
                          <li><a href="javascript:;"> <span class="task"> <span class="desc">Web
                                  server upgrade</span> <span class="percent">58%</span>
                            </span> <span class="progress"> <span style="width: 58%;"
                                class="progress-bar progress-bar-info" aria-valuenow="58" aria-valuemin="0"
                                aria-valuemax="100"> <span class="sr-only">58% Complete</span>
                              </span>
                            </span>
                          </a></li>
                          <li><a href="javascript:;"> <span class="task"> <span class="desc">Mobile
                                  development</span> <span class="percent">85%</span>
                            </span> <span class="progress"> <span style="width: 85%;"
                                class="progress-bar progress-bar-success" aria-valuenow="85" aria-valuemin="0"
                                aria-valuemax="100"> <span class="sr-only">85% Complete</span>
                              </span>
                            </span>
                          </a></li>
                          <li><a href="javascript:;"> <span class="task"> <span class="desc">New
                                  UI release</span> <span class="percent">38%</span>
                            </span> <span class="progress progress-striped"> <span style="width: 38%;"
                                class="progress-bar progress-bar-important" aria-valuenow="18" aria-valuemin="0"
                                aria-valuemax="100"> <span class="sr-only">38% Complete</span>
                              </span>
                            </span>
                          </a></li>
                        </ul>
                      </li>
                    </ul></li>
                  <!-- END TODO DROPDOWN -->
                  <li class="droddown dropdown-separator"><span class="separator"></span></li>
                  <!-- BEGIN INBOX DROPDOWN -->
                  <li class="dropdown dropdown-extended dropdown-inbox" id="header_inbox_bar"><a
                    href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                    data-close-others="true"> <span class="circle">3</span> <span class="corner"></span>
                  </a>
                    <ul class="dropdown-menu">
                      <li class="external">
                        <h3>
                          You have <strong>7 New</strong> Messages
                        </h3> <a href="app_inbox.html">view all</a>
                      </li>
                      <li>
                        <ul class="dropdown-menu-list scroller" style="height: 275px;" data-handle-color="#637283">
                          <li><a href="#"> <span class="photo"> <img
                                src="${global_img_root }/avatar.png" class="img-circle" alt="">
                            </span> <span class="subject"> <span class="from"> Lisa Wong </span> <span class="time">Just
                                  Now </span>
                            </span> <span class="message"> Vivamus sed auctor nibh congue nibh. auctor nibh auctor
                                nibh... </span>
                          </a></li>
                          <li><a href="#"> <span class="photo"> <img
                                src="${global_img_root }/avatar.png" class="img-circle" alt="">
                            </span> <span class="subject"> <span class="from"> Richard Doe </span> <span class="time">16
                                  mins </span>
                            </span> <span class="message"> Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh
                                auctor nibh... </span>
                          </a></li>
                          <li><a href="#"> <span class="photo"> <img
                                src="${global_img_root }/avatar.png" class="img-circle" alt="">
                            </span> <span class="subject"> <span class="from"> Bob Nilson </span> <span class="time">2
                                  hrs </span>
                            </span> <span class="message"> Vivamus sed nibh auctor nibh congue nibh. auctor nibh auctor
                                nibh... </span>
                          </a></li>
                          <li><a href="#"> <span class="photo"> <img
                                src="${global_img_root }/avatar.png" class="img-circle" alt="">
                            </span> <span class="subject"> <span class="from"> Lisa Wong </span> <span class="time">40
                                  mins </span>
                            </span> <span class="message"> Vivamus sed auctor 40% nibh congue nibh... </span>
                          </a></li>
                          <li><a href="#"> <span class="photo"> <img
                                src="${global_img_root }/avatar.png" class="img-circle" alt="">
                            </span> <span class="subject"> <span class="from"> Richard Doe </span> <span class="time">46
                                  mins </span>
                            </span> <span class="message"> Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh
                                auctor nibh... </span>
                          </a></li>
                        </ul>
                      </li>
                    </ul></li>
                  <!-- END INBOX DROPDOWN -->
                  <!-- BEGIN USER LOGIN DROPDOWN -->
                  <li class="dropdown dropdown-user"><a href="javascript:;" class="dropdown-toggle"
                    data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> <img alt=""
                      class="img-circle" src="${global_img_root }/Doraemon.jpg"> <span
                      class="username username-hide-mobile">heweiming</span>
                  </a>
                    <ul class="dropdown-menu dropdown-menu-default">
                      <li><a href="page_user_profile_1.html"> <i class="icon-user"></i> My Profile
                      </a></li>
                      <li><a href="app_calendar.html"> <i class="icon-calendar"></i> My Calendar
                      </a></li>
                      <li><a href="app_inbox.html"> <i class="icon-envelope-open"></i> My Inbox <span
                          class="badge badge-danger"> 3 </span>
                      </a></li>
                      <li><a href="app_todo_2.html"> <i class="icon-rocket"></i> My Tasks <span
                          class="badge badge-success"> 7 </span>
                      </a></li>
                      <li class="divider"></li>
                      <li><a href="page_user_lock_1.html"> <i class="icon-lock"></i> Lock Screen
                      </a></li>
                      <li><a href="page_user_login_1.html"> <i class="icon-key"></i> Log Out
                      </a></li>
                    </ul></li>
                  <!-- END USER LOGIN DROPDOWN -->
                  <!-- BEGIN QUICK SIDEBAR TOGGLER -->
                  <li class="dropdown dropdown-extended quick-sidebar-toggler"><span class="sr-only">Toggle
                      Quick Sidebar</span> <i class="icon-logout"></i></li>
                  <!-- END QUICK SIDEBAR TOGGLER -->
                </ul>
              </div>
              <!-- END TOP NAVIGATION MENU -->
            </div>
          </div>
          <!-- END HEADER TOP -->
          <!-- BEGIN HEADER MENU -->
          <div class="page-header-menu">
            <div class="container">
              <!-- BEGIN HEADER SEARCH BOX -->
              <form class="search-form" action="page_general_search.html" method="GET">
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Search" name="query"> <span
                    class="input-group-btn"> <a href="javascript:;" class="btn submit"> <i
                      class="icon-magnifier"></i>
                  </a>
                  </span>
                </div>
              </form>
              <!-- END HEADER SEARCH BOX -->
              <!-- BEGIN MEGA MENU -->
              <!-- DOC: Apply "hor-menu-light" class after the "hor-menu" class below to have a horizontal menu with white background -->
              <!-- DOC: Remove data-hover="dropdown" and data-close-others="true" attributes below to disable the dropdown opening on mouse hover -->
              <div class="hor-menu">
                <ul class="nav navbar-nav">
                  <li class="menu-dropdown classic-menu-dropdown active"><a href="javascript:;"> Dashboard <span
                      class="arrow"></span>
                  </a>
                    <ul class="dropdown-menu pull-left">
                      <li class=" active"><a href="index" class="nav-link  active"> <i class="icon-bar-chart"></i>
                          Default Dashboard <span class="badge badge-success">1</span>
                      </a></li>
                    </ul></li>
                  <!-- 菜单 -->
                  <%@ include file="/WEB-INF/views/includes/sys/sys_menu.jsp"%>
                </ul>
              </div>
              <%--               <jsp:include page="${context_root }/sys/menu/"></jsp:include> --%>
            </div>
          </div>
          <!-- END HEADER MENU -->
        </div>
        <!-- END HEADER -->
      </div>
    </div>
    <div class="page-wrapper-row full-height">
      <div class="page-wrapper-middle">
        <!-- BEGIN CONTAINER -->
        <div class="page-container">
          <!-- BEGIN CONTENT -->
          <div class="page-content-wrapper">
            <!-- BEGIN CONTENT BODY -->
            <!-- BEGIN PAGE HEAD-->
            <div class="page-head">
              <div class="container">
                <!-- BEGIN PAGE TITLE -->
                <div id="index-page-title" class="page-title">
                  <h1>
                    Dashboard <small>dashboard &amp; statistics</small>
                  </h1>
                </div>
                <!-- END PAGE TITLE -->
                <!-- BEGIN PAGE TOOLBAR -->
                <div class="page-toolbar">
                  <!-- BEGIN THEME PANEL -->
                  <div class="btn-group btn-theme-panel">
                    <a href="javascript:;" class="btn dropdown-toggle" data-toggle="dropdown"> <i
                      class="icon-settings"></i>
                    </a>
                    <div class="dropdown-menu theme-panel pull-right dropdown-custom hold-on-click">
                      <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <h3>THEME COLORS</h3>
                          <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <ul class="theme-colors">
                                <li class="theme-color theme-color-default" data-theme="default"><span
                                  class="theme-color-view"></span> <span class="theme-color-name">Default</span></li>
                                <li class="theme-color theme-color-blue-hoki" data-theme="blue-hoki"><span
                                  class="theme-color-view"></span> <span class="theme-color-name">Blue Hoki</span></li>
                                <li class="theme-color theme-color-blue-steel" data-theme="blue-steel"><span
                                  class="theme-color-view"></span> <span class="theme-color-name">Blue Steel</span></li>
                                <li class="theme-color theme-color-yellow-orange" data-theme="yellow-orange"><span
                                  class="theme-color-view"></span> <span class="theme-color-name">Orange</span></li>
                                <li class="theme-color theme-color-yellow-crusta" data-theme="yellow-crusta"><span
                                  class="theme-color-view"></span> <span class="theme-color-name">Yellow Crusta</span></li>
                              </ul>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                              <ul class="theme-colors">
                                <li class="theme-color theme-color-green-haze" data-theme="green-haze"><span
                                  class="theme-color-view"></span> <span class="theme-color-name">Green Haze</span></li>
                                <li class="theme-color theme-color-red-sunglo" data-theme="red-sunglo"><span
                                  class="theme-color-view"></span> <span class="theme-color-name">Red Sunglo</span></li>
                                <li class="theme-color theme-color-red-intense" data-theme="red-intense"><span
                                  class="theme-color-view"></span> <span class="theme-color-name">Red Intense</span></li>
                                <li class="theme-color theme-color-purple-plum" data-theme="purple-plum"><span
                                  class="theme-color-view"></span> <span class="theme-color-name">Purple Plum</span></li>
                                <li class="theme-color theme-color-purple-studio" data-theme="purple-studio"><span
                                  class="theme-color-view"></span> <span class="theme-color-name">Purple Studio</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12 seperator">
                          <h3>LAYOUT</h3>
                          <ul class="theme-settings">
                            <li>Theme Style <select
                              class="theme-setting theme-setting-style form-control input-sm input-small input-inline tooltips"
                              data-original-title="Change theme style" data-container="body" data-placement="left">
                                <option value="boxed" selected="selected">Square corners</option>
                                <option value="rounded">Rounded corners</option>
                            </select>
                            </li>
                            <li>Layout <select
                              class="theme-setting theme-setting-layout form-control input-sm input-small input-inline tooltips"
                              data-original-title="Change layout type" data-container="body" data-placement="left">
                                <option value="boxed" selected="selected">Boxed</option>
                                <option value="fluid">Fluid</option>
                            </select>
                            </li>
                            <li>Top Menu Style <select
                              class="theme-setting theme-setting-top-menu-style form-control input-sm input-small input-inline tooltips"
                              data-original-title="Change top menu dropdowns style" data-container="body"
                              data-placement="left">
                                <option value="dark" selected="selected">Dark</option>
                                <option value="light">Light</option>
                            </select>
                            </li>
                            <li>Top Menu Mode <select
                              class="theme-setting theme-setting-top-menu-mode form-control input-sm input-small input-inline tooltips"
                              data-original-title="Enable fixed(sticky) top menu" data-container="body"
                              data-placement="left">
                                <option value="fixed">Fixed</option>
                                <option value="not-fixed" selected="selected">Not Fixed</option>
                            </select>
                            </li>
                            <li>Mega Menu Style <select
                              class="theme-setting theme-setting-mega-menu-style form-control input-sm input-small input-inline tooltips"
                              data-original-title="Change mega menu dropdowns style" data-container="body"
                              data-placement="left">
                                <option value="dark" selected="selected">Dark</option>
                                <option value="light">Light</option>
                            </select>
                            </li>
                            <li>Mega Menu Mode <select
                              class="theme-setting theme-setting-mega-menu-mode form-control input-sm input-small input-inline tooltips"
                              data-original-title="Enable fixed(sticky) mega menu" data-container="body"
                              data-placement="left">
                                <option value="fixed" selected="selected">Fixed</option>
                                <option value="not-fixed">Not Fixed</option>
                            </select>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- END THEME PANEL -->
                </div>
                <!-- END PAGE TOOLBAR -->
              </div>
            </div>
            <!-- END PAGE HEAD-->
            <!-- BEGIN PAGE CONTENT BODY -->
            <div class="page-content">
              <div class="container">
                <!-- BEGIN PAGE BREADCRUMBS -->
                <ul class="page-breadcrumb breadcrumb">
                  <li><a href="index">首页</a> <i class="fa fa-circle"></i></li>
                  <li><span>Dashboard</span></li>
                </ul>
                <!-- END PAGE BREADCRUMBS -->
                <!-- BEGIN PAGE CONTENT INNER -->
                <div class="page-content-inner">
                  <div class="mt-content-body" id="index_content_body">
                    <!-- TODO 内容 -->
                    <div style="height: 660px;"></div>
                  </div>
                </div>
                <!-- END PAGE CONTENT INNER -->
              </div>
            </div>
            <!-- END PAGE CONTENT BODY -->
            <!-- END CONTENT BODY -->
          </div>
          <!-- END CONTENT -->
          <!-- BEGIN QUICK SIDEBAR -->
          <a href="javascript:;" class="page-quick-sidebar-toggler"> <i class="icon-login"></i>
          </a>
          <div class="page-quick-sidebar-wrapper" data-close-on-body-click="false">
            <div class="page-quick-sidebar">
              <ul class="nav nav-tabs">
                <li class="active"><a href="javascript:;" data-target="#quick_sidebar_tab_1" data-toggle="tab">
                    Users <span class="badge badge-danger">2</span>
                </a></li>
                <li><a href="javascript:;" data-target="#quick_sidebar_tab_2" data-toggle="tab"> Alerts <span
                    class="badge badge-success">7</span>
                </a></li>
                <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                    More <i class="fa fa-angle-down"></i>
                </a>
                  <ul class="dropdown-menu pull-right">
                    <li><a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab"> <i
                        class="icon-bell"></i> Alerts
                    </a></li>
                    <li><a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab"> <i
                        class="icon-info"></i> Notifications
                    </a></li>
                    <li><a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab"> <i
                        class="icon-speech"></i> Activities
                    </a></li>
                    <li class="divider"></li>
                    <li><a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab"> <i
                        class="icon-settings"></i> Settings
                    </a></li>
                  </ul></li>
              </ul>
              <div class="tab-content">
                <div class="tab-pane active page-quick-sidebar-chat" id="quick_sidebar_tab_1">
                  <div class="page-quick-sidebar-chat-users" data-rail-color="#ddd"
                    data-wrapper-class="page-quick-sidebar-list">
                    <h3 class="list-heading">Staff</h3>
                    <ul class="media-list list-items">
                      <li class="media">
                        <div class="media-status">
                          <span class="badge badge-success">8</span>
                        </div> <img class="media-object" src="${global_img_root }/avatar.png" alt="...">
                        <div class="media-body">
                          <h4 class="media-heading">Bob Nilson</h4>
                          <div class="media-heading-sub">Project Manager</div>
                        </div>
                      </li>
                      <li class="media"><img class="media-object" src="${global_img_root }/avatar.png"
                        alt="...">
                        <div class="media-body">
                          <h4 class="media-heading">Nick Larson</h4>
                          <div class="media-heading-sub">Art Director</div>
                        </div></li>
                      <li class="media">
                        <div class="media-status">
                          <span class="badge badge-danger">3</span>
                        </div> <img class="media-object" src="${global_img_root }/avatar.png" alt="...">
                        <div class="media-body">
                          <h4 class="media-heading">Deon Hubert</h4>
                          <div class="media-heading-sub">CTO</div>
                        </div>
                      </li>
                      <li class="media"><img class="media-object" src="${global_img_root }/avatar.png"
                        alt="...">
                        <div class="media-body">
                          <h4 class="media-heading">Ella Wong</h4>
                          <div class="media-heading-sub">CEO</div>
                        </div></li>
                    </ul>
                    <h3 class="list-heading">Customers</h3>
                    <ul class="media-list list-items">
                      <li class="media">
                        <div class="media-status">
                          <span class="badge badge-warning">2</span>
                        </div> <img class="media-object" src="${global_img_root }/avatar.png" alt="...">
                        <div class="media-body">
                          <h4 class="media-heading">Lara Kunis</h4>
                          <div class="media-heading-sub">CEO, Loop Inc</div>
                          <div class="media-heading-small">Last seen 03:10 AM</div>
                        </div>
                      </li>
                      <li class="media">
                        <div class="media-status">
                          <span class="label label-sm label-success">new</span>
                        </div> <img class="media-object" src="${global_img_root }/avatar.png" alt="...">
                        <div class="media-body">
                          <h4 class="media-heading">Ernie Kyllonen</h4>
                          <div class="media-heading-sub">
                            Project Manager, <br> SmartBizz PTL
                          </div>
                        </div>
                      </li>
                      <li class="media"><img class="media-object" src="${global_img_root }/avatar.png"
                        alt="...">
                        <div class="media-body">
                          <h4 class="media-heading">Lisa Stone</h4>
                          <div class="media-heading-sub">CTO, Keort Inc</div>
                          <div class="media-heading-small">Last seen 13:10 PM</div>
                        </div></li>
                      <li class="media">
                        <div class="media-status">
                          <span class="badge badge-success">7</span>
                        </div> <img class="media-object" src="${global_img_root }/avatar.png" alt="...">
                        <div class="media-body">
                          <h4 class="media-heading">Deon Portalatin</h4>
                          <div class="media-heading-sub">CFO, H&amp;D LTD</div>
                        </div>
                      </li>
                      <li class="media"><img class="media-object" src="${global_img_root }/avatar.png"
                        alt="...">
                        <div class="media-body">
                          <h4 class="media-heading">Irina Savikova</h4>
                          <div class="media-heading-sub">CEO, Tizda Motors Inc</div>
                        </div></li>
                      <li class="media">
                        <div class="media-status">
                          <span class="badge badge-danger">4</span>
                        </div> <img class="media-object" src="${global_img_root }/avatar.png" alt="...">
                        <div class="media-body">
                          <h4 class="media-heading">Maria Gomez</h4>
                          <div class="media-heading-sub">Manager, Infomatic Inc</div>
                          <div class="media-heading-small">Last seen 03:10 AM</div>
                        </div>
                      </li>
                    </ul>
                  </div>
                  <div class="page-quick-sidebar-item">
                    <div class="page-quick-sidebar-chat-user">
                      <div class="page-quick-sidebar-nav">
                        <a href="javascript:;" class="page-quick-sidebar-back-to-list"> <i class="icon-arrow-left"></i>Back
                        </a>
                      </div>
                      <div class="page-quick-sidebar-chat-user-messages">
                        <div class="post out">
                          <img class="avatar" alt="" src="${global_img_root }/avatar.png" />
                          <div class="message">
                            <span class="arrow"></span> <a href="javascript:;" class="name">Bob Nilson</a> <span
                              class="datetime">20:15</span> <span class="body"> When could you send me the report
                              ? </span>
                          </div>
                        </div>
                        <div class="post in">
                          <img class="avatar" alt="" src="${global_img_root }/avatar.png" />
                          <div class="message">
                            <span class="arrow"></span> <a href="javascript:;" class="name">Ella Wong</a> <span
                              class="datetime">20:15</span> <span class="body"> Its almost done. I will be
                              sending it shortly </span>
                          </div>
                        </div>
                        <div class="post out">
                          <img class="avatar" alt="" src="${global_img_root }/avatar.png" />
                          <div class="message">
                            <span class="arrow"></span> <a href="javascript:;" class="name">Bob Nilson</a> <span
                              class="datetime">20:15</span> <span class="body"> Alright. Thanks! :) </span>
                          </div>
                        </div>
                        <div class="post in">
                          <img class="avatar" alt="" src="${global_img_root }/avatar.png" />
                          <div class="message">
                            <span class="arrow"></span> <a href="javascript:;" class="name">Ella Wong</a> <span
                              class="datetime">20:16</span> <span class="body"> You are most welcome. Sorry for
                              the delay. </span>
                          </div>
                        </div>
                        <div class="post out">
                          <img class="avatar" alt="" src="${global_img_root }/avatar.png" />
                          <div class="message">
                            <span class="arrow"></span> <a href="javascript:;" class="name">Bob Nilson</a> <span
                              class="datetime">20:17</span> <span class="body"> No probs. Just take your time :)
                            </span>
                          </div>
                        </div>
                        <div class="post in">
                          <img class="avatar" alt="" src="${global_img_root }/avatar.png" />
                          <div class="message">
                            <span class="arrow"></span> <a href="javascript:;" class="name">Ella Wong</a> <span
                              class="datetime">20:40</span> <span class="body"> Alright. I just emailed it to
                              you. </span>
                          </div>
                        </div>
                        <div class="post out">
                          <img class="avatar" alt="" src="${global_img_root }/avatar.png" />
                          <div class="message">
                            <span class="arrow"></span> <a href="javascript:;" class="name">Bob Nilson</a> <span
                              class="datetime">20:17</span> <span class="body"> Great! Thanks. Will check it
                              right away. </span>
                          </div>
                        </div>
                        <div class="post in">
                          <img class="avatar" alt="" src="${global_img_root }/avatar.png" />
                          <div class="message">
                            <span class="arrow"></span> <a href="javascript:;" class="name">Ella Wong</a> <span
                              class="datetime">20:40</span> <span class="body"> Please let me know if you have
                              any comment. </span>
                          </div>
                        </div>
                        <div class="post out">
                          <img class="avatar" alt="" src="${global_img_root }/avatar.png" />
                          <div class="message">
                            <span class="arrow"></span> <a href="javascript:;" class="name">Bob Nilson</a> <span
                              class="datetime">20:17</span> <span class="body"> Sure. I will check and buzz you
                              if anything needs to be corrected. </span>
                          </div>
                        </div>
                      </div>
                      <div class="page-quick-sidebar-chat-user-form">
                        <div class="input-group">
                          <input type="text" class="form-control" placeholder="Type a message here...">
                          <div class="input-group-btn">
                            <button type="button" class="btn green">
                              <i class="icon-paper-clip"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane page-quick-sidebar-alerts" id="quick_sidebar_tab_2">
                  <div class="page-quick-sidebar-alerts-list">
                    <h3 class="list-heading">General</h3>
                    <ul class="feeds list-items">
                      <li>
                        <div class="col1">
                          <div class="cont">
                            <div class="cont-col1">
                              <div class="label label-sm label-info">
                                <i class="fa fa-check"></i>
                              </div>
                            </div>
                            <div class="cont-col2">
                              <div class="desc">
                                You have 4 pending tasks. <span class="label label-sm label-warning "> Take
                                  action <i class="fa fa-share"></i>
                                </span>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col2">
                          <div class="date">Just now</div>
                        </div>
                      </li>
                      <li><a href="javascript:;">
                          <div class="col1">
                            <div class="cont">
                              <div class="cont-col1">
                                <div class="label label-sm label-success">
                                  <i class="fa fa-bar-chart-o"></i>
                                </div>
                              </div>
                              <div class="cont-col2">
                                <div class="desc">Finance Report for year 2013 has been released.</div>
                              </div>
                            </div>
                          </div>
                          <div class="col2">
                            <div class="date">20 mins</div>
                          </div>
                      </a></li>
                      <li>
                        <div class="col1">
                          <div class="cont">
                            <div class="cont-col1">
                              <div class="label label-sm label-danger">
                                <i class="fa fa-user"></i>
                              </div>
                            </div>
                            <div class="cont-col2">
                              <div class="desc">You have 5 pending membership that requires a quick review.</div>
                            </div>
                          </div>
                        </div>
                        <div class="col2">
                          <div class="date">24 mins</div>
                        </div>
                      </li>
                      <li>
                        <div class="col1">
                          <div class="cont">
                            <div class="cont-col1">
                              <div class="label label-sm label-info">
                                <i class="fa fa-shopping-cart"></i>
                              </div>
                            </div>
                            <div class="cont-col2">
                              <div class="desc">
                                New order received with <span class="label label-sm label-success"> Reference
                                  Number: DR23923 </span>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col2">
                          <div class="date">30 mins</div>
                        </div>
                      </li>
                      <li>
                        <div class="col1">
                          <div class="cont">
                            <div class="cont-col1">
                              <div class="label label-sm label-success">
                                <i class="fa fa-user"></i>
                              </div>
                            </div>
                            <div class="cont-col2">
                              <div class="desc">You have 5 pending membership that requires a quick review.</div>
                            </div>
                          </div>
                        </div>
                        <div class="col2">
                          <div class="date">24 mins</div>
                        </div>
                      </li>
                      <li>
                        <div class="col1">
                          <div class="cont">
                            <div class="cont-col1">
                              <div class="label label-sm label-info">
                                <i class="fa fa-bell-o"></i>
                              </div>
                            </div>
                            <div class="cont-col2">
                              <div class="desc">
                                Web server hardware needs to be upgraded. <span class="label label-sm label-warning">
                                  Overdue </span>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col2">
                          <div class="date">2 hours</div>
                        </div>
                      </li>
                      <li><a href="javascript:;">
                          <div class="col1">
                            <div class="cont">
                              <div class="cont-col1">
                                <div class="label label-sm label-default">
                                  <i class="fa fa-briefcase"></i>
                                </div>
                              </div>
                              <div class="cont-col2">
                                <div class="desc">IPO Report for year 2013 has been released.</div>
                              </div>
                            </div>
                          </div>
                          <div class="col2">
                            <div class="date">20 mins</div>
                          </div>
                      </a></li>
                    </ul>
                    <h3 class="list-heading">System</h3>
                    <ul class="feeds list-items">
                      <li>
                        <div class="col1">
                          <div class="cont">
                            <div class="cont-col1">
                              <div class="label label-sm label-info">
                                <i class="fa fa-check"></i>
                              </div>
                            </div>
                            <div class="cont-col2">
                              <div class="desc">
                                You have 4 pending tasks. <span class="label label-sm label-warning "> Take
                                  action <i class="fa fa-share"></i>
                                </span>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col2">
                          <div class="date">Just now</div>
                        </div>
                      </li>
                      <li><a href="javascript:;">
                          <div class="col1">
                            <div class="cont">
                              <div class="cont-col1">
                                <div class="label label-sm label-danger">
                                  <i class="fa fa-bar-chart-o"></i>
                                </div>
                              </div>
                              <div class="cont-col2">
                                <div class="desc">Finance Report for year 2013 has been released.</div>
                              </div>
                            </div>
                          </div>
                          <div class="col2">
                            <div class="date">20 mins</div>
                          </div>
                      </a></li>
                      <li>
                        <div class="col1">
                          <div class="cont">
                            <div class="cont-col1">
                              <div class="label label-sm label-default">
                                <i class="fa fa-user"></i>
                              </div>
                            </div>
                            <div class="cont-col2">
                              <div class="desc">You have 5 pending membership that requires a quick review.</div>
                            </div>
                          </div>
                        </div>
                        <div class="col2">
                          <div class="date">24 mins</div>
                        </div>
                      </li>
                      <li>
                        <div class="col1">
                          <div class="cont">
                            <div class="cont-col1">
                              <div class="label label-sm label-info">
                                <i class="fa fa-shopping-cart"></i>
                              </div>
                            </div>
                            <div class="cont-col2">
                              <div class="desc">
                                New order received with <span class="label label-sm label-success"> Reference
                                  Number: DR23923 </span>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col2">
                          <div class="date">30 mins</div>
                        </div>
                      </li>
                      <li>
                        <div class="col1">
                          <div class="cont">
                            <div class="cont-col1">
                              <div class="label label-sm label-success">
                                <i class="fa fa-user"></i>
                              </div>
                            </div>
                            <div class="cont-col2">
                              <div class="desc">You have 5 pending membership that requires a quick review.</div>
                            </div>
                          </div>
                        </div>
                        <div class="col2">
                          <div class="date">24 mins</div>
                        </div>
                      </li>
                      <li>
                        <div class="col1">
                          <div class="cont">
                            <div class="cont-col1">
                              <div class="label label-sm label-warning">
                                <i class="fa fa-bell-o"></i>
                              </div>
                            </div>
                            <div class="cont-col2">
                              <div class="desc">
                                Web server hardware needs to be upgraded. <span class="label label-sm label-default ">
                                  Overdue </span>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col2">
                          <div class="date">2 hours</div>
                        </div>
                      </li>
                      <li><a href="javascript:;">
                          <div class="col1">
                            <div class="cont">
                              <div class="cont-col1">
                                <div class="label label-sm label-info">
                                  <i class="fa fa-briefcase"></i>
                                </div>
                              </div>
                              <div class="cont-col2">
                                <div class="desc">IPO Report for year 2013 has been released.</div>
                              </div>
                            </div>
                          </div>
                          <div class="col2">
                            <div class="date">20 mins</div>
                          </div>
                      </a></li>
                    </ul>
                  </div>
                </div>
                <div class="tab-pane page-quick-sidebar-settings" id="quick_sidebar_tab_3">
                  <div class="page-quick-sidebar-settings-list">
                    <h3 class="list-heading">General Settings</h3>
                    <ul class="list-items borderless">
                      <li>Enable Notifications <input type="checkbox" class="make-switch" checked data-size="small"
                        data-on-color="success" data-on-text="ON" data-off-color="default" data-off-text="OFF">
                      </li>
                      <li>Allow Tracking <input type="checkbox" class="make-switch" data-size="small"
                        data-on-color="info" data-on-text="ON" data-off-color="default" data-off-text="OFF">
                      </li>
                      <li>Log Errors <input type="checkbox" class="make-switch" checked data-size="small"
                        data-on-color="danger" data-on-text="ON" data-off-color="default" data-off-text="OFF">
                      </li>
                      <li>Auto Sumbit Issues <input type="checkbox" class="make-switch" data-size="small"
                        data-on-color="warning" data-on-text="ON" data-off-color="default" data-off-text="OFF">
                      </li>
                      <li>Enable SMS Alerts <input type="checkbox" class="make-switch" checked data-size="small"
                        data-on-color="success" data-on-text="ON" data-off-color="default" data-off-text="OFF">
                      </li>
                    </ul>
                    <h3 class="list-heading">System Settings</h3>
                    <ul class="list-items borderless">
                      <li>Security Level <select class="form-control input-inline input-sm input-small">
                          <option value="1">Normal</option>
                          <option value="2" selected>Medium</option>
                          <option value="e">High</option>
                      </select>
                      </li>
                      <li>Failed Email Attempts <input class="form-control input-inline input-sm input-small"
                        value="5" />
                      </li>
                      <li>Secondary SMTP Port <input class="form-control input-inline input-sm input-small"
                        value="3560" />
                      </li>
                      <li>Notify On System Error <input type="checkbox" class="make-switch" checked
                        data-size="small" data-on-color="danger" data-on-text="ON" data-off-color="default"
                        data-off-text="OFF">
                      </li>
                      <li>Notify On SMTP Error <input type="checkbox" class="make-switch" checked data-size="small"
                        data-on-color="warning" data-on-text="ON" data-off-color="default" data-off-text="OFF">
                      </li>
                    </ul>
                    <div class="inner-content">
                      <button class="btn btn-success">
                        <i class="icon-settings"></i> Save Changes
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- END QUICK SIDEBAR -->
        </div>
        <!-- END CONTAINER -->
      </div>
    </div>
    <div class="page-wrapper-row">
      <div class="page-wrapper-bottom">
        <!-- BEGIN FOOTER -->
        <!-- BEGIN PRE-FOOTER -->
        <div class="page-prefooter">
          <div class="container">
            <div class="row">
              <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                <h2>About</h2>
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam dolore.</p>
              </div>
              <div class="col-md-3 col-sm-6 col-xs12 footer-block">
                <h2>Subscribe Email</h2>
                <div class="subscribe-form">
                  <form action="javascript:;">
                    <div class="input-group">
                      <input type="text" placeholder="mail@email.com" class="form-control"> <span
                        class="input-group-btn">
                        <button class="btn" type="submit">Submit</button>
                      </span>
                    </div>
                  </form>
                </div>
              </div>
              <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                <h2>Follow Us On</h2>
                <ul class="social-icons">
                  <li><a href="javascript:;" data-original-title="rss" class="rss"></a></li>
                  <li><a href="javascript:;" data-original-title="facebook" class="facebook"></a></li>
                  <li><a href="javascript:;" data-original-title="twitter" class="twitter"></a></li>
                  <li><a href="javascript:;" data-original-title="googleplus" class="googleplus"></a></li>
                  <li><a href="javascript:;" data-original-title="linkedin" class="linkedin"></a></li>
                  <li><a href="javascript:;" data-original-title="youtube" class="youtube"></a></li>
                  <li><a href="javascript:;" data-original-title="vimeo" class="vimeo"></a></li>
                </ul>
              </div>
              <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                <h2>Contacts</h2>
                <address class="margin-bottom-40">
                  Phone: 800 123 3456 <br> Email: <a href="mailto:info@metronic.com">info@metronic.com</a>
                </address>
              </div>
            </div>
          </div>
        </div>
        <!-- END PRE-FOOTER -->
        <!-- BEGIN INNER FOOTER -->
        <div class="page-footer">
          <div class="container">
            2016 &copy; Metronic Theme By <a target="_blank" href="http://keenthemes.com">Keenthemes</a> &nbsp;|&nbsp; <a
              href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"
              title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase
              Metronic!</a>
          </div>
        </div>
        <div class="scroll-to-top">
          <i class="icon-arrow-up"></i>
        </div>
        <!-- END INNER FOOTER -->
        <!-- END FOOTER -->
      </div>
    </div>
  </div>
  <!-- BEGIN QUICK NAV -->
  <nav class="quick-nav">
    <a class="quick-nav-trigger" href="#0"> <span aria-hidden="true"></span>
    </a>
    <ul>
      <li><a
        href="https://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"
        target="_blank" class="active"> <span>Purchase Metronic</span> <i class="icon-basket"></i>
      </a></li>
      <li><a
        href="https://themeforest.net/item/metronic-responsive-admin-dashboard-template/reviews/4021469?ref=keenthemes"
        target="_blank"> <span>Customer Reviews</span> <i class="icon-users"></i>
      </a></li>
      <li><a href="http://keenthemes.com/showcast/" target="_blank"> <span>Showcase</span> <i class="icon-user"></i>
      </a></li>
      <li><a href="http://keenthemes.com/metronic-theme/changelog/" target="_blank"> <span>Changelog</span> <i
          class="icon-graph"></i>
      </a></li>
    </ul>
    <span aria-hidden="true" class="quick-nav-bg"></span>
  </nav>
  <div class="quick-nav-overlay"></div>
  <!-- END QUICK NAV -->

  <%@ include file="/resources/config/base_scripts_config.jspf"%>
  <!-- BEGIN THEME GLOBAL SCRIPTS -->
  <script src="${metronic_root }/v4.7/theme/assets/global/scripts/app.min.js" type="text/javascript"></script>
  <!-- END THEME GLOBAL SCRIPTS -->
  <!-- BEGIN PAGE LEVEL SCRIPTS -->
  <script src="${metronic_root }/v4.7/theme/assets/pages/scripts/dashboard.min.js" type="text/javascript"></script>
  <!-- END PAGE LEVEL SCRIPTS -->
  <!-- BEGIN THEME LAYOUT SCRIPTS -->
  <script src="${metronic_root }/v4.7/theme/assets/layouts/layout3/scripts/layout.min.js" type="text/javascript"></script>
  <script src="${metronic_root }/v4.7/theme/assets/layouts/layout3/scripts/demo.min.js" type="text/javascript"></script>
  <script src="${metronic_root }/v4.7/theme/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
  <script src="${metronic_root }/v4.7/theme/assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
  <!-- END THEME LAYOUT SCRIPTS -->
  <script src="${global_script_root }/freedom.js" type="text/javascript"></script>
  <script src="${pages_root }/index/scripts/index.js" type="text/javascript"></script>
</body>

</html>