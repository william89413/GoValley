<!DOCTYPE html>
<html>
<body>

<table width="300" border="0" align="center" cellpadding="20" cellspacing="1" bgcolor="#CCCCCC">
    <tr>
        <form name="form1" method="post" action="signup_verify.php">
            <td>
                <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#FFFFFF">

                    <tr>
                        <td colspan="3" bgcolor="#FF0000"><strong>*Email does not match</strong></td>
                    </tr>

                    <tr>
                        <td width="78">Username</td>
                        <td width="6">:</td>
                        <td width="294"><input name="myUsername" type="text" id="myUsername" required></td>
                    </tr>

                    <tr>
                        <td>Email</td>
                        <td>:</td>
                        <td><input name="email" type="email" id="email" required></td>
                    </tr>

                    <tr>
                        <td>Confirm Email</td>
                        <td>:</td>
                        <td><input name="confirmEmail" type="text" id="confirmEmail" required></td>
                    </tr>                                   

                    <tr>
                        <td>Password</td>
                        <td>:</td>
                        <td><input name="myPassword" type="password" id="myPassword" required></td>
                    </tr>

                    <tr>
                        <td>Confirm Password</td>
                        <td>:</td>
                        <td><input name="confirmPassword" type="password" id="confirmPassword" required></td>
                    </tr>   

                    <tr>
                        <td>Major</td>
                        <td>:</td>
                        <td><input name="major" type="text" id="major" required></td>
                    </tr>   

                    <tr>
                        <td>Profession</td>
                        <td>:</td>
                        <td><input name="profession" type="text" id="profession" required></td>
                    </tr>

                    <tr>
                        <td>Company</td>
                        <td>:</td>
                        <td><input name="company" type="text" id="company" required></td>
                    </tr>               

                    <tr>
                        <td>Where do you hear us</td>
                        <td>:</td>
                        <td>
                            <select>
                                <option value ="ad">advertisement</option>
                                <option value ="friend">friends</option>
                                <option value ="wechat">wechat</option>
                                <option value ="others">others</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td><input type="submit" name="Submit" value="Submit"></td>
                    </tr>                                       

                </table>
            </td>
        </form>
    </tr>
</table>

</body>
</html>