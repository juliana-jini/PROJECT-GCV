package vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Setter
public class showtime {
	private int showtime_id;
	private int theater_id;
	private int movie_id;
	private String day1;
	private String time1;
}
