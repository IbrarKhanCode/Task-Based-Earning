import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_base_earning/utilis/app_colors.dart';
import 'package:task_base_earning/view/auth/getx_authenticate.dart';
import 'package:task_base_earning/view/auth/sign_up/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final GetxAuthenticate controller = Get.put(GetxAuthenticate());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: h * 0.08),
              Row(
                children: [
                  Text('Login',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
                ],
              ),
              SizedBox(height: h * 0.06),
              Container(
                height: h * .1,
                width: w * .2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage('assets/images/login_logo.png')),
                ),
              ),
              SizedBox(height: h * .1,),
              Form(
                key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Email',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        controller: controller.emailController,
                        decoration: InputDecoration(
                          hintText: 'Enter Email',
                          prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,size: 20,),
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w400),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Colors.grey
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
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
                          hintText: 'Enter Password',
                          prefixIcon: Icon(Icons.lock_open_rounded,color: Colors.grey,size: 20,),
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w400),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                  color: Colors.grey
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
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
                          Obx((){
                            return Checkbox(
                                activeColor: AppColors.primaryColor,
                                value: controller.checkBox.value,
                                onChanged: (val){
                                  controller.setCheckBox( val ?? false);
                                });
                          }),

                          Text('Remember me',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
                          Spacer(),
                          Text( 'Forgot Password',style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.primaryColor,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w500),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){
                          if(_formKey.currentState!.validate()){
                            Get.snackbar('Congratulation', 'You have Logged In');
                          }else{
                            Get.snackbar('Validation', 'Validation Required');
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
                            child: Text('LOG IN',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account?',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Get.to(SignupScreen());
                    },
                      child: Text('Sign up',style: TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.w500),)),
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
              Container(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
