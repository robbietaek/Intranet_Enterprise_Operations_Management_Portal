package model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import model.Reply;

public interface ReplyMapper {
	
	@Insert("insert into reply "
 + " ( replynum, id ,num, content,regdate)"
 + " values (#{replynum},#{id},#{num},#{content},#{regdate})")
	int insert(Reply reply);
	
	@Select("select * from reply where replynum = #{replynum} order by regdate")
	List<Reply> selectreplynum(Map<String, Object> map);
	
	@Select("select * from reply where num = #{num} order by regdate")
	List<Reply> select(Map<String, Object> map);
	
	@Delete("delete from reply where replynum=#{replynum}")
	int delete(int num);
	
	@Select("select ifnull(max(replynum),0) from reply")
	int maxnum();
}
