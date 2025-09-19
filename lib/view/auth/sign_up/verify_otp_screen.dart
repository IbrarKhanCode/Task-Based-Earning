import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_base_earning/utilis/app_colors.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {




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
                  Text('OTP Verification',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
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
              Text('Email Verification',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
              SizedBox(height: 10,),
              Text(textAlign: TextAlign.center,'We have sent you an OTP on your email, please\n'
                'enter in these fields to get verified',style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w500),),
              SizedBox(height: 20,),
              PinCodeTextField(
                  appContext: context,
                  length: 4,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeColor: AppColors.primaryColor,
                  inactiveColor: Colors.grey
                ),
              ),
              SizedBox(height: h * .33,),
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
                    child: Text('VERIFY',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: h * .06,
                  width: w,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Center(
                    child: Text('RESEND',style: TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.w600,fontSize: 16),),
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
