<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Договоры</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Aggrement</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- jQuery -->
    <script defer src="js/jquery.min.js"></script>
    <!-- Bootstrap JS + Popper JS -->
    <script defer src="js/bootstrap.min.js"></script>
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.mi
n.js"></script>
</head>
<body>
<div class="container-fluid back-container">
    <jsp:include page="/views/header.jsp" />
    <div class="container-fluid back-container">
        <div class="row justify-content-start ">
            <div class="col-8 border bg-light px-4">
                <h3>Список договоров:</h3>
                <table class="table">
                    <thead>
                    <th scope="col">Код</th>
                    <th scope="col">Код клиента</th>
                    <th scope="col">Номер договора</th>
                    <th scope="col">Дата открытия договора</th>
                    <th scope="col">Дата закрытия договора</th>
                    <th scope="col">Редактировать</th>
                    <th scope="col">Удалить</th>
                    </thead>
                    <tbody>
                    <c:forEach var="aggrement" items="${aggrement}">
                        <tr>
                            <td>${aggrement.getId()}</td>
                            <td>${aggrement.getPersonId()}</td>
                            <td>${aggrement.getNumber()}</td>
                            <td>${aggrement.getDateOpen()}</td>
                            <td>${aggrement.getDateClose()}</td>
                            <td width="20"><a href="#" role="button"
                                              class="btn btn-outline-primary">
                                <img alt="Редактировать"
                                     src="img/edit.png"></a>
                            </td>
                            <td width="20"><a href="#" role="button"
                                              class="btn btn-outline-primary">
                                <img alt="Удалить"
                                     src="img/delete.png"></a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="col-4 border px-4">
                <form method="POST" action="">
                    <h3>Новый договор:</h3>
                    <br>
                    <div class="mb-3 row">
                        <label for="inputName"
                               class="col-sm-3 col-form-label">Номер договора</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control"
                                   id="inputName" name="number" />
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="inputType"
                               class="col-sm-3 col-form-label">Код клиента</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control"
                                   id="inputType" name="code" />
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="dateopen"
                               class="col-sm-3 col-form-label">Дата открытия</label>
                        <div class="col-sm-7">
                            <input type="date"
                                   class="form-control" id="dateopen"
                                   name="dateopen" />
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="dateclose"
                               class="col-sm-3 col-form-label">Дата закрытия</label>
                        <div class="col-sm-7">
                            <input type="date"
                                   class="form-control" id="dateclose"
                                   name="dateclose" />
                        </div>
                    </div>
                    <p> <br>
                        <button type="submit"
                                class="btn btn-primary">Добавить</button>
                    </p>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="/views/footer.jsp" />
</div>
</body>
</html>