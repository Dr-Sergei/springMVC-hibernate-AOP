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
        <h1>Employee Info</h1>
        <br/>
        <form:form action="saveEmployee" method="POST" modelAttribute="employee">

            <form:hidden path="id"/>

            <div class="panel">
                <div class="table">
                    <label for="name" class="lbl1">Name: </label>
                    <form:input path="name" class="txtF"/>
                    <br/>
                    <label for="surname" class="lbl2">Surname: </label>
                    <form:input path="surname" class="txtF"/>
                    <br/>
                    <label for="department" class="lbl3">Department: </label>
                    <form:input path="department" class="txtF"/>
                    <br/>
                    <label for="salary" class="lbl4">Salary: </label>
                    <form:input path="salary" class="txtF"/>
                    <br/>
                </div>
                <input type="submit" value="ok" class="button">
            </div>

        </form:form>
    </body>
</html>