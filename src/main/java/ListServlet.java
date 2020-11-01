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

@WebServlet(name = "ListServlet")
public class ListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int index = Integer.parseInt(request.getParameter("index"));
        if (action.equalsIgnoreCase("Delete")){
            HttpSession session = request.getSession(false);
            List<Customer> customerList = new ArrayList<>();



            if (session.getAttribute("customerList") != null) {
                customerList = (List<Customer>) session.getAttribute("customerList");
                customerList.remove(index);
            }

            session.setAttribute("customerList", customerList);

        }
        response.sendRedirect("List.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("List.jsp");
        dispatcher.forward(request, response);
    }
}
