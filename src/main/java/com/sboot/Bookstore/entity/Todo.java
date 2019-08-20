package com.sboot.Bookstore.entity;

import java.util.Date;

public class Todo {

	private int id;
	private String desc;
	private Date targetedDate;
	private boolean isDone;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Date getTargetedDate() {
		return targetedDate;
	}

	public void setTargetedDate(Date targetedDate) {
		this.targetedDate = targetedDate;
	}

	public boolean getisDone() {
		return isDone;
	}

	public void setisDone(boolean isDone) {
		this.isDone = isDone;
	}

	public Todo(String desc, Date targetedDate, boolean isDone) {
		super();

		this.desc = desc;
		this.targetedDate = targetedDate;
		this.isDone = isDone;
	}

	public Todo() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Todo [id=" + id + ", desc=" + desc + ", targetedDate=" + targetedDate + ", isDone=" + isDone + "]";
	}

	public Todo(int id, String desc, Date targetedDate, boolean isDone) {
		super();
		this.id = id;

		this.desc = desc;
		this.targetedDate = targetedDate;
		this.isDone = isDone;
	}

}
