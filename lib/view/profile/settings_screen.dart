import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_base_earning/utilis/app_colors.dart';
import 'package:task_base_earning/view/controller/home_controller.dart';
import 'package:task_base_earning/view/profile/personal_info_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  final user = FirebaseAuth.instance.currentUser;
  final controller = Get.put(HomeController());

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
              StreamBuilder<DocumentSnapshot>(
                  stream: FirebaseFirestore.instance.collection('users').doc(user!.uid).snapshots(),
                  builder: (context,snapshot){
                    if(!snapshot.hasData){
                      return Center(child: CircularProgressIndicator(),);
                    }
                    var userData = snapshot.data!.data() as Map<String, dynamic>;
                    bool isGoogleLogin = !(userData.containsKey('firstName') && userData.containsKey('lastName'));
                return
                  Column(
                    children: [
                      isGoogleLogin ?
                      Text(userData['email'],style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500))
                      : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(userData['firstName'],style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14),),
                            SizedBox(width: 5,),
                            Text(userData['lastName'],style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14),),
                          ],
                        ),
                        Text(userData['email'],style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),),
                      ],
                      ),
                    ],
                  );
              }),
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
              GestureDetector(
                onTap: (){
                  showDialog(
                      context: context,
                      builder: (context){
                        return Dialog(
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            height: h * .25,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Obx((){
                                return Column(
                                  children: [
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        SizedBox(width: 20,),
                                        Text('Appearance',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio<int>(
                                            value: 1,
                                            activeColor: Colors.black,
                                            groupValue: controller.selectedRadio.value,
                                            onChanged: (val) {
                                              controller.tapRadio(val!);
                                            },
                                        ),
                                        Text('System',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio<int>(
                                          value: 2,
                                          activeColor: Colors.black,
                                          groupValue: controller.selectedRadio.value,
                                          onChanged: (val) {
                                            controller.tapRadio(val!);
                                          },
                                        ),
                                        Text('Light Mode',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio<int>(
                                          value: 3,
                                          activeColor: Colors.black,
                                          groupValue: controller.selectedRadio.value,
                                          onChanged: (val) {
                                            controller.tapRadio(val!);
                                          },
                                        ),
                                        Text('Dark Mode',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),)
                                      ],
                                    ),
                                  ],
                                );
                              }),
                            ),
                          ),
                        );
                      });
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
              ),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  showDialog(
                      context: context,
                      builder: (context){
                        return Dialog(
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            height: h * .35,
                            width: w,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Container(
                                    height: h * .08,
                                    width: w * .14,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(child: Icon(Icons.delete_outline_rounded,size: 25,color: Colors.white,),),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    textAlign: TextAlign.center,
                                    'Are you sure that you want to \n Delete account ?',style: TextStyle(
                                      color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16
                                  ),
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    height: h * .06,
                                    width: w,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text('Yes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: h * .06,
                                    width: w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: AppColors.primaryColor),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text('No',style: TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.w600,fontSize: 18),),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
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
                      Image.asset('assets/images/delete.png'),
                      SizedBox(width: 20,),
                      Text('Delete Account',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600,fontSize: 14),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  showDialog(
                      context: context,
                      builder: (context){
                        return Dialog(
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            height: h * .35,
                            width: w,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Container(
                                    height: h * .08,
                                    width: w * .14,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(child: Icon(Icons.logout,color: Colors.white,),),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    textAlign: TextAlign.center,
                                      'Are you sure that you want to \n Logout ?',style: TextStyle(
                                    color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16
                                  ),
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    height: h * .06,
                                    width: w,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text('Yes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: h * .06,
                                    width: w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: AppColors.primaryColor),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text('No',style: TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.w600,fontSize: 18),),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
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
                      Image.asset('assets/images/logout.png'),
                      SizedBox(width: 20,),
                      Text('Logout',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14),)
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
