

main(List<String> arguments) {

    //Map
  var winners = {
    //key:value
    "first" : "Bill",
    "second":"Geroge",
    "third":"Bond",
  };

  var winnerSecond = {
    1:"Apollo",
    2:"Something",
    3:"Another"
  };

  var winnerThird = {
    "Winter":3,
    "Autum":1,
    "Spring":3
  };

  print(winners["second"]);

  winners.forEach((k, v) => print(k));

  var keys = winners.keys;
  print(keys);

  var values = winners.values;
  print(values);

}
