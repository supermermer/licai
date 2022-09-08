package crf.invest.entity.wechat;

import java.util.Date;

import crf.util.DateUtil;

/**
 * 客服聊天记录实体类
 * @author Administrator
 *
 */
public class KfMsgRecord {
	private long recordId;
	private String recordOpenid;
	private String recordOpercode;
	private String recordOpercodeDesc;
	private String recordText;
	private long recordTime;
	private Date recordTimeDate;
	private String recordWorker;
	private Date recordImportDate;
	
	//非数据库字段
	private String kfNickname;
//	private String recordTimeDateStr;
//	private String recordImportDateSrt;
	
	public long getRecordId() {
		return recordId;
	}
	public void setRecordId(long recordId) {
		this.recordId = recordId;
	}
	public String getRecordOpenid() {
		return recordOpenid;
	}
	public void setRecordOpenid(String recordOpenid) {
		this.recordOpenid = recordOpenid;
	}
	public String getRecordOpercode() {
		return recordOpercode;
	}
	public void setRecordOpercode(String recordOpercode) {
		this.recordOpercode = recordOpercode;
	}
	public String getRecordOpercodeDesc() {
		return recordOpercodeDesc;
	}
	public void setRecordOpercodeDesc(String recordOpercodeDesc) {
		this.recordOpercodeDesc = recordOpercodeDesc;
	}
	public String getRecordText() {
		return recordText;
	}
	public void setRecordText(String recordText) {
		if(recordText==null)
			recordText="";
		if(recordText.length()>10)
			this.recordText = (recordText.replace("\n", "")).substring(0, 10)+"....";
		else
			this.recordText =recordText.replace("\n", "");
	}
	public long getRecordTime() {
		return recordTime;
	}
	public void setRecordTime(long recordTime) {
		this.recordTimeDate = new Date(recordTime*1000);
		this.recordTime = recordTime;
	}
	public Date getRecordTimeDate() {
		return recordTimeDate;
	}
	public void setRecordTimeDate(Date recordTimeDate) {
		this.recordTimeDate = recordTimeDate;
	}
	public String getRecordWorker() {
		return recordWorker;
	}
	public void setRecordWorker(String recordWorker) {
		this.recordWorker = recordWorker;
	}
	public Date getRecordImportDate() {
		return recordImportDate;
	}
	public void setRecordImportDate(Date recordImportDate) {
		this.recordImportDate = recordImportDate;
	}
	public String getRecordTimeDateStr() {
		return DateUtil.dateToStr(recordTimeDate, "yyyy-MM-dd HH:mm:ss");
	}
	public String getRecordImportDateSrt() {
		return DateUtil.dateToStr(recordImportDate, "yyyy-MM-dd");
	}
	public String getKfNickname() {
		return kfNickname;
	}
	public void setKfNickname(String kfNickname) {
		this.kfNickname = kfNickname;
	}
	
}
