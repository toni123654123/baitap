import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AddServlet",urlPatterns = "/add")
public class AddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String birthday = request.getParameter("birthday");
        String address = request.getParameter("address");

        Customer customer = new Customer(name,email,birthday,address);
        HttpSession session = request.getSession(false);
        List<Customer> customerList = new ArrayList<>();

        if (session.getAttribute("customerList") != null) {
            customerList = (List<Customer>) session.getAttribute("customerList");
        }
        customerList.add(customer);
        session.setAttribute("customerList", customerList);
        response.sendRedirect("List.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("List.jsp");
        dispatcher.forward(request, response);
    }
}
