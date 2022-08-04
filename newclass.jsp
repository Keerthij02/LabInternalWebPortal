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
    <div class="box2">
        <form action="NewClass" enctype="multipart/form-data" method="post">
            <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" style="border:#000000 solid 2px; padding:5px;">
                <tr>
                    <th colspan="3" bgcolor="#2175bc" scope="col"><font color="#FFFFFF">New Class</font></th>
                </tr>
                <tr>
                                            <td colspan="3"><%
                                                String msg = request.getAttribute("msg") != null ? request.getAttribute("msg").toString() : "";
                                                %><font color="red"><%=msg%></font></td>


                                        </tr>
                <tr>
                    <td>Subject Code:</td>
                    <td><input type="text" name="scode" id="scode"</td>
                </tr>
                <tr><br>
                <td width="24%">Subject:</td>
                <td width="48%"><label>
                        <input name="subject" type="text" id="subject" />
                        <input type="hidden" id="fname" name="userid" value="<%=session.getAttribute("userid")%>">
                    </label></td>
                </tr>
                <tr><br>
                <td width="24%">Department:</td>
                <td width="48%"><label>
                        <select id="department" name="department">
                            <option value="cse">Computer Science and Engineering</option>
                            <option value="ece">Electronic and Communication Engineering</option>
                            <option value="geo">Geo Informatics</option>
                            <option value="mech">Mechanical Engineering</option>
                        </select>
                    </label></td>
                </tr>
                <tr><br>
                <td width="24%">Semester:</td>
                <td width="48%"><label>
                        <select id="semester" name="semester">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>      
                        </select>
                    </label></td>
                </tr>

                <tr><br>
                <td width="24%">Upload File:</td>
                <td width="48%"><label>
                        <input type="file" name="file"/><br><br><br>
                    </label></td>
                </tr>

              
                <tr>

                    <td colspan="2"><label>


                            <input name="Submit" type="submit"  value="Submit" />
                        </label></td>
                </tr>
               
            </table>
        </form>
    </div>
</td>
</tr>
<tr style="height:30px;">
    <td colspan="3" style="background-color:#2175bc;"></td>
</tr>
</table>
</body>

</html>
