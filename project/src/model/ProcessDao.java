package model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.mapper.ProcessMapper;

public class ProcessDao {
	private Map<String,Object> map=new HashMap<String,Object>();
    private Class<ProcessMapper> cls = ProcessMapper.class;
    
    
	public int maxnum() {
		SqlSession session = DBConnection.getConnection();
		try {
			return session.getMapper(cls).maxnum();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			 DBConnection.close(session);
		}
		return 0;
	}
    
	public boolean insert(Process process) {
		SqlSession session = DBConnection.getConnection();
		try {
			int cnt = session.getMapper(cls).insert(process);
			if (cnt > 0) return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			 DBConnection.close(session);
		}
		return false;
	}
	
	public List<Process> list(int grptype){
		SqlSession session = DBConnection.getConnection();
		try {
			map.clear();
			map.put("grptype", grptype);
			return session.getMapper(cls).select(map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(session);
		}
		return null;
	}
	
	
	public boolean delete(int grptype) {
		SqlSession session = DBConnection.getConnection();
		try {
			return session.getMapper(cls).delete(grptype);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(session);
		}
		return false;
	}	
}
