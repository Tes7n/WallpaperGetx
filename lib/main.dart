import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:wallpaper/screens/screens.dart';
import 'package:wallpaper/screens/sell_screen.dart';
import 'package:wallpaper/utils/utils.dart';

import 'controllers/controllers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp()
      // .then((value) => Get.put(AuthController()))
      ;
  // Get.put(HomeController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        title: 'Flutter Demo',
        theme: theme(),
        home: SellScreen(),
        getPages: [
          GetPage(name: '/0', page: () => HomeScreen()),
          GetPage(name: '/1', page: () => SellScreen()),
          GetPage(name: '/2', page: () => ProfileScreen()),
        ],
        initialRoute: '/0',
      ),
      designSize: const Size(360, 640),
    );
  }
}
