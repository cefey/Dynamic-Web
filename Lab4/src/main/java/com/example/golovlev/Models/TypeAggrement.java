package com.example.golovlev.Models;

public class TypeAggrement {
    private long id;
    private String type;

    private  Aggrement aggrement;

    // Конструктор
    public TypeAggrement(long id, String type,Aggrement aggrement ) {
        this.id = id;
        this.type = type;
        this.aggrement = aggrement;
    }
    public TypeAggrement(long id, String type) {
        this.id = id;
        this.type = type;
    }

    // Геттеры и сеттеры для всех свойств
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Aggrement getAggrement() {
        return aggrement;
    }

    public void setAggrement(Aggrement aggrement) {
        this.aggrement = aggrement;
    }

    // Переопределение метода toString() для удобного вывода информации о StatusAgreement
    @Override
    public String toString() {
        return "TypeAggrement:{" +
                "id=" + id +
                ", type='" + type + '\'' +
                '}';
    }
}