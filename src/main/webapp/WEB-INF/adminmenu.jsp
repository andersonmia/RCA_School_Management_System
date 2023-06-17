<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="../cssfile.css"/>
    <style type="text/css">
        * {
            font-family: Work Sans, serif;
            color: #99154b;
        }

        body {
            display: flex;
            flex-direction: column;
        }

        img {
            width: 30px;
            height: 30px;
        }

        .outer {
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
        <li><a class="idTabs" href="#admin"><img width="30px" height="30px" alt="" src="icons/admin.png"/> Admin</a>
            <ul class="noJS">
                <li>
                    <a style="display: flex;align-items: center; gap: 10px;" href="createuser.php?page=createuser">
                        <img width="30px" height="30px" alt="" src="icons/programmer.png"/> Create User
                    </a>
                </li>
                <li>
                    <a style="display: flex;align-items: center; gap: 10px;"
                       href="listuser.php?page=users&&action=list">
                        <img width="30px" height="30px" alt="" src="icons/list.png"/> List of users
                    </a>
                </li>
            </ul>
        </li>

        <li><a style="display: flex;align-items: center; gap: 10px;"
               style="display: flex;align-items: center; gap: 10px;" class="idTabs" href="#employees"><img width="30px"
                                                                                                           height="30px"
                                                                                                           alt=""
                                                                                                           src="icons/employee.png"/>
            Employees
        </a>
            <ul class="noJS">
                <li><a style="display: flex;align-items: center; gap: 10px;"
                       style="display: flex;align-items: center; gap: 10px;"
                       href="listinstructors.php?page=instructors&&user_role=adm&&action=list"><img
                        src="icons/teachers.png"/> Instructors</a></li>
            </ul>
        </li>
        <li><a class="idTabs" href="#students"><img width="30px" height="30px" alt="" src="icons/family.png" alt=""/>
            Students</a>
            <ul class="noJS">
                <li><a style="display: flex;align-items: center; gap: 10px;"
                       style="display: flex;align-items: center; gap: 10px;"
                       href="liststudents.php?page=students&&user_role=adm&&action=list"><img
                        src="icons/students.png"/> Students</a></li>
                <li><a style="display: flex;align-items: center; gap: 10px;"
                       style="display: flex;align-items: center; gap: 10px;"
                       href="listparents.php?page=parents&&user_role=adm&&action=list"><img
                        src="icons/parents.png"/> Parents</a></li>
            </ul>
        </li>

        <li><a class="idTabs" href="#marks"><img width="30px" height="30px" alt="" src="icons/chart.png"/> Marks</a>
            <ul class="noJS">
                <li><a style="display: flex;align-items: center; gap: 10px;"
                       href="listmarks.php?page=marks&&action=list"><img width="30px" height="30px" alt=""
                                                                         src="icons/marks.png"/>
                    Marks</a></li>
                <li><a style="display: flex;align-items: center; gap: 10px;"
                       href="listcourses.php?page=courses&&action=list"><img width="30px" height="30px" alt=""
                                                                             src="icons/course.png"/>
                    Courses</a></li>
            </ul>
        </li>

        <li>
            <a class="idTabs" href="#reports">
                <img width="30px" height="30px" alt="" src="icons/report.png"/> Reports</a>
            <ul class="noJS">
                <li>
                    <a style="display: flex;align-items: center; gap: 10px;"
                       href="liststudents.php?page=reportsearch&&user_role=adm&&action=search">
                        <img width="30px" height="30px" alt="" src="icons/studentReport.png"/> Students reports</a>
                </li>
                <li>
                    <a style="display: flex;align-items: center; gap: 10px;"
                       href="listcourses.php?page=reportcourses&&user_role=adm&&action=search">
                        <img width="30px" height="30px" alt="" src="icons/courseReport.png"/> Courses reports </a>
                </li>
                <li>
                    <a style="display: flex;align-items: center; gap: 10px;"
                       href="listmarks.php?page=markssearch&&user_role=adm&&action=search">
                        <img width="30px" height="30px" alt="" src="icons/marksReport.png"/> Marks Report</a>
                </li>
                <li>
                    <a style="display: flex;align-items: center; gap: 10px;" href="instructorspdf.php?">
                        <img width="30px" height="30px" alt="" src="icons/pdf.png"/> All Instructors PDF
                    </a>
                </li>
                <li><a style="display: flex;align-items: center; gap: 10px;" href="Studentspdf.php?"><img width="30px"
                                                                                                          height="30px"
                                                                                                          alt=""
                                                                                                          src="icons/pdf.png"/>
                    All Students PDF</a>
                </li>
            </ul>
        </li>
    </div>
</div>

</body>

</html>
