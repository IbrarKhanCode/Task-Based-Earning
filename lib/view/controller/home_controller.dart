import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  final RxInt currentIndex = 0.obs;
  RxInt selectedIndex = 0.obs;

  void onTapped(int index){

    currentIndex.value = index;

  }

  void selectedContainer(int index){

    selectedIndex.value = index;

  }

}