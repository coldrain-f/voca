package org.coldrain.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CategoryVO {

	private int cno;
	private String category_name;
	private Date regdate;
	private Date updatedate;
	private String state;
	private int fno;
	
}
