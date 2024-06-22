<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <title>Delete user ${id}</title>
            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-12 mx-auto">
                            <div class="d-flex justify-content-between">
                                <h3>Delete the user with id = ${id}</h3>
                            </div>
                            <hr>
                            <div class="alert alert-danger" role="alert">
                                Are you sure delete this user?
                            </div>
                            <form:form action="/admin/user/delete" method="post" modelAttribute="newUser">
                                <div class="mb-3" style="display: none;">
                                    <label class="form-label">Id:</label>
                                    <form:input type="text" class="form-control" path="id" value="${id}" />
                                </div>
                                <button class="btn btn-danger">Confirm</button>
                            </form:form>
                        </div>

                    </div>

                </div>

            </body>

            </html>