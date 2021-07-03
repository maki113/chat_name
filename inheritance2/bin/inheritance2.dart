
class Location extends Object {
  late num lat, lng; //instance variables or member fields

  Location(this.lat, this.lng);

  //named constructor
  Location.create(this.lat, this.lng);
}
 class ElevatedLocation extends Location{
  late num elevation;
  ElevatedLocation(num lat, num lng, this.elevation) : super(lat, lng); //call Location() constructior

  @override
  String toString() {
    var result = "$lat $lng $elevation";
    return result;
  }

}



main(List<String> arguments) {

  String name = "Bonni";





  var elevated = new ElevatedLocation(23.89, -234.98, 98);
  print(elevated);

  //print("location=${elevated.lat}, ${elevated.lng}, ${elevated.elevation}");

}
