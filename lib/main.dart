import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core,dart';
import 'package:zeetionary/pages/widget_tree.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zeetionary App'
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WidgetTree(),
    );
  }
}
