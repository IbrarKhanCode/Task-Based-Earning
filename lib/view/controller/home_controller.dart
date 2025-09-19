import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  final RxInt currentIndex = 0.obs;

  void onTapped(int index){

    currentIndex.value = index;

  }

}