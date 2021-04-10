package org.ssssssss.example.interceptor;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.ssssssss.magicapi.interceptor.RequestInterceptor;
import org.ssssssss.magicapi.model.ApiInfo;
import org.ssssssss.magicapi.model.JsonBean;
import org.ssssssss.magicapi.model.Options;
import org.ssssssss.script.MagicScriptContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 自定义请求拦截器，可实现鉴权
 * https://ssssssss.org/guide/custom/interceptor.html
 * @see org.ssssssss.magicapi.interceptor.RequestInterceptor
 */
public class CustomRequestInterceptor implements RequestInterceptor {

	private static final Logger logger = LoggerFactory.getLogger(CustomRequestInterceptor.class);

	/**
	 * 接口请求之前
	 * @param info	接口信息
	 * @param context	脚本变量信息
	 */
	@Override
	public Object preHandle(ApiInfo info, MagicScriptContext context, HttpServletRequest request, HttpServletResponse response) throws Exception {
		Object user = null; // = XXXUtils.getUser(request);
		logger.info("{} 请求接口：{}", user, info.getName());
		// 接口选项配置了需要登录
		if ("true".equals(info.getOptionValue(Options.REQUIRE_LOGIN))) {
			if (user == null) {
				return new JsonBean<>(401, "用户未登录");
			}
		}
		String role = info.getOptionValue(Options.ROLE);
		if (StringUtils.isNotBlank(role)/* && user.hasRole(role)*/) {
			return new JsonBean<>(403, "用户权限不足");
		}
		String permission = info.getOptionValue(Options.PERMISSION);
		if (StringUtils.isNotBlank(permission)/* && user.hasPermission(permission)*/) {
			return new JsonBean<>(403, "用户权限不足");
		}
		return null;
	}

	/**
	 * 接口执行之后
	 * @param info	接口信息
	 * @param context	变量信息
	 * @param value 即将要返回到页面的值
	 */
	@Override
	public Object postHandle(ApiInfo info, MagicScriptContext context, Object value, HttpServletRequest request, HttpServletResponse response) throws Exception {
		logger.info("{} 执行完毕，返回结果:{}", info.getName(), value);
		return null;
	}
}
