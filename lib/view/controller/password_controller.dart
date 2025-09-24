import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordController extends GetxController{

  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  var oldPassword = ''.obs;
  var newPassword = ''.obs;
  var confirmPassword = ''.obs;

  void setOldPassword(String value){
    oldPassword.value = value;
  }

  void setNewPassword(String value){
    newPassword.value = value;
  }

  void setConfirmPassword(String value){
    confirmPassword.value = value;
  }

  String? validateOldPassword(String? value){

    if(value == null || value.isEmpty){
      return 'Enter Your Password';
    }
    if(value.length < 6){
      return 'Password must be at least 6 digits';
    }
    return null;
  }

  String? validateNewPassword(String? value){

    if(value == null || value.isEmpty){
      return 'Enter Your Password';
    }
    if(value.length < 6){
      return 'Password must be at least 6 digits';
    }
    return null;
  }

  String? validateConfirmPassword(String? value){

    if(value == null || value.isEmpty){
      return 'Enter Your Password';
    }
    if(newPasswordController.text != value){
      return 'Password does not match';
    }
    if(value.length < 6){
      return 'Password must be at least 6 digits';
    }
    return null;
  }

  Future<void> updatePassword() async {

    try{
      User? user = auth.currentUser;
      if(user != null){
        final credential = EmailAuthProvider.credential(
            email: user.email!,
            password: oldPasswordController.text.trim()
        );
        await user.reauthenticateWithCredential(credential);
        await user.updatePassword(confirmPasswordController.text.trim());
        Get.snackbar(
          'Success',
          'Password has updated successfully',
          colorText: Colors.white,
          backgroundColor: Colors.green,
          animationDuration: Duration(milliseconds: 300),
          duration: Duration(seconds: 2),
          borderRadius: 8,
          borderColor: Colors.cyan,
          borderWidth: 2,
        );
        Future.delayed(Duration(seconds: 3),(){
          Get.back();
        });
      }

    }catch (e) {
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