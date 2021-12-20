package com.sp.mango.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.mango.common.dao.CommonDAO;
import com.sp.mango.member.Business;
import com.sp.mango.member.MemberAddr;

@Service("mypage.mypageService")
public class MypageServiceImpl implements MypageService {
	@Autowired	
	private CommonDAO dao;
	
	@Override
	public MannerProfile readMannerProfile(String userId) throws Exception {
		MannerProfile dto = null;
		
		try {
			dto = dao.selectOne("mypage.getMannerProfile", userId);
		} catch (Exception e) {
			throw e;
		}
		
		return dto;
	}
	
	@Override
	public void insertMannerProfile(String userId) throws Exception {
		try {
			dao.insertData("mypage.insertMannerProfile",userId);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
	}

	@Override
	public List<MemberAddr> listMemberAddr(String userId) throws Exception {
		List<MemberAddr> list = null;
		
		try {
			list = dao.selectList("mypage.listAddr", userId);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
		return list;
	}

	@Override
	public Integer businessDuplCheck(String userId) throws Exception {
		int result = 0;
		Map<String, Object> map = new HashMap<String, Object>();
		
		try {
			map.put("chkWay", "userId");
			map.put("userParam", userId);
			
			result = dao.selectOne("member.busnDuplCheck",map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
		return result;
	}

	@Override
	public Business readBusiness(String userId) throws Exception {
		Business dto = null;
		
		try {
			dto = dao.selectOne("mypage.readBusiness",userId);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
		
		return dto;
	}

	@Override
	public List<PickedUser> listPickedUser(String userId) throws Exception {
		List<PickedUser> list = null;
		
		try {
			list = dao.selectList("mypage.listPickedUser",userId);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
		
		return list;
	}

	@Override
	public List<BlockedUser> listBlockedUser(String userId) throws Exception {
		List<BlockedUser> list = null;
		
		try {
			list = dao.selectList("mypage.listBlockedUser",userId);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
		
		return list;
	}

	@Override
	public List<Keyword> listKeyword(String userId) throws Exception {
		List<Keyword> list = null;
		
		try {
			list = dao.selectList("mypage.listKeyword",userId);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
		
		return list;
	}

	@Override
	public int myPickCount(Map<String, Object> map) throws Exception {
		int result = 0;
		
		try {
			result = dao.selectOne("mypage.myPickCount", map);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
		
		return result;
	}

	@Override
	public List<PickedUser> listMyPickedUser(Map<String, Object> map) throws Exception {
		List<PickedUser> list = null;
		
		try {
			list = dao.selectList("mypage.listMyPickedUser",map);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
		
		return list;
	}

	@Override
	public void deleteMySelection(Map<String, Object> map) throws Exception {
		try {
			dao.deleteData("mypage.deleteMySelection",map);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
	}

	@Override
	public String readUserIdByNickName(String userNickName) throws Exception {
		String userId = null;
		
		try {
			userId = dao.selectOne("mypage.readUserIdByNickName",userNickName);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
		
		return userId;
	}

	@Override
	public void insertPickedUser(Map<String, Object> map) throws Exception {
		try {
			dao.insertData("mypage.insertPickedUser",map);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
	}

	@Override
	public int myBlockCount(Map<String, Object> map) throws Exception {
		int result = 0;
		try {
			result = dao.selectOne("mypage.myBlockCount",map);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
		return result;
	}

	@Override
	public List<BlockedUser> listMyBlockedUser(Map<String, Object> map) throws Exception {
		List<BlockedUser> list = null;
		
		try {
			list = dao.selectList("mypage.listMyBlockedUser",map);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
		
		return list;
	}

	@Override
	public void insertBlockedUser(Map<String, Object> map) throws Exception {
		try {
			dao.insertData("mypage.insertBlockedUser",map);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
	}

	@Override
	public int myKeywordCount(Map<String, Object> map) throws Exception {
		int result = 0;
		
		try {
			result = dao.selectOne("mypage.myKeywordCount",map);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
		
		return result;
	}

	@Override
	public List<Keyword> listMyKeyword(Map<String, Object> map) throws Exception {
		List<Keyword> list = null;
		
		try {
			list = dao.selectList("mypage.listMyKeyword",map);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
		
		return list;
	}

	@Override
	public void insertKeyword(Map<String, Object> map) throws Exception {
		try {
			dao.insertData("mypage.insertKeyword",map);
		} catch (Exception e) {
			e.printStackTrace(); throw e;
		}
	}

}
