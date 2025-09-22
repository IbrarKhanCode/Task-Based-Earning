import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_base_earning/utilis/app_colors.dart';
import 'package:task_base_earning/view/controller/home_controller.dart';
import 'package:task_base_earning/view/home/affiliate_screen.dart';
import 'package:task_base_earning/view/home/home_screen.dart';
import 'package:task_base_earning/view/home/level_screen.dart';
import 'package:task_base_earning/view/home/wallet_screen.dart';

class BottomView extends StatefulWidget {
  const BottomView({super.key});

  @override
  State<BottomView> createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {

  List<Widget> screens = [
    HomeScreen(),
    LevelScreen(),
    AffiliateScreen(),
    WalletScreen(),
  ];

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    
    return Scaffold(
      bottomNavigationBar: Obx((){
        return SizedBox(
          height: h * .08,
          width: w,
          child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25)
              ),

            child: BottomNavigationBar(
                onTap: controller.onTapped,
                currentIndex: controller.currentIndex.value,
                backgroundColor: Colors.grey.shade200,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: AppColors.primaryColor,

                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/Home.png')),
                      label: 'Home'
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/Unlock.png')),
                    label: 'Level',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/Affiliate.png')),
                    label: 'Affiliate',
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('assets/images/Wallet.png')),
                      label: 'Wallet'
                  ),
                ]
            ),
          ),
        );
      }),
      body: Obx((){
        return screens[controller.currentIndex.value];
      }),
    );
  }
}
