<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${not empty menuList }">
  <c:forEach items="${menuList }" var="menu">
    <li class="menu-dropdown classic-menu-dropdown "><a href="javascript:;"> ${menu.name } <span class="arrow"></span>
    </a>
      <ul class="dropdown-menu pull-left">
        <c:if test="${not empty menu.subMenuList }">
          <c:forEach items="${menu.subMenuList }" var="subMenu">
            <li class=" "><a href="layout_mega_menu_light.html" class="nav-link"> ${subMenu.name } </a></li>
          </c:forEach>
        </c:if>
      </ul></li>
  </c:forEach>
</c:if>
