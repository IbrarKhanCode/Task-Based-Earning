import 'package:flutter/material.dart';
import 'package:task_base_earning/utilis/app_colors.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {

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
              Center(child: Text('Wallet',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),)),
              SizedBox(height: h * .03,),
              Container(
                height: h * .1,
                width:  w,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Your Current Balance :',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500),),
                    Text('\$6000.00',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Enter amount to withdraw',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                ],
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter amount',
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
                  Text('Enter Your binance iD',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                ],
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter binance ID',
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
                  Text('Enter Your binance iD to withdraw wallet balance :',style: TextStyle(
                    color: AppColors.secondaryColor,fontSize: 12,fontWeight: FontWeight.w500,
                  ),)
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: h * .05,
                width: w,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text('WITHDRAW AMOUNT',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 12),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
