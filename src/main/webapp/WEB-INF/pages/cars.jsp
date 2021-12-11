<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
    <h1>Cars</h1>
    <form method="POST" action="${pageContext.request.contextPath}/Cars">
        <a class="btn btn-primary btn-lg" href = "${pageContext.request.contextPath}/Cars/Create" role="button"> Add Car </a>
        <button class="btn btn-danger" type="submit">Delete Car</button>
        <c:forEach var="car" items="${cars}" varStatus="status">
            <div class="row">
                <div class="col-md">
                    <input type="checkbox" name="car_ids" value="${car.id}" />
                </div>
                <div class="col-md-3">
                    ${car.licensePlate}
                </div>
                <div class="col-md-3">
                    ${car.parkingSpot}
                </div>
                <div class="col-md-3">
                    ${car.user.getUsername()}
                </div>
                <div class="col-md-2">
                    <a class="btn btn-secondary" href = "${pageContext.request.contextPath}/Cars/Update?car_id=${car.id}" role="button">Edit Car</a>
                </div>
            </div>
        </c:forEach>
    </form>
    <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>
</t:pageTemplate>