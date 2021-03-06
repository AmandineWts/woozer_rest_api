package service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.EventDao;
import entity.Event;
import service.EventService;

import java.util.List;

@Service
public class EventServiceImpl implements EventService {

    @Autowired
    private EventDao eventDao;

    @Override
    public List<Event> findAllByGroupId(Long groupId) {
        return eventDao.findAllByGroupId(groupId);
    }

    @Override
    public Event findById(Long eventId) {
        return eventDao.findById(eventId).orElse(null);
    }
    
    @Override
    public List<Event> findAllByUserId(Long userId) {
    	return eventDao.findAllByUserId(userId);
    }
    
    @Override
    public Event save(Event event) {
    	return eventDao.save(event);
    }
    
    @Override
    public void saveEventToGroup(Long eventId, Long groupId) {
    	eventDao.saveEventToGroup(eventId, groupId);
    }
}
