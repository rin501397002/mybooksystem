package com.gx.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gx.core.BaseController;
import com.gx.po.Library;
import com.gx.service.library.LibraryService;

/** 
 * @author 作者 : 刘东君
 * @date 创建时间：2016-10-17 下午5:05:32 
 * @version 1.0 
 */
@Controller
@RequestMapping("/libraryController")
public class LibraryController extends BaseController{
	@Autowired
	private LibraryService libraryService;
	
	private Library library;
	private String ids;
	
	@RequestMapping("/list")
	public String findAll(){
		List<Library> libraries=this.libraryService.findAll();
		request.setAttribute("libraries", libraries);
		return "/library/library_list";
	}
	@RequestMapping("/listByname")
	public String findByname(Library library){
		List<Library> libraries=this.libraryService.findByName(library.getLibraryname());
		request.setAttribute("libraries", libraries);
		return "/library/library_list";
	}
	@RequestMapping("/toadd")
	public String toadd(){
		
		return "/library/library_add";
	}
	@RequestMapping("/add")
	public String add(Library library){
		this.libraryService.saveLibrary(library);
		return findAll();
	}
	@RequestMapping("/toupdate")
	public String toupdate(Library library){
		library=this.libraryService.findById(library.getLibraryid());
		request.setAttribute("librarie", library);
		return "/library/library_update";
	}
	@RequestMapping("/update")
	public String update(Library library){
		this.libraryService.updateLibrary(library);
		return findAll();
	}
	@RequestMapping("/delete")
	public String delete(Library library){
		this.libraryService.deleteLibrary(library.getLibraryid());
		return findAll();
	}
	@RequestMapping("/delitem")
	public String delitem(String ids){
		String[] sts=ids.split(",");
		for (String sid:sts) {
			this.libraryService.deleteLibrary(Integer.parseInt(sid));
		}
		return findAll();
	}
	@RequestMapping("/toview")
	public String toview(Library library){
		library=this.libraryService.findById(library.getLibraryid());
		request.setAttribute("librarie", library);
		return "/library/library_view";
	}
	
	
}
