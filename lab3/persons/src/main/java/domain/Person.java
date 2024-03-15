package domain;

import java.util.Date;

public class Person {
    private long id;
    private String inn;
    private String type;
    private String shifer;
    private Date registrationDate;

    // Конструктор
    public Person(long id, String inn, String type, String shifer, Date registrationDate) {
        this.id = id;
        this.inn = inn;
        this.type = type;
        this.shifer = shifer;
        this.registrationDate = registrationDate;
    }

    // Геттеры и сеттеры для всех свойств
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getInn() {
        return inn;
    }

    public void setInn(String inn) {
        this.inn = inn;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getShifer() {
        return shifer;
    }

    public void setShifer(String shifer) {
        this.shifer = shifer;
    }

    public Date getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Date registrationDate) {
        this.registrationDate = registrationDate;
    }

    // Переопределение метода toString() для удобного вывода информации о Person
    @Override
    public String toString() {
        return "Person{" +
                "id=" + id +
                ", inn='" + inn + '\'' +
                ", type='" + type + '\'' +
                ", shifer='" + shifer + '\'' +
                ", registrationDate=" + registrationDate +
                '}';
    }
}
