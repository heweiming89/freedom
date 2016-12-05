package cn.heweiming.freedom.bean;

import java.util.Date;

import cn.heweiming.freedom.enums.Gender;

public class Person {

	private String name;
	private int age;
	private Gender gender;
	private int height;
	private double weight;
	private Date birthday;
	private String mobilePhone;
	private Double income;
	private String nation;
	private boolean marital;

	public int getAge() {
		return age;
	}

	public Date getBirthday() {
		return birthday;
	}

	public Gender getGender() {
        return gender;
    }

	public int getHeight() {
		return height;
	}


	public Double getIncome() {
		return income;
	}

	public boolean isMarital() {
        return marital;
    }

    public void setMarital(boolean marital) {
        this.marital = marital;
    }

    public String getMobilePhone() {
		return mobilePhone;
	}

	public String getName() {
		return name;
	}

	public String getNation() {
		return nation;
	}

	public String getStringData() {
		return "aa";
	}

	public double getWeight() {
		return weight;
	}

	public void setAge(int age) {
		this.age = age;
	}


	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public void setHeight(int height) {
		this.height = height;
	}

	public void setIncome(Double income) {
		this.income = income;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

    @Override
    public String toString() {
        return "Person [name=" + name + ", age=" + age + ", gender=" + gender + ", height=" + height + ", weight=" + weight + ", birthday=" + birthday
                + ", mobilePhone=" + mobilePhone + ", income=" + income + ", nation=" + nation + "]";
    }

	

}
