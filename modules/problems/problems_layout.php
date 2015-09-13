<!DOCTYPE html>
<html>
<body>

<table width="1000" border="0" align="center" cellpadding="20" cellspacing="1" bgcolor="#CCCCCC">
    <tr>
        <form name="form1" method="post" action="login_verify.php">
            <td>
                <table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#FFFFFF">
                    <tr>
                        <td width="30"><strong>#</strong></td>
                        <td width="600"><strong>Title</strong></td>
                        <td width="100"><strong>Category</strong></td>
                        <td width="50"><strong>Level</strong></td>
                    </tr>

                    <?php

                        // Init database params                   
                        $host = "localhost"; // Host name
                        $username = "govalley2015"; // Mysql username
                        $password = "govalley2015"; // Mysql password
                        $db_name = "govalley"; // Database name
                        $tb_name = "problems"; // Table name

                        // Connect to server and select databse.
                        $link = mysql_connect("$host", "$username", "$password") or die ("cannot connect");
                        $db = mysql_select_db("$db_name", $link) or die ("cannot select DB");

                        // Get last id
                        $result_id = mysql_query("SELECT max(id) FROM $tb_name");

                        if (!$result_id) 
                        {
                            die('Could not query:' . mysql_error());
                        }

                        $last_id = mysql_result($result_id, 0);

                        // Main loop to layout all the problems
                        for ($i = 1; $i <= $last_id; $i++)
                        {
                            // Collect necessary data
                            $query = mysql_query("SELECT name, category, level FROM $tb_name WHERE id = $i");

                            if (!$query) 
                            {
                                echo "Could not successfully run query from DB: " . mysql_error();
                                exit();
                            }

                            // Fetch data
                            $row = mysql_fetch_array($query, MYSQL_ASSOC);
                            $problem_name = $row["name"];
                            $problem_category = $row["category"];
                            $problem_level = $row["level"];

                            // File the form content
                            echo "<tr>";
                            echo "<td>$i</td>";

                            echo '<td><a href="http://localhost//GoValley//modules//problems//problems_compile.php?link_compile=' . $problem_name . '">';
                            echo "$problem_name";
                            echo "</a></td>";
                            
                            echo "<td>$problem_category</td>";
                            echo "<td>$problem_level</td>";
                            echo "</tr>";
                        }
                    ?>

                </table>
            </td>
        </form>
    </tr>
</table>



</body>
</html>

