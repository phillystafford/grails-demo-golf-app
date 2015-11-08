package grails.demo.golf.app

class Event {
    String title

    static belongsTo = [course: Course]

    static hasMany = [players: Player]

    static constraints = {
    }

    @Override
    public String toString() {
        return title + " at " + course?.name;
    }
}
