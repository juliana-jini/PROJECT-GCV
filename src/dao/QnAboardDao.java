package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import mybatis.SqlSessionBean;
import vo.QnAboard;

public class QnAboardDao {
	private static QnAboardDao dao = new QnAboardDao();
	private QnAboardDao() {};
	public static QnAboardDao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public int getCount() {
		SqlSession mapper = factory.openSession();
		int count=mapper.selectOne("qnaboard.getCount");
		mapper.close();
		return count;
	}
	
	public List<QnAboard> getPageList(Map<String,Integer> map) {
		SqlSession mapper = factory.openSession();
		List<QnAboard> list = mapper.selectList("qnaboard.getPageList", map);
		mapper.close();
		return list;
	}
	
	public QnAboard getDetail(int idx) {
		SqlSession mapper = factory.openSession();
		QnAboard vo = mapper.selectOne("qnaboard.detail", idx);
		mapper.close();
		return vo;
	}
	
	public void insert(QnAboard vo) {
		SqlSession mapper = factory.openSession();
		mapper.insert("qnaboard.insert", vo);	
		// 매퍼 xml 네임스페이스.id, 다른 매퍼 파일과 id 중복일 경우 네임스페이스로 식별
		mapper.commit();
		mapper.close();
	}
	
	public void readcountUp(int idx) {
		SqlSession mapper = factory.openSession();
		mapper.update("qnaboard.readcountUp", idx);
		mapper.commit();
		mapper.close();
	}
	
	public void update(QnAboard vo) {
		SqlSession mapper = factory.openSession();
		mapper.update("qnaboard.update", vo);
		mapper.commit();
		mapper.close();
	}
	
	public int delete (Map<String,Object> map) {
		SqlSession mapper = factory.openSession();
		int result = mapper.delete("qnaboard.delete", map);
		mapper.commit();
		mapper.close();
		return result;
	}
	
}
