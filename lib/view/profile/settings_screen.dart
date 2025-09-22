import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                      icon: Icon(Icons.arrow_back,)
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
              Container(
                height: h * 0.07,
                width: w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.person_outline,size: 40,),
                    SizedBox(width: 10,),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
