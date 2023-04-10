void main(List<String> args) {
  var nilai = 80;

  if (nilai > 90) {
    print('Nilai A');
  } else if (nilai >= 80) {
    print('Nilai B');
  }

  var planets = ['Earth', 'Mars', 'Mercurius', 'Venus'];

  for (final planet in planets) {
    print(planet);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  var year = 1977;
  while (year <= 2016) {
    print(year);
    year += 1;
  }
}
