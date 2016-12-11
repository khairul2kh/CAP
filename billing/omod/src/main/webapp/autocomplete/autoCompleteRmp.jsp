<%-- 
    Document   : autoCompleteRmp
    Created on : Jul 23, 2016, 4:28:37 PM
    Author     : Khairul
--%>

<%@ include file="/WEB-INF/template/include.jsp" %>
<?xml version="1.0"?>
<items>
    <c:choose>
        <c:when test="${not empty rmpById}">
            <c:forEach items="${rmpById}" var="rmp" varStatus="loop">
                <item>
                    <text>${rmp.id}, ${rmp.name}</text>
                    <value>${rmp.id}</value>
                </item>
            </c:forEach>  
        </c:when>
    </c:choose>
</items>