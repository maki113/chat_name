
class Microphone {
  //Instance variables, member variavles
  // this = this object/class
  String name ="";
  String color = "";
  int model = 0;

  //Syntactic sugar constructor
  Microphone(this.name, this.color, this.model);

  Microphone.initialize(){
    name = "Blue Yeti 2nd Edition";
    model = 67;

  }

  String get getName => name;
  set setName(String value) => name = value; //setter

  // Microphone(String name, String color, int model){
  //   this.name = name;
  //   this.color = color;
  //   this.model = model;
  //
  // }

  //methods
  //Microphone(this.name, this.color, this.model);
  void turnOn() {
    print("$name is on!");
  }

  bool isOn() => true;

  int modelNumber() => model;


  void turnOff() {
    print("$name is turned off!");
  }

  void setVolum() {
    print("$name with color: $color volume is up!");
  }

}



main(List<String> arguments) {

  var mic = new Microphone("Blue Teti","Silver Gray", 1345 ); // we are creating the actual obfect of type mic

  mic.setName = "New name";

  print(mic.getName);

  // var micSecond = new Microphone.initialize(); //using the initialize name constructor
  // print(micSecond.model);
  // print(micSecond.name);
  //
  //
  // print(mic); //.(dart9 access operator
  //
  // mic.turnOn();
  // mic.setVolum();
  // mic.turnOff();
  //
  // print(mic.isOn());
  // print(mic.modelNumber());

}
