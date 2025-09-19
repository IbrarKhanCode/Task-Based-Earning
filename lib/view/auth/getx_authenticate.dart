import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxAuthenticate extends GetxController{

  //Login Authentication
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final RxBool checkBox = false.obs;

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController2.dispose();
    passwordController2.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  void clearFields(){

    emailController.clear();
    passwordController.clear();
    firstNameController.clear();
    lastNameController.clear();
    emailController2.clear();
    passwordController2.clear();
    confirmPasswordController.clear();

  }

  var email = ''.obs;
  var password = ''.obs;

  void setEmail(String value){
    email.value = value;
  }

  void setPassword(String value){
    password.value = value;
  }

  void setCheckBox(bool value){
    checkBox.value = value;
  }

  String? validateEmail(String? value){

    if(value == null || value.isEmpty){
      return 'Enter Your Email';
    }
    if(!value.contains('@')){
      return 'Enter a Valid Email';
    }
    return null;
  }

  String? validatePassword(String? value){

    if(value == null || value.isEmpty){
      return 'Enter Your Password';
    }
    if(value.length < 6){
      return 'Password must be at least 6 digits';
    }
    return null;
  }


  // Signup Authentication

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController2 = TextEditingController();
  final passwordController2 = TextEditingController();
  final confirmPasswordController = TextEditingController();

  var firstName = ''.obs;
  var lastName = ''.obs;
  var email2 = ''.obs;
  var password2 = ''.obs;
  var confirmPassword = ''.obs;

  void setFirstName(String value){
    firstName.value = value;
  }

  void setLastName(String value){
    lastName.value = value;
  }

  void setEmail2(String value){
    email2.value = value;
  }

  void setPassword2(String value){
    password2.value = value;
  }

  void setConfirmPassword(String value){
    confirmPassword.value = value;
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

  String? validateConfirmPassword(String? value){

    if(value == null || value.isEmpty){
      return 'Re-Enter Your Password';
    }
    if(passwordController2.text != value){
      return 'Password does not match';
    }
    return null;
  }

}

