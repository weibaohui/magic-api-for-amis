package org.ssssssss.example.provider;

import org.ssssssss.magicapi.adapter.Resource;
import org.ssssssss.magicapi.model.ApiInfo;
import org.ssssssss.magicapi.provider.ApiServiceProvider;
import org.ssssssss.magicapi.provider.GroupServiceProvider;

/**
 * 自定义脚本加解密、同理 FunctionServiceProvider 也是类似
 * @see ApiServiceProvider
 */
public class CustomApiServiceProvider extends ApiServiceProvider {

	public CustomApiServiceProvider(Resource workspace, GroupServiceProvider groupServiceProvider) {
		super(workspace, groupServiceProvider);
	}

	@Override
	public void unwrap(ApiInfo info) {
		String script = info.getScript();
		// 自行将script解密处理
		info.setScript(script);
	}

	@Override
	public void wrap(ApiInfo info) {
		String script = info.getScript();
		// 自行将script加密处理
		info.setScript(script);
	}
}
