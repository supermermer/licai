package crf.invest.entity.wechat;

import java.util.Date;

import crf.util.DateUtil;

/**
 * 临时素材实体类
 * @author Administrator
 *
 */
public class Material {
	private Long matId;
	private String matMediaId;
	private String matType;
	private long matCreateAt;
	private Date matCreateTime;
	private String matCreateId;
	private String matUrl;
	private String matDesc;
	//非数据库字段
	private String matCreateName;
	
	public Material(){}
	public Material(String matMediaId, String matType,
			long matCreateAt, String matCreateId,
			String matUrl, String matDesc) {
		this.matMediaId = matMediaId;
		this.matType = matType;
		this.matCreateAt = matCreateAt;
		this.matCreateTime = new Date(matCreateAt*1000);
		this.matCreateId = matCreateId;
		this.matUrl = matUrl;
		this.matDesc = matDesc;
	}
	
	public Long getMatId() {
		return matId;
	}
	public void setMatId(Long matId) {
		this.matId = matId;
	}
	public String getMatMediaId() {
		return matMediaId;
	}
	public void setMatMediaId(String matMediaId) {
		this.matMediaId = matMediaId;
	}
	public String getMatType() {
		return matType;
	}
	public void setMatType(String matType) {
		this.matType = matType;
	}
	public long getMatCreateAt() {
		return matCreateAt;
	}
	public void setMatCreateAt(long matCreateAt) {
		this.matCreateTime = new Date(matCreateAt*1000);
		this.matCreateAt = matCreateAt;
	}
	public String getMatCreateId() {
		return matCreateId;
	}
	public void setMatCreateId(String matCreateId) {
		this.matCreateId = matCreateId;
	}
	public String getMatUrl() {
		return matUrl;
	}
	public void setMatUrl(String matUrl) {
		this.matUrl = matUrl;
	}
	public String getMatDesc() {
		return matDesc;
	}
	public void setMatDesc(String matDesc) {
		this.matDesc = matDesc;
	}
	public String getMatCreateName() {
		return matCreateName;
	}
	public void setMatCreateName(String matCreateName) {
		this.matCreateName = matCreateName;
	}
	public Date getMatCreateTime() {
		return matCreateTime;
	}
	public void setMatCreateTime(Date matCreateTime) {
		this.matCreateTime = matCreateTime;
	}
	public String getMatCreateTimeStr(){
		return DateUtil.dateToStr(matCreateTime, "yyyy-MM-dd HH:mm:ss");
	}
	
}
