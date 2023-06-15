package rw.ac.rca.webapp.orm;

public class Report {
    private Student student;
    private Course course;
    private int mark;

    public Report(Student student, Course course, int mark) {
        this.student = student;
        this.course = course;
        this.mark = mark;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public int getMark() {
        return mark;
    }

    public void setMark(int mark) {
        this.mark = mark;
    }
}
