package co.micol.prj.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataSource {
	private static DataSource dataSource = new DataSource();  //싱글톤 클래스
	
	private DataSource() {}   //외부에서 생성하지 못하도록 private생성
	
	public static DataSource getInstance() {
		
		return dataSource;
	}
	
	public Connection getConnection() {  //인스턴스를 얻어서 커넥션 생성
		Connection conn = null;
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="dev";
		String password="dev";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,password);
			
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
}
