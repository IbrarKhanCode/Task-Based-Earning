import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_base_earning/utilis/app_colors.dart';
import 'package:task_base_earning/view/auth/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Get.off(LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome To',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
            RichText(
                text: TextSpan(
                  text: 'TASK',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 30),
                  children: [
                    TextSpan(
                      text: 'BASE',
                      style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),
                    )
                  ]
                ))
          ],
        ),
      ),
    );
  }
}
