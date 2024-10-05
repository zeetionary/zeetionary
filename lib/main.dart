import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:zeetionary/theme/pallete.dart';
import 'package:zeetionary/firebase/features/auth/controller/auth_controller.dart';
import 'firebase_options.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/firebase/core/common/error_text.dart';
import 'package:zeetionary/firebase/core/common/loader.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
import 'package:zeetionary/router/aa_router_main.dart';
import 'package:zeetionary/dictionary/sentences/sentences_page.dart';
import 'package:zeetionary/dictionary/sentences/kurdish_sentences.dart';

import 'package:feedback/feedback.dart';
import 'package:zeetionary/feedback.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


// import 'dart:typed_data';
// import 'package:flutter/foundation.dart' show kIsWeb;
// import 'package:flutter/material.dart';
// import 'package:flutter_email_sender/flutter_email_sender.dart';
// import 'package:flutter_markdown/flutter_markdown.dart';
// import 'package:http/http.dart' as http;
// import 'package:path_provider/path_provider.dart';
// import 'package:share_plus/share_plus.dart';

// import 'dart:io';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import 'package:zeetionary/dictionary/database_sentences.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:io';
// import 'package:flutter/services.dart';

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
// flutter run --profile
// flutter run --release (release mode)
// flutter run --release -v

// flutter build apk
// flutter build apk --verbose
// flutter run apk --stacktrace
// flutter run apk release --stacktrace
// flutter build apk --info
// flutter build apk --split-per-abi
// flutter build apk --split-per-abi --no-tree-shake-icons
// flutter build apk -vv
// flutter build apk --release (to get release build on your storage)
// flutter build apk --no-tree-shake-icons
// flutter build apk --release --no-tree-shake-icons

// flutter build appbundle --release --target-platform=android-arm64

// flutter build apk --release --target-platform=android-arm64
// flutter build apk --release --target-platform=android-arm64 --split-per-abi
// flutter build apk --release --target=lib/main.dart --target-platform=android-arm64 --split-per-abi
// flutter build apk --release --target-platform=android-arm64 --verbose
// flutter build apk --release --target-platform=android-arm64 --stacktrace
// flutter build apk --release --target-platform=android-arm64 --info
// flutter build apk --release --target-platform=android-arm64 --scan
// flutter build apk --release --target-platform=android-arm64 --debug

// flutter build apk --release --target-platform=android-arm64 --no-tree-shake-icons
// flutter build apk --release --target-platform=android-arm64 --no-tree-shake-icons --verbose
// flutter build apk --release --target-platform=android-arm64 --no-tree-shake-icons --stacktrace

// flutter build appbundle
// flutter build appbundle --release --no-tree-shake-icons
// flutter build appbundle --verbose

// flutter build apk --analyze-size
// flutter build apk --release --target-platform=android-arm64 --analyze-size
// flutter build apk --analyze-size
// flutter build appbundle --analyze-size
// flutter build ios --analyze-size
// flutter build linux --analyze-size
// flutter build macos --analyze-size
// flutter build windows --analyze-size

// update services.gradle.org/distributions/gradle in gradle-wrapper.properties
// update org.jetbrains.kotlin.android
// update ext.kotlin_version
// update com.google.gms:google-services
// update com.android.tools.build:gradle https://stackoverflow.com/questions/70545646/could-not-find-com-android-tools-buildgradle7-3-3-error-found-in-build-gradle

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(
      widgetsBinding: widgetsBinding); // Preserve to show the splash screen

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initializeDatabase();
  await initializeKurdishDatabase();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState(); // Initialize splash screen
    initialization();
    _initDatabase(); // Initialize the database
  }

  Future<void> _initDatabase() async {
    print('Database initialized');
  }

  void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 2));
    print('go!');
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    // Set portrait orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    return ref.watch(authStateChangeProvider).when(
      data: (data) {
        return BetterFeedback(
      // If custom feedback is not enabled, supply null and the default text
      // feedback form will be used.
      feedbackBuilder: (context, onSubmit, scrollController) =>
          CustomFeedbackForm(
        onSubmit: onSubmit,
        scrollController: scrollController,
      ),
      theme: FeedbackThemeData(
        background: Colors.grey,
        feedbackSheetColor: Colors.grey[50]!,
        drawColors: [
          Colors.red,
          Colors.green,
          Colors.blue,
          Colors.yellow,
        ],
      ),
      darkTheme: FeedbackThemeData.dark(),
      localizationsDelegates: [
        GlobalFeedbackLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeOverride: const Locale('en'),
      mode: FeedbackMode.navigate,
      pixelRatio: 1,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Zeetionary App',
            theme: Pallete.lightModeAppTheme, // Use system phone
            darkTheme: Pallete.darkModeAppTheme,
            themeMode: ref.watch(themeProvider),
            routerDelegate: RoutemasterDelegate(
              routesBuilder: (context) {
                if (data != null) {
                  return loggedInRoute; // Send to home screen
                }
                return loggedOutRoute; // Send to login
              },
            ),
            routeInformationParser: const RoutemasterParser(),
          ),
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

    