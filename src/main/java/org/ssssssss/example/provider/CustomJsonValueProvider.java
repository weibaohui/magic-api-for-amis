package org.ssssssss.example.provider;

import org.springframework.stereotype.Component;
import org.ssssssss.magicapi.model.Page;
import org.ssssssss.magicapi.model.RequestEntity;
import org.ssssssss.magicapi.provider.ResultProvider;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 自定义JSON结果
 * https://ssssssss.org/guide/custom/json.html
 *
 * @see org.ssssssss.magicapi.provider.ResultProvider
 * @see org.ssssssss.magicapi.provider.impl.DefaultResultProvider
 */
@Component
public class CustomJsonValueProvider implements ResultProvider {


	/**
	 * 构建请求结果
	 * @param requestEntity 请求相关信息
	 * @param code          状态码
	 * @param message       状态说明
	 * @param data          数据内容，可以通过data的类型判断是否是分页结果进行区分普通结果集和分页结果集
	 * @return
	 */
	@Override
	public Object buildResult(RequestEntity requestEntity, int code, String message, Object data) {
//		// 分页结果
//		if (data instanceof PageResult) {
//			PageResult<?> pageResult = (PageResult<?>) data;
//			long total = pageResult.getTotal();
//			return new PageJsonBean(total, pageResult.getList());
//		}
//		if (code == JsonCodeConstants.SUCCESS.getCode()) {
//			return new JsonBean<>(200, message, data);
//		}
//		return new JsonBean<>(code, message, data);

		return new HashMap<String, Object>() {
			{
				put("code", code);
				put("msg", message);
				put("data", data);
			}
		};
	}


	/**
	 * 定义分页返回结果，该项会被封装在Json结果内，
	 * 此方法可以不覆盖，默认返回PageResult
	 */
	@Override
	public Object buildPageResult(RequestEntity requestEntity, Page page, long total, List<Map<String, Object>> data) {
		return new HashMap<String, Object>() {
			{
				put("total", total);
				put("rows", data);
			}
		};
	}

	@Override
	public Object buildException(RequestEntity requestEntity, Throwable throwable) {
		return buildResult(requestEntity, 500, "系统内部出现错误");
	}
}
