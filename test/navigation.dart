import 'package:flutter/material.dart';

// this flutter native navigation handler. This code is a satand alone app

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}




































// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SharedPreferences.getInstance(); // Ensure preferences are loaded
//   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
//   FlutterNativeSplash.preserve(
//       widgetsBinding: widgetsBinding); //preserve to show the splash screen
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(
//     const ProviderScope(
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends ConsumerStatefulWidget {
//   const MyApp({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() {
//     return _MyAppState();
//   }
// }

// class _MyAppState extends ConsumerState<MyApp> {
//   UserModel? userModel;

//   void getData(WidgetRef ref, User data) async {
//     userModel = await ref
//         .watch(authControllerProvider.notifier)
//         .getUserData(data.uid)
//         .first;
//     ref.read(userProvider.notifier).update((state) {
//       return userModel;
//     });
//     setState(() {});
//   }

//   @override
//   void initState() {
//     super.initState();
//     initialization();
//   }

//   void initialization() async {
//     print('ready in 2...');
//     await Future.delayed(const Duration(seconds: 1));
//     print('ready in 1...');
//     await Future.delayed(const Duration(seconds: 1));
//     print('go!');
//     FlutterNativeSplash.remove();
//   }

//   @override
//   Widget build(BuildContext context) {

//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitDown,
//       DeviceOrientation.portraitUp,
//     ]);

//     return ref.watch(authStateChangeProvider).when(
//       data: (data) {
//         return MaterialApp.router(
//           debugShowCheckedModeBanner: false,
//           title: 'Zeetionary App',
//           theme: Pallete.lightModeAppTheme, // use system phone
//           darkTheme: Pallete.darkModeAppTheme,
//           themeMode: ref.watch(themeProvider),
//           routerDelegate: RoutemasterDelegate(
//             routesBuilder: (context) {
//               if (data != null) {
//                 getData(ref, data);
//                 if (userModel != null) {
//                   return loggedInRoute; // send to home screen
//                 }
//               }
//               return loggedOutRoute; // send to login
//             },
//           ),
//           routeInformationParser: const RoutemasterParser(),
//         );
//       },
//       error: (error, stackTrace) {
//         return ErrorText(error: error.toString());
//       },
//       loading: () {
//         return const Loader();
//       },
//     );
//   }
// }