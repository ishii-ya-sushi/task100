package model;

public class Person {
    private String name;
    private int age;
    private String greeting;
    
    public Person() {
    }
    
 	public Person(String name, int age, String greeting) {
        this.name = name;
        this.age = age;
        this.greeting = greeting;
        } 

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
    public String getGreeting() {
		return greeting;
	}
	public void setGreeting(String greeting) {
		this.greeting = greeting;
	}
}