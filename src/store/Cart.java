package store;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Cart {
	private int cart_id;			//기본키
	private String pcode;			//상품코드
	private String pname;			//상품이름
	private int price;				//가격
	private String composition;		//상품구성
	private String custom_id;		//사용자
	private int amount;				//수량
	private String filename;		//상품이미지
}
