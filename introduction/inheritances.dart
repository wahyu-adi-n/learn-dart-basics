import 'classes.dart';

class Orbiter extends Spacecraft {
  double altitude;
  Orbiter(super.name, super.launchDate, this.altitude);

  @override
  void describe() {
    print('Spacecraft: $name');
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
    print('Altitude: $altitude');
  }
}

void main() {
  var orbit = Orbiter('Orbitasi', DateTime(2022, 10, 11), 2.0);
  orbit.describe();
}
