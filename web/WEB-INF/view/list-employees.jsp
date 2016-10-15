<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Employees</title>
</head>
<body>
    <!-- Header -->
    <jsp:include page="include/header.jsp" />

    <!-- Button: Add Employee -->
    <input type="button" value="Add Employee"
        onclick="window.location.href='create';"
        class="add-employee-button"
    />

    <!-- Table: List of Employees -->
    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Position</th>
            <th>Email</th>
            <th>Action</th>
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
                    <a href="${updateUrl}">Update</a>
                     |
                    <!-- use and display delete url -->
                    <a href="${deleteUrl}"
                        onclick="if (!(confirm('Are you sure want to delete this employee?'))) return false">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <!-- Footer -->
    <jsp:include page="include/footer.jsp" />
</body>
</html>
