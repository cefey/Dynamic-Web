<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Издательства</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Publish</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- jQuery -->
    <script defer src="js/jquery-3.6.4.js"></script>
    <!-- Bootstrap JS + Popper JS -->
    <script defer src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid back-container">
    <jsp:include page="/views/header.jsp" />
    <div class="container-fluid back-container">
        <div class="row justify-content-start ">
            <div class="col-8 border bg-light px-4">
                <h3>Список издательств:</h3>
                <table class="table">
                    <thead>
                    <th scope="col">Код</th>
                    <th scope="col">Название</th>
                    <th scope="col">Адрес</th>
                    <th scope="col">Сайт</th>
                    <th scope="col">Редактировать</th>
                    <th scope="col">Удалить</th>
                    </thead>
                    <tbody>
                    <c:forEach var="pub" items="${publish}">
                        <tr>
                            <td>${pub.getId()}</td>
                            <td>${pub.getPublishName()}</td>
                            <td>${pub.getAddress()}</td>
                            <td>${pub.getSite()}</td>
                            <td width="20"><a href="#" role="button"
                                              class="btn btn-outline-primary">
                                <img alt="Редактировать"
                                     src="img/edit.png"></a></td>
                            <td width="20"><a href="#" role="button"
                                              class="btn btn-outline-primary">
                                <img alt="Удалить"
                                     src="img/delete.png"></a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="col-4 border px-4">
                <form method="POST" action="">
                    <h3 class="a-color">Новая запись</h3>
                    <div class="mb-3">
                        <br> <label for="publish_name"
                                    class="col-sm-3 col-form-label a-color">Название</label>
                        <div class="col-sm-6">
                            <input type="text" name="publish_name"
                                   class="form-control" id="publish_name" />
                        </div>
                        <label for="address"
                               class="col-sm-3 col-form-label a-color">Адрес</label>
                        <div class="col-sm-6">
                            <input type="text" name="address"
                                   class="form-control" id="address" />
                        </div>
                        <label for="site"
                               class="col-sm-3 col-form-label a-color">Сайт</label>
                        <div class="col-sm-6">
                            <input type="text" name="site"
                                   class="form-control" id="site" />
                        </div>
                    </div>
                    <p>
                        <br> <br> <br>
                        <button type="submit"
                                class="btn btn-primary">Добавить</button>
                        <br>
                    </p>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="/views/footer.jsp" />
</div>
</body>
</html>