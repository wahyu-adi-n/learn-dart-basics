class Mahasiswa {
  String nama;
  int? tahunLahir;

  Mahasiswa(this.nama, this.tahunLahir) {}

  Mahasiswa.laliTahunLahir(String nama) : this(nama, null);

  void describe() {
    print('Mahasiswa: $nama');

    var tahunLahir = this.tahunLahir;
    if (tahunLahir != null) {
      int umur = DateTime.now().year - tahunLahir;
      print('Umur: $umur');
    } else {
      print('Unknown your age!');
    }
  }
}

void main(List<String> args) {
  String first_args = args[0];
  int second_args = int.parse(args[1]);
  var mhs1 = Mahasiswa(first_args, second_args);
  mhs1.describe();

  var mhs2 = Mahasiswa.laliTahunLahir("Raden Mas");
  mhs2.describe();
}
