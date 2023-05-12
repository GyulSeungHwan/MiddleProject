package com.yedam.user.mapper;


import java.util.List;

import com.yedam.user.domain.UserVO;

public interface UserMapper {
	public UserVO loginCheck(UserVO vo);
	public int addUser(UserVO vo);
	public Boolean checkPassword(UserVO vo);
    public int deleteUser(UserVO vo);
	public int modifyUser(UserVO vo);
	
	public List<UserVO> userList();

	public int updatePoint(UserVO vo);
}