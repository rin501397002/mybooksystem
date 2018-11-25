package com.gx.service.library;import java.util.List;

import com.gx.po.Library;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-17 下午9:33:22 
 * @version 1.0 
 */

public interface LibraryService {
	
	public List<Library> findAll();
	
	public List<Library> findByName(String name);
	
	public void saveLibrary(Library library);
	
	public Library findById(int id);
	
	public void updateLibrary(Library library);
	
	public void deleteLibrary(int id);
}
