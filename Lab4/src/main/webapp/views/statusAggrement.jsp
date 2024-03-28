<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Статус договора</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SubAccount</title>
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
                    <th scope="col">Номер договора</th>
                    <th scope="col">Статус договора</th>
                    <th scope="col">Редактировать</th>
                    <th scope="col">Удалить</th>
                    </thead>
                    <tbody>
                    <c:forEach var="stat" items="${statusAggrement}">
                        <tr>
                            <td>${stat.getId()}</td>
                            <td>${stat.getAggrement().getNumber()}</td>
                            <td>${stat.getStatus()}</td>
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
                    <h3>Изменить статус договора:</h3>
                    <br>
                    <div class="mb-3 row">
                        <label for="inputAccount"
                               class="col-sm-3 col-form-label">Договор</label>
                        <div class="col-sm-7">
                            <select name="faculty" class="form-control">
                                <option>Выберите договор: </option>
                                <c:forEach var="agg" items="${aggrement}">
                                    <option value="${agg}">
                                        <c:out value="${agg.getNumber()}"/>
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                        <label for="inputAccount"
                               class="col-sm-3 col-form-label">Статус</label>
                        <div class="col-sm-7">
                            <select name="faculty" class="form-control">
                                <option>Выберите статус: </option>
                                <c:forEach var="stat" items="${statusAggrement}">
                                    <option value="${stat}">
                                        <c:out value="${stat.getStatus()}"/>
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>


                    <p> <br>
                        <button type="submit"
                                class="btn btn-primary">Изменить</button>
                    </p>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="/views/footer.jsp" />
</div>
</body>
</html>