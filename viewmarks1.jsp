
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.lab.databaseConnection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ include file="usermenu.jsp" %>  
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>	</td>
<td colspan="2" style="padding:20px;line-height:20px;">
<div class="box1">
        <marquee><h2><font color="#2175bc">Lab Internal Assesment Portal</font></h2></marquee>
    </div>
    <br/>
    <br/>
    
    <style>
        input[type='number']{
            width: 35px;
        } 
        
        table, th, td {
  border: 1px solid black;
}
    </style>
    <%
            Connection con = DBConnection.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from students where fk_classid='" +request.getParameter("classid") + "'");

        %>
        <%
                int ex =Integer.parseInt(request.getParameter("exercises"));
              %>
       <body>
        <div class="box2">
            
            <center>
         <form name="form1" method="post" action="myclasses.jsp">
             <table style="border: solid 2px">
            <tr>
                <th>Name</th> <th>Regno</th><th><% if(ex<=13){%>Exercise<%=ex-3%><%}%><%else{%>Model Test<%}%></th>
                
            </tr>            
            
            <%while (rs.next()) {
                                           
                                         %>  
            <tr><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td>
                <td><%=rs.getString(ex)%></td>
                
                    
                   
                <%}%>
            </tr>
            <tr><td colspan="14" style="text-align: center"><input type="submit" value="save"></td></tr>
        
    </div>
</td>
</tr>

</table>
                    </form>
            </center>
</body>

</html>
