package com.javalec.util;

public class PagingUtil {
	public static int calculateTotalPages(int totalItems, int itemsPerPage) {
		if (itemsPerPage <= 0) {
			return 0;
		}
		return (int) Math.ceil((double) totalItems / itemsPerPage);
	}
}
