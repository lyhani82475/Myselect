package com.slxy.www.domain.po;

public class Application {


    private String applicationMajor;
    private String applicationName;
    private long applicationNumber;

    private String applicationTitle;
    private String applicationContent;
    private String applicationOpinion;

    public String getApplicationMajor() {
        return applicationMajor;
    }

    public void setApplicationMajor(String applicationMajor) {
        this.applicationMajor = applicationMajor;
    }

    public String getApplicationName() {
        return applicationName;
    }

    public void setApplicationName(String applicationName) {
        this.applicationName = applicationName;
    }

    public long getApplicationNumber() {
        return applicationNumber;
    }

    public void setApplicationNumber(long applicationNumber) {
        this.applicationNumber = applicationNumber;
    }

    public String getApplicationTitle() {
        return applicationTitle;
    }

    public void setApplicationTitle(String applicationTitle) {
        this.applicationTitle = applicationTitle;
    }

    public String getApplicationContent() {
        return applicationContent;
    }

    public void setApplicationContent(String applicationContent) {
        this.applicationContent = applicationContent;
    }

    public String getApplicationOpinion() {
        return applicationOpinion;
    }

    public void setApplicationOpinion(String applicationOpinion) {
        this.applicationOpinion = applicationOpinion;
    }
}
