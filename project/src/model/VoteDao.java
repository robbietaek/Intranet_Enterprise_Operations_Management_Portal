package model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.mapper.VoteMapper;

public class VoteDao {
	private Map<String,Object> map=new HashMap<String,Object>();
    private Class<VoteMapper> cls = VoteMapper.class;
	
	
	
	public boolean insert(Vote vote) {
		SqlSession session = DBConnection.getConnection();
		try {
			int cnt = session.getMapper(cls).insert(vote);
			if (cnt > 0) return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			 DBConnection.close(session);
		}
		return false;
	}
	
	public List<Vote> list() {
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
	
	public Integer check(String id) {
		SqlSession session = DBConnection.getConnection();
		try {
			map.clear();
			map.put("id", id);
			return session.getMapper(cls).check(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			 DBConnection.close(session);
		}
		return 0;
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
