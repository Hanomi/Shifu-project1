<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Story</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row justify-content-md-center">
        <c:if test="${pageContext.request.userPrincipal.name != null}">

            <form id="logoutForm" method="POST" action="${contextPath}/logout">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>

            <h4>Welcome ${pageContext.request.userPrincipal.name} |
                <a href="${contextPath}/" class="badge badge-primary">Home</a> |
                <a href="${contextPath}/" onclick="document.forms['logoutForm'].submit()" class="badge badge-primary">Logout</a>
            </h4>
        </c:if>
    </div>
    <div class="row justify-content-md-center">
        <c:if test="${currentStory != null}">
            <div class="col col-lg-8">
                <table class="table">
                    <thead class="thead-light">
                    <tr>
                        <th scope="col">${currentStory.title}</th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>${currentStory.content}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </c:if>
    </div>
</div>
<!-- /container -->

<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>