package dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import vo.Manager;
import mybatis.SqlSessionBean;

public class ManagerDao {
	private static ManagerDao dao = new ManagerDao();
	private ManagerDao() {};
	public static ManagerDao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public Manager login(Map<String,String> map) {
		SqlSession mapper = factory.openSession();
		Manager vo = mapper.selectOne("login", map);
		mapper.close();
		return vo;
	}
}
