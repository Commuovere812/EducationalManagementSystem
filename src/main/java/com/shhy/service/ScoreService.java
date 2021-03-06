package com.shhy.service;

import com.shhy.domain.Score;
import com.shhy.domain.ScoreSCT;

import java.util.List;

public interface ScoreService {
    Integer insert(Score score);//插入一条新的记录 insert into user (username,password) values (xxx,xxx)
    Integer delete(Integer cid,Integer sid);//删除一条记录  delete from user where id=xxx;
    Integer update(Score score );//更新一条记录  update user set username=xxxx,password=xxxxx,id=xxxx where id=xxx
    List<ScoreSCT> findAll(ScoreSCT scoreSCT);

}
