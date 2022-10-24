package vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class movie_info {
	private int movie_id;		//영화 기본키
	private String movie_info;	//영화 상세 정보
	private String director;	//감독
	private String actors;		//배우
	private String genre;		//장르
}
