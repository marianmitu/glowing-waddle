<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Add Car">
    <form class="needs-validation" method="POST" action="${pageContext.request.contextPath}/Users/Create">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" id="username" class="form-control" name="username" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Username is required
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" id="email" class="form-control" name="email" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Email is required
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" id="password" class="form-control" name="password" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Password is required
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="position" class="form-label">Position</label>
                <select class="custom-select d-block w-100" id="position" name="position" required>
                    <option value="">Choose...</option>
                    <option vale="">ADMINISTRATOR</option>
                    <option value="">CLIENT</option>
                </select>
                <div class="invalid-feedback">
                    Please select an owner.
                </div>
            </div>
        </div>
        <hr class="my-4">
        <button class="w-100 btn btn-primary btn-lg" type="submit">Save</button>
    </form>
</t:pageTemplate>
