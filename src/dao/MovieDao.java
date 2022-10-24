package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import vo.movie;
import vo.movie_info;
import vo.review;

public class MovieDao {
	private static MovieDao dao = new MovieDao();
	private MovieDao() {}
	public static MovieDao getInstance() {
		return dao;
	}
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	public List<movie> select(){
		SqlSession mapper = factory.openSession();
		List<movie> list = mapper.selectList("movie.get");
		mapper.close();
		return list;
	}
	public void insert (movie vo) {
		SqlSession mapper = factory.openSession();
		mapper.insert("movie.insert", vo);
		mapper.commit();
		mapper.close();
	}
	public List<movie> getPageList(Map<String, Integer> map){
		SqlSession mapper = factory.openSession();
		List<movie> list = mapper.selectList("movie.getPage", map);
		mapper.close();
		return list;
	}
	public int getCount() {
		SqlSession mapper = factory.openSession();
		int count = mapper.selectOne("movie.getCount");
		mapper.close();
		return count;
	}
	public void insert_info (movie_info vo) {
		SqlSession mapper = factory.openSession();
		mapper.insert("movie.info_insert", vo);
		mapper.commit();
		mapper.close();
	} 
	public movie_info getMovieInfo(int i) {
		SqlSession mapper = factory.openSession();
		movie_info vo = mapper.selectOne("movie.getMovie_info", i);
		mapper.close();
		return vo;
	}
	public movie getMovie(int i) {
		SqlSession mapper = factory.openSession();
		movie vo = mapper.selectOne("movie.getMovie", i);
		mapper.close();
		return vo;
	}
	public List<review> getReview(int i) {
		SqlSession mapper = factory.openSession();
		List<review> list = mapper.selectList("movie.getReview", i);
		mapper.close();
		return list;
	}
	public void insertReview(review vo) {
		SqlSession mapper = factory.openSession();
		mapper.insert("movie.insertReivew", vo);
		mapper.commit();
		mapper.close();
	}
	public List<movie> search(String s){
		SqlSession mapper = factory.openSession();
		List<movie> list = mapper.selectList("movie.searchMovie", s);
		mapper.close();
		return list;
		}
	public void delete(int i) {
		SqlSession mapper = factory.openSession();
		mapper.delete("movie.delete", i);
		mapper.commit();
		mapper.close();
	}

}
