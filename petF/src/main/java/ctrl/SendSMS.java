package ctrl;

import java.util.HashMap;
import java.util.Random;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;


public class SendSMS {
	
	public String sendSMS(String phoneNumber) {
		Random rand=new Random();
		String numStr="";
		for(int i = 0; i < 4; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			numStr+=ran; 
		}
		//System.out.println("수신자 번호 : " + phoneNumber);
		certifiedPhoneNumber(phoneNumber,numStr);
		return numStr;
	}
	
	public void certifiedPhoneNumber(String phoneNumber, String numStr) {
		
		String api_key="API_KEY";
		String api_secret="API_SECRET";
		Message coolsms = new Message(api_key, api_secret);
		
		HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", phoneNumber); //수신번호
	    params.put("from", "01094184138"); //발신번호
	    params.put("type", "SMS"); //Message type ( SMS, LMS, MMS, ATA 등 )
	    params.put("text", "펫키지 휴대폰인증 메시지 : 인증번호는 [" + numStr+"] 입니다."); //문자내용    
	    params.put("app_version", "JAVA SDK 2.2"); //application name and version
	    try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}
	
}
