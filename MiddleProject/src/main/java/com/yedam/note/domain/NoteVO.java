package com.yedam.note.domain;

import lombok.Data;
import oracle.sql.DATE;

@Data
public class NoteVO {
	private int noteId;
	private String userId;
	private String noteCT;
	private DATE noteDate;
	private int noteView;
}