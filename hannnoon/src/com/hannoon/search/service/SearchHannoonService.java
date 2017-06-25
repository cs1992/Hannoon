package com.hannoon.search.service;

import java.util.List;

import com.hannoon.search.model.*;

public interface SearchHannoonService {
	SearchResultListDto searchHannoon(String keyword);
}
