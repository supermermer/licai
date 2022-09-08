package crf.invest.entity.wechat;

import java.util.Date;

import crf.util.DateUtil;

/**
 * 已关注微信用户信息
 * @author Administrator
 *
 */
public class WechatAttention {
	private long attId;
	private String attOpenId;
	private String attNickname;
	private String attSex;
	private String attCity;
	private String attProvince;
	private String attCountry;
	private String attHeadImgUrl;//头像路径
	private long attSubscribeTime;//用户关注时间，为时间戳。如果用户曾多次关注，则取最后关注时间
	private String attUnionid;
	private String attGroupId;
	private Date attSubscribeTimedate;
	
	public long getAttId() {
		return attId;
	}
	public void setAttId(long attId) {
		this.attId = attId;
	}
	public String getAttOpenId() {
		return attOpenId;
	}
	public void setAttOpenId(String attOpenId) {
		this.attOpenId = attOpenId;
	}
	public String getAttNickname() {
		return attNickname;
	}
	public void setAttNickname(String attNickname) {
		this.attNickname = attNickname;
	}
	public String getAttSex() {
		return attSex;
	}
	public void setAttSex(String attSex) {
		this.attSex = attSex;
	}
	public String getAttCity() {
		return attCity;
	}
	public void setAttCity(String attCity) {
		this.attCity = attCity;
	}
	public String getAttProvince() {
		return attProvince;
	}
	public void setAttProvince(String attProvince) {
		this.attProvince = attProvince;
	}
	public String getAttCountry() {
		return attCountry;
	}
	public void setAttCountry(String attCountry) {
		this.attCountry = attCountry;
	}
	public String getAttHeadImgUrl() {
		return attHeadImgUrl;
	}
	public void setAttHeadImgUrl(String attHeadImgUrl) {
		this.attHeadImgUrl = attHeadImgUrl;
	}
	public long getAttSubscribeTime() {
		return attSubscribeTime;
	}
	public void setAttSubscribeTime(long attSubscribeTime) {
		this.attSubscribeTime = attSubscribeTime;
	}
	public String getAttUnionid() {
		return attUnionid;
	}
	public void setAttUnionid(String attUnionid) {
		this.attUnionid = attUnionid;
	}
	public String getAttGroupId() {
		return attGroupId;
	}
	public void setAttGroupId(String attGroupId) {
		this.attGroupId = attGroupId;
	}
	public Date getAttSubscribeTimedate() {
		return attSubscribeTimedate;
	}
	public void setAttSubscribeTimedate(Date attSubscribeTimedate) {
		this.attSubscribeTimedate = attSubscribeTimedate;
	}
	public String getAttAddress() {
		return this.attCountry+this.attProvince+this.attCity;
	}
	public String getAttSubscribeTimedateStr(){
		return DateUtil.dateToStr(attSubscribeTimedate, "yyyy-MM-dd HH:mm:ss");
	}
}
