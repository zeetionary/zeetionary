// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/dictionary/english_dictionary/english_dictionary.dart';
import 'package:zeetionary/dictionary/kurdish_dictionary/kurdish_dictionary.dart';
import 'package:zeetionary/grammar/grammar_screen.dart';
import 'package:zeetionary/home/drawers/community_list_drawer.dart';
import 'package:zeetionary/home/screens/history_screen.dart';
import 'package:zeetionary/questions/question_screen.dart';
import 'package:zeetionary/quiz/quiz_screen.dart';
import 'package:zeetionary/theme/pallete.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int currentPageIndex = 0;

  void displayDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  void goToHistory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const HistoryScreen(),
      ),
    );
  }

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

  @override
  Widget build(BuildContext context) {
    // final user = ref.watch(userProvider)!;
    final currentTheme = ref.watch(themeNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        scrolledUnderElevation: 0,
        title: const ZeetionaryAppbarStyle(),
        // title: Image.asset(
        //   'assets/images/zeetionary_three.png',
        //   width: 200,
        // ),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => displayDrawer(context),
          );
        }),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () {
              Routemaster.of(context).push('/history-screen');
            },
          ),
        ],
      ),
      drawer: const CommunityListDrawer(),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: currentTheme.scaffoldBackgroundColor,
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            )),
        child: NavigationBar(
          height: 60,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: const Duration(milliseconds: 600),
          // backgroundColor: currentTheme.backgroundColor,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: currentTheme.scaffoldBackgroundColor,
          selectedIndex: currentPageIndex,
          destinations: <Widget>[
            NavigationDestination(
              selectedIcon: const Icon(Icons.home),
              icon: Image.asset(
                'assets/images/uk_one.png',
                width: 28,
              ),
              label: 'English',
            ),
            NavigationDestination(
              selectedIcon: const Icon(Icons.home),
              icon: Image.asset(
                'assets/images/kurd_one.png',
                width: 28,
              ),
              label: 'کوردی',
            ),
            const NavigationDestination(
              // selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.book),
              label: 'Grammar',
            ),
            const NavigationDestination(
              // selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.question_answer),
              label: 'Q&A',
            ),
            const NavigationDestination(
              // selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.quiz),
              label: 'Quiz',
            ),
          ],
        ),
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: const DictionaryScreenEnglish(),
        ),
        Container(
          alignment: Alignment.center,
          child: const DictionaryScreenKurdish(),
        ),
        Container(
          alignment: Alignment.center,
          child: const GrammarScreen(),
        ),
        Container(
          alignment: Alignment.center,
          child: const QuestionsScreen(),
        ),
        Container(
          alignment: Alignment.center,
          child: const QuizScreen(),
        ),
      ][currentPageIndex],
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
