package org.ssssssss.example.provider;

import org.apache.commons.lang3.math.NumberUtils;
import org.ssssssss.magicapi.model.Page;
import org.ssssssss.magicapi.provider.PageProvider;
import org.ssssssss.script.MagicScriptContext;
import org.ssssssss.script.runtime.RuntimeContext;

import java.util.Objects;

/**
 * 自定义获取分页参数
 * https://ssssssss.org/guide/custom/page.html
 * @see org.ssssssss.magicapi.provider.PageProvider
 * @see org.ssssssss.magicapi.provider.impl.DefaultPageProvider
 */
public class CustomPageProvider implements PageProvider {

	@Override
	public Page getPage(RuntimeContext context) {
		// 从Request中提取page以及pageSize
		long page = NumberUtils.toLong(Objects.toString(context.eval("page"), ""), 1);
		long pageSize = NumberUtils.toLong(Objects.toString(context.eval("size"), ""), 10);
		return new Page(pageSize, (page - 1) * pageSize);
	}
}
