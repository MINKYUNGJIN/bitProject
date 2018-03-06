package com.recruit.persistence;

import java.util.List;

import com.recruit.domain.ResumeVO;

public interface ResumeDAO {

	public void create(ResumeVO vo)throws Exception;
	
	public ResumeVO read(Integer bno) throws Exception;
	
	public void update(ResumeVO vo)throws Exception;
	
	public void delete(Integer bno) throws Exception;
	
	public List<ResumeVO> listAll() throws Exception;
	
}
