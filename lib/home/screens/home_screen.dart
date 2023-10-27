import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  void displayDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

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
      bottomNavigationBar: CupertinoTabBar(
        // activeColor: currentTheme.iconTheme.color,
        backgroundColor: currentTheme.backgroundColor,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/uk_two.png',
              width: 30,
            ),
            activeIcon: const Icon(Icons.home),
            label: 'English',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/kurd_two.png',
              width: 30,
            ),
            activeIcon: const Icon(Icons.home),
            label: 'Kurdish',
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.book), label: 'Grammar'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.question_answer), label: 'Q&A'),
          const BottomNavigationBarItem(icon: Icon(Icons.quiz), label: 'Quiz'),
        ],
        onTap: onPageChanged,
        currentIndex: _page,
      ),
    );
  }
}
