import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_base_earning/utilis/app_colors.dart';
import 'package:task_base_earning/view/controller/password_controller.dart';

class PasswordSecurityScreen extends StatefulWidget {
  const PasswordSecurityScreen({super.key});

  @override
  State<PasswordSecurityScreen> createState() => _PasswordSecurityScreenState();
}

class _PasswordSecurityScreenState extends State<PasswordSecurityScreen> {

  final _formKey = GlobalKey<FormState>();
  final controller = Get.put(PasswordController());

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop,result){
        if(didPop){
          controller.oldPasswordController.clear();
          controller.newPasswordController.clear();
          controller.confirmPasswordController.clear();
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
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
                  Text('Change Password',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                ],
              ),
              SizedBox(height: h * .05,),
              Image.asset('assets/images/lock.png'),
              SizedBox(height: h * .05,),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Old Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        controller: controller.oldPasswordController,
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
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
                        onChanged: controller.setOldPassword,
                        validator: controller.validateOldPassword,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Create New Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        controller: controller.newPasswordController,
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
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
                        onChanged: controller.setNewPassword,
                        validator: controller.validateNewPassword,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Confirm New Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        controller: controller.confirmPasswordController,
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
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
                        onChanged: controller.setConfirmPassword,
                        validator: controller.validateConfirmPassword,
                      ),
                      SizedBox(height: h * .3),
                      GestureDetector(
                        onTap: (){
                          if(_formKey.currentState!.validate()){
                            controller.updatePassword();
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
