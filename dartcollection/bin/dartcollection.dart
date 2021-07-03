class Person {
  late String name;

  Person(this.name);

}


main(List<String> arguments) {

  var james = new Person("James");
  var shelia = new Person("Shelia");
  var gina = new Person("Gina");

  var list = [1,2,13,24,10, 56];
  var onlyStrings = <String>[];

  var personList = <Person>[];
  personList.add(james);
  personList.add(shelia);
  personList.add(gina);

  for (int i = 0; i < personList.length; i++ ) {
    print(personList[i].name);
  }


  onlyStrings.add("Paulo");
  onlyStrings.add("James");


  // print(list.length);
  // print(list[list.length -1]);

  for (int i = 0; i < onlyStrings.length; i++ ) {
    print(onlyStrings[i]);
  }

  for (int i = 0; i < list.length; i++) {
    if (list[i] % 2 == 0) print("${list[i]} is multiple of 2");
    else print("Index $i contains ${list[i]} and is not multiple of 2");

  }

}

