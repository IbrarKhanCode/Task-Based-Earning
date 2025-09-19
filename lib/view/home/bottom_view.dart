import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: controller.onTapped,
          currentIndex: controller.currentIndex.value,

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined)
            ),
          ]
      ),
      body: screens[controller.currentIndex.value],
    );
  }
}
