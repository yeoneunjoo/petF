package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import item.ItemVO;
import util.JDBCUtil;
import util.JDBCUtil2;

public class TEST {
	public static void main(String[] args) {
		Connection conn = JDBCUtil.connect();
		PreparedStatement pstmt = null;
		final String url = "https://www.petbox.kr";
		final String insert = "INSERT INTO ITEM VALUES(?,?,?,?,?,?,now())";
		int PK_NUMBER_DOG=1;
		int PK_NUMBER_CAT=1;
		Document doc = JDBCUtil.croling("https://www.petbox.kr/main/index.php");
		Elements el = doc.select("ul.sub_depth2>li>a");

		for(Element v : el) {
			String tag = v.attr("href").replace("..", url);
			String pk = tag.replaceAll("[^0-9]","");
			String pk2 = tag.replaceAll("[^0-9]","").substring(0,3);
			Document doc2 = JDBCUtil.croling(tag);
			System.out.println("태그는 뭐야"+tag);
			Elements el2 = doc2.select(".item_name");
			Elements el3 = doc2.select(".item_price");
			Elements el4 = doc2.select(".item_photo_box>a>img");

			Iterator<Element> itr2 = el2.iterator();
			Iterator<Element> itr3 = el3.iterator();
			Iterator<Element> itr4 = el4.iterator();

			while(itr2.hasNext()) {
				String PK_NUMBER="";
				if(pk2.equals("052")) {									//고양이
					PK_NUMBER=""+pk+PK_NUMBER_CAT;
					PK_NUMBER_CAT++;
				}
				if(pk2.equals("053")) {									//강아지
					PK_NUMBER=""+pk+PK_NUMBER_DOG;
					PK_NUMBER_DOG++;
				}
				//				System.out.println(PK_NUMBER);
				//				System.out.println(url+itr4.next().attr("src"));		//이미지 주소
				//				System.out.println(itr2.next().text());				//이름
				//				System.out.println(itr3.next().text());				//가격
				//				System.out.println(v.text());							//카테고리명

				try {
					pstmt = conn.prepareStatement(insert);
					pstmt.setString(1, PK_NUMBER);
					pstmt.setString(2, itr4.next().attr("data-original"));
					System.out.println("로그 : "+ itr4.next().attr("data-original"));
					pstmt.setString(3, itr2.next().text());
					pstmt.setString(4, itr3.next().text());
					pstmt.setString(5, v.text());
					pstmt.setInt(6, 50);
					pstmt.executeUpdate();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		System.out.println("완료!");
		JDBCUtil.disconnect(pstmt, conn);
	}
}