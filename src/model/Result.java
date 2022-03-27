package model;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder

public class Result implements Serializable{
	private String user_id;
	private int ans1;
	private int ans2;
	private int ans3;
	private int ans4;
	private int ans5;
	private int ans6;
}
