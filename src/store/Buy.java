package store;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Buy {
	private int buy_id;			//기본키
	private String pcode;		//상품코드
	private String custom_id;	//사용자
	private String pname;
	private int amount;			//수량
}
