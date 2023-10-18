import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/home/drawers/community_list_drawer.dart';
import 'package:zeetionary/theme/pallete.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _page = 0;

  void displayDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  // bool shouldPop = true;

  // return WillPopScope(
  //     onWillPop: () async {
  //       return shouldPop;
  //     },

  @override
  Widget build(BuildContext context) {
    // final user = ref.watch(userProvider)!;
    final currentTheme = ref.watch(themeNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        scrolledUnderElevation: 0,
        title: const ZeetionaryAppbar(),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => displayDrawer(context),
          );
        }),
      ),
      body: Constants.tabWidgets[_page],
      drawer: const CommunityListDrawer(),
      bottomNavigationBar: CupertinoTabBar(
        // activeColor: currentTheme.iconTheme.color,
        backgroundColor: currentTheme.backgroundColor,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/uk_two.png',
            ),
            activeIcon: const Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/kurd_two.png',
            ),
            activeIcon: const Icon(Icons.home),
            label: '',
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.book), label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.question_answer), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.quiz), label: ''),
        ],
        onTap: onPageChanged,
        currentIndex: _page,
      ),
    );
  }
}

class ZeetionaryAppbar extends StatelessWidget {
  const ZeetionaryAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          colors: [
            Color.fromARGB(255, 142, 154, 215),
            Color.fromARGB(255, 219, 84, 84)
          ], // Define your gradient colors here
          tileMode: TileMode.clamp,
        ).createShader(bounds);
      },
      child: const Text(
        'Zeetionary',
        style: TextStyle(
          fontSize: 24.0, // Adjust font size as needed
          fontWeight: FontWeight.bold, // Adjust font weight as needed
          color: Colors.white, // Text color (will be masked by the gradient)
        ),
      ),
    );
  }
}

// onWillPop: () async {
//         final shouldPop = await showDialog<bool>(
//           context: context,
//           builder: (context) {
//             return AlertDialog(
//               title: const Text('Exit'),
//               content: const Text('Are you sure you want to exit the app?'),
//               actions: [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pop(context, true);
//                   },
//                   child: const Text('Yes'),
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pop(context, false);
//                   },
//                   child: const Text(
//                     'No',
//                     style: TextStyle(color: Colors.red),
//                   ),
//                 ),
//               ],
//             );
//           },
//         );
//         return shouldPop!;
//       },