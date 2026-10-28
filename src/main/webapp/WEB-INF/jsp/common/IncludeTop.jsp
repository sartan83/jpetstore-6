<%--

       Copyright 2010-2026 the original author or authors.

       Licensed under the Apache License, Version 2.0 (the "License");
       you may not use this file except in compliance with the License.
       You may obtain a copy of the License at

          https://www.apache.org/licenses/LICENSE-2.0

       Unless required by applicable law or agreed to in writing, software
       distributed under the License is distributed on an "AS IS" BASIS,
       WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
       See the License for the specific language governing permissions and
       limitations under the License.

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>

<html lang="en">

<head>
    <link rel="StyleSheet" href="${pageContext.request.contextPath}/css/jpetstore.css" type="text/css" media="screen" />
    <meta name="generator" content="HTML Tidy for Linux/x86 (vers 1st November 2002), see www.w3.org" />
    <title>JPetStore Demo</title>
    <meta content="text/html; charset=windows-1252" http-equiv="Content-Type" />
    <meta http-equiv="Cache-Control" content="max-age=0" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="Expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
    <meta http-equiv="Pragma" content="no-cache" />
</head>

<body>

    <div id="Header">

        <div id="Logo">
            <div id="LogoContent"><a href="${pageContext.request.contextPath}/catalog"><span class="Wordmark">JPETSTORE</span><span class="Tagline">Maison of Companions &middot; Est. 2002</span></a></div>
        </div>

        <div id="Menu">
            <div id="MenuContent">
                <a href="${pageContext.request.contextPath}/cart"><img align="middle" name="img_cart" src="${pageContext.request.contextPath}/images/cart.gif" /></a>
                <span class="Divider"></span>
                <c:choose>
                    <c:when test="${sessionScope.accountBean == null || !sessionScope.accountBean.authenticated}">
                        <a href="${pageContext.request.contextPath}/account">Sign In</a>
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/account/signoff">Sign Out</a>
                        <span class="Divider"></span>
                        <a href="${pageContext.request.contextPath}/account/edit">My Account</a>
                    </c:otherwise>
                </c:choose>
                <span class="Divider"></span>
                <a href="${pageContext.request.contextPath}/help.html">?</a>
            </div>
        </div>

        <div id="Search">
            <div id="SearchContent">
                <form method="get" action="${pageContext.request.contextPath}/catalog/searchProducts">
                    <input type="text" name="keyword" size="14" />
                    <input type="submit" name="searchProducts" value="Search" />
                </form>
            </div>
        </div>

        <div id="QuickLinks">
            <a href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=FISH">FISH</a>
            <span class="Divider"></span>
            <a href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=DOGS">DOGS</a>
            <span class="Divider"></span>
            <a href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=REPTILES">REPTILES</a>
            <span class="Divider"></span>
            <a href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=CATS">CATS</a>
            <span class="Divider"></span>
            <a href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=BIRDS">BIRDS</a>
        </div>

    </div>

    <div id="Content">
        <c:if test="${not empty message}">
            <ul class="messages"><li>${message}</li></ul>
        </c:if>
