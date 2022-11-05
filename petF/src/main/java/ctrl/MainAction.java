package ctrl;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.net.ApplicationBufferHandler;

import item.ItemDAO;
import item.ItemVO;

public class MainAction implements Action{

	@Override
	public ActionForward execute(
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		ItemVO ivo=new ItemVO();
		ItemDAO idao=new ItemDAO(); 
		ivo.setIdate("");
		String weather="";
		if(request.getParameter("text")!=null) { // 받아온 날씨값이 null이 아닐 경우
			String text=request.getParameter("text");
			request.getSession().setAttribute("text", text);
			int idx=text.indexOf(" "); // 띄어쓰기가 있는 곳까지 글자수를 세어서 숫자 반환
			weather=text.substring(idx+1); // 시작이 0부터이므로 1을 더한 뒤 substring으로 자름
			while(true) { // 날씨를 나타내는 문구에 띄어쓰기가 사라질 때까지 반복
				idx=weather.indexOf(" ");
				weather=weather.substring(idx+1);
				if(weather.contains(" ")==false) {
					System.out.println("풀네임:"+text);
					System.out.println("날씨:"+weather);
					break;
				}
			}
		}else {
			String text=(String)request.getSession().getAttribute("text");
			int idx=text.indexOf(" ");;
			weather=text.substring(idx+1);
			while(true) {
				idx=weather.indexOf(" ");
				weather=weather.substring(idx+1);
				if(weather.contains(" ")==false) {
					System.out.println("풀네임:"+text);
					System.out.println("날씨:"+weather);
					break;
				}
			}
		}
		
		if(weather.equals("rain")){ // 비올 경우
			ItemVO vo=new ItemVO();
			vo.setIname("053011"); // 노즈워크 장난감 카테고리
			ArrayList<ItemVO> recommend=idao.selectAll(vo);
			request.setAttribute("ITEMB", recommend);
		}else if(weather.equals("snow")) { // 비올 경우
			ItemVO vo=new ItemVO();
			vo.setIname("053009"); // 따뜻한 방석 카테고리
			ArrayList<ItemVO> recommend=idao.selectAll(vo);
			request.setAttribute("ITEMB", recommend);
		}else { // 그외의 날씨는 산책가능하므로
			ItemVO vo=new ItemVO();
			vo.setIname("053010"); // 산책용품 카테고리
			ArrayList<ItemVO> recommend=idao.selectAll(vo);
			request.setAttribute("ITEMB", recommend);
		}
		ArrayList<ItemVO> datas=idao.selectAll(ivo);
		request.setAttribute("ITEMN", datas);

		ActionForward forward=new ActionForward();
		forward.setPath("/main.jsp");
		forward.setRedirect(false);
		return forward;

	}

}
