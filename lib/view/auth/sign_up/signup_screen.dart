import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_base_earning/utilis/app_colors.dart';
import 'package:task_base_earning/view/auth/controller/signup_controller.dart';
import 'package:task_base_earning/view/auth/login/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final controller = Get.put(SignupController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return PopScope(
      canPop: true,
     onPopInvokedWithResult: (didPop, result){
       if(didPop){
         controller.firstNameController.clear();
         controller.lastNameController.clear();
         controller.emailController.clear();
         controller.passwordController.clear();
         controller.confirmPasswordController.clear();
       }
     },
      child: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: h * 0.08),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text('Sign Up',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
                  ],
                ),
              ),
              SizedBox(height: h * 0.06),
              Form(
                key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('First Name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          controller: controller.firstNameController,
                          decoration: InputDecoration(
                            hintText: 'Enter Your First Name',
                            prefixIcon: Icon(Icons.person_outline,color: Colors.grey,size: 25,),
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w400),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.grey
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: AppColors.primaryColor,
                                )
                            ),
                          ),
                          onChanged: controller.setFirstName,
                          validator: controller.validateFirstName,
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('Last Name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          controller: controller.lastNameController,
                          decoration: InputDecoration(
                            hintText: 'Enter Your Last Name',
                            prefixIcon: Icon(Icons.person_outline,color: Colors.grey,size: 25,),
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w400),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.grey
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: AppColors.primaryColor,
                                )
                            ),
                          ),
                          onChanged: controller.setLastName,
                          validator: controller.validateLastName,
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('Email',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          controller: controller.emailController,
                          decoration: InputDecoration(
                            hintText: 'username555@gmail.com',
                            prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,size: 20,),
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w400),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.grey
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: AppColors.primaryColor,
                                )
                            ),
                          ),
                          onChanged: controller.setEmail,
                          validator: controller.validateEmail,
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          controller: controller.passwordController,
                          decoration: InputDecoration(
                            hintText: 'user@123',
                            prefixIcon: Icon(Icons.lock_open_rounded,color: Colors.grey,size: 20,),
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w400),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.grey
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: AppColors.primaryColor,
                                )
                            ),
                          ),
                          onChanged: controller.setPassword,
                          validator: controller.validatePassword,
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('Confirm Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          controller: controller.confirmPasswordController,
                          decoration: InputDecoration(
                            hintText: 'user@123',
                            prefixIcon: Icon(Icons.lock_open_rounded,color: Colors.grey,size: 20,),
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w400),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.grey
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: AppColors.primaryColor,
                                )
                            ),
                          ),
                          onChanged: controller.setConfirmPassword,
                          validator: controller.validateConfirmPassword,
                        ),
                        SizedBox(height: 20,),

                        Obx((){
                          return controller.isLoading.value ? CircularProgressIndicator(
                            color: AppColors.primaryColor,
                          )
                              : GestureDetector(
                            onTap: (){
                              if(_formKey.currentState!.validate()){
                                controller.signUp();
                              }
                            },
                            child: Container(
                              height: h * .06,
                              width: w,
                              decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Center(
                                child: Text('SIGN UP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                              ),
                            ),
                          );
                        }),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account?',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
                            SizedBox(width: 10,),
                            GestureDetector(
                                onTap: (){
                                  Get.to(LoginScreen());
                                },
                                child: Text('Login',style: TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.w500),)),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 1,
                              width: w * .22,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 5,),
                            Text('OR',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 16),),
                            SizedBox(width: 5,),
                            Container(
                              height: 1,
                              width: w * .22,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        GestureDetector(
                          onTap: (){
                            controller.googleSignUp();
                          },
                          child: Container(
                            height: h * .06,
                            width: w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: AppColors.primaryColor),
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 20,),
                                Image.asset('assets/images/google.png'),
                                SizedBox(width: w * 0.13,),
                                Text('Continue With Google',style: TextStyle(color: AppColors.primaryColor,fontSize: 16,fontWeight: FontWeight.w600),),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
