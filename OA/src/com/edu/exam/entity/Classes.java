package com.edu.exam.entity;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;
@Component
@Data
public class Classes {

	private int id  ;
	private String className ;
	private String classType; 
	private Date classBeginDate ;
	private String classDuration ;
	private String classStatus ;
	private String adviserName ;
	private Date   adviserEntry_time      ;
	private String   adviserWork_experience                    ;
	private String   adviserStatus                             ;
	private String   trainerName                               ;
	private Date     trainerEntry_time                         ;
	private String   trainerWork_experience                    ;
	private String   trainerStatus                             ;
	public Classes(int id, String className, String classType, Date classBeginDate, String classDuration,
			String classStatus, String adviserName, Date adviserEntry_time, String adviserWork_experience,
			String adviserStatus, String trainerName, Date trainerEntry_time, String trainerWork_experience,
			String trainerStatus) {
		super();
		this.id = id;
		this.className = className;
		this.classType = classType;
		this.classBeginDate = classBeginDate;
		this.classDuration = classDuration;
		this.classStatus = classStatus;
		this.adviserName = adviserName;
		this.adviserEntry_time = adviserEntry_time;
		this.adviserWork_experience = adviserWork_experience;
		this.adviserStatus = adviserStatus;
		this.trainerName = trainerName;
		this.trainerEntry_time = trainerEntry_time;
		this.trainerWork_experience = trainerWork_experience;
		this.trainerStatus = trainerStatus;
	}
	public Classes() {
		super();
	}
	
	                                                           ;
}
