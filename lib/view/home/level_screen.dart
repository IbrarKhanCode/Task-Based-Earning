import 'package:flutter/material.dart';
import 'package:task_base_earning/utilis/app_colors.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({super.key});

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
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
                  Text('TASK',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
                  SizedBox(width: 5,),
                  Text('BASE',style: TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.w700,fontSize: 20),),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: h * .1,
                width:  w,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25,left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your Current Balance :',style: TextStyle(color: AppColors.primaryColor,fontSize: 10,fontWeight: FontWeight.w500),),
                      Text('\$6000.00',style: TextStyle(color: AppColors.primaryColor,fontSize: 14,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Current Level :',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: h * .15,
                width:  w,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text('Level #1',style: TextStyle(color: AppColors.primaryColor,fontSize: 16,fontWeight: FontWeight.w600),),
                    SizedBox(height: 10,),
                    Text('Watch only 3 ads daily.',style: TextStyle(color: AppColors.secondaryColor,fontSize: 12,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                    Text('Play only 2 Games.',style: TextStyle(color: AppColors.secondaryColor,fontSize: 12,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                    Text('Only 1 daily bonus.',style: TextStyle(color: AppColors.secondaryColor,fontSize: 12,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Upgrade Level :',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: h * .22,
                width:  w,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text('Level #2',style: TextStyle(color: AppColors.primaryColor,fontSize: 16,fontWeight: FontWeight.w600),),
                    SizedBox(height: 10,),
                    Text('Watch More than 10 ads daily.',style: TextStyle(color: AppColors.secondaryColor,fontSize: 12,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                    Text('Play 5 Games Daily.',style: TextStyle(color: AppColors.secondaryColor,fontSize: 12,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                    Text('3 daily bonus.',style: TextStyle(color: AppColors.secondaryColor,fontSize: 12,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                    Container(
                      height: h * 0.05,
                      width: w * 0.7,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('\$300 /',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 12),),
                          Text(' Upgrade Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: h * .22,
                width:  w,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text('Level #3',style: TextStyle(color: AppColors.primaryColor,fontSize: 16,fontWeight: FontWeight.w600),),
                    SizedBox(height: 10,),
                    Text('Watch More than 25 ads daily.',style: TextStyle(color: AppColors.secondaryColor,fontSize: 12,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                    Text('Play 15 Games Daily.',style: TextStyle(color: AppColors.secondaryColor,fontSize: 12,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                    Text('10 daily bonus.',style: TextStyle(color: AppColors.secondaryColor,fontSize: 12,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                    Container(
                      height: h * 0.05,
                      width: w * 0.7,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('\$700 /',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 12),),
                          Text(' Upgrade Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14),),
                        ],
                      ),
                    ),
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
