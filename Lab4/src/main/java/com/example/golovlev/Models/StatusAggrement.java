package com.example.golovlev.Models;

public class StatusAggrement {
    private long id;
    private String status;

    private  Aggrement aggrement;

    // Конструктор

    public StatusAggrement(long id, String status,Aggrement aggrement ) {
        this.id = id;
        this.status = status;
        this.aggrement =aggrement;
    }
    public StatusAggrement(long id, String status) {
        this.id = id;
        this.status = status;
    }

    // Геттеры и сеттеры для всех свойств
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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
        return "StatusAggrement:{" +
                "id=" + id +
                ", status='" + status + '\'' +
                '}';
    }
}