package com.example.booboo.bmi;

/**
 * Created by BooBoo on 12/13/16.
 */

public class Websites {

    private String web;
    private String webURL;

    private void setWeb(Integer suggestWeb) {
        switch (suggestWeb) {
            case 0:
                web = "Healthy Ways to Gain Weight";
                webURL = "http://www.webmd.com/diet/features/how-to-gain-weight#1";
                break;
            case 1:
                web = "Yoga With Adriene";
                webURL = "https://www.youtube.com/user/yogawithadriene";
                break;
            case 2:
                web = "17 Healthy Ways to Lose weight";
                webURL = "http://www.cosmopolitan.com/health-fitness/a54100/lose-weight-fast/";
                break;
            case 3:
                web = "Extreme Obesity, and What You Can Do";
                webURL = "http://www.heart.org/HEARTORG/HealthyLiving/WeightManagement/Obesity/Extreme-Obesity-And-What-You-Can-Do_UCM_457018_Article.jsp#";
                break;
            default:
                web = "none";
                webURL = "https://www.google.com";
        }
    }

    public void setWebs(Integer suggestWeb){
        setWeb(suggestWeb);
    }
    public void setWebsURL(Integer suggestWeb){
        setWeb(suggestWeb);
    }
    public String getWeb(){
        return web;
    }
    public String getWebURL(){
        return webURL;
    }
}
