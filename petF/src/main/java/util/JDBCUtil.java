package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class JDBCUtil {
	static final String driverName="com.mysql.cj.jdbc.Driver";
	static final String url="jdbc:mysql://localhost:3306/yeondb";
	static final String user="root";
	static final String passwd="12341234";
	public static Connection connect() {
		Connection conn=null;
		try {
			Class.forName(driverName);

			conn=DriverManager.getConnection(url, user, passwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	public static void disconnect(PreparedStatement pstmt,Connection conn) {
		try {
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static Document croling(String str)
    {
        final String url = str;
        final String useragent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36";
        Document doc = null;
        try {
            doc = Jsoup.connect(url).timeout(0).ignoreHttpErrors(true).userAgent(useragent).get();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return doc;
    }
}
