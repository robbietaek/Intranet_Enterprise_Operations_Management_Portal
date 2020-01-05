package model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import model.Flow;

public interface FlowMapper {
	
	@Select("select ifnull(max(num),0) from flow")
	int maxnum();
	
	@Insert("insert into flow "
	+ "(num,jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dece)"
	+ " values (#{num},#{jan},#{feb},#{mar},#{apr},#{may},#{jun},#{jul},#{aug},#{sep},#{oct},#{nov},#{dece})")
	int insert(Flow f);
	
	
	@Select("select * from flow")
	List<Flow> select(Map<String, Object> map);
	
	@Delete("delete from flow")
	boolean delete();
}
