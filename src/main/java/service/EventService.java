package service;

import java.util.List;

import entity.Event;

public interface EventService {

	List<Event> findAllByGroupId(Long group);

	Event findById(Long event);

	List<Event> findAllByUserId(Long user);
	
	Event save(Event event);
	
	void saveEventToGroup(Long eventId , Long groupId);
}
