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

                <td><table width="98%" border="0" align="center" cellpadding="1" cellspacing="0">
                        <tr>
                            <th colspan="2" scope="col"><div class="box1">
                                    <marquee>
                                        <h2><font color="#2175bc">Lab Internal Assesment Portal</font></h2>
                                    </marquee>
                                </div></th>
                        </tr>
                        <tr>
                            <th width="100%" scope="col"><form id="form1" name="form1" method="post" action="Register">
                                    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" style="border:#000000 solid 2px; padding:5px;">
                                        <tr>
                                            <th colspan="3" bgcolor="#2175bc" scope="col"><font color="#FFFFFF">Registration</font></th>
                                        </tr>
                                        <tr>
                                            <td colspan="3"><%
                                                String msg = request.getAttribute("msg") != null ? request.getAttribute("msg").toString() : "";
                                                %><font color="red"><%=msg%></font></td>


                                        </tr>
                                       
                                        <tr><br>
                                                <td width="24%">Name:</td>
                                                <td width="48%"><label>
                                                        <input name="name" type="text" id="name" />
                                                    </label></td>
                                        </tr>

                                        <tr><br>
                                                <td width="24%">Email:</td>
                                                <td width="48%"><label>
                                                        <input name="email" type="email" id="email" />
                                                    </label></td>
                                        </tr>
                                        <tr><br>
                                                <td width="24%">Password:</td>
                                                <td width="48%"><label>
                                                        <input name="password" type="password" id="password" />
                                                    </label></td>
                                        </tr>

                                        <tr><br>
                                                <td width="24%">Confirm Password:</td>
                                                <td width="48%"><label>
                                                        <input name="confpassword" type="password" id="confpassword" />
                                                    </label></td>
                                        </tr>

                                              <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                          
                                            <td colspan="2"><label>

                                                    
                                                    <center><input name="Submit" type="submit" value="Submit" />
                                                                                                    </label></td>
                                                    </center>
                                        </tr>
                                   
                                        <tr>
                                            <td colspan="3"><a href="index.jsp">Login?</a> </td>
                                        </tr>
                                        
                                    </table>
                                </form>        </th>
                            <th width="50%" scope="col">
                            </th>      </tr>
                    
                    </table>

                </td>
            </tr>
            <tr style="height:30px;">
                <td colspan="3" style="background-color:#2175bc;">&nbsp;</td>
            </tr>
        </table>
    </body>

</html>
