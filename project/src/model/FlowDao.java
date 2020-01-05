package model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.mapper.FlowMapper;

public class FlowDao {
	private Map<String, Object> map = new HashMap<String, Object>();
	private Class<FlowMapper> cls = FlowMapper.class;

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

	public boolean insert(Flow flow) {
		SqlSession session = DBConnection.getConnection();
		try {
			int cnt = session.getMapper(cls).insert(flow);
			if (cnt > 0)
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(session);
		}
		return false;
	}

	public List<Flow> list() {
		SqlSession session = DBConnection.getConnection();
		try {
			return session.getMapper(cls).select(null);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(session);
		}
		return null;
	}

	public Flow selectOne(int num) {
		SqlSession session = DBConnection.getConnection();
		try {
			map.clear();
			map.put("num", num);
			List<Flow> list = session.getMapper(cls).select(map);
			return list.get(0);
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
			return session.getMapper(cls).delete();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(session);
		}
		return false;
	}
}
