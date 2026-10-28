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
<%@ include file="../common/IncludeTop.jsp"%>

<div id="Welcome">
    <div id="WelcomeContent">
        <c:if test="${sessionScope.accountBean != null }">
            <c:if test="${sessionScope.accountBean.authenticated}">
                Welcome ${sessionScope.accountBean.account.firstName}!
            </c:if>
        </c:if>
    </div>
</div>

<div id="Main">
    <div id="Sidebar">
        <div id="SidebarContent">
            <a href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=OUTERWEAR">OUTERWEAR</a> <br />
            Down Jackets, Parkas, Gilets <br />
            <a href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=KNITWEAR">KNITWEAR</a> <br />
            Cashmere, Merino, Cardigans <br />
            <a href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=SHIRTS">SHIRTS</a> <br />
            Polo, Oxford <br />
            <a href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=TROUSERS">TROUSERS</a> <br />
            Cargo, Track Pants <br />
            <a href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=ACCESSORY">ACCESSORIES</a> <br />
            Beanies, Scarves
        </div>
    </div>

    <div id="MainImage">
        <div id="MainImageContent">
            <map name="estoremap">
                <area alt="Outerwear" coords="72,2,280,250" href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=OUTERWEAR" shape="RECT" />
                <area alt="Accessories" coords="2,180,72,250" href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=ACCESSORY" shape="RECT" />
                <area alt="Knitwear" coords="60,250,130,320" href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=KNITWEAR" shape="RECT" />
                <area alt="Trousers" coords="140,270,210,340" href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=TROUSERS" shape="RECT" />
                <area alt="Shirts" coords="225,240,295,310" href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=SHIRTS" shape="RECT" />
                <area alt="Accessories" coords="280,180,350,250" href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=ACCESSORY" shape="RECT" />
            </map>
            <img height="355" src="${pageContext.request.contextPath}/images/splash.svg" align="middle" usemap="#estoremap" width="350" />
        </div>
    </div>

    <div id="Separator">&nbsp;</div>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>
