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
                <td width="60" >

                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>	</td>

                <td colspan="2"><table width="98%" border="0" align="center" cellpadding="1" cellspacing="0">
                        <tr>
                            <th colspan="2" scope="col"><div class="box1">
                              
                                        <h2><font color="#2175bc">Lab Internal Assesment Portal</font></h2>
                                    </marquee>
                                </div></th>
                        </tr>
                        <tr>
                            <th width="50%" scope="col">
                                <form id="form1" name="form1" method="post" action="Login">
                                    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" style="border:#000000 solid 2px; padding:5px;">
                                        <tr>
                                            <th colspan="3" bgcolor="#2175bc" scope="col"><font color="#FFFFFF">Faculty Login</font></th>
                                        </tr>
                                        <tr>
                                            <td colspan="3"><%
                                                String msg = request.getAttribute("msg") != null ? request.getAttribute("msg").toString() : "";
                                                %><font color="red"><%=msg%></font></td>


                                        </tr>
                                        <tr>
                                            <td width="28%" rowspan="3"><div align="center"><img src="img/icon_module.png" width="48" height="48" /></div></td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr><br>
                                                <td width="24%">Username:</td>
                                                <td width="48%"><label>
                                                        <input name="email" type="text" id="username" />
                                                    </label></td>
                                        </tr>
                                        <tr><br>
                                                <td width="24%">Password: </td>
                                                <td width="48%"><label>
                                                        <input name="password" type="password" id="password" />
                                                    </label></td>
                                        </tr>
                                        <!-- <tr>
                                           <td>Password:</td>
                                           <td><label>
                                             <input name="password" type="password" id="password" />
                                           </label></td>
                                         </tr>-->

                                        <tr>
                                            <td>&nbsp;</td>
                                            <td colspan="2"><label>

                                                    <div align="center">
                                                        <input name="Submit" type="submit" onclick="MM_validateForm('username', '', 'R', 'password', '', 'R');return document.MM_returnValue" value="Submit" />
                                                    </div>
                                                </label></td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">Want to Create a New Account? <a href="login.jsp">Click Here</a> </td>
                                        </tr>

                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </form>        </th>
                            <th width="50%" scope="col">
                                <form name="student" action="viewmarks.jsp" method="post">
                                    <table width="100%" height="100%" border="0" align="center" cellpadding="2" cellspacing="2" style="border:#000000 solid 2px; padding:5px;">
                                        <tr>
                                            <th colspan="3" bgcolor="#2175bc" scope="col"><font color="#FFFFFF">Student Login</font></th>
                                        </tr>

                                        <tr>
                                            <td width="28%" rowspan="3"><div align="center"><img src="img/icon_module.png" width="48" height="48" /></div></td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr><br>
                                                <td width="24%">Register.No:</td>
                                                <td width="48%"><label>
                                                        <input name="regno" type="text" id="regNo" />
                                                    </label></td>
                                        </tr>
                                         <td colspan="3"><%
                                                String errmsg = request.getAttribute("errmsg") != null ? request.getAttribute("errmsg").toString() : "";
                                                %><font color="red"><%=errmsg%></font></td>
                                        
                                        <tr><td colspan="2"><input type="submit" value="View Marks"></input></td>
                                             

                                        </tr>
  <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>

                                      
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </form>


                            </th></tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table></td>
            </tr>
            <tr style="height:30px;">
                <td colspan="3" style="background-color:#2175bc;">&nbsp;</td>
            </tr>
        </table>
    </body>

</html>
