package com.fashionsneaker.service;

import com.fashionsneaker.model.UserModel;

public interface IUserService {

    UserModel findByEmailAndPassword(String email, String password);

    UserModel save(UserModel userModel);

    UserModel update(UserModel productModel);

    void delete(int id);

    UserModel changePassword(int id, String password);
    
    int checkExistEmail(String email);
}
