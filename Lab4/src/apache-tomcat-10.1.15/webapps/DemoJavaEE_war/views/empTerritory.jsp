<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Покрытие</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>EmpTerritory</title>
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
                <h3>Покрытие:</h3>
                <table class="table">
                    <thead>
                    <th scope="col">Код</th>
                    <th scope="col">Сотрудник</th>
                    <th scope="col">Город</th>
                    <th scope="col">Редактировать</th>
                    <th scope="col">Удалить</th>
                    </thead>
                    <tbody>
                    <c:forEach var="empt" items="${empTerritory}">
                        <tr>
                            <td>${empt.getId()}</td>
                            <td>${empt.getEmployee().getFio()}</td>
                            <td>${empt.getTerritory().getDesc()}</td>
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
                    <h3 class="a-color">Новая запись</h3>
                    <br>
                    <div class="mb-3 row">
                        <label for="employee"
                               class="col-sm-3 col-form-label a-color">Сотрудник</label>
                        <div class="col-sm-7">
                            <select name="employee" class="form-control">
                                <option>Выберите сотрудника</option>
                                <c:forEach var="employee" items="${employees}">
                                    <option value="${employee}">
                                        <c:out value="${employee.getFio()}"/>
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="territory"
                               class="col-sm-3 col-form-label a-color">Город</label>
                        <div class="col-sm-7">
                            <select name="territory" class="form-control">
                                <option>Выберите город</option>
                                <c:forEach var="territory" items="${territories}">
                                    <option value="${territory}">
                                        <c:out value="${territory.getDesc()}"/>
                                    </option>
                                </c:forEach>
                            </select>
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