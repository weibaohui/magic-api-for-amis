package org.ssssssss.example.interceptor;

import org.ssssssss.magicapi.interceptor.SQLInterceptor;
import org.ssssssss.magicapi.modules.BoundSql;

import java.util.Arrays;


/**
 * 自定义SQL拦截器
 * https://ssssssss.org/guide/custom/sql.html
 * @see org.ssssssss.magicapi.interceptor.SQLInterceptor
 */
public class CustomSqlInterceptor implements SQLInterceptor {

	/**
	 * 执行SQL之前
	 */
	@Override
	public void preHandle(BoundSql boundSql) {
		// 改写SQL
		boundSql.setSql(boundSql.getSql());
		// 改写参数
		boundSql.setParameters(Arrays.asList(boundSql.getParameters()));
	}
}
