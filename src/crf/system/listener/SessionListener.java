package crf.system.listener;

import java.util.Map.Entry;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import org.apache.log4j.Logger;

import crf.system.entity.OnlineUsers;


public class SessionListener implements HttpSessionAttributeListener{
	Logger logger = Logger.getLogger(SessionListener.class);

	@Override
	public void attributeAdded(HttpSessionBindingEvent arg0) {
	
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		HttpSession session=event.getSession();
		String session_id=session.getId();
		for (Entry<String, OnlineUsers> entry : OnlineUsers.sessionMap.entrySet()) {
			if(session_id.equals(entry.getValue().getSession().getId())){
				OnlineUsers.sessionMap.remove(entry.getValue().getUb().getUsername());
				logger.info("用户名 "+entry.getValue().getUb().getUsername()+" session超时----->attributeRemoved");
			}
			break;
		}
	}

	public void attributeReplaced(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
	}
}
