package org.ssssssss.example.scripts;

import org.ssssssss.magicapi.config.MagicFunction;
import org.ssssssss.script.annotation.Comment;
import org.ssssssss.script.annotation.Function;
import org.ssssssss.script.functions.DateExtension;

import java.util.Date;

/**
 * 自定义函数
 * https://ssssssss.org/guide/custom/function.html
 * @see org.ssssssss.magicapi.config.MagicFunction
 */
public class CustomFunction implements MagicFunction {

	// 脚本中直接使用 now();
	@Function
	@Comment("取当前时间")
	public Date now() {
		return new Date();
	}

	// 脚本中使用 date_format(now())
	@Function
	@Comment("日期格式化")
	public String date_format(@Comment(name = "target", value = "目标日期") Date target) {
		return target == null ? null : DateExtension.format(target, "yyyy-MM-dd HH:mm:ss");
	}

	// 脚本中使用 date_format(now(),'yyyy-MM-dd')
	@Function
	@Comment("日期格式化")
	public String date_format(@Comment(name = "target", value = "目标日期") Date target, @Comment(name = "pattern", value = "格式") String pattern) {
		return target == null ? null : DateExtension.format(target, pattern);
	}

	// 脚本中直接使用ifnull() 调用
	@Function
	@Comment("判断值是否为空")
	public Object ifnull(@Comment(name = "target", value = "目标值") Object target, @Comment(name = "trueValue", value = "为空的值") Object trueValue, @Comment(name = "falseValue", value = "不为空的值") Object falseValue) {
		return target == null ? trueValue : falseValue;
	}

}
