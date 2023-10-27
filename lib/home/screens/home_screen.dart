import 'dart:developer';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/dictionary/english_dictionary/english_dictionary.dart';
import 'package:zeetionary/dictionary/kurdish_dictionary/kurdish_dictionary.dart';
import 'package:zeetionary/grammar/grammar_screen.dart';
import 'package:zeetionary/home/drawers/community_list_drawer.dart';
import 'package:zeetionary/questions/question_screen.dart';
import 'package:zeetionary/quiz/quiz_screen.dart';
import 'package:zeetionary/theme/pallete.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final _pageController = PageController(initialPage: 0);

  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 5;

  int _page = 0;

  void displayDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  final List<Widget> bottomBarPages = [
    const DictionaryScreenEnglish(),
    const DictionaryScreenKurdish(),
    const GrammarScreen(),
    const QuestionsScreen(),
    const QuizScreen(),
  ];

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
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      drawer: const CommunityListDrawer(),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              /// Provide NotchBottomBarController
              notchBottomBarController: _controller,
              color: currentTheme.scaffoldBackgroundColor,
              showLabel: true,
              notchColor: currentTheme.primaryColor,

              /// restart app if you change removeMargins
              removeMargins: false,
              bottomBarWidth: 500,
              durationInMilliSeconds: 30000,
              bottomBarItems: [
                BottomBarItem(
                  inActiveItem: Image.asset(
                    'assets/images/uk_two.png',
                    width: 30,
                  ),
                  activeItem: const Icon(
                    Icons.home_filled,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'English',
                ),
                BottomBarItem(
                  inActiveItem: Image.asset(
                    'assets/images/kurd_two.png',
                    width: 30,
                  ),
                  activeItem: const Icon(
                    Icons.home,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Kurdish',
                ),

                ///svg example
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.book,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.book,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Grammar',
                ),
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.question_answer,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.question_answer,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Q&A',
                ),
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.quiz,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.quiz,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Quiz',
                ),
              ],
              onTap: (index) {
                /// perform action on tab change and to update pages you can update pages without pages
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
            )
          : null,
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
//             icon: Image.asset(
//               'assets/images/uk_two.png',
//               width: 30,
//             ),
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
