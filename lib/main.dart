import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/core/common/error_text.dart';
import 'package:zeetionary/core/common/loader.dart';
import 'package:zeetionary/features/auth/controlller/auth_controller.dart';
import 'package:zeetionary/firebase_options.dart';
import 'package:zeetionary/models/user_model.dart';
import 'package:zeetionary/router.dart';
import 'package:zeetionary/theme/pallete.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/theme/pallete.dart';
import 'package:zeetionary/features/auth/screen/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zettionary App',
      theme: Pallete.darkModeAppTheme,
      home: const LoginScreen(),
    );
  }
}
