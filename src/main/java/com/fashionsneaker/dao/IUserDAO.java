package com.fashionsneaker.dao;

import com.fashionsneaker.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel> {

    UserModel findByUserNameAndPassword(String email, String password);
    UserModel findById(int id);
    int save(UserModel userModel);
    int checkExistEmail(String email);
}
