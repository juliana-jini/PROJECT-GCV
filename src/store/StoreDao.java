package store;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;

public class StoreDao {
	private static StoreDao dao = new StoreDao();
	private StoreDao() {};
	public static StoreDao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public List<Store> listStore() {
		SqlSession mapper = factory.openSession();
		List<Store> list = mapper.selectList("store.listStore");
		mapper.close();
		return list;
	}
	
	public Store getDetail(String pcode){
		SqlSession mapper= factory.openSession();
		Store vo = mapper.selectOne("store.detail",pcode);
		mapper.close();
		return vo;
	}
	
	//카테고리별 출력
	public List<Store> listCategory(String category) {
		SqlSession mapper = factory.openSession();
		List<Store> list = mapper.selectList("store.listCategory", category);
		mapper.close();
		return list;
	}
		
}
