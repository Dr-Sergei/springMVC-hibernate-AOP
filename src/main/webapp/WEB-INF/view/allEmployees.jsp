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
            <table>
                <h2>
                <tr>
                    <th class="th">Name</th>
                    <th class="th">Surname</th>
                    <th class="th">Department</th>
                    <th class="th">Salary</th>
                </tr>
                </h2>
                <c:forEach var="emp" items="${allEmps}">
                    <tr>
                        <td class="td">${emp.name}</td>
                        <td class="td">${emp.surname}</td>
                        <td class="td">${emp.department}</td>
                        <td class="td">${emp.salary}</td>
                    </tr>
                </c:forEach>
            </table>
            <br/>
            <input type="button" value="add"
                onclick="window.location.href='addNewEmployee'"/>

    </body>
</html>