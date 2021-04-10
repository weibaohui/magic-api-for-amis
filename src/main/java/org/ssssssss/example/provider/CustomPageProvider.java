package org.ssssssss.example.provider;

import org.apache.commons.lang3.math.NumberUtils;
import org.ssssssss.magicapi.model.Page;
import org.ssssssss.magicapi.provider.PageProvider;
import org.ssssssss.script.MagicScriptContext;

/**
 * 自定义获取分页参数
 * https://ssssssss.org/guide/custom/page.html
 * @see org.ssssssss.magicapi.provider.PageProvider
 * @see org.ssssssss.magicapi.provider.impl.DefaultPageProvider
 */
public class CustomPageProvider implements PageProvider {

	@Override
	public Page getPage(MagicScriptContext context) {
		// 从Request中提取page以及pageSize
		long page = NumberUtils.toLong(context.getString("page"), 1);
		long pageSize = NumberUtils.toLong(context.getString("size"), 10);
		return new Page(page, pageSize);
	}
}
