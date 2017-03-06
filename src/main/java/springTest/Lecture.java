package springTest;

public class Lecture {
    int week;
    int hour0;
    int minute0;
    int hour1;
    int minute1;
    String title;
    String color;
    String location;

    public Lecture(String title, int week, int hour0, int minute0, int hour1, int minute1, String color, String location) {
        this.title = title;
        this.week = week;
        this.hour0 = hour0;
        this.minute0 = minute0;
        this.hour1 = hour1;
        this.minute1 =  minute1;
        this.color = color;
        this.location = location;
    }


    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }


    public int getWeek() {
        return week;
    }

    public void setWeek(int week) {
        this.week = week;
    }

    public int getHour0() {
        return hour0;
    }

    public void setHour0(int hour0) {
        this.hour0 = hour0;
    }

    public int getMinute0() {
        return minute0;
    }

    public void setMinute0(int minute0) {
        this.minute0 = minute0;
    }

    public int getHour1() {
        return hour1;
    }

    public void setHour1(int hour1) {
        this.hour1 = hour1;
    }

    public int getMinute1() {
        return minute1;
    }

    public void setMinute1(int minute1) {
        this.minute1 = minute1;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }


    public String getLocation() {
        return location;
    }


    public void setLocation(String location) {
        this.location = location;
    }


    public int getStart() {
        return (hour0 - 9) * 60 + minute0;
    }

    public int getEnd() {
        return (hour1 - 9) * 60 + minute1;
    }

    public int getTotal() {
        return getEnd() - getStart();
    }

    public String getTimeLabel() {
        return String.format("%02d:%02d ~ %02d:%02d", hour0, minute0, hour1, minute1);
    }

}
