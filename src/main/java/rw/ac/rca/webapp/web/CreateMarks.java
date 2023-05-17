package rw.ac.rca.webapp.web;

import rw.ac.rca.webapp.dao.MarksDAO;
import rw.ac.rca.webapp.dao.StudentDAO;
import rw.ac.rca.webapp.dao.impl.MarksDAOImpl;
import rw.ac.rca.webapp.dao.impl.StudentDAOImpl;
import rw.ac.rca.webapp.orm.Marks;
import rw.ac.rca.webapp.orm.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class CreateMarks extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final MarksDAO marksDAO = MarksDAOImpl.getInstance();
    private final StudentDAO studentDAO = StudentDAOImpl.getInstance();

    public CreateMarks() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pageRedirect = request.getParameter("page");
        HttpSession httpSession = request.getSession();
        Object user = httpSession.getAttribute("authenticatedUser");
        System.out.println("The user in session is: " + user);

        if (pageRedirect != null && pageRedirect.equals("createmarks")) {
            request.getRequestDispatcher("WEB-INF/createMarks.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "No user found");
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pageRedirect = request.getParameter("page");
        HttpSession httpSession = request.getSession();
        Object user = httpSession.getAttribute("authenticatedUser");

        if(pageRedirect != null && pageRedirect.equals("createmarks")){
            Marks marks = null;
            try {
                int studentId = Integer.parseInt(request.getParameter("studentId"));
                Student student = StudentDAO.getStudentById(studentId);
                if (student == null) {
                    throw new ServletException("Student not found");
                }
                marks = new Marks(
                        student,
                        Float.parseFloat(request.getParameter("score"))
                );
            } catch (Exception e) {
                throw new ServletException("Error creating marks", e);
            }

            // Saving the marks;
            try {
                marksDAO.saveMarks(marks);
                request.setAttribute("success", "Successfully created the Marks");
                request.getRequestDispatcher("WEB-INF/createMarks.jsp").forward(request, response);
            } catch (Exception e){
                request.setAttribute("error", "Failed to create the Marks");
                request.getRequestDispatcher("WEB-INF/createMarks.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
        }
    }
}
