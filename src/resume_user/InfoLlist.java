package resume_user;

public class InfoLlist {
    public PersonalInfo personal_info;
    public EduInfo edu_info;
    private String liscense;
    private String language;
    private String awards;

    public void setLicense(String license) {
        this.liscense = license;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public void setAwards(String awards) {
        this.awards = awards;
    }

    public String getLiscense() {
        return this.liscense;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getAwards() {
        return this.awards;
    }
}
