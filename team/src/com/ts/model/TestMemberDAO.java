package com.ts.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class TestMemberDAO {
	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			String resource="com/ts/mybatis/config.xml";
			InputStream inputStream= Resources.getResourceAsStream(resource);
			sqlSessionFactory= new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public BoardMemberDTO login(BoardMemberDTO dto){
		SqlSession session = sqlSessionFactory.openSession();
		BoardMemberDTO dto2 = session.selectOne("testmember",dto);
		session.close();
		return dto2;
		
	}
}
