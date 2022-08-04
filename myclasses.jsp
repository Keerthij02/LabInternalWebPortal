<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.lab.databaseConnection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<style>table, th, td {
  border: 1px solid black;
}</style>
<%@ include file="usermenu.jsp" %>  
<%
          Connection con = DBConnection.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from classes where fk_userid='" + session.getAttribute("userid") + "'");
        
        
        %>
	</td>
    <td colspan="2" style="padding:20px;line-height:20px;">
	<div class="box1">
	<marquee><h2><font color="#2175bc">Lab Internal Assesment Portal</font></h2></marquee>
	</div>
	<br/>
	<br/>
	<div class="box2">
            <form name="myclass" action="SelectEx.jsp" method="post">
            <table style="border: solid 2px">
                <tr><th>Subject Code</th><th>Subject</th><th>Department</th><th>Semester</th><th></th></tr>
                  <%while(rs.next()){%>  
                <tr><td><%=rs.getString(6)%></td><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td><td><input type="radio" value="<%=rs.getString(1)%>" name="classid"></td></tr>
                <%}%> 
                <tr><td colspan="4" style="text-align: center"><input type="Submit" value="Submit"></td></tr>
            </table>
            </form>
	</div>
	</td>
  </tr>
  <tr style="height:30px;">
    <td colspan="3" style="background-color:#2175bc;">&nbsp;</td>
  </tr>
</table>
</body>

</html>