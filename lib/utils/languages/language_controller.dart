// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String LANGUAGE_CODE_RTL = 'languageCode';
//languages code
const String ENGLISH = 'en';
const String ARABIC = 'ar';

//get Locale using language code
Locale locale(String languageCode) {
  // print(languageCode);
  switch (languageCode) {
    case ENGLISH:
      return const Locale(ENGLISH, 'US');
    case ARABIC:
      return const Locale(ARABIC, 'SA');
    default:
      return const Locale(ENGLISH, 'SA');
  }
}

class LanguageController extends GetxController {
  int languageId = 1;
  @override
  void onInit() async {
    await getLanguage();
    super.onInit();
  }

  //update language to shared preference
  // updateLas

  switchLanguage() async {
    var currentLanguage = Get.locale;

    if (currentLanguage == const Locale(ENGLISH, 'US')) {
      await updateToArabic();
      // languageId = 3;
      // updateInvoiceLanguage(const Locale(ARABIC, 'SA'));
    }
    if (currentLanguage == const Locale(ARABIC, 'SA')) {
      await updateToEnglish();
      // languageId = 1;
      // updateInvoiceLanguage(const Locale(ENGLISH, 'US'));
    }
    update(['language']);
    update();
  }

  updateToArabic() async {
    languageId = 3;
    Get.updateLocale(locale(ARABIC));
    SharedPreferences preference = await SharedPreferences.getInstance();
    await preference.setString(LANGUAGE_CODE_RTL, ARABIC);
    update(['language']);
    update();
  }

  updateToEnglish() async {
    languageId = 1;
    Get.updateLocale(locale(ENGLISH));
    SharedPreferences preference = await SharedPreferences.getInstance();
    await preference.setString(LANGUAGE_CODE_RTL, ENGLISH);
    update(['language']);
    update();
  }

  //get language from shared preference
  Future<Locale> getLocale() async {
    SharedPreferences preference = await SharedPreferences.getInstance();

    String languageCode = preference.getString(LANGUAGE_CODE_RTL) ?? ENGLISH;
    if (languageCode == ENGLISH) {
      languageId = 1;
    } else {
      languageId = 3;
    }
    update();
    update(['language']);
    return locale(languageCode);
  }

  Future getLanguage() async {
    await getLocale().then((locale) => Get.updateLocale(locale));
    update(['language']);
    // return Get.locale ?? locale(ENGLISH);
  }
}
//<Locale>
