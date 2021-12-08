import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wallpaper/screens/screens.dart';
import 'package:wallpaper/utils/utils.dart';
import 'controllers/controllers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    Get.put(ImageController());
    Get.put(AuthController());
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        getPages: [
          GetPage(name: '/splash', page: () => SplashScreen()),
          GetPage(name: '/auth', page: () => const AuthScreen()),
          GetPage(name: '/signup', page: () => SignupScreen()),
          GetPage(name: '/login', page: () => LoginScreen()),
          GetPage(name: '/0', page: () => HomeScreen()),
          GetPage(name: '/1', page: () => const SellScreen()),
          GetPage(name: '/2', page: () => const ProfileScreen()),
        ],
        initialRoute: '/splash',
      ),
      designSize: const Size(360, 640),
    );
  }
}
