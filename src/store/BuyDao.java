package store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;

public class BuyDao {
	private static BuyDao dao = new BuyDao();
	private BuyDao() {};
	public static BuyDao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public int insert(Buy vo) {
		SqlSession mapper = factory.openSession();
		int i = mapper.insert("buy.insert", vo);
		mapper.commit();
		mapper.close();
		return i;
	}
	
	public Store select(String s) {
		SqlSession mapper = factory.openSession();
		Store vo = mapper.selectOne("buy.select", s);
		mapper.close();
		return vo;
	}
	
	public void insertCart(Cart vo) {
		SqlSession mapper = factory.openSession();
		mapper.insert("buy.insertCart", vo);
		mapper.commit();
		mapper.close();
	}
	
	public List<Store> selectCart(String b) {
		SqlSession mapper = factory.openSession();
		List<Store> list = mapper.selectList("buy.selectCart", b);
		mapper.close();
		return list;
	}
	
	public List<Integer> selectPrice(String b) {
		SqlSession mapper = factory.openSession();
		List<Integer> list = mapper.selectList("buy.selectPrice", b);
		mapper.close();
		return list;
	}
	
	public void deleteCart(String custom_id) {
		SqlSession mapper = factory.openSession();
		mapper.delete("buy.deleteCart", custom_id);
		mapper.commit();
		mapper.close();
	}
	
	public void deleteProduct(int cart_id) {
		SqlSession mapper = factory.openSession();
		int result = mapper.delete("buy.deleteProduct", cart_id);
		mapper.commit();
		mapper.close();
	}
	
}
