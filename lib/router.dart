import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import 'package:zeetionary/firebase/features/auth/screen/login_screen.dart';
import 'package:zeetionary/home/screens/home_screen.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginScreen()),
});

final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HomeScreen()),
});

// final routes = RouteMap(
//   routes: {
//     '/': (_) => const CupertinoTabPage(
//           child: HomePage(),
//           paths: ['feed', 'settings'],
//         ),
//     '/feed': (_) => const MaterialPage(child: FeedPage()),
//     '/feed/profile/:id': (_) => const MaterialPage(child: ProfilePage()),
//     '/settings': (_) => const MaterialPage(child: SettingsPage()),
//   },
// );