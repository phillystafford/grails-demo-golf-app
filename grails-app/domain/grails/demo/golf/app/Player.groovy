package grails.demo.golf.app

class Player {
    String firstName
    String lastName
    int handicap

    String nickName

    static constraints = {
        nickName nullable: true, unique: true
    }

    @Override
    public String toString() {
        return firstName + ' ' +
               lastName;
    }
}
