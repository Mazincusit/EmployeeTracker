<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<head>
    <title><spring:message code="label.saveEmployee" /></title>

    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
    <!-- Header -->
    <jsp:include page="include/header.jsp" />

    <h3><i><spring:message code="label.saveEmployee" />:</i></h3>

    <form:form action="save" modelAttribute="employee" method="post">
        <form:hidden path="id" />

        <table>
            <tbody>
                <tr>
                    <td><label><spring:message code="label.firstName" />:</label></td>
                    <td>
                        <form:input path="firstName" />
                        <form:errors path="firstName" cssClass="error" />
                    </td>
                </tr>

                <tr>
                    <td><label><spring:message code="label.lastName" />:</label></td>
                    <td>
                        <form:input path="lastName" />
                        <form:errors path="lastName" cssClass="error" />
                    </td>
                </tr>

                <tr>
                    <td><label><spring:message code="label.position" />:</label></td>
                    <td>
                        <form:select path="position">
                            <form:options items="${positions}" />
                        </form:select>
                        <form:errors path="position" cssClass="error" />
                    </td>
                </tr>

                <tr>
                    <td><label><spring:message code="label.email" />:</label></td>
                    <td>
                        <form:input path="email" />
                        <form:errors path="email" cssClass="error" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <spring:message code="label.save" var="backToList" />
                        <input type="submit" value="Save" class="save" >
                    </td>
                </tr>
            </tbody>
        </table>
    </form:form>

    <p>
        <a href="${pageContext.request.contextPath}/employee/list">
            <spring:message code="label.backToList" />
        </a>
    </p>

    <!-- Footer -->
    <jsp:include page="include/footer.jsp" />
</body>
</html>
