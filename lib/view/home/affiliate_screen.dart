import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_base_earning/utilis/app_colors.dart';
import 'package:task_base_earning/view/controller/home_controller.dart';

class AffiliateScreen extends StatefulWidget {
  const AffiliateScreen({super.key});

  @override
  State<AffiliateScreen> createState() => _AffiliateScreenState();
}

class _AffiliateScreenState extends State<AffiliateScreen> {

  final HomeController controller = Get.put(HomeController());

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
              SizedBox(height: h * .07,),
              Center(child: Text('Affiliate',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),)),
              SizedBox(height: h * .03,),
              Container(
                height: h * .06,
                width: w,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  children: [
                    controller.selectedIndex.value == 0 ? SizedBox() : SizedBox(width: w * 0.1,),
                    GestureDetector(
                      onTap : (){
                        controller.selectedIndex.value = 0;
                      },
                      child: controller.selectedIndex.value == 0 ? Container(
                        height: h * .06,
                        width: w * .27,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(child: Text('Today',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14),)),
                      ) : Text('Today',style: TextStyle(color: AppColors.secondaryColor,fontSize: 14,fontWeight: FontWeight.w500),)
                    ),
                    controller.selectedIndex.value == 1 ? SizedBox(width: w * 0.12,) : SizedBox(width: w * 0.15,),
                    GestureDetector(
                      onTap : (){
                        setState(() {
                          controller.selectedIndex.value = 1;
                        });
                      },
                      child: controller.selectedIndex.value == 1 ? Container(
                        height: h * .06,
                        width: w * .27,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(child: Text('Weekly',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14),)),
                      ) : Text('Weekly',style: TextStyle(color: AppColors.secondaryColor,fontSize: 14,fontWeight: FontWeight.w500),)
                    ),
                    controller.selectedIndex.value == 2 ? SizedBox(width: w * 0.15,) : SizedBox(width: w * 0.1,),
                    GestureDetector(
                      onTap : (){
                        setState(() {
                          controller.selectedIndex.value = 2;
                        });
                      },
                      child: controller.selectedIndex.value == 2 ? Container(
                        height: h * .06,
                        width: w * .27,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(child: Text('Monthly',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14),)),
                      ) : Text('Monthly',style: TextStyle(color: AppColors.secondaryColor,fontSize: 14,fontWeight: FontWeight.w500),)
                    ),
                  ],
                ),
              ),
              controller.selectedIndex.value == 0 ?

                  Column(
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        height: h * .15,
                        width: w,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('Ads watched',style: TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                                  Spacer(),
                                  Text('+50\$',style: TextStyle(color: AppColors.primaryColor,fontSize: 12,fontWeight: FontWeight.w500),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('Game played',style: TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                                  Spacer(),
                                  Text('+70\$',style: TextStyle(color: AppColors.primaryColor,fontSize: 12,fontWeight: FontWeight.w500),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('Bonus',style: TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                                  Spacer(),
                                  Text('+40\$',style: TextStyle(color: AppColors.primaryColor,fontSize: 12,fontWeight: FontWeight.w500),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('App installed',style: TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                                  Spacer(),
                                  Text('+60\$',style: TextStyle(color: AppColors.primaryColor,fontSize: 12,fontWeight: FontWeight.w500),)
                                ],
                              ),
                              SizedBox(height: 10,),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text('Invite Friends with Your Referral Code :',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: h * .35,
                        width: w,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Container(
                                height: h * .13,
                                width: w * .3,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset('assets/images/qr.png'),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('Referral Code',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 14),),
        
                                ],
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'https://link.abc.com',
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 30,top: 10),
                                    child: Text('Copy',style: TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.w600,fontSize: 13),),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(color: AppColors.primaryColor),
                                    )
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Container(
                                     height: h * .06,
                                     width: w * .13,
                                     decoration: BoxDecoration(
                                       color: Colors.white,
                                       shape: BoxShape.circle
                                     ),
                                     child: Center(
                                       child: Image.asset('assets/images/whatsapp.png'),
                                     ),
                                   ),
                                  SizedBox(width: 20,),
                                  Container(
                                    height: h * .06,
                                    width: w * .13,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle
                                    ),
                                    child: Center(
                                      child: Image.asset('assets/images/share.png'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )

                  : controller.selectedIndex.value == 1 ?

              Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    height: h * .25,
                    width: w,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('Mon',style: TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                              Spacer(),
                              Text('+50\$',style: TextStyle(color: AppColors.primaryColor,fontSize: 12,fontWeight: FontWeight.w500),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('Tue',style: TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                              Spacer(),
                              Text('+70\$',style: TextStyle(color: AppColors.primaryColor,fontSize: 12,fontWeight: FontWeight.w500),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('Wed',style: TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                              Spacer(),
                              Text('+40\$',style: TextStyle(color: AppColors.primaryColor,fontSize: 12,fontWeight: FontWeight.w500),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('Thu',style: TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                              Spacer(),
                              Text('+60\$',style: TextStyle(color: AppColors.primaryColor,fontSize: 12,fontWeight: FontWeight.w500),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('Fri',style: TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                              Spacer(),
                              Text('+60\$',style: TextStyle(color: AppColors.primaryColor,fontSize: 12,fontWeight: FontWeight.w500),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('Sat',style: TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                              Spacer(),
                              Text('+60\$',style: TextStyle(color: AppColors.primaryColor,fontSize: 12,fontWeight: FontWeight.w500),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('Sun',style: TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                              Spacer(),
                              Text('+60\$',style: TextStyle(color: AppColors.primaryColor,fontSize: 12,fontWeight: FontWeight.w500),)
                            ],
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text('Invite Friends with Your Referral Code :',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: h * .35,
                    width: w,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Container(
                            height: h * .13,
                            width: w * .3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset('assets/images/qr.png'),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('Referral Code',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 14),),

                            ],
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'https://link.abc.com',
                                fillColor: Colors.white,
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 30,top: 10),
                                  child: Text('Copy',style: TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.w600,fontSize: 13),),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(color: AppColors.primaryColor),
                                )
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: h * .06,
                                width: w * .13,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: Center(
                                  child: Image.asset('assets/images/whatsapp.png'),
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                height: h * .06,
                                width: w * .13,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: Center(
                                  child: Image.asset('assets/images/share.png'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )

                  : Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    height: h * .15,
                    width: w,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('Week #1',style: TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                              Spacer(),
                              Text('+50\$',style: TextStyle(color: AppColors.primaryColor,fontSize: 12,fontWeight: FontWeight.w500),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('Week #2',style: TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                              Spacer(),
                              Text('+70\$',style: TextStyle(color: AppColors.primaryColor,fontSize: 12,fontWeight: FontWeight.w500),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('Week #3',style: TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                              Spacer(),
                              Text('+40\$',style: TextStyle(color: AppColors.primaryColor,fontSize: 12,fontWeight: FontWeight.w500),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('Week #4',style: TextStyle(color: AppColors.secondaryColor,fontWeight: FontWeight.w500,fontSize: 12),),
                              Spacer(),
                              Text('+60\$',style: TextStyle(color: AppColors.primaryColor,fontSize: 12,fontWeight: FontWeight.w500),)
                            ],
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text('Invite Friends with Your Referral Code :',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: h * .35,
                    width: w,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Container(
                            height: h * .13,
                            width: w * .3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset('assets/images/qr.png'),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('Referral Code',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 14),),

                            ],
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'https://link.abc.com',
                                fillColor: Colors.white,
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 30,top: 10),
                                  child: Text('Copy',style: TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.w600,fontSize: 13),),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(color: AppColors.primaryColor),
                                )
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: h * .06,
                                width: w * .13,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: Center(
                                  child: Image.asset('assets/images/whatsapp.png'),
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                height: h * .06,
                                width: w * .13,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                child: Center(
                                  child: Image.asset('assets/images/share.png'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
