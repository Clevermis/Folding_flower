package com.clevermis.dao;

import com.mysql.jdbc.Connection;

import java.io.IOException;
import java.io.InputStream;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.SplittableRandom;
import java.util.Stack;

/**
 * @program: Folding_flower
 * @description: 操作数据库公共类
 * @author: Clevermis
 * @create: 2021-11-26 21:59
 **/
public class BaseDao {
    private static  String driver;
    private static  String url;
    private static  String username;
    private static  String password;

    static {
        Properties properties = new Properties();
        InputStream is = BaseDao.class.getClassLoader().getResourceAsStream("db.properties");
        try {
            properties.load(is);

        } catch (IOException e) {
            e.printStackTrace();
        }
        driver = properties.getProperty("driver");
        driver = properties.getProperty("url");
        driver = properties.getProperty("username");
        driver = properties.getProperty("password");
    }

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Connection connection = null;
        Class.forName(driver);
         connection = (Connection) DriverManager.getConnection("url", "username", "passworld");
        return connection;
    }

    public static ResultSet execute(Connection connection,String sql,Object[] params,ResultSet resultSet,PreparedStatement preparedStatement) throws SQLException {
        preparedStatement = connection.prepareStatement(sql );
        for (int i = 0; i < params.length; i++) {
            preparedStatement.setObject(i+1,params);
        }
         resultSet = preparedStatement.executeQuery(sql);
        return  resultSet;
    }

    public static int execute(Connection connection,String sql,Object[] params,PreparedStatement preparedStatement) throws SQLException {
        preparedStatement = connection.prepareStatement(sql );
        for (int i = 0; i < params.length; i++) {
            preparedStatement.setObject(i+1,params);
        }
        int UpdateRows= preparedStatement.executeUpdate();
        return  UpdateRows;
    }

    public static boolean closeresource (Connection connection , PreparedStatement preparedStatement , ResultSet resultSet){
        boolean flag = true;
        if(resultSet != null){
            try {
                resultSet.close();
                resultSet = null;
            } catch (SQLException e) {
                e.printStackTrace();
                flag = false;
            }
        }
        if(preparedStatement != null){
            try {
                preparedStatement.close();
                preparedStatement= null;
            } catch (SQLException e) {
                e.printStackTrace();
                flag = false;
            }
        }
        if(connection != null){
            try {
                connection.close();
                connection= null;
            } catch (SQLException e) {
                e.printStackTrace();
                flag = false;
            }
        }
        return flag;
    }


}
