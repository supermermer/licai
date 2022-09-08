package crf.invest.entity.wechat;

import java.util.Date;

import crf.util.DateUtil;

/**
 * 客服pojo
 * @author Administrator
 *
 */
public class KfAccount {
	private long kfPId;
	/*
	 * 完整客服账号，格式为：账号前缀@公众号微信号，账号前缀最多10个字符，
	 * 必须是英文或者数字字符。如果没有公众号微信号，
	 * 请前往微信公众平台设置。
	 */
	private String kf_account;
	/*
	 * 客服昵称，最长6个汉字或12个英文字符
	 */
	private String nickname;
	/*
	 * 客服账号登录密码，格式为密码明文的32位加密MD5值
	 */
	private String password;
	
	private String kfCreateId;
	
	private String createname;
	private Date kfCreateTime;
	
	public KfAccount(){}
	
	public KfAccount(String kf_account,String nickname,String password){
		this.kf_account = kf_account;
		this.nickname = nickname;
		this.password = password;
	}
	
	public String getKf_account() {
		return kf_account;
	}
	public void setKf_account(String kf_account) {
		this.kf_account = kf_account;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCreatename() {
		return createname;
	}
	public void setCreatename(String createname) {
		this.createname = createname;
	}
	public Date getKfCreateTime() {
		return kfCreateTime;
	}
	public void setKfCreateTime(Date kfCreateTime) {
		this.kfCreateTime = kfCreateTime;
	}
	public long getKfPId() {
		return kfPId;
	}
	public void setKfPId(long kfPId) {
		this.kfPId = kfPId;
	}
	public String getKfCreateId() {
		return kfCreateId;
	}
	public void setKfCreateId(String kfCreateId) {
		this.kfCreateId = kfCreateId;
	}
	public String getKfCreateTimeStr() {
		return DateUtil.dateToStr(kfCreateTime, "yyyy-MM-dd HH:mm:ss");
	}
}
