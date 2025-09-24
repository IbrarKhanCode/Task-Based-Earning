import 'package:cloud_firestore/cloud_firestore.dart';
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

  Future<void> updateProfile() async {

    try{

      User? user = auth.currentUser;
      if(user != null){
        await user.verifyBeforeUpdateEmail(emailController.text.trim());
        await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
          'email': emailController.text.trim(),
          'firstName': firstNameController.text.trim(),
          'lastName': lastNameController.text.trim(),
          'createAt': DateTime.now(),
        }, SetOptions(merge: true),
        );}
      Get.snackbar(
        'Congratulation',
        'You have updated the data',
        colorText: Colors.white,
        backgroundColor: Colors.green,
        animationDuration: Duration(milliseconds: 300),
        duration: Duration(seconds: 2),
        borderRadius: 8,
        borderColor: Colors.cyan,
        borderWidth: 2,
      );
      Get.back();

    }catch (e){

      Get.snackbar(
        'Error',
        e.toString(),
        colorText: Colors.white,
        backgroundColor: Colors.red,
        animationDuration: Duration(milliseconds: 300),
        duration: Duration(seconds: 2),
        borderRadius: 8,
        borderColor: Colors.cyan,
        borderWidth: 2,
      );

    }

  }

}