package vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class theater {
	public int theater_id;
	public int regioncode;
	public String theater_name;
	public String theater_img;
	public String location_land;
	public String location_road;
	public String hp;
	public String screen;
	public String seat;
	public double theater_x;
	public double theater_y;
	public String bus_info;
	public String parking_info;
}
