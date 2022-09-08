package crf.system.listener;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.log4j.Logger;

import crf.util.PropertiesUtil;

public class ConfigLoaderListener implements ServletContextListener{
	Logger logger = Logger.getLogger(ConfigLoaderListener.class);

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		try {
			InputStream in = PropertiesUtil.class.getResourceAsStream("/config.properties");
			PropertiesUtil.prop.load(in);
			in = PropertiesUtil.class.getResourceAsStream("/db.properties");
			PropertiesUtil.dbProp.load(in);
			logger.info("装载properties配置文件成功");
			in.close();
		} catch (IOException e) {
			logger.error("装载properties配置文件失败",e);
		}
		
	}
	
}
