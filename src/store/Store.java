package store;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Store {
	private String pcode;		//pcode는 기본키값
	private String category;	//상품종류
	private String pname;		//상품이름
	private int price;			//가격
	private String detail;		//상품설명
	private String composition;	//상품구성
	private String filename;	//상품이미지
}
