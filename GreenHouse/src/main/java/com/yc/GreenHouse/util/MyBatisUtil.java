package com.yc.GreenHouse.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.logging.log4j.LogManager;

public class MyBatisUtil {
		private  static SqlSessionFactory factory;
		
		static{
			InputStream in=null;
			try {
				//加载类路径下的mybatis框架的配置文件
				in=Resources.getResourceAsStream("mybatis.xml");
				LogManager.getLogger().debug("加载类路径下的mybatis框架的配置文件成功...");
			} catch (IOException e) {
				LogManager.getLogger().error("加载类路径下的mybatis框架的配置文件失败！！！");
			}
			//根据加载上来的mybatis配置文件信息，构建SqlSessionFactory的对象
			factory=new SqlSessionFactoryBuilder().build(in);
			LogManager.getLogger().debug("根据加载上来的mybatis配置文件信息，构建SqlSessionFactory的对象成功....");
		}
		
		//取到数据库会话对象
		public static SqlSession getSession(){
				SqlSession session=null;
				if (factory !=null) {
					session= factory.openSession();
					LogManager.getLogger().debug("使用SqlSessionFactory的对象，生产出SqlSession对象成功....");
				}
				return session;
		}
		
		//取到数据库会话对象
				public static SqlSession getAutoCommitSession(){
						SqlSession session=null;
						if (factory !=null) {
							session= factory.openSession(true);
							LogManager.getLogger().debug("使用SqlSessionFactory的对象，生产出SqlSession对象成功....");
						}
						return session;
				}
}
