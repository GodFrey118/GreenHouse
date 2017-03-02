package com.yc.conn.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.logging.log4j.LogManager;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.GreenHouse.entity.Adm;
import com.yc.GreenHouse.entity.Orders;
import com.yc.GreenHouse.entity.PaginationBean;
import com.yc.GreenHouse.service.AdmService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ConnTest {

	@Autowired
	private DataSource dataSource;
	@Autowired
	private AdmService admService;
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	
	@Test
	public void testConn() {
		Connection con=null;
		try {
			con=dataSource.getConnection();
		} catch (SQLException e) {
			throw new RuntimeException("连接失败",e);
		}
		assertNotNull(con);
	}
	
	@Test
	public void testConn02() {
		Connection con=sqlSessionFactory.openSession().getConnection();
		assertNotNull(con);
	}
	@Test
	public void testOrderBean() {
		LogManager.getLogger().debug("请求AmdHandler处理listGood进来了");
		PaginationBean<Orders> userBean =  admService.listPartorder("1","3");
		
		System.out.println(userBean);
		assertNotNull(userBean);
	}

}
