package cn.heweiming.freedom.bean;

import java.util.Date;

public class Person {

	private String name;
	private int age;
	private String gender;
	private int height;
	private double weight;
	private Date birthday;
	private String mobilePhone;
	private Double income;
	private String nation;

	public int getAge() {
		return age;
	}

	public Double getIncome() {
		return income;
	}

	public void setIncome(Double income) {
		this.income = income;
	}

	public Date getBirthday() {
		return birthday;
	}

	public String getGender() {
		return gender;
	}

	public int getHeight() {
		return height;
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

	public double getWeight() {
		return weight;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setHeight(int height) {
		this.height = height;
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

	public String getStringData() {
		return "aa";
	}

	@Override
	public String toString() {
		return "Person [name=" + name + ", age=" + age + ", gender=" + gender + ", height=" + height + ", weight="
				+ weight + ", birthday=" + birthday + ", mobilePhone=" + mobilePhone + ", income=" + income
				+ ", nation=" + nation + "]";
	}

}
