// DART -> statically typed

void main() {
    // /* ------- VARIABLES -------------*/
    // int age = 21; // d_type var_name = value;
    
    // // dynamic variables
    // dynamic name = "Pavan";
    // print(name);
    // name = 21; // able to change the d_type
    // print(name);

    // // function calls
    // String greet = greeting();
    // age = getAge();

    // print(greet);
    // print(age);

    // /* ------------- LISTS -------------- */
    // List names = ['Pavan', 'Navap', 'Vapan'];
    // names.add("Pavanananda");
    // print(names);
    // names.remove("Vapan");
    // print(names);

    // // But as of now the list does not have a
    // // predefined datatype => all types of data can be added
    // List <int> ages = [21, 22, 23];

    // // creating objects
    // User userOne = User(); // instantiating a class (object)
    // print("${userOne.username} is of age ${userOne.age}");
    // userOne.login();

    User userTwo = User("Pavan", 21);
    print("${userTwo.username} is of age ${userTwo.age}");
    userTwo.login();

    SuperUser admin = SuperUser("ADMIN", 30);
    admin.login();
    admin.publish();
}

/* ---------------- FUNCTION ------------------- */

// // r_type func_name(parameters) {...}
// String greeting() {
//     return "Hello";
// }

// Arrow functions
String greeting() => "Hello";
int getAge() => 21;

/* ------------------ CLASSES -------------------- */
// Here we are creating a class i.e., 
// it is the definition or blueprint of an object
// object is created separately (check main)
class User {
    String username = "";
    int age = 0;

    // constructor
    // it is called when object is created
    User(String uname, int age) {
        // this refers to the current obj
        this.username = uname;
        this.age = age;
    }

    // class methods
    void login() {
        print("User ${username} logged in");
    }
}

// Inheritance
class SuperUser extends User {
    // SuperUser class does not have its own constructor
    // So we need to call the constructor of User so that
    // the username and age value of User get 
    // inherited in SuperUser class also
    SuperUser(String username, int age) : super(username, age);

    // publish is a new method for only the SuperUser
    // SuperUser has login and publish also
    void publish() {
        print("Published update");
    }
}