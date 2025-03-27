package com.ims.comparators;

import java.util.Comparator;

import com.ims.dtos.ProductWithCategorySupplierDTO;

public class SortByPrice implements Comparator<ProductWithCategorySupplierDTO>{

	@Override
	public int compare(ProductWithCategorySupplierDTO o1, ProductWithCategorySupplierDTO o2) {
		return o2.getPrice().compareTo(o1.getPrice());
	}

	
}
