package model;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class ResultCompare implements Serializable {
	private int[] resultList= {1,3,4,1,1};
	private boolean[] isResultList = new boolean[5];
	public ResultCompare(Result result){
		this.isResultList[0]=this.resultList[0]==result.getAns1()?true:false;
		this.isResultList[1]=this.resultList[1]==result.getAns2()?true:false;
		this.isResultList[2]=this.resultList[2]==result.getAns3()?true:false;
		this.isResultList[3]=this.resultList[3]==result.getAns4()?true:false;
		this.isResultList[4]=this.resultList[4]==result.getAns5()?true:false;
	}
	public boolean[] getIsResultList(){
		return isResultList;
	};
}
