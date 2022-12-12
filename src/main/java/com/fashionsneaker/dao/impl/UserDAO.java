package com.fashionsneaker.dao.impl;

import com.fashionsneaker.dao.IUserDAO;
import com.fashionsneaker.mapper.UserMapper;
import com.fashionsneaker.model.UserModel;
import com.fashionsneaker.paging.Pageble;
import java.util.List;
import org.apache.commons.lang.StringUtils;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

    @Override
    public List<UserModel> findAll(Pageble pageble) {
        StringBuilder sql = new StringBuilder("SELECT * FROM [user] WHERE isAdmin = 0");
        if (pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName()) && StringUtils.isNotBlank(pageble.getSorter().getSortBy())) {
            sql.append(" ORDER BY " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy().toUpperCase() + "");
        }
        if (pageble.getOffset() != null && pageble.getLimit() != null) {
            sql.append(" OFFSET " + pageble.getOffset() + " ROWS FETCH NEXT " + pageble.getLimit() + " ROWS ONLY");
        }
        return query(sql.toString(), new UserMapper());
    }

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
    public int getTotalItem() {
        String sql = "SELECT count(*) FROM [user]";
        return count(sql);
    }

    @Override
    public int getTotalReceipt(int id) {
        String sql = "SELECT count(*) FROM receipt WHERE receipt.user_id = ?";
        return count(sql, id);
    }

    @Override
    public int getTotalMoneySpent(int id) {
        String sql = "SELECT sum(total_money) FROM receipt WHERE receipt.user_id = ?";
        return count(sql, id);
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
