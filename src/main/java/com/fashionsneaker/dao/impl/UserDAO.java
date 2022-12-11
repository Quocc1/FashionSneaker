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
    public void update(UserModel userModel) {
        StringBuilder sql = new StringBuilder("UPDATE [user] SET email = ?, address = ?,");
        sql.append(" full_name = ?, phone_number = ? WHERE id = ?");
        update(sql.toString(), userModel.getEmail(),
                userModel.getAddress(),
                userModel.getFull_name(),
                userModel.getPhone_number(),
                userModel.getId());
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM [user] WHERE id = ?";
        update(sql, id);
    }

    @Override
    public void changePassword(int id, String password) {
        String sql = "UPDATE [user] SET password = ? WHERE id = ?";
        update(sql, password, id);
    }

    @Override
    public int checkExistEmail(String email) {
        String sql = "SELECT count(*) FROM [user] WHERE email = ?";
        return count(sql, email);
    }

}
