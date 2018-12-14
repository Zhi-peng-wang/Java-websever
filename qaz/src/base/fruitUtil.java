package base;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;





public class fruitUtil {
	private Connection con;
	//构造方法，获得数据库的操作
	public fruitUtil() {
		this.con=DataBaseConnection.getConnection();
	}	
	/**
	 * 按照id查找水果信息，
	 */
	public Collection getFruitBySid(String sid) throws Exception {
		Statement stmt = con.createStatement();
		ResultSet rst = stmt.executeQuery("select * from fruit where sid='"
				+ sid + "'");
		Collection ret = new ArrayList();
		while (rst.next()) {
			fruit tempSt = new fruit();
			tempSt.setSid(rst.getString("sid"));
			tempSt.setName(rst.getString("name"));
			tempSt.setPrice(rst.getInt("price"));

			ret.add(tempSt);
		}
		stmt.close();
		con.close();
		return ret;
	}
	
	
}
