import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
// import 'package:back_button_interceptor/back_button_interceptor.dart';

import 'package:zeetionary/firebase/core/common/error_text.dart';
import 'package:zeetionary/firebase/core/common/loader.dart';
import 'package:zeetionary/firebase/features/auth/controller/auth_controller.dart';
import 'package:zeetionary/firebase/models/user_model.dart';
import 'package:zeetionary/firebase_options.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
import 'package:zeetionary/router.dart';
import 'package:zeetionary/theme/pallete.dart';

// import 'package:http/http.dart' as http;
// import 'dart:convert';

// flutter clean AND flutter clean -v AND flutter doctor
// flutter pub global activate devtools
// flutter pub cache repair -v (Disclaimer: It will download each and every version of all the packages)
// dart pub cache repair
// dart pub global activate flutterfire_cli
// flutter pub global activate flutterfire_cli
// dart pub cache clean
// flutter pub uotdated
// flutter pub upgrade
// flutter pub upgrade --major-versions
// flutter pub get

// ADB uninstall com.example.zeetionary

// flutter channel stable
// flutter upgrade
// flutter upgrade force
// flutter upgrade -v

// taskkill /f /im dart*
// taskkill /f /im adb* (You can run "adb kill-server" too)
// flutter doctor --android-licenses
// flutter doctor -v


// run https://docs.flutter.dev/testing/build-modes
// https://stackoverflow.com/questions/50645703/how-to-get-apk-and-ipa-file-from-flutter

// flutter run (debug mode)
// flutter run AND flutter run --release -v
// flutter run --release (release mode)
// flutter build apk
// flutter build apk -vv
// flutter build apk --release (to get release build on your storage)

// flutter build apk --release --target-platform=android-arm64
// flutter build apk --release --target-platform=android-arm64 --verbose
// flutter build apk --release --target-platform=android-arm64 --stacktrace
// flutter build apk --release --target-platform=android-arm64 --info
// flutter build apk --release --target-platform=android-arm64 --scan
// flutter build apk --release --target-platform=android-arm64 --debug

// flutter build apk --release --target-platform=android-arm64 --no-tree-shake-icons
// flutter build apk --release --target-platform=android-arm64 --no-tree-shake-icons --verbose
// flutter build apk --release --target-platform=android-arm64 --no-tree-shake-icons --stacktrace
// flutter run --profile

// update services.gradle.org/distributions/gradle in gradle-wrapper.properties
// update org.jetbrains.kotlin.android
// update ext.kotlin_version
// update com.google.gms:google-services
// update com.android.tools.build:gradle https://stackoverflow.com/questions/70545646/could-not-find-com-android-tools-buildgradle7-3-3-error-found-in-build-gradle

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance(); // Ensure preferences are loaded
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(
      widgetsBinding: widgetsBinding); //preserve to show the splash screen
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  // _MyAppState createState() => _MyAppState();
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends ConsumerState<MyApp> {
  UserModel? userModel;

  void getData(WidgetRef ref, User data) async {
    userModel = await ref
        .watch(authControllerProvider.notifier)
        .getUserData(data.uid)
        .first;
    ref.read(userProvider.notifier).update((state) {
      return userModel;
    });
    setState(() {});
  }

  // @override
  // void dispose() {
  //   BackButtonInterceptor.remove(myInterceptor);
  //   super.dispose();
  // }

  // bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
  //   print("BACK BUTTON!"); // Do some stuff.
  //   return true;
  // }

  @override
  void initState() {
    super.initState(); //initialize splash screen
    initialization();
    // BackButtonInterceptor.add(myInterceptor);
  }

  void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    // ignore_for_file: avoid_print
    // print('ready in 3...');
    // await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    // final themeMode = ref.watch(themeProvider);

    // Set portrait orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    return ref.watch(authStateChangeProvider).when(
      data: (data) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Zeetionary App',
          // theme: ref.watch(themeNotifierProvider), // use toggle
          theme: Pallete.lightModeAppTheme, // use system phone
          darkTheme: Pallete.darkModeAppTheme,
          themeMode: ref.watch(themeProvider),
          routerDelegate: RoutemasterDelegate(
            routesBuilder: (context) {
              if (data != null) {
                getData(ref, data);
                if (userModel != null) {
                  return loggedInRoute; // send to home screen
                }
              }
              return loggedOutRoute; // send to login
            },
          ),
          routeInformationParser: const RoutemasterParser(),
        );
      },
      error: (error, stackTrace) {
        return ErrorText(error: error.toString());
      },
      loading: () {
        return const Loader();
      },
    );
  }
}

// done