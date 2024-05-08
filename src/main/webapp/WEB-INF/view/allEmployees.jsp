<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <title>Document</title>
    </head>

    <body>
        <h1>All Employees</h1>
            <table>
                <h2>
                <tr>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Department</th>
                    <th>Salary</th>
                </tr>
                </h2>
                <c:forEach var="emp" items="${allEmps}">
                    <tr>
                        <td>${emp.name}</td>
                        <td>${emp.surname}</td>
                        <td>${emp.department}</td>
                        <td>${emp.salary}</td>
                    </tr>
                </c:forEach>
            </table>

    </body>
</html>