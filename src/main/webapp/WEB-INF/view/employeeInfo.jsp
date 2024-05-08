<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE hrml>
<html lang="en">
    <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" type="text/css" href="resources/css/style.css">
            <title>Employee Info</title>
    </head>
    <body>
        <h2>Employee Info</h2>
        <br/>

        <form:form action="saveEmployee" method="POST" modelAttribute="employee">
            Name: <form:input path="name"/>
            <br/>
            Surname: <form:input path="surname"/>
            <br/>
            Department: <form:input path="department"/>
            <br/>
            Salary: <form:input path="salary"/>
            <br/>
            <input type="submit" value="ok">

        </form:form>
    </body>
</html>