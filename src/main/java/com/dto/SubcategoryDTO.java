package com.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SubcategoryDTO {
	private String subCatId;
	private String title;
	
	public SubcategoryDTO(String subCatId, String title) {
        this.subCatId = subCatId;
        this.title = title;
    }
}
