package common;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

import javax.xml.bind.DatatypeConverter;

public class Util {

/**
 * パスワードをMD5に変換する
 * @param source
 * @return
 */
public static String passwordconvert(String source){
	//ハッシュ生成前にバイト配列に置き換える際のCharset
	try {
		//日本語をパラメーターで渡すとき
		Charset charset = StandardCharsets.UTF_8;
		//ハッシュアルゴリズム
		String algorithm = "MD5";

		//ハッシュ生成処理
		byte[] bytes = MessageDigest.getInstance(algorithm).digest(source.getBytes(charset));
		String result = DatatypeConverter.printHexBinary(bytes);
		//標準出力
		System.out.println(result);
		return result;
	} catch (Exception e) {
		return null;
	}


}
}
