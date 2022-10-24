package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import mybatis.SqlSessionBean;
import vo.buyTic;
import vo.showtime;
import vo.ticketing;

public class TicketingDao {
	private static TicketingDao dao = new TicketingDao();
	private TicketingDao() {}
	public static TicketingDao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	public List<showtime> select(Map<String, Object> map){
		SqlSession mapper = factory.openSession();
		List<showtime> list = mapper.selectList("ticketing.select", map);
		mapper.close();
		return list;
	}
	public int selectS(Map<String, Object> map) {	// 쇼타임 아이디 가져오기
		SqlSession mapper = factory.openSession();
		int result = mapper.selectOne("ticketing.selectSid", map);
		mapper.close();
		return result;
	}
	public ticketing selectT(int i) {		
		SqlSession mapper = factory.openSession();
		ticketing vo = mapper.selectOne("ticketing.selectT", i);
		mapper.close();
		return vo;
	}
	public int update(Map<String, Object> map) {
		SqlSession mapper = factory.openSession();
		int i = mapper.update("ticketing.update", map);
		mapper.commit();
		mapper.close();
		return i;
	}
	public void insert() {
	SqlSession mapper = factory.openSession();
	mapper.insert("ticketing.insert");
	mapper.commit();
	mapper.close();
	}
	public showtime selectDT(int i) {
		SqlSession mapper = factory.openSession();
		showtime vo = mapper.selectOne("ticketing.selectDT", i);
		mapper.close();
		return vo;
	}
	public int insertTi(buyTic vo) {
		SqlSession mapper = factory.openSession();
		int i =mapper.insert("ticketing.insertTi", vo);
		mapper.commit();
		mapper.close();
		return i;
	}
}
