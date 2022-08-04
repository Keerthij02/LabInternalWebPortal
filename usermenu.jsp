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
        <table width="900" border="1" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFFFFF">
            <tr>
                <th colspan="3" scope="col" style="height:90px; background-color:#2175bc;"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="900" height="90">
                        <font color="#FFFFFF"><h2>Anna University Regional Campus<center>Tirunelveli</h2></center></font></th>
            </tr>
            <tr>
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td width="160" >

                    <div id="ddblueblockmenu">
                        <div class="menutitle">Welcome,&nbsp;<%=session.getAttribute("name")%></div>
                        <ul>

                            <li><a href="newclass.jsp">New Class</a></li>
                            <li><a href="myclasses.jsp">My Classes</a></li>    
                            <li><a href="Logout">LogOut</a></li>
                        </ul>
                        <div class="menutitle">&nbsp;</div>
                    </div>