package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.theater;

public class TheaterDao {
	private static TheaterDao dao = new TheaterDao();
	private TheaterDao() {}
	public static TheaterDao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	public List<theater> select() {
		SqlSession mapper = factory.openSession();
		List<theater> list = mapper.selectList("the.select");
		mapper.close();
		return list;
	}
	public theater getT(int i) {
		SqlSession mapper = factory.openSession();
		theater vo = mapper.selectOne("the.getT", i);
		mapper.close();
		return vo;
	}
	public List<theater> selectRG(int regioncode) {

		SqlSession mapper =factory.openSession();
		List<theater> list = mapper.selectList("the.selectRG", regioncode);   
		mapper.close();
		return list;	}

	}

