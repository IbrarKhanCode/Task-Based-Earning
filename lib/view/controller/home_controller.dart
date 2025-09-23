import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  final RxInt currentIndex = 0.obs;
  RxInt selectedIndex = 0.obs;
  var selectedRadio = 0.obs;
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  final RegExp regExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
  );

  var firstName = ''.obs;
  var lastName = ''.obs;
  var email = ''.obs;

  void setFirstName(String value){
    firstName.value = value;
  }

  void setLastName(String value){
    lastName.value = value;
  }

  void setEmail(String value){
    email.value = value;
  }

  String? validateFirstName(String? value){

    if(value == null || value.isEmpty){
      return 'Enter Your First Name';
    }
    return null;
  }

  String? validateLastName(String? value){

    if(value == null || value.isEmpty){
      return 'Enter Your Last Name';
    }
    return null;
  }

  String? validateEmail(String? value){

    if(value == null || value.isEmpty){
      return 'Enter Your Email';
    }
    if(!regExp.hasMatch(value)){
      return 'Enter a Valid Email';
    }
    return null;
  }


  void onTapped(int index){
    currentIndex.value = index;
  }

  void selectedContainer(int index){
    selectedIndex.value = index;
  }

  void tapRadio(int value){

    selectedRadio.value = value;

  }

}