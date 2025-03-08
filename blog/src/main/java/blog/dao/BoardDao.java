package blog.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import blog.vo.TcommBltBasModel;

@Repository
@Mapper
public interface BoardDao {

	public List<TcommBltBasModel> list(TcommBltBasModel vo);
	
	//public TcommBltBasModel boardDetail();
}
