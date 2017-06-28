package com.hannoon.search.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.hannoon.search.model.SearchLogDto;
import com.hannoon.util.Log;
import com.hannoon.util.SearchConstance;
import com.hannoon.util.db.DBClose;
import com.hannoon.util.db.DBConnection;

public class SearchDaoImpl implements SearchDao {

	private static SearchDao searchDao;
	
	static {
		searchDao = new SearchDaoImpl();
	}
	
	private SearchDaoImpl(){
		
	}
	
	public static SearchDao getSearchDao() {
		return searchDao;
	}
	
	@Override
	public int updateHit(Map<String, String> map) {
		int count = 0;
		Log.log("searchdao call");
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.getConnection();
			StringBuffer sb = new StringBuffer();			
			sb.append("merge into search_log \n");
			sb.append("using dual \n");
			sb.append("on (keyword = ?) \n");
			sb.append("when matched then \n");
			sb.append("update set hit = hit + 1 \n");
			sb.append("when not matched then \n");
			sb.append("insert (id, date_time, keyword, hit) \n");
			sb.append("values (?, sysdate, ?,1) \n");
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, map.get(SearchConstance.KEYWROD));
			pstmt.setString(2, SearchConstance.USER_ID);
			pstmt.setString(3, map.get(SearchConstance.KEYWROD));

			Log.log(sb.toString() + "\n" + map.get(SearchConstance.KEYWROD) + ", " + map.get(SearchConstance.USER_ID) + ", " + map.get(SearchConstance.KEYWROD));
			count = pstmt.executeUpdate();
			Log.log("searchdao count : " + count);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e){
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
		
		return count;
	}

	@Override
	public List<SearchLogDto> searchKeyword(String keyword) {
		List<SearchLogDto> list = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBConnection.getConnection();
			StringBuffer sb = new StringBuffer();
			sb.append("select * \n");
			sb.append("from search_log  \n");
			sb.append("where case    \n");
			sb.append("         when keyword < 'ㄱ' then upper(substr(keyword, 1, 1))  \n");
			sb.append("         when ascii('ㄱ') <= ascii(keyword) and ascii(keyword)<= ascii('ㅎ') then keyword  \n");
			sb.append("         when keyword < '나' then 'ㄱ' \n");
			sb.append("         when keyword < '다' then 'ㄴ' \n");
			sb.append("         when keyword < '라' then 'ㄷ' \n");
			sb.append("         when keyword < '마' then 'ㄹ' \n");
			sb.append("         when keyword < '바' then 'ㅁ' \n");
			sb.append("         when keyword < '사' then 'ㅂ' \n");
			sb.append("         when keyword < '아' then 'ㅅ' \n");
			sb.append("         when keyword < '자' then 'ㅇ' \n");
			sb.append("         when keyword < '차' then 'ㅈ' \n");
			sb.append("         when keyword < '카' then 'ㅊ' \n");
			sb.append("         when keyword < '타' then 'ㅋ' \n");
			sb.append("         when keyword < '파' then 'ㅌ' \n");
			sb.append("         when keyword < '하' then 'ㅍ' \n");
			sb.append("         else 'ㅎ' \n");
			sb.append("   end = upper(?) \n");
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, keyword);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				SearchLogDto keywordDto = new SearchLogDto();
				keywordDto.setHit(rs.getInt("hit"));
				keywordDto.setKeyword(rs.getString("keyword"));

				list.add(keywordDto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}

		return list;
	}

}
