package rw.ac.rca.webapp.web;

import rw.ac.rca.webapp.dao.StudentDAO;
import rw.ac.rca.webapp.dao.impl.StudentDAOImpl;
import rw.ac.rca.webapp.orm.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class ListStudents extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final StudentDAO studentDAO = StudentDAOImpl.getInstance();

    public ListStudents() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pageRedirect = request.getParameter("page");

        HttpSession httpSession = request.getSession();
        Object user = httpSession.getAttribute("authenticatedUser");
        System.out.println("The user in session is: " + user);

        if (pageRedirect != null && pageRedirect.equals("students")) {
            List<Student> students = studentDAO.getAllStudents();
            httpSession.setAttribute("students", students);
            request.getRequestDispatcher("WEB-INF/students.jsp").forward(request, response);
        } else {
            httpSession.setAttribute("error", "Invalid User. Try again!");
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
        }
    }
}
