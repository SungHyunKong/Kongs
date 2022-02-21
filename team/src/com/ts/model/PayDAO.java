package com.ts.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class PayDAO {

	private static SqlSessionFactory sqlSessionFactory;

	static {
		try {
			String resource = "com/ts/mybatis/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<PayVO> payList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<PayVO> list = session.selectList("payList");
		session.close();
		

		return list;
	}
	public PayVO payContent(int pay_code) {
		SqlSession session = sqlSessionFactory.openSession();
		PayVO vo = session.selectOne("payContent",pay_code);
		session.close();
		return vo;
	}

}
