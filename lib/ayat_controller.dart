import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AyatController extends GetxController {
  var indexAyat = "".obs;
  var idSurah = "".obs;
  var namaSurah = "".obs;

  var listBookmark = [].obs;
  var ayatBookmark = "".obs;

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    idSurah.value = prefs.getString("idSurah")!;
    namaSurah.value = prefs.getString("namaSurah")!;
    ayatBookmark.value = prefs.getString("ayat")!;
    listBookmark.value = jsonDecode(prefs.getString("listBookmark")!);
  }

  tapAyat(int index) {
    indexAyat.value = "$index";
  }
}
