package com.slxy.www.dao;

import com.slxy.www.domain.po.Comment;

import java.util.List;

public interface CommentDao {
    int addComment(Comment comment);

    int deleteCommentByNumber(long id);

    int updateComment(Comment comment);

    Comment queryByNumber(long id);

    List<Comment> queryAllComment();

    List<Comment> queryByNumberComment(long id);


}

