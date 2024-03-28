<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Сотрундники</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Employee</title>
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
                <h3>Список сотрудников:</h3>
                <table class="table">
                    <thead>
                    <th scope="col">Код</th>
                    <th scope="col">ФИО</th>
                    <th scope="col">Должность</th>
                    <th scope="col">Дата рождения</th>
                    <th scope="col">Адрес</th>
                    <th scope="col">Город</th>
                    <th scope="col">Область</th>
                    <th scope="col">Номер</th>
                    <th scope="col">Почта</th>
                    <th scope="col">Редактировать</th>
                    <th scope="col">Удалить</th>
                    </thead>
                    <tbody>
                    <c:forEach var="employee" items="${employees}">
                        <tr>
                            <td>${employee.getId()}</td>
                            <td>${employee.getFio()}</td>
                            <td>${employee.getTitle()}</td>
                            <td>${employee.getBirthdate()}</td>
                            <td>${employee.getAddress()}</td>
                            <td>${employee.getCity()}</td>
                            <td>${employee.getRegion()}</td>
                            <td>${employee.getPhone()}</td>
                            <td>${employee.getEmail()}</td>
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
                        <br> <label for="fio"
                                    class="col-sm-3 col-form-label a-color">ФИО</label>
                        <div class="col-sm-6">
                            <input type="text" name="fio"
                                   class="form-control" id="fio" />
                        </div>
                        <label for="title"
                               class="col-sm-3 col-form-label a-color">Должность</label>
                        <div class="col-sm-6">
                            <input type="text" name="title"
                                   class="form-control" id="title" />
                        </div>
                        <label for="birthdate"
                               class="col-sm-3 col-form-label a-color">Дата рождения</label>
                        <div class="col-sm-6">
                            <input type="date" name="birthdate"
                                   class="form-control" id="birthdate" />
                        </div>
                        <label for="address"
                               class="col-sm-3 col-form-label a-color">Адрес</label>
                        <div class="col-sm-6">
                            <input type="text" name="address"
                                   class="form-control" id="address" />
                        </div>
                        <label for="city"
                               class="col-sm-3 col-form-label a-color">Город</label>
                        <div class="col-sm-6">
                            <input type="text" name="city"
                                   class="form-control" id="city" />
                        </div>
                        <label for="region"
                               class="col-sm-3 col-form-label a-color">Регион</label>
                        <div class="col-sm-6">
                            <input type="text" name="region"
                                   class="form-control" id="region" />
                        </div>
                        <label for="phone"
                               class="col-sm-3 col-form-label a-color">Номер телефона</label>
                        <div class="col-sm-6">
                            <input type="text" name="phone"
                                   class="form-control" id="phone" />
                        </div>
                        <label for="email"
                               class="col-sm-3 col-form-label a-color">Почта</label>
                        <div class="col-sm-6">
                            <input type="text" name="email"
                                   class="form-control" id="email" />
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