package com.pojo.dao;

import com.pojo.model.LeiFengBang;;

public interface LFbangDao {
	/*
	 *好心人
	 */
	public void add (LeiFengBang lfbang);
	/*
	 * 查找雷锋榜是否有此人
	 */
	public LeiFengBang isExist(String kindleness);
	/*
     * 更新票数
     */
    public void update(LeiFengBang lfbang);
}
