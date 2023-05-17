package rw.ac.rca.webapp.web;

import rw.ac.rca.webapp.dao.StudentDAO;
import rw.ac.rca.webapp.dao.impl.StudentDAOImpl;
import rw.ac.rca.webapp.orm.Student;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CreateStudent extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final StudentDAO studentDAO = StudentDAOImpl.getInstance();

    public CreateStudent() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pageRedirect = request.getParameter("page");
        HttpSession httpSession = request.getSession();
        Object user = httpSession.getAttribute("authenticatedUser");

        if (pageRedirect != null) {
            if (pageRedirect.equals("createstudent")) {
                request.getRequestDispatcher("WEB-INF/createStudent.jsp").forward(request, response);
            } else {
                request.setAttribute("error ", "No user found");
                request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("error ", "No user found");
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pageRedirect = request.getParameter("page");
        HttpSession httpSession = request.getSession();
        Object user = httpSession.getAttribute("authenticatedUser");
        System.out.println("The user in session is: " + user);

        if(pageRedirect != null){
            if(pageRedirect.equals("createstudent")){
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                String firstName = request.getParameter("firstName");
                String lastName = request.getParameter("lastName");
                String dob = request.getParameter("dateOfBirth");
                String phoneNumber = request.getParameter("phoneNumber");

                try {
                    Date dateOfBirth = dateFormat.parse(dob);
                    Student student = new Student(firstName, lastName, dateOfBirth, phoneNumber);
                    studentDAO.saveStudent(student);

                    request.setAttribute("success" , "Successfully created the Student" );
                    request.getRequestDispatcher("WEB-INF/createStudent.jsp").forward(request , response);
                }catch (Exception e){
                    request.setAttribute("error" , "Failed to create the Student" );
                    request.getRequestDispatcher("WEB-INF/createStudent.jsp").forward(request , response);
                }
            }else{
                request.getRequestDispatcher("WEB-INF/login.jsp").forward(request , response);
            }
        }else{
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request , response);
        }
    }
}
