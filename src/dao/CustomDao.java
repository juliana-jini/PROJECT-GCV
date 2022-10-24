package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.CustomVo;

public class CustomDao {
	private static CustomDao dao = new CustomDao();
	private CustomDao() {}
	public static CustomDao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public CustomVo login(Map<String, Object> map) {
		
		
		SqlSession mapper = factory.openSession();
		CustomVo vo = mapper.selectOne("custom.login", map);
		mapper.close();
		return vo;
	}

	public void insert(CustomVo vo) {
		SqlSession mapper = factory.openSession();
		mapper.insert("custom.insertLogin", vo);
		mapper.commit();
		mapper.close();
		
	}
	
	public String check_id(String check) {
		SqlSession mapper = factory.openSession();
		String vo = mapper.selectOne("custom.check_id", check);
		mapper.close();
		return vo;
	}
	public List<String> find_id(Map<String,String> fid) {
		SqlSession mapper = factory.openSession();
		List<String> id = mapper.selectList("custom.find_id",fid);
		mapper.close();
		return id;
	}
	
	public String find_pw(Map<String,String> fpw) {
		SqlSession mapper = factory.openSession();
		String pw = mapper.selectOne("custom.find_pw",fpw);
		mapper.close();
		return pw;
	}
	
	

}
