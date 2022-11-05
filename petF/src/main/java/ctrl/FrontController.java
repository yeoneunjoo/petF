package ctrl;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do") // *.do 요청을 수행하면 어노테이션에 의해 FC로 오게됨
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontController() {
		// ★FrontController fc=new FrontController(); xxx
		// 객체화를 하지않았는데, 메서드를 사용할수있었다.
		// 서블릿 컨테이너(==객체를 관리하는 것) == 웹 서버 == 톰캣이 객체화해주고있었음

		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request,response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String uri=request.getRequestURI();
		String cp=request.getContextPath();
		String command=uri.substring(cp.length());


		ActionForward forward=null;
		if(command.equals("/main.do")) {
			try {
				forward=new MainAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/login.do")) {
			try { 
				forward=new LoginAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/logout.do")) {
			try {
				forward=new LogoutAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/signup.do")) {
			try {
				forward=new SignupAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/memberchange.do")) {
			try {
				forward=new MemberChangeAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/mypage.do")) {
			try {
				forward=new MypageAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/updateM.do")) {
			try {
				forward=new UpdateMAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/insertP.do")) {
			try {
				forward=new InsertPAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/petchange.do")) {
			try {
				forward=new PetChangeAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/updateP.do")) {
			try {
				forward=new UpdatePAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/deleteP.do")) {
			try {
				forward=new DeletePAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/deleteM.do")) {
			try {
				forward=new DeleteMAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/productlist.do")) {
			try {
				forward=new ProductListAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/detail.do")) {
			try {
				forward=new DetailAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/cart.do")) {
			try {
				forward=new CartAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/findid.do")) {
			try {
				forward=new Findid().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/findPw.do")) {
			try {
				forward=new Findpw().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/insertR.do")) {
			try {
				forward=new InsertRAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/search.do")) {
			try {
				forward=new SearchAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/buy.do")) {
			try {
				forward=new BuyAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/commit.do")) {
			try {
				forward=new CommitAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/orderlist.do")) {
			try {
				forward=new OrderlistAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(command.equals("/deleteC.do")) {
			try {
				forward=new DeleteCAction().execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		if(forward==null) { 
			forward=new ActionForward();
			forward.setPath("error/error.jsp"); 
			forward.setRedirect(false);
		}

		RequestDispatcher dispatcher=request.getRequestDispatcher(forward.getPath());
		dispatcher.forward(request, response); 
		//타겟페이지(인자)로 request,response 객체를 전달하는 메서드 
		//제어권을 넘겨줌->클라이언트가 응답을 확인 할 수 있음 



		/*
		 * if(forward!=null) { //디스패쳐 만들어서 타겟페이지로 이동 if(forward.isRedirect()) {
		 * response.sendRedirect(forward.getPath()); }else { RequestDispatcher
		 * dispatcher=request.getRequestDispatcher(forward.getPath());
		 * dispatcher.forward(request, response); } } PrintWriter out; out =
		 * response.getWriter();
		 * out.println("<script>alert('요청처리실패!');history.go(-1);</script>");
		 */
	}

}
