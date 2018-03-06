package com.recruit.domain;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.recruit.persistence.ResumeDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"
})

public class BoardDAOTest {
	
	@Inject
	private ResumeDAO dao;
	private static Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);
	
	@Test
	public void testCreate() throws Exception{
		ResumeVO vo = new ResumeVO();
//		vo.setUserid("jin");
		vo.setUserid("jin");
		vo.setTitle("수정한 민경");
//		vo.setAddress("hello@naver.com");
//		vo.setPostcode("02231");
//		vo.setCoverletter("자소서쭉쭉쭊");
//		vo.setJobstateid(2);
//		vo.setJobgroupid(3);
//		vo.setRgbid("4");
//		vo.setRgsid(3);
//		vo.setEmploystatusid(3);
//		vo.setSalaryid(2);
//		vo.setImg("민경사진");
		//p216
		dao.create(vo);
	}
	
	@Test
	public void testRead() throws Exception{
		logger.info(dao.read(2).toString());
	}
	
	@Test
	public void testUpdate() throws Exception{
		ResumeVO vo = new ResumeVO();
		vo.setTitle("수정한 민경");
		vo.setPostcode("02231");
		vo.setCoverletter("자소서쭉쭉쭊");
		dao.update(vo);
	}
	
//	@Test
//	public void testDelete() throws Exception{
//		dao.delete(1);
//	}
	
	
}