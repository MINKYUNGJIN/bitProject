package com.recruit.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.recruit.domain.ResumeVO;

@Repository
public class ResumeDAOImpl implements ResumeDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.recruit.mapper.ResumeMapper";
	
	@Override
	public void create(ResumeVO vo)throws Exception{
		session.insert(namespace + ".create", vo);
	}
	
	@Override
	public ResumeVO read(Integer bno) throws Exception{
		return session.selectOne(namespace + ".read" ,bno);
	}
	
	@Override
	public void update(ResumeVO vo)throws Exception{
		session.update(namespace + ".update", vo);
	}
	
	@Override
	public void delete(Integer bno) throws Exception{
		session.delete(namespace + ".delete", bno);
	}
	
	@Override
	public List<ResumeVO> listAll() throws Exception{
		return session.selectList(namespace + ".listAll");
	}
	
}
