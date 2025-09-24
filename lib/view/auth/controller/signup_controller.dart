import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:task_base_earning/view/home/bottom_view.dart';

class SignupController extends GetxController{

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final RxBool isLoading = false.obs;
  FirebaseAuth auth = FirebaseAuth.instance;
  final RegExp regExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
  );




  Future<void> signUp() async {

    isLoading.value = true;

    try{

       UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

       User? user = userCredential.user;
       if(user != null){

         await FirebaseFirestore.instance.collection('users').doc(user.uid).set({

           'firstName' : firstNameController.text.trim(),
           'lastName' : lastNameController.text.trim(),
           'email' : emailController.text.trim(),
           'createAt' : DateTime.now(),

         });

       }

      isLoading.value = false;
      Get.snackbar(
        'Congratulation',
        'You are Signed Up',
        colorText: Colors.white,
        backgroundColor: Colors.green,
        animationDuration: Duration(milliseconds: 300),
        duration: Duration(seconds: 2),
        borderRadius: 8,
        borderColor: Colors.cyan,
        borderWidth: 2,
      );
      Get.offAll(BottomView());

    } on FirebaseAuthException catch (e){

      isLoading.value = false;
      String message = "Something went wrong";

      if (e.code == 'email-already-in-use') {
        message = "This email is already registered.";
      } else if (e.code == 'invalid-email') {
        message = "Invalid email format.";
      } else if (e.code == 'weak-password') {
        message = "Password is too weak. Try a stronger one.";
      } else if (e.message != null) {
        message = e.message!;
      }
      Get.snackbar(
        'SignUp Failed',
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

  Future<void> googleSignUp() async {

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

      await auth.signInWithCredential(credential);
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


  var firstName = ''.obs;
  var lastName = ''.obs;
  var email = ''.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;

  void setFirstName(String value){
    firstName.value = value;
  }

  void setLastName(String value){
    lastName.value = value;
  }

  void setEmail(String value){
    email.value = value;
  }

  void setPassword(String value){
    password.value = value;
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
    if(passwordController.text != value){
      return 'Password does not match';
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