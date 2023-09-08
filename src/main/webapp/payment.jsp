<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.ashokit.Customer" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="bootstrap/js/bootstrap.bundle.js"></script>
<title>Payment</title>
<style type="text/css">
		*{
         	margin: 0;
            padding: 0;
            box-sizing: border-box;
         }
         body{
            background-image: url(./images/bg1.avif);
            background-repeat: no-repeat;
    		background-position: center;
    		background-size: cover;
         }
</style>
</head>
<body>
	<%
            session = request.getSession(false);
            Customer customer = new Customer();
        %>

        <div class="container mt-4 shadow-lg bg-light" style="border-radius: 15px;">
            <div class="row">
                <div class="col-sm-7 mt-3">
                    <img src="./images/bus-payment.avif" style="border-top-left-radius : 15px;" class="h-100 w-100" alt="Bus Image">
                </div>
                <c:forEach items="${list}" var="customer">
                <div class="col-sm-5">
                    <div class="row">
                        <div class="col-sm-12 mt-3">
                            <div class="d-flex justify-content-between mb-3">
                                <p class="textmuted">Bus Number</p>
                                <p class="fs-14 fw-bold">${customer.bus_id}</p>
                            </div>
                            <div class="d-flex justify-content-between mb-3">
                                <p class="textmuted">Travels</p>
                                <p class="fs-14 fw-bold">${customer.bus_name}</p>
                            </div>
                            <div class="d-flex justify-content-between mb-3">
                                <p class="textmuted">Bus Type</p>
                                <p class="fs-14 fw-bold">${customer.bus_type}</p>
                            </div>
                            <div class="d-flex justify-content-between mb-3">
                                <p class="textmuted">Source</p>
                                <p class="fs-14 fw-bold">${customer.source}</p>
                            </div>
                            <div class="d-flex justify-content-between mb-3">
                                <p class="textmuted">Destination</p>
                                <p class="fs-14 fw-bold">${customer.destination}</p>
                            </div>
                            <div class="d-flex justify-content-between mb-3">
                                <p class="textmuted fw-bold">Price</p>
                                <p class="d-flex align-text-top h4">
                                    <i class="bi bi-currency-rupee mt-1 pe-1 fs-14">${customer.price}</i></p>
                            </div>                        
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
            <div class="row">
                <div class="col-sm-7 mt-4">
                    <c:forEach items="${list}" var="customer">
                    <div class="d-flex justify-content-between mb-2">
                        <p class="textmuted">Name</p>
                        <p class="fs-14 fw-bold">${customer.fullname}</p>
                    </div>
                    <div class="d-flex justify-content-between mb-2">
                        <p class="textmuted">Email ID</p>
                        <p class="fs-14 fw-bold">${customer.email}</p>
                    </div>
                    <div class="d-flex justify-content-between mb-2">
                        <p class="textmuted">Contact</p>
                        <p class="fs-14 fw-bold">${customer.mobile}</p>
                    </div>                        
                    </c:forEach>
                </div>
                <div class="col-sm-5 px-0">
                    <div class="row m-0">
                        <div class="col-12 px-3 my-3">
                            <p class="fw-bold">Payment details</p>
                        </div>
                    </div>
                    <div class="row px-4">
                        <div class="col-sm-6 mb-4">                                        
                            <input type="radio">
                            <label>Cash</label>                        
                        </div>
                        <div class="col-sm-6 mb-4">                                        
                            <input type="radio">
                            <label>Online</label>
                        </div>
                    </div>
                    <div class="row m-0">
                        <div class="col-12 text-center mb-3 p-0">
                            <div class="btn btn-primary">Confirm</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>