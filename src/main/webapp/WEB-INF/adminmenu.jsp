<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="../cssfile.css" />
    <style>
        body{
            display: flex;
            flex-direction: column;
        }
        .outer{
            display: flex;
            margin-top: 0;
            margin-right: auto;
            margin-left: auto;
            align-items: center;
            justify-content: space-evenly;
            max-width: 50vw;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            background-color: white;
            border-radius: 5px;
            gap: 1rem;
        }
    </style>
</head>

<body>
<div class="outer">
    <div id="menu"> <!-- Add the menu div here -->
        <li><a class="idTabs" href="#admin"><img alt="" src="icons/application_side_expand.png"/> Admin</a>
            <ul class="noJS">
                <li>
                    <a href="createuser.php?page=createuser">
                        <img alt="" src="icons/programmer.png"/> Create User
                    </a>
                </li>
                <li>
                    <a href="listuser.php?page=users&&action=list">
                        <img alt="" src="icons/application_view_list.png"/> List of users
                    </a>
                </li>
            </ul>
        </li>

        <li><a class="idTabs" href="#employees"><img alt="" src="icons/application_view_columns.png"/> Employees
        </a>
            <ul class="noJS">
                <li><a href="listinstructors.php?page=instructors&&user_role=adm&&action=list"><img
                        src="icons/application_view_list.png"/> Instructors</a></li>
            </ul>
        </li>
        <li><a class="idTabs" href="#students"><img alt="" src="icons/application_side_expand.png" alt=""/> Students</a>
            <ul class="noJS">
                <li><a href="liststudents.php?page=students&&user_role=adm&&action=list"><img
                        src="icons/application_view_list.png"/> Students</a></li>
                <li><a href="listparents.php?page=parents&&user_role=adm&&action=list"><img
                        src="icons/application_view_list.png"/> Parents</a></li>
            </ul>
        </li>

        <li><a class="idTabs" href="#marks"><img alt="" src="icons/application_side_expand.png"/> Marks</a>
            <ul class="noJS">
                <li><a href="listmarks.php?page=marks&&action=list"><img alt="" src="icons/application_view_list.png"/>
                    Marks</a></li>
                <li><a href="listcourses.php?page=courses&&action=list"><img alt="" src="icons/application_view_list.png"/>
                    Courses</a></li>
            </ul>
        </li>

        <li>
            <a class="idTabs" href="#reports">
                <img alt="" src="icons/application_side_expand.png"/> Reports</a>
            <ul class="noJS">
                <li>
                    <a href="liststudents.php?page=reportsearch&&user_role=adm&&action=search">
                        <img alt="" src="icons/application_view_list.png"/> Students reports</a>
                </li>
                <li>
                    <a href="listcourses.php?page=reportcourses&&user_role=adm&&action=search">
                        <img alt="" src="icons/application_view_list.png"/> Courses reports </a>
                </li>
                <li>
                    <a href="listmarks.php?page=markssearch&&user_role=adm&&action=search">
                        <img alt="" src="icons/application_view_list.png"/> Marks Report</a>
                </li>
                <li>
                    <a href="instructorspdf.php?">
                        <img alt="" src="icons/page_white_acrobat.png"/> All Instructors PDF
                    </a>
                </li>
                <li><a href="Studentspdf.php?"><img alt="" src="icons/page_white_acrobat.png"/> All Students PDF</a>
                </li>
            </ul>
        </li>
    </div>
</div>

</body>

</html>
