<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Книги</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Books</title>
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
                <h3>Список книг:</h3>
                <br>
                <table class="table">
                    <thead>
                    <th scope="col">Код</th>
                    <th scope="col">Автор</th>
                    <th scope="col">Издательство</th>
                    <th scope="col">Название</th>
                    <th scope="col">ISBN</th>
                    <th scope="col">Год</th>
                    <th scope="col">Страницы</th>
                    <th scope="col">Цена, Руб.</th>
                    <th scope="col">Обложка</th>
                    <th scope="col">Наличие</th>
                    <th scope="col">Редактировать</th>
                    <th scope="col">Удалить</th>
                    </thead>
                    <tbody>
                    <c:forEach var="book" items="${books}">
                        <tr>
                            <td>${book.getId()}</td>
                            <td>${book.getAuthor().getFio()}</td>
                            <td>${book.getPublish().getPublishName()}</td>
                            <td>${book.getTitle()}</td>
                            <td>${book.getCode()}</td>
                            <td>${book.getPublishYear()}</td>
                            <td>${book.getPageCount()}</td>
                            <td>${book.getPrice()}</td>
                            <td>${book.getHardcover()}</td>
                            <td>${book.getStatus()}</td>

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
                    <div class="mb-3 row">
                        <label for="author"
                               class="col-sm-3 col-form-label a-color">Автор</label>
                        <div class="col-sm-7">
                            <select name="author" class="form-control">
                                <option>Выберите автора</option>
                                <c:forEach var="author" items="${authors}">
                                    <option value="${author}">
                                        <c:out value="${author.getFio()}"/>
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="publish"
                               class="col-sm-3 col-form-label a-color">Издательство</label>
                        <div class="col-sm-7">
                            <select name="publish" class="form-control">
                                <option>Выберите издательство</option>
                                <c:forEach var="pub" items="${publish}">
                                    <option value="${pub}">
                                        <c:out value="${pub.getPublishName()}"/>
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="title"
                               class="col-sm-3 col-form-label a-color">Название</label>
                        <div class="col-sm-6">
                            <input type="text" name="title"
                                   class="form-control" id="title" />
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="code"
                               class="col-sm-3 col-form-label a-color">ISBN-код</label>
                        <div class="col-sm-6">
                            <input type="number" name="code"
                                   class="form-control" id="code" />
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="publish_year"
                               class="col-sm-3 col-form-label a-color">Год публикации</label>
                        <div class="col-sm-6">
                            <input type="text" name="publish_year"
                                   class="form-control" id="publish_year" />
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="page_count"
                               class="col-sm-3 col-form-label a-color">Кол-во страниц</label>
                        <div class="col-sm-6">
                            <input type="number" name="page_count"
                                   class="form-control" id="page_count" />стр.
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="price"
                               class="col-sm-3 col-form-label a-color">Цена</label>
                        <div class="col-sm-6">
                            <input type="number" name="price"
                                   class="form-control" id="price" />руб.
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="hardcover"
                               class="col-sm-3 col-form-label a-color">Обложка</label>
                        <div class="col-sm-6">
                            <input type="text" name="hardcover"
                                   class="form-control" id="hardcover" />
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="status"
                               class="col-sm-3 col-form-label a-color">Наличие</label>
                        <div class="col-sm-6">
                            <input type="text" name="status"
                                   class="form-control" id="status" />
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