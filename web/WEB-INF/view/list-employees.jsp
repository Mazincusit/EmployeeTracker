<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<head>
    <title><spring:message code="label.listEmployees" /></title>
</head>
<body>
    <!-- Header -->
    <jsp:include page="include/header.jsp" />

    <!-- Button: Add Employee -->
    <spring:message code="label.addEmployee" var="addEmployee" />
    <input type="button" value="${addEmployee}"
        onclick="window.location.href='create';"
        class="add-employee-button"
    />

    <!-- Table: List of Employees -->
    <table>
        <tr>
            <th><spring:message code="label.firstName" /></th>
            <th><spring:message code="label.lastName" /></th>
            <th><spring:message code="label.position" /></th>
            <th><spring:message code="label.email" /></th>
            <th><spring:message code="label.action" /></th>
        </tr>

        <c:forEach var="employee" items="${employees}">
            <tr>
                <td>${employee.firstName}</td>
                <td>${employee.lastName}</td>
                <td>${employee.position}</td>
                <td>${employee.email}</td>
                <td>
                    <!-- build update url -->
                    <c:url var="updateUrl" value="/employee/update">
                        <c:param name="employeeId" value="${employee.id}" />
                    </c:url>

                    <!-- build delete url -->
                    <c:url var="deleteUrl" value="/employee/delete">
                        <c:param name="employeeId" value="${employee.id}" />
                    </c:url>

                    <!-- use and display update url -->
                    <a href="${updateUrl}"><spring:message code="label.update" /></a>
                     |
                    <!-- use and display delete url -->
                    <spring:message code="label.areYouSure" var="areYouSure" />
                    <a href="${deleteUrl}"
                        onclick="if (!(confirm('${areYouSure}'))) return false">
                        <spring:message code="label.delete" />
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <!-- Footer -->
    <jsp:include page="include/footer.jsp" />
</body>
</html>
