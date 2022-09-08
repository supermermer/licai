package crf.invest.entity.wechat;

/**
 * 图文消息单条  群发之后记录该数据
 * wehcat_gs_record -------- wechat_article 一对多
 * 只支持1-10条图文
 */
public class Article {
	private long artId;//自增id
	private String artTmi;//图文消息封面 (必填)
	private String artAuthor;//作者 
	private String artTitle;//标题 (必填)
	private String artCsu;//阅读原文后的连接
	private String artContent;//图文消息内容(必填)
	private String artDigest;//描述
	private String artScp;//是否显示封面 1显示  0不显示
	
	private long gsRecordId;//群发id（外键）
	
	public Article(){}
	
	public Article(String artTmi, String artAuthor,
			String artTitle, String artCsu, String artContent,
			String artDigest, String artScp, long gsRecordId) {
		this.artTmi = artTmi;
		this.artAuthor = artAuthor;
		this.artTitle = artTitle;
		this.artCsu = artCsu;
		this.artContent = artContent;
		this.artDigest = artDigest;
		this.artScp = artScp;
		this.gsRecordId = gsRecordId;
	}
	
	public long getArtId() {
		return artId;
	}
	public void setArtId(long artId) {
		this.artId = artId;
	}
	public String getArtTmi() {
		return artTmi;
	}
	public void setArtTmi(String artTmi) {
		this.artTmi = artTmi;
	}
	public String getArtAuthor() {
		return artAuthor;
	}
	public void setArtAuthor(String artAuthor) {
		this.artAuthor = artAuthor;
	}
	public String getArtTitle() {
		return artTitle;
	}
	public void setArtTitle(String artTitle) {
		this.artTitle = artTitle;
	}
	public String getArtCsu() {
		return artCsu;
	}
	public void setArtCsu(String artCsu) {
		this.artCsu = artCsu;
	}
	public String getArtContent() {
		return artContent;
	}
	public void setArtContent(String artContent) {
		this.artContent = artContent;
	}
	public String getArtDigest() {
		return artDigest;
	}
	public void setArtDigest(String artDigest) {
		this.artDigest = artDigest;
	}
	public String getArtScp() {
		return artScp;
	}
	public void setArtScp(String artScp) {
		this.artScp = artScp;
	}

	public long getGsRecordId() {
		return gsRecordId;
	}

	public void setGsRecordId(long gsRecordId) {
		this.gsRecordId = gsRecordId;
	}
}
