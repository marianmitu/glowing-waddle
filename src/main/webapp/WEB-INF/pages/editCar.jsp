<%-- 
    Document   : addCar
    Created on : Nov 22, 2021, 10:43:47 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Edit Car">
    <h1>Edit Car</h1>
    <form class="needs-validation" method="POST" action="${pageContext.request.contextPath}/Cars/Update">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="license_plate" class="form-label">License Plate</label>
                <input type="text" id="license_plate" class="form-control" name="license_plate" placeholder="" value="${car.licensePlate}" required>
                <div class="invalid-feedback">
                    License Plate is required
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="parking_spot" class="form-label">Parking Spot</label>
                <input type="text" id="parking_spot" class="form-control" name="parking_spot" placeholder="" value="${car.parkingSpot}" required>
                <div class="invalid-feedback">
                    Parking Spot is required
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="owner_id" class="form-label">Owner</label>
                <select class="custom-select d-block w-100" id="owner_id" name="owner_id" required>
                    <option value="">Choose...</option>
                    <c:forEach var="user" items="${users}" varStatus="status" >
                        <option value="${user.id}" ${car.username eq user.username ? 'selected': ''}>${user.username}</option>
                    </c:forEach>
                </select>
                <div class="invalid-feedback">
                    Please select an owner.
                </div>
            </div>
        </div>
        <hr class="my-4">
        <input type="hidden" name="car_id" value="${car.id}" />
        <button class="w-100 btn btn-primary btn-lg btn-block" type="submit" >Save</button>
    </form>
</t:pageTemplate>
