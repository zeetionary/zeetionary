import 'package:flutter/material.dart';
import 'package:zeetionary/features/auth/screen/login_screen.dart';
import 'package:zeetionary/features/auth/screens/login_screen.dart';
import 'package:zeetionary/features/community/screens/add_mods_screen.dart';
import 'package:zeetionary/features/community/screens/community_screen.dart';
import 'package:zeetionary/features/community/screens/create_community_screen.dart';
import 'package:zeetionary/features/community/screens/edit_community_screen.dart';
import 'package:zeetionary/features/community/screens/mod_tools_screen.dart';
import 'package:zeetionary/features/home/screens/home_screen.dart';
import 'package:zeetionary/features/post/screens/add_post_screen.dart';
import 'package:zeetionary/features/post/screens/add_post_type_screen.dart';
import 'package:zeetionary/features/post/screens/comments_screen.dart';
import 'package:zeetionary/features/user_profile/screens/edit_profile_screen.dart';
import 'package:zeetionary/features/user_profile/screens/user_profile_screen.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginScreen()),
});

final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HomeScreen()),
});
