// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/dictionary/english_dictionary/english_dictionary.dart';
import 'package:zeetionary/dictionary/kurdish_dictionary/kurdish_dictionary.dart';
import 'package:zeetionary/home/drawers/community_list_drawer.dart';
// import 'package:zeetionary/home/screens/history_screens/history_screen.dart';
// import 'package:zeetionary/grammar/grammar_screen.dart';
// import 'package:zeetionary/questions/question_screen.dart';
import 'package:zeetionary/quiz/quiz_screen.dart';
import 'package:zeetionary/theme/pallete.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// import 'package:zeetionary/firebase/features/auth/controller/auth_controller.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  // int currentPageIndex = 0;
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  void displayDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  void toggleTheme(WidgetRef ref) {
    ref.read(themeNotifierProvider.notifier).toggleTheme();
  }

  // void goToHistory(BuildContext context) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (context) => const HistoryScreen(),
  //     ),
  //   );
  // }

  // final List<Widget> _pages = [
  //   const DictionaryScreenEnglish(), // Replace with your content for Page 1
  //   const DictionaryScreenKurdish(),
  //   const GrammarScreen(),
  //   const QuestionsScreen(),
  //   const QuizScreen(),
  // ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  final _advancedDrawerController = AdvancedDrawerController();

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }

  // void logOut(WidgetRef ref) {
  //   ref.read(authControllerProvider.notifier).logout();
  // }

  @override
  Widget build(BuildContext context) {
    // final user = ref.watch(userProvider)!;
    final currentTheme = ref.watch(themeNotifierProvider);

    return AdvancedDrawer(
      // backdrop: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       begin: Alignment.topLeft,
      //       end: Alignment.bottomRight,
      //       colors: [currentTheme.scaffoldBackgroundColor.withOpacity(0)],
      //     ),
      //   ),
      // ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      backdropColor: currentTheme.scaffoldBackgroundColor.withOpacity(0.9),
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const DrawerListTile(),
              Switch.adaptive(
                value: ref.watch(themeNotifierProvider.notifier).mode ==
                    ThemeMode.dark,
                onChanged: (val) => toggleTheme(ref),
              ),
            ],
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: currentTheme.appBarTheme.backgroundColor,
          // centerTitle: true,
          scrolledUnderElevation: 0,
          // backgroundColor: Colors.grey.withOpacity(0.1),
          title: const ZeetionaryAppbarStyle(),
          // title: Image.asset(
          //   'assets/images/zeetionary_three.png',
          //   width: 200,
          // ),
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
          actions: [
            // Switch.adaptive(
            //   value: ref.watch(themeNotifierProvider.notifier).mode ==
            //       ThemeMode.dark,
            //   onChanged: (val) => toggleTheme(ref),
            // ),
            // IconButton(
            //   icon: ref.watch(themeNotifierProvider.notifier).mode ==
            //           ThemeMode.dark
            //       ? const Icon(
            //           // (not zee) https://chat.openai.com/c/deea79e0-f329-41ba-9801-aec1802b62ab
            //           Icons.nightlight_round,
            //           // color: Colors.yellow, // Customize the moon color
            //         )
            //       : const Icon(
            //           Icons.wb_sunny,
            //           // color: Colors.red, // Customize the sun color
            //         ),
            //   onPressed: () => toggleTheme(ref),
            // ),
            IconButton(
              icon: const Icon(Icons.history),
              onPressed: () {
                Routemaster.of(context).push('/history-screen');
              },
            ),
          ],
        ),
        // drawer: const SecondDrawer(),
        body: PageView(
          controller: _pageController,
          children: [
            const DictionaryScreenEnglish(),
            const DictionaryScreenKurdish(),
            // GrammarScreen(),
            // QuestionsScreen(),
            // QuizScreen(currentTheme: currentTheme),
            QuizScreen(currentTheme: currentTheme),
            QuizScreen(currentTheme: currentTheme),
          ],
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        bottomNavigationBar: BottomNavyBar(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          containerHeight: 44,
          // backgroundColor: currentTheme.scaffoldBackgroundColor,
          selectedIndex: _currentIndex,
          showElevation: false,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (index) {
            setState(() {
              _currentIndex = index;
              _pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn);
            });
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Image.asset(
                'assets/images/uk_one.png',
                width: 24,
              ),
              // title: const Text('English'),
              title: Text(
                'English',
                style: TextStyle(
                  color: currentTheme
                      .primaryColor, // Replace with your desired color
                  fontSize: 12,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              activeColor: currentTheme.scaffoldBackgroundColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Image.asset(
                'assets/images/kurd_one.png',
                width: 24,
              ),
              // title: const Text('English'),
              title: Text(
                'کوردی',
                style: TextStyle(
                  color: currentTheme
                      .primaryColor, // Replace with your desired color
                  fontSize: 12,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              activeColor: currentTheme.scaffoldBackgroundColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(
                Icons.quiz,
                color: currentTheme.primaryColor,
              ),
              title: Text(
                'Grammar',
                style: TextStyle(
                  color: currentTheme
                      .primaryColor, // Replace with your desired color
                  fontSize: 12,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              activeColor: currentTheme.scaffoldBackgroundColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(
                Icons.quiz,
                color: currentTheme.primaryColor,
              ),
              title: Text(
                'Quiz',
                style: TextStyle(
                  color: currentTheme
                      .primaryColor, // Replace with your desired color
                  fontSize: 12,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              activeColor: currentTheme.scaffoldBackgroundColor,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        // bottomNavigationBar: NavigationBarTheme(
        //   data: NavigationBarThemeData(
        //       // backgroundColor: Colors.grey.withOpacity(0.1),
        //       indicatorColor: currentTheme.scaffoldBackgroundColor,
        //       labelTextStyle: MaterialStateProperty.all(
        //         const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        //       )),
        //   child: NavigationBar(
        //     height: 60,
        //     labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        //     animationDuration: const Duration(milliseconds: 600),
        //     // backgroundColor: currentTheme.backgroundColor,
        //     onDestinationSelected: (int index) {
        //       setState(() {
        //         currentPageIndex = index;
        //       });
        //     },
        //     indicatorColor: currentTheme.scaffoldBackgroundColor,
        //     selectedIndex: currentPageIndex,
        //     destinations: <Widget>[
        //       NavigationDestination(
        //         selectedIcon: const Icon(Icons.home),
        //         icon: Image.asset(
        //           'assets/images/uk_one.png',
        //           width: 28,
        //         ),
        //         label: 'English',
        //       ),
        //       NavigationDestination(
        //         selectedIcon: const Icon(Icons.home),
        //         icon: Image.asset(
        //           'assets/images/kurd_one.png',
        //           width: 28,
        //         ),
        //         label: 'کوردی',
        //       ),
        //       const NavigationDestination(
        //         selectedIcon: Icon(Icons.home),
        //         icon: Icon(Icons.book),
        //         label: 'Grammar',
        //       ),
        //       const NavigationDestination(
        //         selectedIcon: Icon(Icons.home),
        //         icon: Icon(Icons.question_answer),
        //         label: 'Q&A',
        //       ),
        //       const NavigationDestination(
        //         selectedIcon: Icon(Icons.home),
        //         icon: Icon(Icons.quiz),
        //         label: 'Quiz',
        //       ),
        //     ],
        //   ),
        // ),
        // body: <Widget>[
        //   Container(
        //     alignment: Alignment.center,
        //     child: const DictionaryScreenEnglish(),
        //   ),
        //   Container(
        //     alignment: Alignment.center,
        //     child: const DictionaryScreenKurdish(),
        //   ),
        //   Container(
        //     alignment: Alignment.center,
        //     child: const GrammarScreen(),
        //   ),
        //   Container(
        //     alignment: Alignment.center,
        //     child: const QuestionsScreen(),
        //   ),
        //   Container(
        //     alignment: Alignment.center,
        //     child: const QuizScreen(),
        //   ),
        // ][currentPageIndex],
      ),
    );
  }
}




// class HomeScreen extends ConsumerStatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends ConsumerState<HomeScreen> {
//   int _page = 0;

//   void displayDrawer(BuildContext context) {
//     Scaffold.of(context).openDrawer();
//   }

//   void onPageChanged(int page) {
//     setState(() {
//       _page = page;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final user = ref.watch(userProvider)!;
//     final currentTheme = ref.watch(themeNotifierProvider);

//     return Scaffold(
//       appBar: AppBar(
//         // centerTitle: true,
//         scrolledUnderElevation: 0,
//         title: const ZeetionaryAppbarStyle(),
//         leading: Builder(builder: (context) {
//           return IconButton(
//             icon: const Icon(Icons.menu),
//             onPressed: () => displayDrawer(context),
//           );
//         }),
//       ),
//       body: Constants.tabWidgets[_page],
//       drawer: const CommunityListDrawer(),
//       bottomNavigationBar: CupertinoTabBar(
//         // activeColor: currentTheme.iconTheme.color,
//         backgroundColor: currentTheme.backgroundColor,
//         items: [
//           BottomNavigationBarItem(
            // icon: Image.asset(
            //   'assets/images/uk_two.png',
            //   width: 30,
            // ),
//             activeIcon: const Icon(Icons.home),
//             label: 'English',
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               'assets/images/kurd_two.png',
//               width: 30,
//             ),
//             activeIcon: const Icon(Icons.home),
//             label: 'Kurdish',
//           ),
//           const BottomNavigationBarItem(
//               icon: Icon(Icons.book), label: 'Grammar'),
//           const BottomNavigationBarItem(
//               icon: Icon(Icons.question_answer), label: 'Q&A'),
//           const BottomNavigationBarItem(icon: Icon(Icons.quiz), label: 'Quiz'),
//         ],
//         onTap: onPageChanged,
//         currentIndex: _page,
//       ),
//     );
//   }
// }
