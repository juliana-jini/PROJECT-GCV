package vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class QnAboard {
	private int idx;
	private String custom_id;
	private String password;
	private String subject;
	private String content;
	private int readCount;
	private Timestamp wdate;
	private String ip;
	private int commentCount;
}
