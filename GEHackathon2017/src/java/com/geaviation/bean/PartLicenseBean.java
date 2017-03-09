/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geaviation.bean;

/**
 *
 * @author richa
 */
public class PartLicenseBean {
 
    private String part_id;
   private String country;
   private String license_no;
   private String part_name;
   private String expTag;
   private String licFlag;
   private String partOwner;
   private String partCosignee;
   private String reciepientName;
   private String reciepientAddress;
   private String partQty;
   private String costPerPart;
   private String expirationDate;

    public PartLicenseBean() {
    }

    public String getPart_id() {
        return part_id;
    }

    public void setPart_id(String part_id) {
        this.part_id = part_id;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getLicense_no() {
        return license_no;
    }

    public void setLicense_no(String license_no) {
        this.license_no = license_no;
    }

    public String getPart_name() {
        return part_name;
    }

    public void setPart_name(String part_name) {
        this.part_name = part_name;
    }

    public String getExpTag() {
        return expTag;
    }

    public void setExpTag(String expTag) {
        this.expTag = expTag;
    }

    public String getLicFlag() {
        return licFlag;
    }

    public void setLicFlag(String licFlag) {
        this.licFlag = licFlag;
    }

    public String getPartOwner() {
        return partOwner;
    }

    public void setPartOwner(String partOwner) {
        this.partOwner = partOwner;
    }

    public String getPartCosignee() {
        return partCosignee;
    }

    public void setPartCosignee(String partCosignee) {
        this.partCosignee = partCosignee;
    }

    public String getReciepientName() {
        return reciepientName;
    }

    public void setReciepientName(String reciepientName) {
        this.reciepientName = reciepientName;
    }

    public String getReciepientAddress() {
        return reciepientAddress;
    }

    public void setReciepientAddress(String reciepientAddress) {
        this.reciepientAddress = reciepientAddress;
    }

    public String getPartQty() {
        return partQty;
    }

    public void setPartQty(String partQty) {
        this.partQty = partQty;
    }

    public String getCostPerPart() {
        return costPerPart;
    }

    public void setCostPerPart(String costPerPart) {
        this.costPerPart = costPerPart;
    }

    public String getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(String expirationDate) {
        this.expirationDate = expirationDate;
    }
   
   
}
