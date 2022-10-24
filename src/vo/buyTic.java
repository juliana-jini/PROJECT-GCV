package vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class buyTic {
	private int buy_tic_id;
	private int showtime_id;
	private String custom_id;
	private String seat;
	private String seatno;
	private String movie_name;
	private String theater_name;
	private String day1;
	private String time1;
	
}
