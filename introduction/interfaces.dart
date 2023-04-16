import 'classes.dart';

class MockSpaceship implements Spacecraft {
  @override
  DateTime? launchDate;

  @override
  String name = '1';
  @override
  void describe() {
    // TODO: implement describe
    
  }

  @override
  // TODO: implement launchYear
  int? get launchYear => throw UnimplementedError();
  // ···
  
}
