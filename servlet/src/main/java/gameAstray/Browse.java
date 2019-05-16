package gameAstray;


import java.io.*;
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

/*import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;*/

/**
 * Servlet implementation class Browse
 */
@WebServlet("/Browse")
public class Browse extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Browse() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
        String username = "root";
        String password = "";
        String browse = "";
        // Create connection
        try {
			Class.forName("com.mysql.jdbc.Driver");
		
	        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamedb", username, password);
	        
	        // Connect
			String query = "SELECT * FROM game";
			PreparedStatement statement = con.prepareStatement(query);
			ResultSet result = statement.executeQuery();
			
			while(result.next()) {
	            browse += ("<tr>")
	            + ("\n<th><div><img src=image/"+result.getString("img")+" width=\"200\" height=\"200\"></th>")
	            + ("\n<th><div><h4><pre>    "+result.getString("name")+"</pre></h4>")
	            + ("\n<br><pre>      Price: $"+result.getString("price"))
	            + ("\n<br>      Platform: "+result.getString("platform")+"</pre></th>")
	            + ("\n<th id=\"click\"><pre><a target=\"_blank\" href=\"Purchase?name="+result.getString("name")+"\"><img src=\"image/Details.png\" width=\"200\" height=\"200\"></a></pre></th>")
	
	            + ("\n</tr>");
	            
	        }
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        
		request.setAttribute("result", browse);
		
		String[] history;
		
		HttpSession session = request.getSession(false);
		if(session != null)
			history = (String[])session.getAttribute("history");
		else
			history = new String[5];
		
		request.setAttribute("history", history);
		
		response.setContentType("text/html; charset=UTF-8");
		request.getRequestDispatcher("/SessionServlet").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
