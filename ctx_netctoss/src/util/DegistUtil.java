package util;

import java.io.IOException;
import java.security.MessageDigest;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class DegistUtil {
	public static String md5(String s) throws Exception{
		//采用MD5算法，将任意长度字符串，加密成等长字节
		MessageDigest md = MessageDigest.getInstance("MD5");
		byte[] bys = md.digest(s.getBytes());
		//采用base64算法将bys表示成字符串
		return base64Encoder(bys);
	}
	
	public static String sha(String s) throws Exception{
		//采用SHA算法，将任意长度字符串，加密成等长字节
		MessageDigest md = MessageDigest.getInstance("SHA");
		byte[] bys = md.digest(s.getBytes());
		//采用base64算法将bys表示成字符串
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
