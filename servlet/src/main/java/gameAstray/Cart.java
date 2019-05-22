package gameAstray;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 * Servlet implementation class Cart
 */
@WebServlet("/Cart")
public class Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession(false);
		
		ArrayList<String> cart;
		String[] history;
		
		if(session == null) {
			cart = new ArrayList<String>();
			history = new String[5];
		}
		else {
			cart = (ArrayList<String>)session.getAttribute("cart");
			if(request.getParameter("name") != null) {
				cart.add(request.getParameter("name"));
				session.setAttribute("cart", cart);
			}
			if(request.getParameter("clear") != null) {
				cart.removeAll(cart);
				session.setAttribute("cart", cart);
			}
			history = (String[]) session.getAttribute("history");
		}
		
		String username = "root";
        String password = "inf124";
        String res = "";
        double total = 0.0;

        // Create connection
		try {
			Class.forName("com.mysql.jdbc.Driver");
		
	
	        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamedb", username, password);
	        
	        // Connect
			String query = "SELECT * FROM game WHERE game.name = ?";
			PreparedStatement statement = con.prepareStatement(query);
			
       	for(int i = 0; i < cart.size(); i++){
       		statement.setString(1, cart.get(i));
   			ResultSet result = statement.executeQuery();
   			
   			if(result.next()) {
   	            res += ("<tr>")
   	            + "\n<th><img src=image/"+result.getString("img")+" width=\"100\" height=\"100\"></th>"
   	            + "\n<th><h4><pre>"+result.getString("name")+"</pre></h4>"
   	            + "\n<br>      Price: $"+result.getString("price")+"</th>"
   	            + "\n</tr>";
   	            total += Double.parseDouble(String.format("%.2f", Double.parseDouble(result.getString("price"))));
   	        }
   			result.close();
		}
		con.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		request.setAttribute("cart", res);
		request.setAttribute("history", history);
		request.setAttribute("total", total);
        request.getRequestDispatcher("/Cart.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
