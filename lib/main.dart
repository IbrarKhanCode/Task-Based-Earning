import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_base_earning/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:task_base_earning/utilis/theme/app_theme.dart';
import 'package:task_base_earning/utilis/theme/theme_controller.dart';
import 'firebase_options.dart';


void main() async {

 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
 options:  DefaultFirebaseOptions.currentPlatform,
 );
 Get.put(ThemeController());
  runApp(MyApp());


}

class MyApp extends StatelessWidget {
  final controller = Get.find<ThemeController>();
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: controller.themeMode,
      );
    });
  }
}
