package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import store.Buy;
import vo.buyTic;

public class MypageDao {
	private static MypageDao dao = new MypageDao();
	private MypageDao() {}
	public static MypageDao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	public List<buyTic> select(String s){
		SqlSession mapper = factory.openSession();
		List<buyTic> list = mapper.selectList("my.select", s);
		mapper.close();
		return list;
	}
	public void delete(int i) {
		SqlSession mapper = factory.openSession();
		mapper.delete("my.delete", i);
		mapper.commit();
		mapper.close();
	}
	public void update(Map<String, Object> map) {
		SqlSession mapper = factory.openSession();
		mapper.update("my.update", map);
		mapper.commit();
		mapper.close();
	}
	public void deleteS(int i) {
		SqlSession mapper = factory.openSession();
		mapper.delete("my.deleteS", i);
		mapper.commit();
		mapper.close();
	}
	public List<Buy> selectS(String s){
		SqlSession mapper = factory.openSession();
		List<Buy> list = mapper.selectList("my.selectS", s);
		mapper.close();
		return list;
	}
}
