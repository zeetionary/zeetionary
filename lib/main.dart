import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zeetionary/providers/user_provider.dart';
import 'package:zeetionary/responsive/mobile_screen_layout.dart';
import 'package:zeetionary/responsive/responsive_layout.dart';
import 'package:zeetionary/responsive/web_screen_layout.dart';
import 'package:zeetionary/screens/login_screen.dart';
import 'package:zeetionary/utils/colors.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zeetionary',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      //home: const ResponsiveLayout(
      //mobileScreenLayout: MobileScreenLayout,
      //webScreenLayout: WebScreenLayout,
      //),
      home: LoginScreen(),
    );
  }
}
