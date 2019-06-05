package com.slxy.www.service.impl;

import com.slxy.www.dao.CommentDao;
import com.slxy.www.domain.po.Comment;
import com.slxy.www.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentDao commentDao;

    @Override
    public int addComment(Comment comment) {
        return commentDao.addComment(comment);
    }

    @Override
    public int deleteCommentByNumber(long id) {
        return commentDao.deleteCommentByNumber(id);
    }

    @Override
    public int updateComment(Comment comment) {
        return commentDao.updateComment(comment);
    }

    @Override
    public Comment queryByNumber(long id) {
        return commentDao.queryByNumber(id);
    }

    @Override
    public List<Comment> queryAllComment() {
        return commentDao.queryAllComment();
    }

    @Override
    public List<Comment> queryByNumberComment(long id) {
        return commentDao.queryByNumberComment(id);
    }



}
