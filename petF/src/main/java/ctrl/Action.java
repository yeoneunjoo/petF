package ctrl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
	// FrontController에 있는 메서드를 강제하기 위해서 인터페이스 생성
}
