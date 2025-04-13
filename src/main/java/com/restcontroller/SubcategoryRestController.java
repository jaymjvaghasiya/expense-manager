package com.restcontroller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.dto.SubcategoryDTO;
import com.entity.SubcategoryEntity;
import com.repository.SubcategoryRepository;

@RestController
public class SubcategoryRestController {
	
	@Autowired
	SubcategoryRepository subcateRepo;
	
	@GetMapping("/getsubcatsbycats/{categoryId}")
	public @ResponseBody List<SubcategoryEntity> getCatWiseSubcats(@PathVariable String categoryId) {
		List<SubcategoryEntity> subcats = subcateRepo.findAllByCategory_CategoryId(categoryId);
		List<SubcategoryDTO> subcategoryDTOs = new ArrayList<>();
		
		for (SubcategoryEntity subcategory : subcats) {

            SubcategoryDTO dto = new SubcategoryDTO(subcategory.getSubCatId(), subcategory.getTitle());
            subcategoryDTOs.add(dto);
        }
		
		System.out.println("ssize : " + subcats.size());
		return subcats;
	}
}
