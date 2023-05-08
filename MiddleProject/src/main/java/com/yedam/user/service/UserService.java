package com.yedam.user.service;

import javax.servlet.http.HttpServletRequest;


import com.yedam.user.domain.UserVO;

public interface UserService {
    public UserVO loginCheck(String UserId, String UserPw);
    public boolean addUser(UserVO user);
    boolean checkPassword(String userId, String password);
    public boolean deleteUser(UserVO user);

}
