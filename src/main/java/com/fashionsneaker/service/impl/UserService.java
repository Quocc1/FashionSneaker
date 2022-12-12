package com.fashionsneaker.service.impl;

import com.fashionsneaker.dao.IUserDAO;
import com.fashionsneaker.model.UserModel;
import com.fashionsneaker.paging.Pageble;
import java.util.List;
import com.fashionsneaker.service.IUserService;
import javax.inject.Inject;

public class UserService implements IUserService {

    @Inject
    private IUserDAO userDAO;

    @Override
    public List<UserModel> findAll(Pageble pageble) {
        return userDAO.findAll(pageble);
    }

    @Override
    public UserModel findById(int id) {
        return userDAO.findById(id);
    }

    @Override
    public UserModel findByEmailAndPassword(String email, String password) {
        return userDAO.findByUserNameAndPassword(email, password);
    }

    @Override
    public UserModel save(UserModel userModel) {
        int newId = checkExistEmail(userModel.getEmail());
        if (newId > 0) {
            return null;
        }
        newId = userDAO.save(userModel);
        return userDAO.findById(newId);
    }

    @Override
    public UserModel update(UserModel userModel) {
        userDAO.update(userModel);
        return userDAO.findById(userModel.getId());
    }

    @Override
    public void delete(int id) {
        userDAO.delete(id);
    }

    @Override
    public int getTotalItem() {
        return userDAO.getTotalItem();
    }

    @Override
    public int getTotalReceipt(int id) {
        return userDAO.getTotalReceipt(id);
    }

    @Override
    public int getTotalMoneySpent(int id) {
        return userDAO.getTotalMoneySpent(id);
    }

    @Override
    public UserModel changePassword(int id, String password) {
        userDAO.changePassword(id, password);
        return userDAO.findById(id);
    }

    @Override
    public int checkExistEmail(String email) {
        return userDAO.checkExistEmail(email);
    }

}
