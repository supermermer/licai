package crf.invest.entity.wechat;

import java.util.Date;

/**
 * 群发记录
 * @author Administrator
 *
 */
public class GroupSendRecord {
	private long gsRecordId;
	private String gsRecordMediaId;//上传图文消息的media_id
	private String gsRecordType;
	private long gsRecordCreateAt;
	private Date gsRecordCreateTime;
	private String gsRecordCreateId;
	private long gsRecordMsgId;
	
	//非数据库字段
	private String createName;
	
	public GroupSendRecord(){}
	
	public GroupSendRecord( String recordType,String recordMediaId,
			long recordCreateAt,String gsRecordCreateId) {
		this.gsRecordType = recordType;
		this.gsRecordMediaId = recordMediaId;
		this.gsRecordCreateAt = recordCreateAt;
		this.gsRecordCreateTime = new Date(recordCreateAt*1000);
		this.gsRecordCreateId = gsRecordCreateId;
	}

	public long getGsRecordId() {
		return gsRecordId;
	}

	public void setGsRecordId(long gsRecordId) {
		this.gsRecordId = gsRecordId;
	}

	public String getGsRecordMediaId() {
		return gsRecordMediaId;
	}

	public void setGsRecordMediaId(String gsRecordMediaId) {
		this.gsRecordMediaId = gsRecordMediaId;
	}

	public String getGsRecordType() {
		return gsRecordType;
	}

	public void setGsRecordType(String gsRecordType) {
		this.gsRecordType = gsRecordType;
	}

	public long getGsRecordCreateAt() {
		return gsRecordCreateAt;
	}

	public void setGsRecordCreateAt(long gsRecordCreateAt) {
		this.gsRecordCreateAt = gsRecordCreateAt;
	}

	public Date getGsRecordCreateTime() {
		return gsRecordCreateTime;
	}

	public void setGsRecordCreateTime(Date gsRecordCreateTime) {
		this.gsRecordCreateTime = gsRecordCreateTime;
	}

	public String getGsRecordCreateId() {
		return gsRecordCreateId;
	}

	public void setGsRecordCreateId(String gsRecordCreateId) {
		this.gsRecordCreateId = gsRecordCreateId;
	}

	public String getCreateName() {
		return createName;
	}

	public void setCreateName(String createName) {
		this.createName = createName;
	}

	public long getGsRecordMsgId() {
		return gsRecordMsgId;
	}

	public void setGsRecordMsgId(long gsRecordMsgId) {
		this.gsRecordMsgId = gsRecordMsgId;
	}
}	
