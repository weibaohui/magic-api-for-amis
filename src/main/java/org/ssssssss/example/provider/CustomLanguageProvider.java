package org.ssssssss.example.provider;

import org.ssssssss.magicapi.provider.LanguageProvider;

import java.util.Map;

/**
 * 自定义脚本语言
 * https://ssssssss.org/guide/custom/language.html
 * @see org.ssssssss.magicapi.provider.LanguageProvider
 */
public class CustomLanguageProvider implements LanguageProvider {

	@Override
	public boolean support(String languageName) {
		return "custom".equalsIgnoreCase(languageName);
	}

	/**
	 * 执行脚本
	 * @param languageName 语言类型
	 * @param script	脚本内容
	 * @param context	当前环境中的变量信息
	 *
	 *  var name = "test variable"
	 *  var func = ```custom
	 *  // 任意代码
	 *  ```;
	 *  return func();
	 *  //返回结果：hello test variable
	 */
	@Override
	public Object execute(String languageName, String script, Map<String, Object> context) throws Exception {
		return "hello " + context.get("name");
	}
}
