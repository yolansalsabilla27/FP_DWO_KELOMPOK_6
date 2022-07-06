<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/adventureworksdwo1?user=root&password=" catalogUri="/WEB-INF/queries/adw2.xml">

select {[Measures].[Total Freight]} ON COLUMNS,
  {([Time].[All Times],[Method].[All Methods],[Address].[All Addresses])} ON ROWS
from [ShipmentFact]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query AdventureWorks Shipment using Mondrian OLAP</c:set>
