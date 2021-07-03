import 'package:test_func/test_func.dart' as test_func;

var myOutsideVar = "Outside Var";

main(List<String> arguments) {
  // print(sayHello("James", "Kealy"));
  //
  // print(yourAge("Nina", "Hey", 34));

  print(myOutsideVar);

  insideFunction(){
    var agentName = "Bond";

    //myOutsideVar = "Hello there";
    print("From inside is : $myOutsideVar");

     innerFunction(){
       agentName = "something";
       print(myOutsideVar);
     }


  }



}


insideFunction(){

  myOutsideVar = "James";
  print("From inside is : $myOutsideVar");
}



String sayHello(String name, String lastName, [var age]) => "Hello $name "
    "$lastName $age years old.";

String yourAge(String name, String lastName, [var age]) {
  var finalResult = "$name $lastName";
  if (age != num){
    finalResult = "$finalResult is $age!";
  }
  else if (age == null){
    finalResult = "$finalResult doesn't want to tell their age!";
  }
  return finalResult;
}


// main(List<String> arguments) {
//   print('Hello world: ${test_func.calculate()}!');
//   print(getName());
//
//
//   var name = showName();
//   print("Hello ${showName()}");
//   //doSomething();
// }
//
//
//
//
// String showName() {
//   return "Hello From ShowName!";
// }
//
// String getName() => "James Bond"; // => exper == {return expression; }
//
//
// void doSomething(){
//
//   print("Hello Functions!");
//   sayMyName();
// }
//
// sayMyName() {
//   print("Paulo");
//   var name = "Paulo";
//   if (name.contains("P")) {
//     print("Hoorray!");
//   }else print("Nay!");
// }