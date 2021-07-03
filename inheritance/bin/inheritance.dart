
class Person {
  late String name, LastName, nationality ;
  late int age;

  void showName() {
    print(this.name);
  }

  void sayHello(){
    print("Hello");
  }

  void showNationality() {
    print("American");
  }

}

class Bonni extends Person{
  late String profession;

  void showProfession() => print(profession);

}

class Paul extends Person{
  late bool playGuitar;

  @override
  void sayHello() {
    // TODO: implement sayHello
    print("Ola");
  }

  @override
  void showNationality() {
    // TODO: implement showNationality
    print("Mozambican");
  }
}

main(List<String> arguments) {
  var bonni = new Bonni();
  bonni.name = "Bonni";
  bonni.profession = "Ballerina";

  bonni.showProfession();
  bonni.showName();
  bonni.sayHello();
  bonni.showNationality();

  var paul = new Paul();
  paul.name = "Paul";
  paul.age = 32;
  paul.playGuitar = true;

  paul.showName();
  print(paul.age);
  paul.sayHello();
  paul.showNationality();

}
