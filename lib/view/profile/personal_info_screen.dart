import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_base_earning/utilis/app_colors.dart';
import 'package:task_base_earning/view/controller/home_controller.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {

  final _formKey = GlobalKey<FormState>();
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
                  Text('Personal Information',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
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
              Form(
                key: _formKey,
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
                      onChanged: controller.setEmail,
                      validator: controller.validateEmail,
                    ),
                    SizedBox(height: h * .25),
                    GestureDetector(
                      onTap: (){
                        if(_formKey.currentState!.validate()){
                          Get.snackbar(
                            'Congratulation',
                            'Data Updated Successful',
                            colorText: Colors.white,
                            backgroundColor: Colors.green,
                            animationDuration: Duration(milliseconds: 300),
                            duration: Duration(seconds: 2),
                            borderRadius: 8,
                            borderColor: Colors.cyan,
                            borderWidth: 2,
                          );
                        } else {
                          Get.snackbar(
                            'Validation Error',
                            'Fix the Errors',
                            colorText: Colors.white,
                            backgroundColor: Colors.red,
                            animationDuration: Duration(milliseconds: 300),
                            duration: Duration(seconds: 2),
                            borderRadius: 8,
                            borderColor: Colors.cyan,
                            borderWidth: 2,
                          );
                        }
                      },
                      child: Container(
                        height: h * .06,
                        width: w,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text('SAVE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                        ),
                      ),
                    )
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
