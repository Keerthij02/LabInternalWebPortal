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
        <marquee><h2><font color="#2175bc">Internal Lab Assesment Portal</font></h2></marquee>
    </div>
    <br/>
    <br/>
    <script>
        function myFunction(id) {
            var ex1 = document.getElementsByName(id + "ex1");

            var ex2 = document.getElementsByName(id + "ex2");
            var ex3 = document.getElementsByName(id + "ex3");
            var ex4 = document.getElementsByName(id + "ex4");
            var ex5 = document.getElementsByName(id + "ex5");
            var ex6 = document.getElementsByName(id + "ex6");
            var ex7 = document.getElementsByName(id + "ex7");
            var ex8 = document.getElementsByName(id + "ex8");
            var ex9 = document.getElementsByName(id + "ex9");
            var ex10 = document.getElementsByName(id + "ex10");
            var internal = document.getElementsByName(id + "internal");
            var sum = Number(ex1[0].value) + Number(ex2[0].value) + Number(ex3[0].value) + Number(ex4[0].value) + Number(ex5[0].value) + Number(ex6[0].value) + Number(ex7[0].value) + Number(ex8[0].value) + Number(ex9[0].value) + Number(ex10[0].value);
            var tot = sum / 1.33;
            var intsum = Number(internal[0].value) / 4;
            var x = document.getElementById(id + "total");
            x.value = Math.round(tot + intsum);

        }
    </script>
    <style>
        input[type='number']{
           width: 35px;
 } 
      
        table, th, td {
  border: 1px solid black;
}
    </style>
    <div class="box2">
        <%
            Connection con = DBConnection.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from students where fk_classid='" + request.getParameter("classid") + "'");

        %>
        <form name="form1" method="post" action="myclasses.jsp">
        <table style="border: solid 2px">
            <tr>
                <th>Name</th> <th>Regno</th><th>Ex1</th><th>Ex2</th><th>Ex3</th><th>Ex4</th><th>Ex5</th>
                <th>Ex6</th><th>Ex7</th><th>Ex8</th><th>Ex9</th><th>Ex10</th><th>Model</th><th>Total</th>
            </tr>            

            <%while (rs.next()) {int m1 = rs.getInt(4);
                                            int m2 = rs.getInt(5);
                                            int m3 = rs.getInt(6);
                                            int m4 = rs.getInt(7);
                                            int m5 = rs.getInt(8);
                                            int m6 = rs.getInt(9);
                                            int m7 = rs.getInt(10);
                                            int m8 = rs.getInt(11);
                                            int m9 = rs.getInt(12);
                                            int m10 = rs.getInt(13);
                                            int sum = m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + m10;
                                            double tot = sum / 1.33;
                                            int internal = rs.getInt(14);
                                            double tot1 = internal / 4;
                                            double total = tot + tot1;%>  

            <tr><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
                <td><%=rs.getString(9)%></td>
                <td><%=rs.getString(10)%></td>
                <td><%=rs.getString(11)%></td>
                <td><%=rs.getString(12)%></td>
                <td><%=rs.getString(13)%></td>
                <td><%=rs.getString(14)%></td>
                <td><%=Math.round(total)%></td>
                    <%}%>
            <tr><td colspan="14" style="text-align: center"><input type="submit" value="Back"></td></tr>
        </table>
    </div>
</td>
</tr>
<tr style="height:30px;">

    <td colspan="3" style="background-color:#2175bc;"> 
    </td>
</tr>
</table>
                    </form>
</body>

</html>
