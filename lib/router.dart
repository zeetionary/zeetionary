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
