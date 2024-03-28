package com.example.golovlev.Servlets;

import com.example.golovlev.Models.Aggrement;
import com.example.golovlev.Models.StatusAggrement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class AgreementServlet
 */
@WebServlet("/statusAggrement")
public class StatusAggrementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StatusAggrementServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Aggrement[] aggrement = new Aggrement[]{
				new Aggrement(1L, 1234, 3124, 8911, "СФ231", "24.06.2023", "12.10.2023"),
				new Aggrement(2L, 1235, 3125, 8912, "ТН1210", "14.02.2023", "09.11.2023")
		};

		request.setAttribute("aggrement", aggrement);

		StatusAggrement[] statusAggrement  = new StatusAggrement[]{

				new StatusAggrement(1L, "блокирован",aggrement[0]),
				new StatusAggrement(2L, "действует", aggrement[1])
		};
		request.setAttribute("statusAggrement", statusAggrement);
		request.getRequestDispatcher("views/statusAggrement.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
