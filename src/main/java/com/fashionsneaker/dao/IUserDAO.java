package com.fashionsneaker.dao;

import com.fashionsneaker.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel> {

    UserModel findByUserNameAndPassword(String email, String password);

    UserModel findById(int id);

    int save(UserModel userModel);

    void update(UserModel userModel);

    void delete(int id);
    
    void changePassword(int id, String password);

    int checkExistEmail(String email);
}
