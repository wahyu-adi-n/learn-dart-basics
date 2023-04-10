import 'functions.dart';

void main() {
  var hasil = addNumber(10, 20);

  print(isOddNumber(hasil));

  var countries = ['Indonesia', 'India', 'Irlandia'];

  var countryWithContainsIn =
      countries.where((element) => element.contains('In'));
  countryWithContainsIn.forEach((element) => {print(element.toUpperCase())});
}
