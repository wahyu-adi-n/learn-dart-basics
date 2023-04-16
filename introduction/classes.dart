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

class Spacecraft {
  String name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;
  Spacecraft(this.name, this.launchDate) {}

  Spacecraft.unlaunched(String name) : this(name, null);

  void describe() {
    print('Spacecraft: $name');
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

class Movie {
  String movieName;
  DateTime? movieReleasedDate;

  int? get movieReleaseYear => movieReleasedDate?.year;

  Movie(this.movieName, this.movieReleasedDate) {}

  Movie.unreleased(String movieName) : this(movieName, null);

  void info() {
    print('Movie Name: $movieName');

    var movieReleasedDate = this.movieReleasedDate;

    if (movieReleasedDate != null) {
      int years = DateTime.now().difference(movieReleasedDate).inDays ~/ 365;
      print("Released: $movieReleaseYear ($years years ago)");
    } else {
      print('Movie is unreleased!');
    }
  }
}

void main(List<String> args) {
  // String first_args = args[0];
  // int second_args = int.parse(args[1]);
  // var mhs1 = Mahasiswa(first_args, second_args);
  // mhs1.describe();

  // var mhs2 = Mahasiswa.laliTahunLahir("Raden Mas");
  // mhs2.describe();

  // var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  // voyager.describe();

  // var voyager3 = Spacecraft.unlaunched('Voyager III');
  // voyager3.describe();
  
  var m1 = Movie('Voyager I', DateTime(1977, 9, 5));
  m1.info();

  var m2 = Movie.unreleased('Voyager III');
  m2.info();
}
