package org.ssssssss.example.provider;

import org.ssssssss.magicapi.provider.ColumnMapperProvider;

/**
 * 自定义列名转换
 * https://ssssssss.org/guide/custom/column.html
 * @see org.ssssssss.magicapi.provider.ColumnMapperProvider
 */
public class CustomMapperProvider implements ColumnMapperProvider {

	@Override
	public String name() {
		return "custom";
	}

	@Override
	public String mapping(String columnName) {
		// 自定义逻辑
		// 列名转小写。
		return columnName.toLowerCase();
	}

	@Override
	public String unmapping(String name) {
		// 自定义逻辑实现将转换后的列名还原为转换前的列名
		return name;
	}
}
