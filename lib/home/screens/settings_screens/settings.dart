// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:zeetionary/theme/pallete.dart';

// class SettingsPage extends ConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final themeNotifier = ref.read(themeNotifierProvider.notifier);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('App Settings'),
//       ),
//       body: ListView(
//         children: [
//           ListTile(
//             title: Text('Light Theme'),
//             onTap: () => setTheme(ref, ThemeMode.light),
//           ),
//           ListTile(
//             title: Text('Dark Theme'),
//             onTap: () => setTheme(ref, ThemeMode.dark),
//           ),
//           ListTile(
//             title: Text('System Theme'),
//             onTap: () => setTheme(ref, ThemeMode.system),
//           ),
//         ],
//       ),
//     );
//   }

//   void setTheme(WidgetRef ref, ThemeMode mode) {
//     ref.read(themeNotifierProvider.notifier).setTheme(mode);
//   }
// }
