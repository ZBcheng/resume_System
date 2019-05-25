package resume_user;

public class InfoList {
    private String name;
    private String birthday;
    private String gender;
    private String website;
    private String city;
    private String email;
    private String phone;
    private String school;
    private String major;
    private String language;
    private String frameworks;
    private String liscense;
    private String awards;
    private String introduce;
    private String others;

    InfoList(String name, String gender, String email, String phone, String birthday, String city, String website, String school, String major, String language, String frameworks, String award, String introduce, String others) {


        this.setName(name);
        this.setGender(gender);
        this.setEmail(email);
        this.setPhone(phone);
        this.setBirthday(birthday);
        this.setCity(city);
        this.setWebsite(website);

        this.setSchool(school);
        this.setMajor(major);

        this.setLanguage(language);
        this.setFrameworks(frameworks);

        this.setAwards(award);
        this.setIntroduce(introduce);
        this.setOthers(others);

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


    public void setName(String name) {
        this.name = name;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getName() {
        return this.name;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public String getCity() {
        return this.city;
    }

    public String getGender() {
        return this.gender;
    }

    public String getEmail() {
        return this.email;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getWebsite() {
        return this.website;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getSchool() {
        return this.school;
    }

    public String getMajor() {
        return this.major;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public void setFrameworks(String frameworks) {
        this.frameworks = frameworks;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getFrameworks() {
        return this.frameworks;
    }
}
