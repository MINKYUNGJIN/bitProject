package com.recruit.service;

import java.util.List;

import com.recruit.domain.ResumeVO;

public interface ResumeService {
	public void write(ResumeVO resume)throws Exception;
	
	public ResumeVO read(Integer bno)throws Exception;
	
	public void modify(ResumeVO resume)throws Exception;
	
	public void remove(Integer bno)throws Exception;
	
	public List<ResumeVO> listAll()throws Exception;
}
