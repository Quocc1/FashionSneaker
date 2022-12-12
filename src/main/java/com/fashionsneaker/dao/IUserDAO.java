package com.fashionsneaker.dao;

import com.fashionsneaker.model.UserModel;
import com.fashionsneaker.paging.Pageble;
import java.util.List;

public interface IUserDAO extends GenericDAO<UserModel> {

    List<UserModel> findAll(Pageble pageable);

    UserModel findById(int id);

    UserModel findByUserNameAndPassword(String email, String password);

    int save(UserModel userModel);

    void update(UserModel userModel);

    void delete(int id);

    int getTotalItem();

    int getTotalReceipt(int id);

    int getTotalMoneySpent(int id);

    void changePassword(int id, String password);

    int checkExistEmail(String email);
}
