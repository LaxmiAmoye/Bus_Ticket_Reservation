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
<title>Bus Details</title>
<style type="text/css">
body{
            background-image: url(./images/bg1.avif);
        }
</style>
</head>	
<body>
	<%
        session = request.getSession(false);
        Customer customer = new Customer();
    %>
    
    <div class="container mt-4 shadow-lg ">
    
        <div class="row text-center text-danger">
            <h2>Buses Availability</h2>
        </div>
        <c:forEach items="${list}" var="customer">  
        <div class="row d-flex bg-body-secondary mb-0 p-3">                  
            <label class="col-sm-6" for="">From: ${customer.source}</label>
            <label class="col-sm-6" for="">To: ${customer.destination}</label>
        </div> 
        </c:forEach>  
        <div class="row bg-white">
            <table class="shadow-lg">
                <thead class="text-center">
                        <th class="p-3">Bus No.</th>
                        <th class="p-3">Bus Name</th>
                        <th class="p-3">Bus Type</th>
                        <th class="p-3">Departure</th>
                        <th class="p-3">Duration</th>
                        <th class="p-3">Arrival</th>
                        <th class="p-3">Price</th>
                        <th class="p-3"></th>
                </thead>
                <tbody class="text-center">
                <c:forEach items="${list}" var="customer">
                    <tr>               
                        <td class="p-3"><label for="">${customer.bus_id}</label></td>
                        <td class="p-3"><label for="">${customer.bus_name}</label></td>
                        <td class="p-3"><label for="">${customer.bus_type}</label></td>
                        <td class="p-3"><label for="">${customer.departure_time}</label></td>
                        <td class="p-3"><label for="">${customer.duration}</label></td>
                        <td class="p-3"><label for="">${customer.arrival_time}</label></td>
                        <td class="p-3"><label for="">${customer.price}</label></td>
                        <td class="p-3">
                        	<form action="payment" method="post">
                        		<input type="hidden" name="bus_id" value="${customer.bus_id}" />
                    			<input type="hidden" name="bus_name" value="${customer.bus_name}" />
                    			<input type="hidden" name="bus_type" value="${customer.bus_type}" />
                    			<input type="hidden" name="source" value="${customer.source}" />
                    			<input type="hidden" name="destination" value="${customer.destination}" />
                    			<input type="hidden" name="price" value="${customer.price}" />
                    			<input type="submit" value="Book" class="btn btn-danger" />
                        		
                        		</form></td>                    
                    </tr>
                </c:forEach>   
                </tbody>
            </table>           
        </div> 
                     
    </div>
</body>
</html>