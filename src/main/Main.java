package main;

import java.io.IOException;

import org.json.JSONObject;

public class Main {
	public static void main(String[] args) throws IOException {
        //싱글톤
        Action action=Action.getInstance();

        JSONObject reqtoServer=new JSONObject();

        //JSONObject res=action.get(reqtoServer.toString());
        //System.out.println(res.getJSONObject("boxOfficeResult").getJSONArray("dailyBoxOfficeList").getJSONObject(0).getInt("rank"));
        JSONObject res2=action.getM(reqtoServer.toString(), 20202703);
        System.out.println(res2);
        
    }
}
//"audiCnt": 관객수,"movieNm": 영화 제목"salesAmt","movieCd":영화코드,"rank":순위,"openDt":개봉일, "audiAcc": 누적 관객수