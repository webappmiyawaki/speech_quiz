package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Result;

public class ConnectSpeechQuizDatabase {
	private final String URL = "jdbc:postgresql://localhost:5432/speech_quiz";
    private final String USERNAME = "postgres";
    private final String PASSWORD = "test";

    public List<Result> toSelectAll(){
   		List<Result> resultList = new ArrayList<>();
    	try {
    		Class.forName("org.postgresql.Driver");
    	} catch (ClassNotFoundException e) {
			e.printStackTrace();
    	}

    	try(Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
    	    Statement stmt = conn.createStatement()){
	   		ResultSet rs=stmt.executeQuery("SELECT * FROM quiz_result");
	   		while(rs.next()) {
	   			resultList.add(Result.builder()
    					.user_id(rs.getString("user_id"))
    			.ans1(rs.getInt("ans1"))
    			.ans2(rs.getInt("ans2"))
    			.ans3(rs.getInt("ans3"))
    			.ans4(rs.getInt("ans4"))
    			.ans5(rs.getInt("ans5"))
    			.ans6(rs.getInt("ans6")).build());
	   		}
    	} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		return resultList;
    }

    public boolean toInsertData(Result result){
    	try {
    		Class.forName("org.postgresql.Driver");
    	} catch (ClassNotFoundException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
    	}
    	String sql = "INSERT INTO test_result VALUES(?,?,?)";

    	try(Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD)){
    		conn.setAutoCommit(false);
    		try(PreparedStatement pstmt = conn.prepareStatement(sql)){
	    		pstmt.setString(1, result.getUser_id());
			   	pstmt.setInt(2, 1);
			   	pstmt.setInt(3, result.getAns1());
			   	pstmt.addBatch();

			   	pstmt.setString(1, result.getUser_id());
			   	pstmt.setInt(2, 2);
			   	pstmt.setInt(3, result.getAns2());
			   	pstmt.addBatch();

			   	pstmt.setString(1, result.getUser_id());
			   	pstmt.setInt(2, 3);
			   	pstmt.setInt(3, result.getAns3());
			   	pstmt.addBatch();

			   	pstmt.setString(1, result.getUser_id());
			   	pstmt.setInt(2, 4);
			   	pstmt.setInt(3, result.getAns4());
			   	pstmt.addBatch();

			   	pstmt.setString(1, result.getUser_id());
			   	pstmt.setInt(2, 5);
			   	pstmt.setInt(3, result.getAns5());
			   	pstmt.addBatch();

			   	pstmt.setString(1, result.getUser_id());
			   	pstmt.setInt(2, 6);
			   	pstmt.setInt(3, result.getAns6());
			   	pstmt.addBatch();

		   		pstmt.executeBatch();
    		}catch(Exception e) {
    			conn.rollback();
                System.out.println("rollback");
                throw e;
    		}
    		conn.commit();
    	} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			return false;
		}
    	return true;
    }

    public Map<Integer,int[]> toSelectAllResult(){

    	String sqlTotalCount="SELECT quiz_text_num,\r\n"
    			+ "       COUNT(CASE WHEN quiz_ans_num=1 THEN quiz_text_num ELSE NULL END) AS ans01,\r\n"
    			+ "       COUNT(CASE WHEN quiz_ans_num=2 THEN quiz_text_num ELSE NULL END) AS ans02,\r\n"
    			+ "       COUNT(CASE WHEN quiz_ans_num=3 THEN quiz_text_num ELSE NULL END) AS ans03,\r\n"
    			+ "       COUNT(CASE WHEN quiz_ans_num=4 THEN quiz_text_num ELSE NULL END) AS ans04,\r\n"
    			+ "       COUNT(CASE WHEN quiz_ans_num=5 THEN quiz_text_num ELSE NULL END) AS ans05\r\n"
    			+ "FROM test_result\r\n"
    			+ "GROUP BY quiz_text_num\r\n"
    			+ "ORDER BY quiz_text_num;";

    	try {
    		Class.forName("org.postgresql.Driver");
    	} catch (ClassNotFoundException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
    	}
    	Map<Integer,int[]> ansMap = new HashMap<>();
    	try(Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
    			Statement stmt = conn.createStatement()	){

    		ResultSet rs = stmt.executeQuery(sqlTotalCount);
    		while(rs.next()) {
    			ansMap.put(rs.getInt("quiz_text_num"),
    					new int[] {rs.getInt("ans01"),
    							rs.getInt("ans02"),
    							rs.getInt("ans03"),
    							rs.getInt("ans04"),
    							rs.getInt("ans05")}
    					);
    		}
    	} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		} finally {
		}
    	return ansMap;
    }
}
