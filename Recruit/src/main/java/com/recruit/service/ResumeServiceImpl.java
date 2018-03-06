package com.recruit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.recruit.domain.ResumeVO;
import com.recruit.persistence.ResumeDAO;

@Service
public class ResumeServiceImpl implements ResumeService{
	
	@Inject
	private ResumeDAO dao;
	
	@Override
	public void write(ResumeVO resume)throws Exception{
		dao.create(resume);
	}
	
	@Override
	public ResumeVO read(Integer bno)throws Exception{
		return dao.read(bno);
	}
	
	@Override
	public void modify(ResumeVO resume)throws Exception{
		dao.update(resume);
	}
	
	@Override	
	public void remove(Integer bno)throws Exception{
		dao.delete(bno);
	}
	
	@Override
	public List<ResumeVO> listAll()throws Exception{
		return dao.listAll();
	}
}
