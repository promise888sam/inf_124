package gameAstray;

import java.io.IOException;
import java.io.PrintWriter;
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

/**
 * Servlet implementation class Purchase
 */
@WebServlet("/Purchase")
public class Purchase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Purchase() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String name = request.getParameter("name");
		
		HttpSession session = request.getSession(false);
		String[] history = (String[])session.getAttribute("history");
		
		history = add(history, name);
		
		request.setAttribute("history", history);
		
        String username = "root";
        String password = "";
        String res = "";

        // Create connection
        try {
			Class.forName("com.mysql.jdbc.Driver");
		
	        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamedb", username, password);
	        
	        // Connect
			String query = "SELECT * FROM game WHERE game.name = ?";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setString(1, request.getParameter("name"));
			ResultSet result = statement.executeQuery();
			
			while(result.next()) {
	            res += ("<tr>")
	            + "\n<th><div><img src=image/"+result.getString("img")+" width=\"200\" height=\"200\"></th>"
	            + "\n<th><div><h4><pre>    "+result.getString("name")+"</pre></h4>"
	            + "\n<br><pre>      Game ID: "+result.getInt("id")
	            + "\n<br>      Price: $"+result.getString("price")
	            + "\n<br>      Platform: "+result.getString("platform")
	            + "\n<br>      Publisher: "+result.getString("publisher")
	            + "\n<br>      Realease Date: "+result.getString("realeaseDate")+"</pre></th>"
	            + "\n<br>      <td>Game discription: "+result.getString("discription")+"</pre></td>"
	            + "\n</tr>";
	        }
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
        request.setAttribute("result", res);
        request.getRequestDispatcher("/purchase.jsp").forward(request, response); 
		
	}

	private String[] add(String[] arr, String item) {
		for(int i = 3; i>=0; i--) {
			if(arr[i] != null)
				arr[i+1] = arr[i];
		}
		arr[0] = item;
		return arr;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
