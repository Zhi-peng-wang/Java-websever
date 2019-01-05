package StuSelSystem;
import java.sql.*;
import java.util.*;


public class StudentUtil {
	private Connection con;
	//���췽����������ݿ�Ĳ���
	public StudentUtil() {
		this.con=DataBaseConnection.getConnection();
	}
	//����ѧ��
	public void addStudent(Student student)throws Exception {
		String sql="insert into student values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1,student.getSid());
		pstmt.setString(2,student.getBanji());
		pstmt.setString(3,student.getName());
		pstmt.setString(4,student.getSex());
		pstmt.setString(5,student.getBirth());
		pstmt.setString(6,student.getPhone());
		pstmt.setString(7,student.getBixiu1());
		pstmt.setString(8,student.getBixiu2());
		pstmt.setString(9,student.getXuanxiu1());
		pstmt.setString(10,student.getXuanxiu2());
		
		pstmt.execute();
		pstmt.close();
		con.close();
	}
	//��������ѧ����Ϣ
	public Collection getAllStudent()throws Exception {
		Statement stmt=con.createStatement();
		ResultSet rst=stmt.executeQuery("select * from student");
		Collection ret=new ArrayList(); 
		
		while (rst.next()) {
			Student tempSt=new Student();
			tempSt.setSid(rst.getString("sid"));
			tempSt.setBanji(rst.getString("banji"));
			tempSt.setName(rst.getString("name"));
			tempSt.setSex(rst.getString("sex"));
			tempSt.setBirth(rst.getString("birth"));
			tempSt.setPhone(rst.getString("phone"));
			tempSt.setBixiu1(rst.getString("bixiu1"));
			tempSt.setBixiu2(rst.getString("bixiu2"));
			tempSt.setXuanxiu1(rst.getString("xuanxiu1"));
			tempSt.setXuanxiu2(rst.getString("xuanxiu2"));
			
			ret.add(tempSt);
		}
		
		stmt.close();
		con.close();
		return ret;
	}
	/**
	 * ɾ��ָ��ѧ�ŵ�ѧ��
	 */
	public void deleteStudent(String sid) throws Exception {
		Statement stmt = con.createStatement();
		stmt.execute("delete from student where sid='" + sid + "'");
		stmt.close();
		con.close();
	}
	
	/**
	 * ����ѧ����ѧ�Ų���ѧ����������Studentֵ������ɵ�Collection
	 */
	public Collection getStudentBySid(String sid) throws Exception {
		Statement stmt = con.createStatement();
		ResultSet rst = stmt.executeQuery("select * from student where sid='"
				+ sid + "'");
		Collection ret = new ArrayList();
		while (rst.next()) {
			Student tempSt = new Student();
			tempSt.setSid(rst.getString("sid"));
			tempSt.setBanji(rst.getString("banji"));
			tempSt.setName(rst.getString("name"));
			tempSt.setSex(rst.getString("sex"));
			tempSt.setBirth(rst.getString("birth"));
			tempSt.setPhone(rst.getString("phone"));
			tempSt.setBixiu1(rst.getString("bixiu1"));
			tempSt.setBixiu2(rst.getString("bixiu2"));
			tempSt.setXuanxiu1(rst.getString("xuanxiu1"));
			tempSt.setXuanxiu2(rst.getString("xuanxiu2"));
			
			ret.add(tempSt);
		}
		stmt.close();
		con.close();
		return ret;
	}
	
	/**
	 * ���ظ���ѧ�ŵ�ѧ������Ϣ�����ص���ֵ����
	 */
	public Student getStudentInfo(String sid) throws Exception {

		Statement stmt = con.createStatement();
		ResultSet rst = stmt.executeQuery("select * from student where sid='"
				+ sid + "'");
		Student student = null;
		while (rst.next()) {
			student = new Student();
			student.setSid(rst.getString("sid"));
			student.setBanji(rst.getString("banji"));
			student.setName(rst.getString("name"));
			student.setSex(rst.getString("sex"));
			student.setBirth(rst.getString("birth"));
			student.setPhone(rst.getString("phone"));
			student.setBixiu1(rst.getString("bixiu1"));
			student.setBixiu2(rst.getString("bixiu2"));
			student.setXuanxiu1(rst.getString("xuanxiu1"));
			student.setXuanxiu2(rst.getString("xuanxiu2"));
		}
		stmt.close();
		con.close();
		return student;
	}
	
	/**
	 * ����ѧ������Ϣ��ʹ��Studentֵ������Ϊ�����������������
	 */
	public void modifyStudent(Student student) throws Exception {

		PreparedStatement pstmt = con
				.prepareStatement("update student set  banji=?,name=?, sex=?,birth=?,phone=?,bixiu1=?,bixiu2=?,xuanxiu1=?,xuanxiu2=? where sid=? ");
		pstmt.setString(1, student.getBanji());
		pstmt.setString(2, student.getName());
		pstmt.setString(3, student.getSex());
		pstmt.setString(4, student.getBirth());
		pstmt.setString(5, student.getPhone());
		pstmt.setString(6, student.getBixiu1());
		pstmt.setString(7, student.getBixiu2());
		pstmt.setString(8, student.getXuanxiu1());
		pstmt.setString(9, student.getXuanxiu2());
		pstmt.setString(10, student.getSid());
		pstmt.execute();
		pstmt.close();
		con.close();
	}
	
}
























