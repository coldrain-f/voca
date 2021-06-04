package org.coldrain.mapper;

import java.util.List;

import javax.inject.Inject;

import org.coldrain.domain.WordVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class WordMapperTests {
	
	@Inject
	private WordMapper mapper;
	
	@Test
	public void testGetList() {
		log.info("WordMapperTests.testGetList()");
		log.info("mapper = " + mapper);
		
		List<WordVO> wordList = mapper.getList();
		log.info(wordList);
		
	}
}
