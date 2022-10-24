package vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class movie {
	private int movie_id;	//영화 기본키
	private String movie_name;	//영화 이름
	private String ADVANCE_RATE;	//예매율 api 데이터 없음 직접 수정
	private double MOVIE_GRADE;		// 영화 평점 api 데이터 없음 직접 수정
	private int audience;			// 관객수
	private int MOVIE_RANK;			// 영화 순위
	private String MOVIE_OPENDT;	// 영화 개봉일
}
