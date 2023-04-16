var name = 'Wahyu Adi Nugroho';
var bornYear = 2000;
var weight = 70.03;

var uang = 1039;
var jumAnak = 20;
var hitung = uang ~/ jumAnak;

var favoriteFoods = ['Bakso', 'Mie Ayam', 'Sate'];

var nilai = {
  'Matematika': 100,
  'IPA': 90,
  'Bahasa': 89,
};

void main() {
  print("Name: ${name}");
  print("Born Yearn: ${bornYear}");
  print("Weight: ${weight}");

  print("List of foods: ");
  for (var food in favoriteFoods) {
    print("Food ${food}");
  }

  print("Daftar Nilai: ");
  for (var nil in nilai.entries) {
    print("Mapel: ${nil.key} => ${nil.value}");
  }

  print('Uang / 20 Anak: $hitung');
}
