package model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import model.Vote;

public interface VoteMapper {
	@Insert("insert into vote (id, votedid) values (#{id},#{votedid})")
	int insert(Vote vote);
	
	
	@Select("SELECT votedid, COUNT(*) c FROM vote GROUP BY votedid ORDER BY c desc")
	List<Vote> select(Map<String, Object> map);
	
	@Select("select count(*) from vote where id = #{id}")
	Integer check(String id);
	
	@Delete("delete from vote")
	int delete();
}
