<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<C:set var="language" value="${not empty param.language ? param.language : not empty language? language:pageContext.request.locale}" scope="session"></C:set>	
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n.messages"/>