import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/firebase/features/auth/controller/auth_controller.dart';
import 'package:zeetionary/theme/pallete.dart';
// import 'package:zeetionary/home/screens/history_screen.dart';

class DrawerListTile extends ConsumerStatefulWidget {
  const DrawerListTile({
    super.key,
  });

  // (zee) https://chat.openai.com/c/fd57b2af-b7b6-472a-98fd-aea0551587d1

  @override
  // _DrawerListTileState createState() => _DrawerListTileState();
  ConsumerState<ConsumerStatefulWidget> createState() => _DrawerListTileState();
}

class _DrawerListTileState extends ConsumerState<DrawerListTile> {
  void logOut(WidgetRef ref) {
    ref.read(authControllerProvider.notifier).logout();
  }

  @override
  Widget build(BuildContext context) {
    final currentTheme = ref.watch(themeNotifierProvider);

    return Column(
      children: [
        ListTile(
          title: Text(
            'Quiz',
            style: TextStyle(
              fontSize: 16.0,
              color: currentTheme.primaryColor,
            ),
          ),
          leading: Icon(
            Icons.question_answer,
            color: currentTheme.primaryColor,
          ),
          onTap: () {
            Routemaster.of(context).push('/quiz-screen');
          },
        ),
        ListTile(
          title: Text(
            'بچۆ دەرەوە',
            style: TextStyle(
              fontSize: 16.0,
              color: Pallete.redColor,
            ),
          ),
          leading: Icon(
            Icons.logout,
            color: Pallete.redColor,
          ),
          onTap: () => logOut(ref),
        ),
      ],
    );
  }
}





// class CommunityListDrawer extends ConsumerWidget {
//   const CommunityListDrawer({super.key});

//   void logOut(WidgetRef ref) {
//     ref.read(authControllerProvider.notifier).logout();
//   }

//   // void toggleTheme(WidgetRef ref) {
//   //   ref.read(themeNotifierProvider.notifier).toggleTheme();
//   // }

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Drawer(
//       child: SafeArea(
//         child: Column(
//           children: [
//             // ListTile(
//             //   title: const Text('مێژوو'),
//             //   leading: const Icon(Icons.history),
//             //   onTap: () {
//             //     // Use Navigator to navigate to the HistoryScreen
//             //     Navigator.push(
//             //       context,
//             //       MaterialPageRoute(
//             //           builder: (context) => const HistoryScreen()),
//             //     );
//             //   },
//             // ),
//             // ListTile(
//             //   title: const Text('بچۆ دەرەوە'),
//             //   leading: Icon(
//             //     Icons.logout,
//             //     color: Pallete.redColor,
//             //   ),
//             //   onTap: () => logOut(ref),
//             // ),
//             ListTile(
//               title: Text(
//                 'بچۆ دەرەوە',
//                 style: TextStyle(
//                   // fontWeight: FontWeight.bold, // Adjust font weight if needed
//                   fontSize: 16.0, // Adjust font size if needed
//                   color: Pallete.redColor, // Use your specific color
//                 ),
//               ),
//               leading: Icon(
//                 Icons.logout,
//                 color: Pallete.redColor, // Match the color with the text
//               ),
//               onTap: () => logOut(ref),
//             )
//             // Switch.adaptive(
//             //   value: ref.watch(themeNotifierProvider.notifier).mode ==
//             //       ThemeMode.dark,
//             //   onChanged: (val) => toggleTheme(ref),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
