import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_base_earning/utilis/app_colors.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
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
              SizedBox(height: h * .05,),
              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back,),
                  ),
                  Text('Personal Information',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                ],
              ),
              SizedBox(height: 20,),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/Profile.png'),
                radius: 40,
              ),
              SizedBox(height: 10,),
              Text('Mark Jonson',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14),),
              Text('jonson077@gmail.com',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('First Name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                ],
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Your First Name',
                  prefixIcon: Icon(Icons.person_outline,color: Colors.grey,),
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
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Last Name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                ],
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Last Name',
                  prefixIcon: Icon(Icons.person_outline,color: Colors.grey,),
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
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Email',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                ],
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'username555@gmail.com',
                  prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,),
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
              ),
              SizedBox(height: h * .3),
              Container(
                height: h * .06,
                width: w,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text('SAVE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
