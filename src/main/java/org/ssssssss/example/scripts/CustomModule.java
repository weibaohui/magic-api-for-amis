package org.ssssssss.example.scripts;

import org.ssssssss.magicapi.config.MagicModule;
import org.ssssssss.script.annotation.Comment;

/**
 * 自定义模块
 * 脚本中使用
 * import custom;    //导入模块
 * custom.println('Custom Module!');
 *
 * https://ssssssss.org/guide/custom/module.html
 *
 * @see org.ssssssss.magicapi.config.MagicModule
 * @see org.ssssssss.magicapi.modules.SQLModule
 * @see org.ssssssss.magicapi.modules.MongoModule
 * @see org.ssssssss.magicapi.modules.RedisModule
 * @see org.ssssssss.magicapi.modules.AssertModule
 */
public class CustomModule implements MagicModule {

	/**
	 * 模块名称
	 */
	@Override
	public String getModuleName() {
		return "custom";
	}

	@Comment("方法名的注释(用于提示)")
	public void println(@Comment(name = "value", value = "参数名的提示(用于提示)")String value) {
		System.out.println(value);
	}
}
