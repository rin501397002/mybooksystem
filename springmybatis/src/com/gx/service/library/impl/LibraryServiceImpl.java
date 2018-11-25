package com.gx.service.library.impl;import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gx.dao.LibraryMapper;
import com.gx.po.Library;
import com.gx.service.library.LibraryService;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-17 下午9:33:38 
 * @version 1.0 
 */
@Transactional
@Service("libraryService")
public class LibraryServiceImpl implements LibraryService {

	@Autowired
	private LibraryMapper libraryMapper;
	
	@Override
	public List<Library> findAll() {
		// TODO Auto-generated method stub
		return this.libraryMapper.findAll();
	}

	@Override
	public List<Library> findByName(String name) {
		// TODO Auto-generated method stub
		return this.libraryMapper.findByName(name);
	}

	@Override
	public void saveLibrary(Library library) {
		// TODO Auto-generated method stub
		this.libraryMapper.insert(library);
	}

	@Override
	public Library findById(int id) {
		// TODO Auto-generated method stub
		return this.libraryMapper.selectByPrimaryKey(id);
	}

	@Override
	public void updateLibrary(Library library) {
		// TODO Auto-generated method stub
		this.libraryMapper.updateByPrimaryKey(library);
	}

	@Override
	public void deleteLibrary(int id) {
		// TODO Auto-generated method stub
		this.libraryMapper.deleteByPrimaryKey(id);
	}

}
