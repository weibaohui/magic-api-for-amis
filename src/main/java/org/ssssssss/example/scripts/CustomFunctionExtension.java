package org.ssssssss.example.scripts;

import org.apache.commons.lang3.math.NumberUtils;
import org.ssssssss.script.annotation.Comment;
import org.ssssssss.script.functions.ExtensionMethod;

/**
 * 自定义扩展方法
 * https://ssssssss.org/guide/custom/extension.html
 * @see ExtensionMethod
 */
public class CustomFunctionExtension implements ExtensionMethod {
	/**
	 * 扩展String方法
	 */
	@Override
	public Class<?> support() {
		return String.class;
	}

	/**
	 *	方法参数至少有一个,且第一个参数必须为support方法返回的类型
	 *	以将字符串转为int为例,该方法编写如下,最终调用时使用strVar.toInt()调用
	 *	该方法第一个参数会自动被传入,所以调用时无需传入
	 *	var str = '123';
	 *  //以下两种方式都支持
	 *  return '1234'.toInt();
	 *  //return str.toInt();
	 */
	@Comment("将字符串转为Integer(方法名的提示)")
	public Integer toInt(String str){    // 第一个参数无需使用@Comment注解
		return NumberUtils.toInt(str);
	}

}
