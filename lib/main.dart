import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zeetionary_flutter/providers/user_provider.dart';
import 'package:zeetionary_flutter/responsive/mobile_screen_layout.dart';
import 'package:zeetionary_flutter/responsive/responsive_layout.dart';
import 'package:zeetionary_flutter/responsive/web_screen_layout.dart';
import 'package:zeetionary_flutter/screens/login_screen.dart';
import 'package:zeetionary_flutter/utils/colors.dart';
import 'package:provider/provider.dart';
import 'package:zeetionary/screens/login_screen.dart';
import 'package:zeetionary/utils/colors.dart';

Void Main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyDxUTDS4ZAjQbw4EQCBwo0SdTMXKH68OtE',
        appId: '1:676072533272:web:1984424299ea076262c26d',
        messagingSenderId: '676072533272',
        projectId: 'zeetionary-9915d',
        storageBucket: "zeetionary-9915d.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
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
      //mobileScreenLayout: MobileScreenLayout(),
      //webScreenLayout: WebScreenLayout:(),
      //),
      home: SignupScreen(),
    );
  }
}




01:02:34