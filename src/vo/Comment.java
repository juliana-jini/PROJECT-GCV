package vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Comment {
	private int idx;
	private int mref;
	private String custom_id;
	private String content;
	private Timestamp wdate;
	private String ip;
	private int heart;
}
