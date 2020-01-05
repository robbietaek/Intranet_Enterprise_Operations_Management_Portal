package model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.mapper.ReplyMapper;

public class ReplyDao {
	private Map<String, Object> map = new HashMap<String, Object>();
	private Class<ReplyMapper> cls = ReplyMapper.class;

	public boolean insert(Reply reply) {
		SqlSession session = DBConnection.getConnection();
		try {
			int cnt = session.getMapper(cls).insert(reply);
			if (cnt > 0)
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(session);
		}
		return false;
	}

	public Reply selectOne(int replynum) {
		SqlSession session = DBConnection.getConnection();
		try {
			map.clear();
			map.put("replynum", replynum);
			return session.getMapper(cls).selectreplynum(map).get(0);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(session);
		}
		return null;
	}

	public boolean delete(int replynum) {
		SqlSession session = DBConnection.getConnection();
		try {
			int cnt = session.getMapper(cls).delete(replynum);
			if (cnt > 0)
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(session);
		}
		return false;
	}

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

	public List<Reply> list(int num) {
		SqlSession session = DBConnection.getConnection();
		try {
			map.clear();
				map.put("num", num);
			return session.getMapper(cls).select(map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(session);
		}
		return null;
	}
}
