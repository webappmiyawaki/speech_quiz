package speech_quiz;
import java.util.Arrays;
import java.util.Map;

import dao.ConnectSpeechQuizDatabase;
public class ConnectTest {
	public static void main(String[] args) {
		ConnectSpeechQuizDatabase csqd = new ConnectSpeechQuizDatabase();
		Map<Integer,int[]> resultMap = csqd.toSelectAllResult();
		for(Integer i:resultMap.keySet()) {
			System.out.println(i+Arrays.toString(resultMap.get(i)));
		}
	}
}
