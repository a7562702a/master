package shopping.crud;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginInterceptor extends HandlerInterceptorAdapter {

   private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
   
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	    //jsp�������� ����session���尳ü
		HttpSession session = request.getSession();
		String google = (String)session.getAttribute("daum");	
		System.out.println("LoginInterceptor�μ� ����=" + google);
		
		
		String uri = request.getRequestURI();
		 System.out.println("LoginInterceptor�μ�  uri " + uri);    
	     //������Ʈ �̸����� ã�ƿ��⶧���� �ּҸ�  http://127.0.0.1:8080/crud/~~.do
	     int idx = uri.lastIndexOf("/");  //����
		 uri = uri.substring(idx+1);      //���� 
		 System.out.println("LoginInterceptor�μ�  uri " + uri); 
		
		boolean flag = false;
		if(google!=null){
			flag=true;	
		}else{
		  response.setContentType("text/html; charset=utf-8");
		  response.getWriter().append("<script>"
					+ "alert('LoginInterceptor�μ� �α������ʿ��մϴ�-tistis');"
		       		+ "location.href='login.do';"
				    + "</script>").flush();
		 flag=false;
		}
		return flag;
	}//end

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object arg2, Exception arg3)		throws Exception {
		//��Ʈ�ѷ��� �޼ҵ� ������ , ȭ��ó���� ó�� 
        logger.info("=======================afterCompletion start========================");
		logger.info("=======================afterCompletion end=========================");
	}//end
			
	
	 @Override
	 public void postHandle(HttpServletRequest request, HttpServletResponse response, Object arg2, ModelAndView arg3)		throws Exception {
		//��Ʈ�ѷ��� �޼ҵ� ������ ,1ó�� 
	   logger.info("=======================postHandle start======================");
	   logger.info("=======================postHandle end=========================");	
	}//end

}//class LoginInterceptor END
