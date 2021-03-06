package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.PaymentService;

/**
 * Servlet implementation class RefundReqServlet
 */
@WebServlet("/refundReq.do")
public class RefundReqServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PaymentService pService = new PaymentService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("uid");
		pService.refundReqPayment(uid);
		response.sendRedirect("/mypage/mypayment.do");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
