package resume_user;

public class InfoList {
    public PersonalInfo personal_info;
    public EduInfo edu_info;
    public SkillInfo skill_info;
    private String liscense;
    private String awards;
    private String introduce;
    private String others;

    InfoList() {
        this.personal_info = new PersonalInfo();
        this.skill_info = new SkillInfo();
        this.edu_info = new EduInfo();
        this.liscense = null;
        this.awards = null;
        this.others = null;
        this.introduce = null;
        this.others = null;
    }

    public void setLicense(String license) {
        this.liscense = license;
    }

    public void setAwards(String awards) {
        this.awards = awards;
    }

    public void setIntroduce(String intorduce) {
        this.introduce = intorduce;
    }

    public void setOthers(String others) {
        this.others = others;
    }

    public String getIntroduce() {
        return this.introduce;
    }

    public String getOthers() {
        return this.others;
    }

    public String getLiscense() {
        return this.liscense;
    }

    public String getAwards() {
        return this.awards;
    }
}
