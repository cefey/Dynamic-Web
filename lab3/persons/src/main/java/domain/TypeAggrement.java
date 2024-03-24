package domain;

public class TypeAggrement {
    private long id;
    private String type;

    // Конструктор
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

    // Переопределение метода toString() для удобного вывода информации о StatusAgreement
    @Override
    public String toString() {
        return "TypeAggrement:{" +
                "id=" + id +
                ", type='" + type + '\'' +
                '}';
    }
}