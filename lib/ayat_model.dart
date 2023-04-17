class AyatModel {
  int? ayat;
  String? teks;

  AyatModel({this.ayat, this.teks});

  factory AyatModel.fromJson(Map<String, dynamic> js) {
    return AyatModel(
      ayat: js['numberInSurah'],
      teks: js['text'],
    );
  }

  compareTo(AyatModel dataAyat) {}
}
