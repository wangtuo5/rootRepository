package util;

import java.io.IOException;
import java.security.MessageDigest;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class DegistUtil {
	public static String md5(String s) throws Exception{
		//����MD5�㷨�������ⳤ���ַ��������ܳɵȳ��ֽ�
		MessageDigest md = MessageDigest.getInstance("MD5");
		byte[] bys = md.digest(s.getBytes());
		//����base64�㷨��bys��ʾ���ַ���
		return base64Encoder(bys);
	}
	
	public static String sha(String s) throws Exception{
		//����SHA�㷨�������ⳤ���ַ��������ܳɵȳ��ֽ�
		MessageDigest md = MessageDigest.getInstance("SHA");
		byte[] bys = md.digest(s.getBytes());
		//����base64�㷨��bys��ʾ���ַ���
		return base64Encoder(bys);
	}
	
	public static byte[] base64Decoder(String s) throws IOException{
		BASE64Decoder decoder = new BASE64Decoder();
		return decoder.decodeBuffer(s);
	}
	
	public static String base64Encoder(byte[] bys){
		BASE64Encoder base64Encoder = new BASE64Encoder();
		return base64Encoder.encode(bys);
	}
}
