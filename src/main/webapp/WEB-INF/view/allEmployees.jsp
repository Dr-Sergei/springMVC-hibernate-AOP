<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <title>All Employees</title>
    </head>

    <body>
        <h1>All Employees</h1>
            <div class="panel">
            <table class="table">
                <h2>
                <tr>
                    <th class="th">Name</th>
                    <th class="th">Surname</th>
                    <th class="th">Department</th>
                    <th class="th">Salary</th>
                    <th class="th">Operations</th>
                </tr>
                </h2>
                <c:forEach var="emp" items="${allEmps}">

                    <c:url var="updateButton" value="/updateInfo">
                        <c:param name="empId" value="${emp.id}"/>
                    </c:url>

                    <c:url var="deleteButton" value="/deleteEmployee">
                        <c:param name="empId" value="${emp.id}"/>
                    </c:url>

                    <tr>
                        <td class="td">${emp.name}</td>
                        <td class="td">${emp.surname}</td>
                        <td class="td">${emp.department}</td>
                        <td class="td">${emp.salary}</td>
                        <td class="td">
                             <input type="button" value="Update" class="button"
                                onClick="window.location.href='${updateButton}'"/>

                             <input type="button" value="Delete" class="button"
                                onClick="window.location.href='${deleteButton}'"/>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <br/>
            <input type="button" value="add" class="button"
                onclick="window.location.href='addNewEmployee'"/>
            </div>
    </body>
</html>