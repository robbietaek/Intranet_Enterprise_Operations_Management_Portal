package model;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DBConnection {
	private static SqlSessionFactory sqlMap;
	static {
		//mybatis-config.xml 파일 위치
		String resource = "model/mapper/mybatis-config.xml";
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader(resource);
		} catch (IOException e) {
			e.printStackTrace();
		}
		//build : Connection 객체설정
		//			SQL 구문 저장하는 컨테이너 설정
		sqlMap = new SqlSessionFactoryBuilder().build(reader);
	}
	static SqlSession getConnection() {
		return sqlMap.openSession();
	}
	static void close (SqlSession session){
		session.commit();
		session.close();
	}	
	
}
