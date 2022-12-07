package com.fashionsneaker.dao.impl;

import com.fashionsneaker.dao.IUserDAO;
import com.fashionsneaker.mapper.UserMapper;
import com.fashionsneaker.model.UserModel;
import java.util.List;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

    @Override
    public UserModel findByUserNameAndPassword(String email, String password) {
        String sql = ("SELECT * FROM [user] WHERE email = ? AND password = ?");
        List<UserModel> users = query(sql, new UserMapper(), email, password);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public UserModel findById(int id) {
        String sql = "SELECT * FROM [user] WHERE id = ?";
        List<UserModel> users = query(sql, new UserMapper(), id);
        return users.isEmpty() ? null : users.get(0);
    }
    
    @Override
    public int save(UserModel userModel) {
        String sql = "INSERT INTO [user](email, full_name, password, isAdmin) VALUES(?, ?, ?, ?)";
        return insert(sql, userModel.getEmail(),
                userModel.getFull_name(),
                userModel.getPassword(),
                0);
    }
    
    @Override
    public int checkExistEmail(String email) {
        String sql = "SELECT count(*) FROM [user] WHERE email = ?";
        return count(sql, email);
    }

}
