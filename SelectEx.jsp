<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.lab.databaseConnection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>table, th, td {
  border: 1px solid black;
}</style>
<%@ include file="usermenu.jsp" %>  

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <td colspan="2" style="padding:20px;line-height:20px;">
    <div class="box1">
        <marquee><h2><font color="#2175bc">Lab Internal Assesment Portal</font></h2></marquee>
    </div>
    <br/>
        <br/><center>
    <form name="exform" method="post" action="viewstudents.jsp">
        <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" style="border:#000000 solid 2px; padding:5px;">
                    <tr><td>
                Select Exercise :
                </td>
                <input type="hidden" id="classid" name="classid" value="<%=request.getParameter("classid")%>">
                <td colspan="4" style="text-align: center">
                    <select name="exercises" id="exercises">
                        <option value="4" >Exercise 1</option>
                        <option value="5" >Exercise 2</option>
                        <option value="6" >Exercise 3</option>
                        <option value="7" >Exercise 4</option>
                        <option value="8" >Exercise 5</option>
                        <option value="9" >Exercise 6</option>
                        <option value="10">Exercise 7</option>
                        <option value="11">Exercise 8</option>
                        <option value="12">Exercise 9</option>
                        <option value="13">Exercise 10</option>
                        <option value="14">Model Test</option>
                    </select
                </td>               
            </tr>
            <tr>
                <td  style="text-align: center"><input type="Submit" value="Enter/Update Marks"></td>
            
               <td  style="text-align: center"><input type="Submit" value="View Marks" formaction="viewmarks1.jsp"></td>
            
               <td  style="text-align: center"><input type="Submit" value="View Total Mark" formaction="viewtotal.jsp"></td>
            </tr>
        </table>
    </form>
            </center>
    </body>
</html>
