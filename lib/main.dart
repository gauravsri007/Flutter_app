import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:project_3/Screens/account.dart';
import 'package:project_3/Screens/grid_view.dart';
import 'package:project_3/Screens/home.dart';
import 'package:project_3/Screens/login.dart';
import 'package:project_3/Screens/new.dart';
import 'package:project_3/Screens/practise.dart';
import 'package:project_3/Screens/register.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';


// Future<void> main() async {
//      final prefs = await SharedPreferences.getInstance();
//     final savedRememberMe = prefs.getBool('remember_me') ?? false;

//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
 

//     initialRoute: 'account',

//     routes: {
//       'practise':(context) => MyPractise(),
//       'account' : (context) => const AccountGridView(),
//       'grid_view' : (context) => const MyGridView(),
//       'register' : (context) => const MyRegister(),
//       'login' : (context) => const MyLogin(),
//       'home' : (context) => const MyHome(),
//     },
//   ));
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // required before async work

  // Get.put(AuthController(), permanent: true);

  final prefs = await SharedPreferences.getInstance();
  final savedRememberMe = prefs.getBool('remember_me') ?? false;
  runApp(MyApp(startRoute: savedRememberMe ? '/home' : '/login'));
}


class MyApp extends StatelessWidget {
  final String startRoute;
  const MyApp({super.key, required this.startRoute});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: startRoute,
      getPages: [
        GetPage(name: '/login', page: () => const MyLogin()),
        GetPage(name: '/signup', page: () => const MyRegister()),
        GetPage(name: '/home', page: () => const MyHome()),
      ],
    );
  }
}

