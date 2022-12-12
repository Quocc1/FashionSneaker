package com.fashionsneaker.service.impl;

import com.fashionsneaker.dao.IUserDAO;
import com.fashionsneaker.model.UserModel;
import com.fashionsneaker.service.IUserService;
import javax.inject.Inject;

public class UserService implements IUserService {

    @Inject
    private IUserDAO userDAO;

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
    public UserModel changePassword(int id, String password) {
        userDAO.changePassword(id, password);
        return userDAO.findById(id);
    }

    @Override
    public int checkExistEmail(String email) {
        return userDAO.checkExistEmail(email);
    }

}
