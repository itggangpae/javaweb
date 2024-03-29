package listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class SessionListenerImpl implements HttpSessionListener {
	private static int count;

	public static int getCount() {
		return count;
	}

	public void sessionCreated(HttpSessionEvent event) {
		//세션이 만들어질 때 호출
		HttpSession session = event.getSession(); //request에서 얻는 session과 동일한 인스턴스
		session.setMaxInactiveInterval(60*20);
		count++;
		System.out.println(session.getId() + " 세션생성 " + ", 접속자수 : " + count);
	}

	public void sessionDestroyed(HttpSessionEvent event) {
		//세션이 소멸될 때 호출
		count--;
		if(count<0)
			count=0;

		HttpSession session = event.getSession();
		System.out.println(session.getId() + " 세션소멸 " + ", 접속자수 : " + count);
	}
}
