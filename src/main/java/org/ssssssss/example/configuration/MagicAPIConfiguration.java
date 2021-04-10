package org.ssssssss.example.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.ssssssss.example.interceptor.CustomRequestInterceptor;
import org.ssssssss.example.interceptor.CustomUIAuthorizationInterceptor;
import org.ssssssss.example.provider.*;
import org.ssssssss.example.scripts.CustomFunction;
import org.ssssssss.example.scripts.CustomFunctionExtension;
import org.ssssssss.example.scripts.CustomModule;
import org.ssssssss.magicapi.adapter.Resource;
import org.ssssssss.magicapi.config.MagicDynamicDataSource;
import org.ssssssss.magicapi.provider.GroupServiceProvider;
import org.ssssssss.magicapi.provider.PageProvider;

import javax.sql.DataSource;

/**
 * magic-api 配置类
 * 以下只配置了多数据源
 * 其它如果有需要可以自行放开 // @Bean 注释查看效果
 */
@Configuration
public class MagicAPIConfiguration {

	/**
	 * 配置多数据源
	 *
	 * @see MagicDynamicDataSource
	 */
	@Bean
	public MagicDynamicDataSource magicDynamicDataSource(DataSource dataSource) {
		MagicDynamicDataSource dynamicDataSource = new MagicDynamicDataSource();
		dynamicDataSource.setDefault(dataSource); // 设置默认数据源
		dynamicDataSource.add("slave", dataSource);
		return dynamicDataSource;
	}


	/**
	 * 配置自定义JSON结果
	 */
	// @Bean
	public CustomJsonValueProvider customJsonValueProvider() {
		return new CustomJsonValueProvider();
	}

	/**
	 * 配置分页获取方式
	 */
	// @Bean
	public PageProvider pageProvider() {
		return new CustomPageProvider();
	}

	/**
	 * 自定义UI界面鉴权
	 */
	// @Bean
	public CustomUIAuthorizationInterceptor customUIAuthorizationInterceptor() {
		return new CustomUIAuthorizationInterceptor();
	}

	/**
	 * 自定义请求拦截器（鉴权）
	 */
	// @Bean
	public CustomRequestInterceptor customRequestInterceptor() {
		return new CustomRequestInterceptor();
	}

	/**
	 * 自定义SQL缓存
	 */
	// @Bean
	public CustomSqlCache customSqlCache() {
		return new CustomSqlCache();
	}

	/**
	 * 自定义函数
	 */
	// @Bean
	public CustomFunction customFunction() {
		return new CustomFunction();
	}

	/**
	 * 自定义方法扩展
	 */
	// @Bean
	public CustomFunctionExtension customFunctionExtension() {
		return new CustomFunctionExtension();
	}

	/**
	 * 自定义模块
	 */
	// @Bean
	public CustomModule customModule() {
		return new CustomModule();
	}

	/**
	 * 自定义脚本语言
	 */
	// @Bean
	public CustomLanguageProvider customLanguageProvider() {
		return new CustomLanguageProvider();
	}

	/**
	 * 自定义列名转换
	 */
	// @Bean
	public CustomMapperProvider customMapperProvider() {
		return new CustomMapperProvider();
	}

	/**
	 * 自定义接口脚本加解密
	 */
	// @Bean
	public CustomApiServiceProvider customApiServiceProvider(Resource resource, GroupServiceProvider groupServiceProvider) {
		return new CustomApiServiceProvider(resource, groupServiceProvider);
	}

}
