import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/firebase/features/auth/screen/home_screen_logout/english_dictionary_logout/english_dictionary_logout.dart';
import 'package:zeetionary/dictionary/kurdish_dictionary/kurdish_dictionary.dart';
import 'package:zeetionary/firebase/features/auth/screen/login_screen.dart';
// import 'package:zeetionary/grammar/grammar_screen.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
import 'package:zeetionary/theme/pallete.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class HomeScreenThreeLogout extends ConsumerStatefulWidget {
  const HomeScreenThreeLogout({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomeScreenThreeLogoutState();
}

class _HomeScreenThreeLogoutState extends ConsumerState<HomeScreenThreeLogout> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const DictionaryScreenEnglishLogout(),
    const DictionaryScreenKurdish(),
    // const GrammarScreen(),
    const LoginScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _advancedDrawerController = AdvancedDrawerController();

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }

  void toggleTheme(WidgetRef ref) {
    ref.read(themeNotifierProvider.notifier).toggleTheme();
  }

  @override
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider); // Get text size and add 3

    return AdvancedDrawer(
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      // backdropColor: const Color.fromARGB(255, 11, 11, 11),
      // backdropColor: Theme.of(context).primaryColor.withOpacity(0.01),
      backdropColor: Theme.of(context).scaffoldBackgroundColor,
      // animationCurve: Curves.easeInOutCubicEmphasized,
      // backdropColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.8),
      animationDuration: const Duration(milliseconds: 200),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      drawer: MyDrawerLogout(textSize: textSize),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40.0),
          child: AppBar(
            // backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
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
                    duration: const Duration(milliseconds: 300),
                    child: Icon(
                      value.visible ? Icons.clear : Icons.menu,
                      size: textSize + 7,
                      key: ValueKey<bool>(value.visible),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: NavigationBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          shadowColor: Theme.of(context).primaryColor,
          indicatorColor: Theme.of(context).primaryColor.withOpacity(0.2),
          surfaceTintColor: Theme.of(context).primaryColor.withOpacity(0.1),
          selectedIndex: _selectedIndex,
          onDestinationSelected: _onItemTapped,
          destinations: <NavigationDestination>[
            NavigationDestination(
              icon: Icon(Icons.book, size: textSize + 10),
              label: 'English',
            ),
            NavigationDestination(
              icon: Icon(Icons.bookmark, size: textSize + 10),
              label: 'کوردی',
            ),
            // NavigationDestination(
            //   icon: Icon(Icons.school, size: textSize + 10),
            //   label: 'Grammar',
            // ),
            NavigationDestination(
              icon: Icon(
                Icons.login,
                size: textSize + 10,
                color: Colors.red,
              ),
              label: 'Log in',
            ),
          ],
        ),
      ),
    );
  }
}

class MyDrawerLogout extends StatelessWidget {
  const MyDrawerLogout({
    super.key,
    required this.textSize,
  });

  final double textSize;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTileTheme(
        textColor: Colors.blueAccent,
        iconColor: Colors.white,
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 5,
            // minHeight: MediaQuery.of(context).size.height * 0.8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                children: [
                  Container(
                    width: 150.0,
                    height: 150.0,
                    margin: const EdgeInsets.only(
                      top: 50.0,
                      bottom: 33.0,
                    ),
                    clipBehavior: Clip.antiAlias,
                    padding: const EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.01),
                      borderRadius: BorderRadius.circular(55.0),
                      border: Border.all(
                        color: Theme.of(context).primaryColor.withOpacity(0.02),
                        width: 1.0,
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/google.png',
                    ),
                  ),
                ],
              ),
              const Divider(),
              SizedBox(
                height: 480,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      ListTile(
                        title: Text(
                          "Quiz",
                          style: TextStyle(
                            fontSize: textSize + 3,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        leading: Icon(
                          Icons.quiz,
                          color: Theme.of(context).primaryColor,
                        ),
                        onTap: () {
                          Routemaster.of(context).push('/quiz-screen');
                        },
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ListTile(
                        title: Text(
                          "TTS",
                          style: TextStyle(
                            fontSize: textSize + 3,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        leading: Icon(
                          Icons.volume_up,
                          color: Theme.of(context).primaryColor,
                        ),
                        onTap: () {
                          Routemaster.of(context).push('/tts-screen');
                        },
                      ),
                      ListTile(
                        title: Text(
                          "Irregular verbs",
                          style: TextStyle(
                            fontSize: textSize + 3,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        leading: Icon(
                          Icons.volume_up,
                          color: Theme.of(context).primaryColor,
                        ),
                        onTap: () {
                          Routemaster.of(context)
                              .push('/irregular-verbs-screen');
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white54,
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 16.0,
                  ),
                  child: Text(
                    "Dictionary",
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).primaryColor.withOpacity(0.3),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
