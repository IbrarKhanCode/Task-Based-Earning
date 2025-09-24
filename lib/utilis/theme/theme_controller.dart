import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController{

  var selectedTheme = 0.obs;

  ThemeMode get  themeMode{

    if(selectedTheme.value == 0){
      return ThemeMode.system;
    } else if(selectedTheme.value == 1){
      return ThemeMode.light;
    } else {
      return ThemeMode.dark;
    }

  }

  void changeTheme(int value){

    selectedTheme.value = value;
    Get.changeThemeMode(themeMode);

  }

}