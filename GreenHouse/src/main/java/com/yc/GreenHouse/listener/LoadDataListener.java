package com.yc.GreenHouse.listener;

import java.io.File;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.logging.log4j.LogManager;

import com.yc.GreenHouse.service.impl.ServletUtil;

/**
 * Application Lifecycle Listener implementation class LoadDataListener
 *
 */
@WebListener
public class LoadDataListener implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent sce)  {}

    public void contextInitialized(ServletContextEvent sce)  { 
    	File dir=new File( new File(sce.getServletContext().getRealPath("/")).getParentFile(),ServletUtil.UPLOAD_DIR_NAME);
    	if (!dir.exists()) {
			dir.mkdirs();
			LogManager.getLogger().debug("文件上传的路径不存在创建上传文件目录："+dir+"成功....");
		}
    	ServletUtil.UPLOAD_DIR=dir.getAbsolutePath();
    	LogManager.getLogger().debug("文件上传的路径是："+dir);
    }

	
  
	
}
