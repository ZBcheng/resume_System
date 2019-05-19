package resume_user;

public class InfoList {
    public PersonalInfo personal_info;
    public EduInfo edu_info;
    public SkillInfo skill_info;
    private String liscense;
    private String awards;

    public void setLicense(String license) {
        this.liscense = license;
    }

    public void setAwards(String awards) {
        this.awards = awards;
    }

    public String getLiscense() {
        return this.liscense;
    }

    public String getAwards() {
        return this.awards;
    }
}
