package com.service;

public class services {
	
	private String id;
	private String name;
	private String description;
	private String participants;
	private String events;
	
	public services(String id,String name, String description, String participants, String events) {

		this.id = id;
		this.name = name;
		this.description = description;
		this.participants = participants;
		this.events = events;
	}

	public String getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}

	public String getDescription() {
		return description;
	}

	public String getParticipants() {
		return participants;
	}

	public String getEvents() {
		return events;
	}

}
