
package rw.ac.rca.webapp.web;

import rw.ac.rca.webapp.dao.CourseDAO;
import rw.ac.rca.webapp.dao.MarksDAO;
import rw.ac.rca.webapp.dao.StudentDAO;
import rw.ac.rca.webapp.dao.impl.CourseDAOImpl;
import rw.ac.rca.webapp.dao.impl.MarksDAOImpl;
import rw.ac.rca.webapp.dao.impl.StudentDAOImpl;
import rw.ac.rca.webapp.orm.Course;
import rw.ac.rca.webapp.orm.Report;
import rw.ac.rca.webapp.orm.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class StudentReport extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final StudentDAO studentDAO = StudentDAOImpl.getInstance();
    private final CourseDAO courseDAO = CourseDAOImpl.getInstance();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");

        if (page != null && page.equals("search")) {
            String studentName = request.getParameter("studentName");
            Student student = studentDAO.searchStudentByName(studentName);

            if (student != null) {
                List<Course> courses = courseDAO.getCoursesByStudent(student);
                List<Report> studentReport = new ArrayList<>();

//                for (Course course : courses) {
//                    int mark = studentDAO.;
//                            Report report = new Report(student, course, mark);
//                    studentReport.add(report);
//                }

                HttpSession session = request.getSession();
                session.setAttribute("studentReport", studentReport);
            }
        }

        response.sendRedirect("studentReport.jsp");
    }
}
