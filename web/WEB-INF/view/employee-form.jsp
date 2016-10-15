<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <!-- Header -->
    <jsp:include page="include/header.jsp" />

    <h3><i>Save Employee:</i></h3>

    <form:form action="save" modelAttribute="employee" method="post">
        <form:hidden path="id" />

        <table>
            <tbody>
                <tr>
                    <td><label>First Name:</label></td>
                    <td><form:input path="firstName" /></td>
                </tr>

                <tr>
                    <td><label>Last Name:</label></td>
                    <td><form:input path="lastName" /></td>
                </tr>

                <tr>
                    <td><label>Position:</label></td>
                    <td><form:input path="position" /></td>
                </tr>

                <tr>
                    <td><label>Email:</label></td>
                    <td><form:input path="email" /></td>
                </tr>

                <tr>
                    <td><input type="submit" value="Save" class="save" ></td>
                </tr>
            </tbody>
        </table>
    </form:form>

    <p>
        <a href="${pageContext.request.contextPath}/employee/list">Back to List</a>
    </p>

    <!-- Footer -->
    <jsp:include page="include/footer.jsp" />
</body>
</html>
