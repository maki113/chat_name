

abstract class Animal {
  void breath(); // an abstract method

  void makeNoise() {
    print("Making anima noises!");
  }

}

class TVShow implements IsFunny {
  late String name;

  @override
  void makePeopleLaught() {
    print("TV show is funny and makes people laugh!");
  }
}

class Comedian extends Person implements IsFunny{
  Comedian(String name, String nationality) : super(name, nationality);

  @override
  void makePeopleLaught() {
    print("Comedian making people laugh!");
  }

}

abstract class IsFunny {
  void makePeopleLaught(); //abstract method
}

class Person implements Animal{
  late String name, nationality;

  Person(this.name, this.nationality);

  @override
  void breath() {
    print("Person breathing through nostrils!");
  }

  @override
  void makeNoise() {
    print("Person shouting!");
  }

  @override
  String toString() =>"$name $nationality";
}

main(List<String> arguments) {

  var jenny = new Person("Jenny", "Jamaican");
  print(jenny);

}
