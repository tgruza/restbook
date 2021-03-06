<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>

<body>

<%@include file="../dynamic/navigationSub.jspf" %>

<!-- Main Content -->

<!-- Cuisine Header -->
<div class="container col-12 d-flex justify-content-center bg-light">
    <div class="row col-10 d-flex justify-content-center">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                        aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    Kuchnie<span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav col-12 d-flex">
                        <a href="<c:url value='/allRestaurants?id=50'/>">
                            <button class="nav-item p-3 btn btn-outline-info rounded-pill" type="button">Pokaż
                                wszystkie
                            </button>
                        </a>
                        <c:forEach items="${top10Cuisines}" var="top10Cuisine">
                            <a href="<c:url value='/allRestaurants?id=${top10Cuisine.id}'/>">
                                <button class="nav-item p-3 btn btn-outline-info rounded-pill"
                                        type="button">${top10Cuisine.name}</button>
                            </a>
                        </c:forEach>
                        <button type="button" class="nav-item p-3 btn btn-outline-info rounded-pill"
                                data-toggle="modal"
                                data-target="#addCuisineModal">
                            Więcej
                        </button>


                        <div id="myModal" class="modal fade" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">
                                            Rodzaje kuchni
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <p id="checkid"></p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Zamknij
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal -->
                        <div class="modal fade" id="addCuisineModal" tabindex="-1" role="dialog"
                             aria-labelledby="addCuisineModalTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="addCuisineModalTitle">Rodzaje kuchni:</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>

                                    <div class="modal-body col-12 d-flex justify-content-center">
                                        <div class="row col-12">
                                            <c:forEach items="${cuisine}" var="cuisine">
                                                <div class="p-1 btn-group-toggle col-4" data-toggle="buttons">
                                                    <a href="<c:url value='/allRestaurants?id=${cuisine.id}'/>">
                                                        <button type="button"
                                                                class="p-2 btn btn-outline-info rounded-pill col-12">
                                                                ${cuisine.name}
                                                        </button>
                                                    </a>
                                                </div>
                                            </c:forEach>

                                        </div>
                                    </div>


                                    <div class="modal-footer">
                                        <button type="button" class="p-2 btn btn-secondary rounded-pill"
                                                data-dismiss="modal">Zamknij
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
    </div>
</div>


<div class="container">
    <div class="spacer" style="height: 30px"></div>

    <%@include file="../dynamic/restaurantDisplay.jspf" %>

</div>

<hr>

<%@include file="../dynamic/board.jspf" %>

<%@include file="../dynamic/js.jspf" %>
</body>

</html>