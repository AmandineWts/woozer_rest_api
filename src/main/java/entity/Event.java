package entity;

import java.sql.Date;
import java.sql.Time;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table
@Data
public class Event {

	@Id
	@GeneratedValue
	private Long id;
	
	private String name;
	
	private String description;
	
	private Date date;
	
	private Time heure;
	
	private String lieu;
	
    @ManyToMany
    @JoinTable(name = "event_user_participate",
            joinColumns = {@JoinColumn(name = "event_id")},
            inverseJoinColumns = {@JoinColumn(name = "user_id")})
    private Set<User> participant;
	
	
	
	
}