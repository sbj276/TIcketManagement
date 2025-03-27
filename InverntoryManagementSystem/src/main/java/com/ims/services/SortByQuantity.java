package com.ims.services;

import java.util.Comparator;

import com.ims.dtos.ProductWithCategorySupplierDTO;

public class SortByQuantity implements Comparator<ProductWithCategorySupplierDTO> {

	@Override
	public int compare(ProductWithCategorySupplierDTO o1, ProductWithCategorySupplierDTO o2) {
		return o2.getQuantity()-o1.getQuantity();
	}

}
