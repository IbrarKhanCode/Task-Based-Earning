import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_base_earning/view/profile/personal_info_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
                  Text('Settings',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
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
              GestureDetector(
                onTap: (){
                  Get.to(PersonalInfoScreen());
                },
                child: Container(
                  height: h * 0.07,
                  width: w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                      Image.asset('assets/images/person.png'),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text('Personal information',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14),),
                          Text('First name, last name, & email',style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w500),),

                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: h * 0.07,
                width: w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Image.asset('assets/images/security.png'),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text('Password & Security',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14),),
                        Text('Change & forget your account password',style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w500),),

                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: h * 0.07,
                width: w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Image.asset('assets/images/theme.png'),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text('Appearance',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14),),
                        Text('Light Mode',style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w500),),

                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: h * 0.07,
                width: w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Image.asset('assets/images/delete.png'),
                    SizedBox(width: 20,),
                    Text('Delete Account',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600,fontSize: 14),)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: h * 0.07,
                width: w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Image.asset('assets/images/logout.png'),
                    SizedBox(width: 20,),
                    Text('Logout',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
