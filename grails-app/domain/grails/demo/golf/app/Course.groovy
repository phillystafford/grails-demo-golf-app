package grails.demo.golf.app

class Course {
    String name

    static hasMany = [events: Event]

    static constraints = {
    }

    @Override
    public String toString() {
        return name;
    }
}
