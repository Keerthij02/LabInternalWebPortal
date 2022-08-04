<%@page import="com.lab.databaseConnection.DBConnection"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Lab Internal Assesment Portal</title>
        <link href="css/menu.css" rel="stylesheet" type="text/css" />
        <link href="css/main.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            <!--
            html,body{
                background-image: url(img/img.gif);
            }
            table, th, td {
                border: 1px solid black;
            }
        </style>

    </head>

    <body>
        <table width="900" border="0" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFFFFF">
            <tr>
                <th colspan="3" scope="col" style="height:90px; background-color:#2175bc;"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="900" height="90">
                        <font color="#FFFFFF"><h2>Anna University Regional Campus<center>Tirunelveli</h2></center></font></th>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                

                <td><table width="98%" border="0" align="center" cellpadding="1" cellspacing="0">
                        <tr>
                            <th colspan="2" scope="col"><div class="box1">
                                    <marquee>
                                        <h2><font color="#2175bc">Lab Internal Assesment Portal</font></h2>
                                    </marquee>
                                </div></th>
                        </tr>
                        <%
                            Connection con2 = DBConnection.getCon();
                            Statement st2 = con2.createStatement();
                            String id1 = request.getParameter("regno");

                            ResultSet rs2 = st2.executeQuery("select * from students where regno='" + id1 + "'");
                            if (rs2.next()) {

                        %>
                        <tr>
                            <th width="50%" scope="col"> Name:     </th>
                            <th width="50%" scope="col"> <%=rs2.getString(2)%>
                            </th>      </tr>
                        <tr>
                            <th width="50%" scope="col"> Reg no:    </th>
                            <th width="50%" scope="col"> <%=rs2.getString(3)%>
                            </th>      </tr>
                        <table width="98%" border="0" align="center" cellpadding="1" cellspacing="0">
                            <tr> <th>Subject Code</th><th>Department</th><th>Semester</th><th>Marks</th></tr>
                                    <%
                                        Connection con = DBConnection.getCon();
                                        Statement st = con.createStatement();
                                        String id = request.getParameter("regno");

                                        ResultSet rs = st.executeQuery("select * from students where regno='" + id + "'");
                                        while (rs.next()) {
                                            String classid = rs.getString(15);
                                            int m1 = rs.getInt(4);
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
                                            double total = tot + tot1;
                                            Connection con1 = DBConnection.getCon();
                                            Statement st1 = con1.createStatement();
                                            ResultSet rs1 = st1.executeQuery("select * from classes where classid='" + classid + "'");
                                            rs1.next();

                                    %>



                            <tr><td><%=rs1.getString(6)%></td><td><%=rs1.getString(3)%></td><td><%=rs1.getString(4)%></td><td><%=Math.round(total)%></td></tr>
                            <%}%><tr></tr>
                        </table>
                        <center><TR><td colspan="5"  style="text-align: right"><a href="index.jsp">Go Back</a></td></TR></center>
                    </table>
                    </br>
                    <br>
                    </br>
                </td>
            </tr>
            <tr style="height:30px;">
                <td colspan="8" style="background-color:#2175bc;">&nbsp;</td>
            </tr>
            <%} else {
                    request.setAttribute("errmsg", "Regno may be incorrect or data not available");
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.forward(request, response);
                }

            %>
        </table>
    </body>

</html>
