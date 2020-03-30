package tpsi.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PersonListServlet", urlPatterns = {"/personList"})
public class PersonListServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        List<Person> osoby = new ArrayList();
        osoby.add(new Person("Kamil","Śpiewak","kspiewak@zut.edu.pl"));
        osoby.add(new Person("Kamil","Mielnik","kmielnik@zut.edu.pl"));
        osoby.add(new Person("Michał","Uszak","muszak@zut.edu.pl"));
        osoby.add(new Person("Ktos","Inny","kinny@zut.edu.pl"));
        
        request.setAttribute("osoby", osoby);
        request.getRequestDispatcher("personList.jsp").forward(request, response);
    }
}