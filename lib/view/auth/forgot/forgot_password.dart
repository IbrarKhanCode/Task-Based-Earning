import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_base_earning/utilis/app_colors.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
              SizedBox(height: h * 0.06),
              Row(
                children: [
                  IconButton(
                      onPressed: (){
                        Get.back();
                      },
                      icon: Icon(Icons.arrow_back)),
                  Text('Forgot Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
                ],
              ),
              SizedBox(height: h * 0.06),
              Container(
                height: h * .1,
                width: w * .2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/logo.png')),
                ),
              ),
              SizedBox(height: h * 0.06),
              Text('Request Reset Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
              SizedBox(height: 10,),
              Text(textAlign: TextAlign.center,'Please enter your registered email Address\n'
                'to send OTP through message',style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w500),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Email',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                ],
              ),
              SizedBox(height: 10,),
              TextFormField(
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
              ),
              SizedBox(height: h * .37,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: h * .06,
                  width: w,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text('RESET PASSWORD',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
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
