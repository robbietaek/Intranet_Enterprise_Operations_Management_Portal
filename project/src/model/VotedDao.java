package model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.mapper.VotedMapper;


public class VotedDao {
	private Map<String,Object> map=new HashMap<String,Object>();
    private Class<VotedMapper> cls = VotedMapper.class;
	
	
	
	public boolean insert(String id) {
		SqlSession session = DBConnection.getConnection();
		try {
			int cnt = session.getMapper(cls).insert(id);
			if (cnt > 0) return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			 DBConnection.close(session);
		}
		return false;
	}
	
	public List<Voted> list() {
		SqlSession session = DBConnection.getConnection();
		try {
			map.clear();
			return session.getMapper(cls).select(map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			 DBConnection.close(session);
		}
		return null;
	}
		
	public boolean delete() {
		SqlSession session = DBConnection.getConnection();
		try {
			int cnt = session.getMapper(cls).delete();
			if (cnt > 0) return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			 DBConnection.close(session);
		}
		return false;
	}
}
