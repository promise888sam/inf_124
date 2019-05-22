package gameAstray;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Confirmation
 */
@WebServlet("/Confirmation")
public class Confirmation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Confirmation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String fn = request.getParameter("firstName");
        String ln = request.getParameter("lastName");
        String card = request.getParameter("cardNum");
        String phone = request.getParameter("phoneNum");
        String addr = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zip = request.getParameter("zip");
        
        String username = "root";
        String password = "lk824651233";
        String result = "";
        String items = "";
        
        HttpSession session = request.getSession(false);
        // Create connection
        try {
			Class.forName("com.mysql.jdbc.Driver");
		
	        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamedb", username, password);
	        
	        // Connect
			String insertPurchase = "INSERT INTO purchase"
					+ "(FirstName,LastName,Phonenumber,Cardnumber,Address,city,state,zip)"
					+ "VALUES (?,?,?,?,?,?,?,?)";
			PreparedStatement purchaseStatement = con.prepareStatement(insertPurchase);
			purchaseStatement.setString(1, fn);
			purchaseStatement.setString(2, ln);
			purchaseStatement.setString(3, card);
			purchaseStatement.setString(4, phone);
			purchaseStatement.setString(5, addr);
			purchaseStatement.setString(6, city);
			purchaseStatement.setString(7, state);
			purchaseStatement.setString(8, zip);
			
			purchaseStatement.executeUpdate();
			
			
			ArrayList<String> cart = (ArrayList<String>) session.getAttribute("cart");
			
			String insertConfirmation = "INSERT INTO confirmation"
					+ "(id, item, quantity)"
					+ "VALUES (?,?,?)";
			
			PreparedStatement confirmationStatement = con.prepareStatement(insertConfirmation);
			String lastQuery = "SELECT * FROM purchase WHERE FirstName = ? and LastName = ?";
			
			PreparedStatement IDstatement = con.prepareStatement(lastQuery);
			IDstatement.setString(1, fn);
			IDstatement.setString(2, ln);
			ResultSet IDrs = IDstatement.executeQuery();
			IDrs.next();
			int ID = IDrs.getInt("id");
			
			for(int i = 0; i < cart.size(); i++) {
				confirmationStatement.setInt(1, ID);
				confirmationStatement.setString(2, cart.get(i));
				confirmationStatement.setInt(3, 1);
				confirmationStatement.executeUpdate();
			}
			
			result += "<tr>"
					+ "<th scope=\"row\"> Confirmation reference: </th><td>"+ ID + "</td>"
					+ "</tr>"
					+ "<tr>"
					+ "<th scope=\"row\"> First name: </th><td>" + fn + "</td>"
					+ "</tr>"
					+ "<tr>"
					+ "<th scope=\"row\"> Last name: </th><td>" + ln + "</td>"
					+ "</tr>"
					+ "<tr>"
					+ "<th scope=\"row\"> Phone number: </td><td>" + phone + "</td>"
					+ "</tr>"
					+ "<tr>"
					+ "<th scope=\"row\"> Card number: </td><td> ************"+ card.substring(card.length()-4) + "</td>"
					+ "</tr>"
					+ "<tr>"
					+ "<th scope=\"row\">Address: </td><td> "+ addr + ", " + city
					+ "<br> " + state + ", " + zip +"</td>"
					+ "</tr>";
			
			for(int i = 0; i < cart.size(); ++i){
				int I = i+1;
				items += "<tr>"
						+ "<th scope=\"row\">"+ I +"</th><td>"+ cart.get(i) + "</td>"
						+ "</tr>";
			}
			
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        request.setAttribute("result", result);
        request.setAttribute("items", items);
        request.getRequestDispatcher("/Confirmation.jsp").forward(request, response); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
