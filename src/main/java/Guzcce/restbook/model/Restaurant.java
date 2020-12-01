package Guzcce.restbook.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table
public class Restaurant {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;
    private String phone;
    private String address;
    private String description;
    private String image;
    private float averageRate;
    private boolean verified;
    private Date createDate;



    public Restaurant(){

    }

    public Restaurant(Long id, String name, String phone, String address, String description, String image, float averageRate, boolean verified, Date createDate) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.description = description;
        this.image = image;
        this.averageRate = averageRate;
        this.verified = verified;
        this.createDate = createDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public float getAverageRate() {
        return averageRate;
    }

    public void setAverageRate(float averageRate) {
        this.averageRate = averageRate;
    }

    public boolean isVerified() {
        return verified;
    }

    public void setVerified(boolean verified) {
        this.verified = verified;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}