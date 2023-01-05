package Register;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddAppoinmentServlet
 */
@WebServlet("/AddAppoinmentServlet")
public class AddAppoinmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAppoinmentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String mail = request.getParameter("mail");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String bloodgroup = request.getParameter("bloodgroup");
		String doctorname = request.getParameter("doctorname");
		String date = request.getParameter("date");
		
		boolean isTrue;
		
		isTrue = Appointment.insertAppointment(name,phone,mail,address,gender,bloodgroup,doctorname,date);
		
		if(isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("viewAppointment.jsp");
			dis.forward(request, response);
		}
		else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("addAppointment.jsp");
			dis2.forward(request, response);
		}
	}

}
