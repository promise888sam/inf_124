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

import com.google.gson.JsonObject;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String username = "root";
        String password = "inf124";

        // Create connection
        try {
			Class.forName("com.mysql.jdbc.Driver");
		
	        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://centaurus-15.ics.uci.edu:3306/gamedb", username, password);
	        
	        // Connect
			String query = "SELECT * FROM game WHERE game.name LIKE ?";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setString(1, "%"+request.getParameter("search")+"%");
			ResultSet result = statement.executeQuery();
			
			JsonObject responseObject = new JsonObject();
			responseObject.addProperty("list", "asdasd");
			while(result.next()) {
				responseObject.addProperty("list", "success");
	        }
			result.close();
			con.close();
			response.getWriter().write(responseObject.toString());
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
