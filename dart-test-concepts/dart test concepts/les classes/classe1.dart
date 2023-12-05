class Spacecraft {
  String name;
  DateTime? launchDate;

  //Read-only non-final property

  int? get launchYear => launchDate?.year;

  //contructor,with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    //Initialisation code goes here
  }

  //Named constructor that forward to the default one.

  Spacecraft.unlaunched(String name) : this(name, null);

  //method

  void describe() {
    print('Spacecraft: $name');

    //type promotion doesn't work on getters.

    var launchDate = this.launchDate;

    if (launchDate != null) {
      // int years = DateTime().now().difference(launchDate).inDays ~/ 365;
      int years = DateTime(02, 02, 02).difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
    ;
  }
}

void main() {
  var voyager = Spacecraft('Voyager', DateTime(2002, 02, 19));
  voyager.describe();

  var voyager2 = Spacecraft.unlaunched('Voyager 2');
  voyager2.describe();
}
