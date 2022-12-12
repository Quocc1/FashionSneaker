package com.fashionsneaker.service;

import com.fashionsneaker.model.UserModel;
import com.fashionsneaker.paging.Pageble;
import java.util.List;

public interface IUserService {

    List<UserModel> findAll(Pageble pageble);

    UserModel findById(int id);

    UserModel findByEmailAndPassword(String email, String password);

    UserModel save(UserModel userModel);

    UserModel update(UserModel productModel);

    void delete(int id);

    int getTotalItem();

    int getTotalReceipt(int id);

    int getTotalMoneySpent(int id);

    UserModel changePassword(int id, String password);

    int checkExistEmail(String email);
}
