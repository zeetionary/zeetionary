// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/home/drawers/community_list_drawer.dart';
import 'package:zeetionary/theme/pallete.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _page = 0;

  int _selectedIndex = 0;

  List<Widget> tabItems = [
    const Center(child: Text("0")),
    const Center(child: Text("1")),
    const Center(child: Text("2")),
    const Center(child: Text("3")),
    const Center(child: Text("4"))
  ];

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

  // onWillPop: () async {
  //       // Pop the screen of the item.
  //       Navigator.pop(context);

  //       return true; // Allow the back button to pop the route.
  //     },

  @override
  Widget build(BuildContext context) {
    // final user = ref.watch(userProvider)!;
    final currentTheme = ref.watch(themeNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        scrolledUnderElevation: 0,
        title: const ZeetionaryAppbarStyle(),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => displayDrawer(context),
          );
        }),
      ),
      body: Constants.tabWidgets[_page],
      drawer: const CommunityListDrawer(),
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.linear,
        selectedIndex: _selectedIndex,
        iconSize: 30,
        showElevation: false, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Image.asset(
              'assets/images/uk_two.png',
              width: 35,
            ),
            title: const Text('English'),
            activeColor: currentTheme.dividerColor,
          ),
          FlashyTabBarItem(
            icon: Image.asset(
              'assets/images/kurd_two.png',
              width: 35,
            ),
            title: const Text('Kurdish'),
            activeColor: currentTheme.dividerColor,
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.book),
            title: const Text('Grammar'),
            activeColor: currentTheme.dividerColor,
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.question_answer),
            title: const Text('Q&A'),
            activeColor: currentTheme.dividerColor,
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.quiz),
            title: const Text('Quiz'),
            activeColor: currentTheme.dividerColor,
          ),
        ],
      ),
      // bottomNavigationBar: CupertinoTabBar(
      //   // activeColor: currentTheme.iconTheme.color,
      //   backgroundColor: currentTheme.backgroundColor,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Image.asset(
      //         'assets/images/uk_two.png',
      //       ),
      //       activeIcon: const Icon(Icons.home),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset(
      //         'assets/images/kurd_two.png',
      //       ),
      //       activeIcon: const Icon(Icons.home),
      //       label: '',
      //     ),
      //     const BottomNavigationBarItem(icon: Icon(Icons.book), label: ''),
      //     const BottomNavigationBarItem(
      //         icon: Icon(Icons.question_answer), label: ''),
      //     const BottomNavigationBarItem(icon: Icon(Icons.quiz), label: ''),
      //   ],
      //   onTap: onPageChanged,
      //   currentIndex: _page,
      // ),
    );
  }
}
