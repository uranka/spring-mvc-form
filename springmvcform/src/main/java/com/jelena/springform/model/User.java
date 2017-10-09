package com.jelena.springform.model;

/**
 * Created by Win10 on 10/9/2017.
 */
public class User {
    private String username;
    private String email;
    private String password;
    private String details;
    private Gender gender;
    private String country;
    private boolean nonSmoking;
    private String ccNumber;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public boolean isNonSmoking() {
        return nonSmoking;
    }

    public void setNonSmoking(boolean nonSmoking) {
        this.nonSmoking = nonSmoking;
    }

    public String getCcNumber() {
        return ccNumber;
    }

    public void setCcNumber(String ccNumber) {
        this.ccNumber = ccNumber;
    }
}
