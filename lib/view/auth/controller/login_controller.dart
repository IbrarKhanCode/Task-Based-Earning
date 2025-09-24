import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:task_base_earning/view/home/bottom_view.dart';

class LoginController extends GetxController{

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final RxBool checkBox = false.obs;
  final RxBool isLoading = false.obs;
  FirebaseAuth auth = FirebaseAuth.instance;
  final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
  );


  Future<void> login() async {
    isLoading.value = true;
    try{

      await auth.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
      isLoading.value = false;
      Get.snackbar(
        'Congratulation',
        'You are Logged In',
        colorText: Colors.white,
        backgroundColor: Colors.green,
        animationDuration: Duration(milliseconds: 300),
        duration: Duration(seconds: 2),
        borderRadius: 8,
        borderColor: Colors.cyan,
        borderWidth: 2,
      );
      Get.offAll(BottomView());

    } on FirebaseAuthException catch(e){
      isLoading.value = false;
      String message = 'Something Went Wrong';

      if(e.code == 'user-not-found'){
        message = 'No User Found For That Email';
      }
      else if(e.code == 'wrong-password'){
        message = 'Wrong Password Provider';
      }
      else if(e.message != null){
        message = e.message!;
      }
      Get.snackbar(
        'Login Failed',
        message,
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

  Future<void> googleSignIn() async {

   try{

    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if(googleUser == null){

      Get.snackbar(
        'Cancelled',
        'Sign-in canceller by User',
        colorText: Colors.white,
        backgroundColor: Colors.red,
        animationDuration: Duration(milliseconds: 300),
        duration: Duration(seconds: 2),
        borderRadius: 8,
        borderColor: Colors.cyan,
        borderWidth: 2,
      );
      return;
    }

    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

      UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      User? user = userCredential.user;
      if(user != null){
        await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
          'email' : user.email,
          'createAt' : DateTime.now(),
        }); SetOptions(merge: true);
      }
    Get.snackbar(
      'Congratulation',
      'You have successfully SignIn with Google',
      colorText: Colors.white,
      backgroundColor: Colors.green,
      animationDuration: Duration(milliseconds: 300),
      duration: Duration(seconds: 2),
      borderRadius: 8,
      borderColor: Colors.cyan,
      borderWidth: 2,
    );
    Get.offAll(BottomView());

   } catch (e){

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
    if(!emailRegex.hasMatch(value)){
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

}