package crf.invest.entity.wechat;

/**
 * 客服聊天记录统计报表
 * @author Administrator
 *
 */
public class KfMsgReport {
	private String kfAccount;//客服账号
	private String kfNickname;//客服昵称
	private long replyTimes;//被动回复次数
	private long accordTimes;//主动发起次数
	private long allSend;//发送消息条数
	
	public long getReplyTimes() {
		return replyTimes;
	}
	public void setReplyTimes(long replyTimes) {
		this.replyTimes = replyTimes;
	}
	public long getAccordTimes() {
		return accordTimes;
	}
	public void setAccordTimes(long accordTimes) {
		this.accordTimes = accordTimes;
	}
	public long getAllSend() {
		return allSend;
	}
	public void setAllSend(long allSend) {
		this.allSend = allSend;
	}
	public String getKfAccount() {
		return kfAccount;
	}
	public void setKfAccount(String kfAccount) {
		this.kfAccount = kfAccount;
	}
	public String getKfNickname() {
		return kfNickname;
	}
	public void setKfNickname(String kfNickname) {
		this.kfNickname = kfNickname;
	}
}
