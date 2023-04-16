import 'classes.dart';

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(super.name, super.launchDate);

  @override
  void describeCrew() {
    // TODO: implement describeCrew
    print('Number of astronout in PilotedCraft is: $astronauts');
  }
}

void main() {
  var pc = PilotedCraft('Adi', null);
  pc.describeCrew();
}
