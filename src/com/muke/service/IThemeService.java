package com.muke.service;

import java.util.List;

import com.muke.Model.Theme;
import com.muke.util.Page;

/**
 * 主题业务层接口
 * 
 * @author Administrator
 *
 */
public interface IThemeService {
	int add(Theme theme);

	int delete(int theid);

	List getAll();

	Page query(String key, Page page);
}
