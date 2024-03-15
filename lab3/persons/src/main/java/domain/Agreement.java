package domain;

import java.util.Date;

public class Agreement {
    private long id;
    private long personId;
    private long typeId;
    private long statusId;
    private String number;
    private Date dateOpen;
    private Date dateClose;

    // Конструктор
    public Agreement(long id, long personId, long typeId, long statusId, String number, Date dateOpen, Date dateClose) {
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

    public Date getDateOpen() {
        return dateOpen;
    }

    public void setDateOpen(Date dateOpen) {
        this.dateOpen = dateOpen;
    }

    public Date getDateClose() {
        return dateClose;
    }

    public void setDateClose(Date dateClose) {
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