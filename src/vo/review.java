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
public class review {
	private int review_idx;
	private String custom_id;
	private int movie_id;
	private String review_info;
	private Date wdate;
	private int heartcount;
	private int grade;
}
