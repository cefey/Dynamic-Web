package com.example.golovlev.Models;

import java.util.Date;

public class Aggrement {
    private long id;
    private long personId;
    private long typeId;
    private long statusId;
    private String number;
    private String dateOpen;
    private String dateClose;
    private  StatusAggrement statusAggrement;


    // Конструктор
    public Aggrement(long id, long personId, long typeId, long statusId, String number, String dateOpen, String dateClose) {
        this.id = id;
        this.personId = personId;
        this.typeId = typeId;
        this.statusId = statusId;
        this.number = number;
        this.dateOpen = dateOpen;
        this.dateClose = dateClose;
    }

    // Геттеры и сеттеры для всех свойств
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getPersonId() {
        return personId;
    }

    public void setPersonId(long personId) {
        this.personId = personId;
    }

    public long getTypeId() {
        return typeId;
    }

    public void setTypeId(long typeId) {
        this.typeId = typeId;
    }

    public long getStatusId() {
        return statusId;
    }

    public void setStatusId(long statusId) {
        this.statusId = statusId;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getDateOpen() {
        return dateOpen;
    }

    public void setDateOpen(String dateOpen) {
        this.dateOpen = dateOpen;
    }

    public String getDateClose() {
        return dateClose;
    }

    public void setDateClose(String dateClose) {
        this.dateClose = dateClose;
    }

    // Переопределение метода toString() для удобного вывода информации о Agreement
    @Override
    public String toString() {
        return "Agreement{" +
                "id=" + id +
                ", personId=" + personId +
                ", typeId=" + typeId +
                ", statusId=" + statusId +
                ", number='" + number + '\'' +
                ", dateOpen=" + dateOpen +
                ", dateClose=" + dateClose +
                '}';
    }
}