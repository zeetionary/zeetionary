// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/firebase/features/auth/screen/login_screen.dart';
import 'package:zeetionary/router/router_keys.dart';

MaterialPage _blP(Widget child) => MaterialPage(child: child);

// "/tts-screen": (_) => const MaterialPage(child: TTSPage()),

final loggedOutRoute = RouteMap(routes: {
  "/": (_) => _blP(const LoginScreen()),
});

final loggedInRoute = RouteMap(routes: routes);