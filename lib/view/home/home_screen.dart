import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_base_earning/utilis/app_colors.dart';
import 'package:task_base_earning/view/profile/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  Spacer(),
                  Container(
                    height: h * 0.05,
                    width: w * 0.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.notifications_none,color: Colors.black,size: 30,),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Get.to(SettingsScreen());
                    },
                    child: Container(
                      height: h * 0.05,
                      width: w * 0.1,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                            image: AssetImage('assets/images/profile_image.png'))
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: h * .1,
                width:  w,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25,left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your Current Balance :',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500),),

                      Text('\$6000.00',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: h * .13,
                width:  w,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25,left: 20,right: 30,bottom: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Refer & Earn',style: TextStyle(color: AppColors.primaryColor,fontSize: 14,fontWeight: FontWeight.w600),),
                          SizedBox(height: 10,),
                          Text('Refer friends & get bonus once \nthey complete any:',style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      Spacer(),
                      Stack(
                        children: [
                          Container(
                            height: h * 0.1,
                            width: w * .15,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/user_icon 2.png'))
                            ),
                          ),
                          Positioned(
                            top: 30,
                            left: 30,
                            child: Container(
                              height: h * 0.05,
                              width: w * .12,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('assets/images/user_icon 1.png'))
                              ),
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Complete Your Task & Earn Money :',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    height: h * .13,
                    width:  w * .26,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.asset('assets/images/prize.png'),
                    ),
                  ),
                  SizedBox(width: w * .05,),
                  Container(
                    height: h * .13,
                    width:  w * .26,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.asset('assets/images/game.png'),
                    ),
                  ),
                  SizedBox(width: w * .05,),
                  Container(
                    height: h * .13,
                    width:  w * .26,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.asset('assets/images/youtube.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: w * 0.04,),
                  Text('Daily Bonus',style: TextStyle(color: AppColors.secondaryColor,fontSize: 12,fontWeight: FontWeight.w500),),
                  SizedBox(width: w * 0.13,),
                  Text('Play Games',style: TextStyle(color: AppColors.secondaryColor,fontSize: 12,fontWeight: FontWeight.w500),),
                  SizedBox(width: w * 0.14,),
                  Text('Watch Ads',style: TextStyle(color: AppColors.secondaryColor,fontSize: 12,fontWeight: FontWeight.w500),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Today Top Offer’s',style: TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                ],
              ),
              Row(
                children: [
                  Text('Get \$20 To install an app :',style: TextStyle(color: AppColors.secondaryColor,fontSize: 10,fontWeight: FontWeight.w500),)
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: h * 0.08,
                width: w,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset('assets/images/binance.png'),
                      SizedBox(width: 10,),
                      Text('Binance',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),),
                      Spacer(),
                      Container(
                        height: h * 0.03,
                        width: w * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: AppColors.primaryColor)
                        ),
                        child: Center(child: Text('Install Now',style: TextStyle(color: AppColors.primaryColor,fontSize: 10,fontWeight: FontWeight.w500),),),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: h * 0.08,
                width: w,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset('assets/images/octafax.png'),
                      SizedBox(width: 10,),
                      Text('Octafax',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),),
                      Spacer(),
                      Container(
                        height: h * 0.03,
                        width: w * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: AppColors.primaryColor)
                        ),
                        child: Center(child: Text('Install Now',style: TextStyle(color: AppColors.primaryColor,fontSize: 10,fontWeight: FontWeight.w500),),),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: h * 0.08,
                width: w,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset('assets/images/toonkeeper.png'),
                      SizedBox(width: 10,),
                      Text('Toonkeeper',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),),
                      Spacer(),
                      Container(
                        height: h * 0.03,
                        width: w * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: AppColors.primaryColor)
                        ),
                        child: Center(child: Text('Install Now',style: TextStyle(color: AppColors.primaryColor,fontSize: 10,fontWeight: FontWeight.w500),),),
                      )
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
