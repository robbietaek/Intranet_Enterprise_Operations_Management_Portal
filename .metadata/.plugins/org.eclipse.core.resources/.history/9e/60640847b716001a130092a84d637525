package model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import model.Process;

public interface ProcessMapper {
	@Insert("insert into process "
	+ "(num, grptype, dept, deadline)"
	+ " values (#{num},#{grptype},#{dept},#{deadline})")
	int insert(Process p);
	
	
	@Select("select * from process where grptype = #{grptype}")
	List<Process> select(Map<String, Object> map);
	
	@Delete("delete from process where grptype = #{grptype}")
	boolean delete(int grptype);
	
	@Select("select ifnull(max(num),0) from process")
	int maxnum();
}
