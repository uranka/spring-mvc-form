package com.jelena.springform.model;

import org.hibernate.validator.constraints.CreditCardNumber;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.*;
import java.time.LocalDate;


/**
 * Created by Win10 on 10/9/2017.
 */
public class User {

    @Size(min=3, max=20)
    private String username;

    @Email
    @NotEmpty // default message is: darf nicht leer sein / must not be empty. Default is changed.
    private String email;

    //first character must be a letter and it must contain
    // at least 4 characters and no more than 15 characters
    @Pattern(regexp = "^[a-zA-Z]\\w{3,14}$")
    private String password;

    private String details;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    @Past // default message is: muss in der Vergangenheit liegen /must be a past date. Default is changed.
    private LocalDate birthDate;

    private Gender gender;

    private String country;

    private boolean nonSmoking;

    @CreditCardNumber
    private String ccNumber;

    private MultipartFile picture;

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

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
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

    public MultipartFile getPicture() {
        return picture;
    }

    public void setPicture(MultipartFile picture) {
        this.picture = picture;
    }
}
