package com.fashionsneaker.service;

import com.fashionsneaker.model.UserModel;

public interface IUserService {

    UserModel findByEmailAndPassword(String email, String password);
    UserModel save(UserModel userModel);
    int checkExistEmail(String email);
}
