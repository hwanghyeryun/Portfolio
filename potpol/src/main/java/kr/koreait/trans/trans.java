package kr.koreait.trans;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;


public class trans {

	public static String result="";
	public static String text="";
	public static String target="";
	public static String source="";
    public static void main(String[] args) {
        String clientId = "uEupeCkUlI5tHXl8leeP";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "6OpA8PaD9s";//애플리케이션 클라이언트 시크릿값";
        try {
            String textbefore = URLEncoder.encode(text, "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("POST");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            // post request
            String postParams = "source="+source+"&target="+target+"&text=" + textbefore;
            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.writeBytes(postParams);
            wr.flush();
            wr.close();
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            
            result = response.toString();
            
            JSONParser jsonparser = new JSONParser();
            JSONObject jsonObject = (JSONObject)jsonparser.parse(result);
            jsonObject = (JSONObject)jsonparser.parse(jsonObject.get("message").toString());
            jsonObject = (JSONObject)jsonparser.parse(jsonObject.get("result").toString());
//            jsonObject = (JSONObject)jsonparser.parse(jsonObject.get("translatedText").toString());
            result = (String)jsonObject.get("translatedText");
//            result = jsonObject.toString();
            System.out.println(source + ":" + text + "/");
            System.out.println(target + ":" + result);
            
//            System.out.println(response.toString());
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
