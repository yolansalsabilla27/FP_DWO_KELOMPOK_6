<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/adventureworksdwo1?user=root&password=" catalogUri="/WEB-INF/queries/adw1.xml">

select {[Measures].[Incomes Total]} ON COLUMNS,
  {([Time].[All Times],[Customer].[All Customers],[Employee].[All Employees])} ON ROWS
from [TotalFact]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query AdventureWorks Total Sales using Mondrian OLAP</c:set>
