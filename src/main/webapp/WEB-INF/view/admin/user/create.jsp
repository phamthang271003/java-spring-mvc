<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
                <meta name="author" content="Hỏi Dân IT" />
                <title>Create new user</title>
                <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });
                        });
                    });
                </script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />

                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Manage Users</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Users</li>
                                </ol>
                                <div class="mt-5">
                                    <div class="row">
                                        <div class="col-md-6 col-12 mx-auto">
                                            <h3>Create a user</h3>
                                            <hr>
                                            <form:form action="/admin/user/create" method="post"
                                                modelAttribute="newUser" enctype="multipart/form-data">
                                                <c:set var="errorEmail">
                                                    <form:errors path="email" cssClass="invalid-feedback" />
                                                </c:set>

                                                <c:set var="errorPassword">
                                                    <form:errors path="password" cssClass="invalid-feedback" />
                                                </c:set>

                                                <c:set var="errorFullName">
                                                    <form:errors path="fullName" cssClass="invalid-feedback" />
                                                </c:set>

                                                <div class="row mb-4">
                                                    <div class="col">
                                                        <label class="form-label">Email:</label>
                                                        <form:input type="email"
                                                            class="form-control ${not empty errorEmail ? 'is-invalid' : ''}"
                                                            placeholder="Email" path="email" />
                                                        ${errorEmail}
                                                    </div>
                                                    <div class="col">
                                                        <label class="form-label">Password:</label>
                                                        <form:input type="password"
                                                            class="form-control ${not empty errorPassword ? 'is-invalid' : ''}"
                                                            placeholder="Password" path="password" />
                                                        ${errorPassword}
                                                    </div>
                                                </div>

                                                <div class="row mb-4">
                                                    <div class="col">
                                                        <label class="form-label">Phone number:</label>
                                                        <form:input type="text" class="form-control"
                                                            placeholder="Phone number" path="phone" />
                                                    </div>
                                                    <div class="col">
                                                        <label class="form-label">Full Name:</label>
                                                        <form:input type="text"
                                                            class="form-control ${not empty errorFullName ? 'is-invalid' : ''}"
                                                            placeholder="Full Name" path="fullName" />
                                                        ${errorFullName}
                                                    </div>
                                                </div>
                                                <div class="row mb-4">
                                                    <div class="col">
                                                        <label class="form-label">Address:</label>
                                                        <form:input type="text" class="form-control"
                                                            placeholder="Address" path="address" />
                                                    </div>
                                                </div>
                                                <div class="row mb-4">

                                                    <div class="col">
                                                        <label class="form-label">Role:</label>
                                                        <form:select class="form-select" path="role.name">
                                                            <form:option value="ADMIN">Admin</option>
                                                                <form:option value="USER">User</option>
                                                        </form:select>
                                                    </div>
                                                    <div class="col">
                                                        <label for="avatarFile" class="form-label">Avatar:</label>
                                                        <input class="form-control" type="file" id="avatarFile"
                                                            accept=".png,.jpg,.jpeg" name="file" />
                                                    </div>

                                                </div>
                                                <div class="row mb-4">
                                                    <img style="max-height: 250px;display: none;" alt="avatar preview"
                                                        id="avatarPreview">
                                                </div>
                                                <div class="row mb-4">
                                                    <div class="col">
                                                        <button type="submit" class="btn btn-primary">Create</button>
                                                    </div>
                                                </div>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>


            </body>

            </html>