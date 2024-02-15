import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Add this import for Clipboard
import 'package:routemaster/routemaster.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
// import 'package:zeetionary/questions/question_screen.dart';
// import 'package:zeetionary/quiz/quiz_screen.dart';
// import 'package:zeetionary/grammar/grammar_screen.dart';
// import 'package:zeetionary/dictionary/english_dictionary/english_dictionary.dart';
// import 'package:zeetionary/dictionary/kurdish_dictionary/kurdish_dictionary.dart';
// import 'package:zeetionary/theme/pallete.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Constants {
  static const logo1Path = 'assets/images/zeetionary_one.png';
  // static const logo2Path = 'assets/images/zeetionary_two.png';
  static const loginZeetionaryPath = 'assets/images/zeetionary_three.png';
  static const googlePath = 'assets/images/google.png';
  static const uk1Path = 'assets/images/uk_one.png';
  static const kurd1Path = 'assets/images/kurd_one.png';
}

class ZeetionaryAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ZeetionaryAppbar({super.key});

  // (zee; height for app bar) https://chat.openai.com/c/85a94f32-5a86-4f89-b50f-115abe702021

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // centerTitle: true,
      scrolledUnderElevation: 0,
      title: const ZeetionaryAppbarStyle(),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Routemaster.of(context).pop();
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_defaultHeight);

  static const double _defaultHeight = 37.0;
}

// class ZeetionaryAppbar extends StatelessWidget implements PreferredSizeWidget {
//   const ZeetionaryAppbar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const ZeetionaryAppbarTheme();
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }

// class ZeetionaryAppbarTheme extends ConsumerStatefulWidget {
//   const ZeetionaryAppbarTheme({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() =>
//       _ZeetionaryAppbarThemeState();
// }

// class _ZeetionaryAppbarThemeState extends ConsumerState<ZeetionaryAppbarTheme> {
//   _ZeetionaryAppbarThemeState();

//   @override
//   Widget build(BuildContext context) {
//     // final currentTheme = ref.watch(themeNotifierProvider);

//     return AppBar(
//       backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
//       // centerTitle: true,
//       scrolledUnderElevation: 0,
//       title: const ZeetionaryAppbarStyle(),
//       leading: IconButton(
//         icon: const Icon(Icons.arrow_back),
//         onPressed: () {
//           Routemaster.of(context).pop();
//         },
//       ),
//       actions: [
//         IconButton(
//           icon: const Icon(Icons.history),
//           onPressed: () {
//             Routemaster.of(context).push('/history-screen');
//           },
//         ),
//       ],
//     );
//   }
// }

class ZeetionaryAppbarStyle extends ConsumerStatefulWidget {
  const ZeetionaryAppbarStyle({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ZeetionaryAppbarStyleState();
}

class _ZeetionaryAppbarStyleState extends ConsumerState<ZeetionaryAppbarStyle> {
  _ZeetionaryAppbarStyleState();

  @override
  Widget build(BuildContext context) {
    // final currentTheme = ref.watch(themeNotifierProvider);
    final textSize = ref.watch(textSizeProvider) + 10;

    return Text(
      "Dictionary",
      style: TextStyle(
        fontSize: textSize, // Adjust font size as needed
        fontWeight: FontWeight.bold, // Adjust font weight as needed
        color: Theme.of(context).primaryColor,
        // color: Theme.of(context).primaryColor
        //     .withOpacity(0.8), // Text color (will be masked by the gradient)
      ),
    );
  }
}

class YouTubeScroller extends StatelessWidget {
  final List<Widget> children;

  const YouTubeScroller({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: children,
    );
  }
}

class YouTubeContainerDesignNew extends StatelessWidget {
  const YouTubeContainerDesignNew({
    super.key,
    required YoutubePlayerController controller,
    bool showIndicator =
        true, // Add a parameter to conditionally show the indicator
  })  : _controller = controller,
        _showIndicator = showIndicator;

  final YoutubePlayerController _controller;
  final bool _showIndicator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DividerDefinition(),
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).primaryColor.withOpacity(0.06),
                offset: const Offset(0, 4),
                blurRadius: 8,
              ),
            ],
            border: Border.all(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: YoutubePlayer(
              controller: _controller,
              aspectRatio: 16 / 9,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        if (_showIndicator) // Conditionally show the indicator
          const NextVideoIndicator(),
      ],
    );
  }
}

class NextVideoIndicator extends ConsumerStatefulWidget {
  const NextVideoIndicator({super.key});

  @override
  // _NextVideoIndicatorState createState() => _NextVideoIndicatorState();
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NextVideoIndicatorState();
}

class _NextVideoIndicatorState extends ConsumerState<NextVideoIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: 10.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider);

    return Column(
      children: [
        // Your indicator widget content here
        Text('Next Video',
            style: TextStyle(
              color: Theme.of(context).primaryColor.withOpacity(0.2),
              fontSize: textSize,
            )),
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, _animation.value),
              child: Icon(
                Icons.swipe_up_rounded,
                // color: Colors.blue,
                color: Theme.of(context).primaryColor.withOpacity(0.2),
                size: textSize, // Set the size of the icon
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class YouTubeContainerDesignEnd extends StatelessWidget {
  const YouTubeContainerDesignEnd({
    super.key,
    required YoutubePlayerController controller,
  }) : _controller = controller;

  final YoutubePlayerController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DividerDefinition(),
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            // Add to the BoxDecoration of the outer Container:
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).primaryColor.withOpacity(0.06),
                offset: const Offset(0, 4),
                blurRadius: 8,
              ),
            ],
            border: Border.all(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(
                15.0), // Apply border radius to the container
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: YoutubePlayer(
              controller: _controller,
              aspectRatio: 16 / 9,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomTabBar extends ConsumerWidget {
  final List<Widget> tabs;

  const CustomTabBar({super.key, required this.tabs});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final currentTheme = ref.watch(themeNotifierProvider);
    final textSize = ref.watch(textSizeProvider) + 20;

    return Container(
      height: textSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        // boxShadow: [
        //   BoxShadow(
        //     color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.3),
        //     // color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
        //     blurRadius: 4.0,
        //   ),
        // ],
        // gradient: LinearGradient(
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        //   colors: [
        //     Theme.of(context).primaryColor.withOpacity(0.06),
        //     Theme.of(context).primaryColor.withOpacity(0.06),
        //     // Theme.of(context).primaryColor.withOpacity(0.08),
        //     // Theme.of(context).primaryColor.withOpacity(0.05),
        //   ],
        // ),
        border: Border.all(
          color: Theme.of(context).primaryColor.withOpacity(0.08),
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
      child: TabBar(
        isScrollable: false,
        tabs: tabs,
        indicator: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).scaffoldBackgroundColor.withOpacity(0.25),
              Theme.of(context).scaffoldBackgroundColor.withOpacity(0.45),
              // Colors.red.shade800.withOpacity(0.09),
              // Colors.red.shade800.withOpacity(0.07),
              // Theme.of(context).primaryColor.withOpacity(0.08),
              // Theme.of(context).primaryColor.withOpacity(0.05),
            ],
          ),
          // color: Theme.of(context).primaryColor.withOpacity(0.1),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0),
          ),
          border: Border.all(
            color: Theme.of(context).primaryColor.withOpacity(0.18),
            width: 1.0,
            style: BorderStyle.solid,
          ),
        ),
        // decoration: BoxDecoration(
        //   color: Colors.blue.shade800.withOpacity(0.1),
        //   // color: Colors.blue.withOpacity(
        //   //     0.05), // Replace with your desired background color
        //   borderRadius: const BorderRadius.only(
        //     topLeft: Radius.circular(12.0),
        //     bottomRight: Radius.circular(12.0),
        //   ),
        //   border: Border.all(
        //     color: Theme.of(context).primaryColor.withOpacity(0.5),
        //     // color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
        //     width: 2.0,
        //   ),
        // ),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.all(4.0),
      ),
    );
  }
}

// class CustomTabBar extends ConsumerWidget {
//   final List<Widget> tabs;

//   const CustomTabBar({super.key, required this.tabs});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final currentTheme = ref.watch(themeNotifierProvider);

//     return TabBar(
//       isScrollable: true,
//       tabs: tabs,
//       indicator: BoxDecoration(
//         color: currentTheme
//             .shadowColor, // Assuming you have this color in your theme
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//       indicatorSize: TabBarIndicatorSize.tab,
//       indicatorPadding: const EdgeInsets.all(4.0),
//     );
//   }
// }

// class CustomTabBar extends ConsumerWidget {
//   final List<Widget> tabs;

//   const CustomTabBar({super.key, required this.tabs});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final currentTheme = ref.watch(themeNotifierProvider);

//     return TabBar(
//       isScrollable: true,
//       tabs: tabs,
//       indicator: BoxDecoration(
//         color: currentTheme
//             .shadowColor, // Assuming you have this color in your theme
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//       indicatorSize: TabBarIndicatorSize.tab,
//       indicatorPadding: const EdgeInsets.all(4.0),
//     );
//   }
// }

class VideoIconForTab extends ConsumerWidget {
  const VideoIconForTab({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 5; // + 1;
    return Tab(
      icon: Image.asset(
        'assets/images/youtube_one.png',
        width: 80,
        height: textSize,
      ),
      // icon: Text(
      //   "📺",
      //   style: TextStyle(
      //     fontSize: textSize,
      //   ),
      // ),
    );
  }
}

class KurdIconForTab extends ConsumerWidget {
  const KurdIconForTab({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 5;
    return Tab(
      icon: Image.asset(
        'assets/images/kurd_one.png',
        width: 80,
        height: textSize,
      ),
    );
  }
}

class UkIconForTab extends ConsumerWidget {
  const UkIconForTab({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 5;
    return Tab(
      icon: Image.asset(
        'assets/images/uk_one.png',
        width: 80,
        height: textSize,
      ),
    );
  }
}

class DividerDefinition extends StatelessWidget {
  const DividerDefinition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          width: MediaQuery.of(context).size.width / 1, child: const Divider()),
    );
  }
}

class DividerSentences extends StatelessWidget {
  const DividerSentences({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          width: MediaQuery.of(context).size.width / 3, child: const Divider()),
    );
  }
}

// // no decoration --- no animation
// class EntryTitle extends StatelessWidget {
//   final String word;

//   const EntryTitle({super.key, required this.word});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 4.0),
//         child: Text(
//           word,
//           style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }

// // decoration --- no animation

// class EntryTitle extends ConsumerWidget {
//   final String word;

//   const EntryTitle({super.key, required this.word});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final currentTheme = ref.watch(themeNotifierProvider);
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Theme.of(context).primaryColor
//                 .withOpacity(0.05), // Add a background color
//             borderRadius: BorderRadius.circular(12.0), // Add rounded corners
//           ),
//           child: Center(
//             child: Text(
//               word,
//               style: TextStyle(
//                 fontSize: 26,
//                 fontWeight: FontWeight.bold,
//                 color: Theme.of(context).primaryColor
//                     .withOpacity(0.8), // Set text color to white
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // decoration and animation https://chat.openai.com/c/34cd41ff-6232-4eb7-9c26-e00b688e867b

class EntryTitle extends ConsumerStatefulWidget {
  final String word;

  const EntryTitle({super.key, required this.word});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EntryTitleState();
}

class _EntryTitleState extends ConsumerState<EntryTitle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration:
          const Duration(milliseconds: 1000), // Adjust the duration as needed
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final currentTheme = ref.watch(themeNotifierProvider);

    // Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 8;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Container(
          // height: 30,
          decoration: BoxDecoration(
            // color: Theme.of(context).primaryColor.withOpacity(0.01),
            // gradient: LinearGradient(
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            //   colors: [
            //     Theme.of(context).scaffoldBackgroundColor.withOpacity(0.3),
            //     Theme.of(context).scaffoldBackgroundColor.withOpacity(0.3),
            //     // Theme.of(context).primaryColor.withOpacity(0.05),
            //     // Theme.of(context).primaryColor.withOpacity(0.09),
            //     // Colors.red.shade800.withOpacity(0.09),
            //     // Colors.red.shade800.withOpacity(0.07),
            //     // Theme.of(context).primaryColor.withOpacity(0.08),
            //     // Theme.of(context).primaryColor.withOpacity(0.05),
            //   ],
            // ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12.0),
              bottomRight: Radius.circular(12.0),
            ),
            border: Border.all(
              color: Theme.of(context).primaryColor.withOpacity(0.18),
              // color: Colors.blue.withOpacity(0.3),
              width: 1.0,
              style: BorderStyle.solid,
            ),
          ),
          // decoration: BoxDecoration(
          //   color: Colors.blue.shade800.withOpacity(0.1),
          //   // color: Colors.blue.withOpacity(
          //   //     0.05), // Replace with your desired background color
          //   borderRadius: const BorderRadius.only(
          //     topLeft: Radius.circular(12.0),
          //     bottomRight: Radius.circular(12.0),
          //   ),
          //   border: Border.all(
          //     color: Theme.of(context).primaryColor.withOpacity(0.5),
          //     // color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
          //     width: 2.0,
          //   ),
          // ),
          //   BoxDecoration(
          //   gradient: LinearGradient(
          //     colors: [
          //       Colors.blue.shade200.withOpacity(0.1),
          //       Colors.blue.shade700.withOpacity(0.2)
          //       // Theme.of(context).scaffoldBackgroundColor.withOpacity(0.3),
          //       // Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
          //     ],
          //   ),
          //   borderRadius: const BorderRadius.only(
          //     topLeft: Radius.circular(12.0),
          //     bottomRight: Radius.circular(12.0),
          //   ),
          //   border: Border.all(
          //     color: Colors.blue.shade800.withOpacity(0.4),
          //     // color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
          //     width: 2.0,
          //   ),
          // ),
          child: Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                final int lettersCount =
                    (_controller.value * widget.word.length).round();
                return Text(
                  widget.word.substring(0, lettersCount),
                  style: TextStyle(
                    fontSize: textSize,
                    // fontWeight: FontWeight.bold,
                    fontWeight: FontWeight.w700,
                    // color: Theme.of(context).primaryColor.withOpacity(0.9),
                    color: Theme.of(context).primaryColor,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class AlsoEnglish extends ConsumerWidget {
  final String word;

  // const AlsoEnglish({Key? key, required this.text}) : super(key: key);
  const AlsoEnglish({super.key, required this.word});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 2; // Get text size and add 3
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      // padding: const EdgeInsets.all(8.0), // Add padding here
      child: Text(
        word,
        style: TextStyle(
          fontSize: textSize,
          // color: Colors.yellow.withOpacity(0.7),
          color: Theme.of(context).highlightColor,
        ),
      ),
    );
  }
}

// class IPAofEnglish extends StatelessWidget {
//   final String text;

//   const IPAofEnglish({super.key, required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: const BoxConstraints(maxWidth: 300),
//       child: Text(
//         text,
//         style: const TextStyle(fontSize: 18),
//       ),
//     );
//   }
// }

class IPAofEnglish extends ConsumerWidget {
  final String text;

  const IPAofEnglish({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 3;

    return Container(
      // height: 16,
      constraints: const BoxConstraints(maxWidth: 300),
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        // Wrap Text with GestureDetector
        onLongPress: () {
          Clipboard.setData(ClipboardData(text: text));
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('IPA copied'),
            ),
          );
        },
        child: Text(
          text,
          style: TextStyle(fontSize: textSize, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}

class IPAofEnglishtest extends ConsumerWidget {
  // Renamed to IPAofEnglishtest
  final String text;

  const IPAofEnglishtest({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 2; // Get text size and add 3

    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: textSize,
        ), // Use adjusted text size
      ),
    );
  }
}

class KurdishVocabulary extends ConsumerWidget {
  final String text;

  const KurdishVocabulary({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        // Wrap Text with GestureDetector
        onLongPress: () {
          Clipboard.setData(ClipboardData(text: text));
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Directionality(
                textDirection: TextDirection.rtl,
                child: Text('وشەوواتا لەبەرگیرایەوە'),
              ),
            ),
          );
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: textSize + 2,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}

class DefinitionKurdish extends ConsumerWidget {
  final String text;

  const DefinitionKurdish({super.key, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 2;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        // Wrap Text with GestureDetector
        onLongPress: () {
          Clipboard.setData(ClipboardData(text: text));
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Directionality(
                textDirection: TextDirection.rtl,
                child: Text('پێناسەی کوردی لەبەرگیرایەوە'),
              ),
            ),
          );
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}

// class ExampleSentenceEnglish extends ConsumerWidget {
//   // (personal; text can be copied) https://bard.google.com/chat/590d23e62de86007
//   final String text;

//   const ExampleSentenceEnglish({super.key, required this.text});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final textSize = ref.watch(textSizeProvider) + 1;

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 4.0),
//       child: GestureDetector(
//         // Wrap Text with GestureDetector
//         onLongPress: () {
//           Clipboard.setData(ClipboardData(text: text));
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('English sentence copied')),
//           );
//         },
//         child: Align(
//           alignment: Alignment.topLeft,
//           child: Text(
//             text,
//             style: TextStyle(fontSize: textSize, fontWeight: FontWeight.w400),
//             textDirection: TextDirection.ltr,
//             textAlign: TextAlign.left,
//           ),
//         ),
//       ),
//     );
//   }
// }

class ExampleSentenceEnglish extends ConsumerStatefulWidget {
  final String text;
  final String? note;
  // (personal; text can be copied) https://bard.google.com/chat/590d23e62de86007

  const ExampleSentenceEnglish({super.key, required this.text, this.note});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ExampleSentenceEnglishState();
}

class _ExampleSentenceEnglishState extends ConsumerState<ExampleSentenceEnglish>
    with SingleTickerProviderStateMixin {
  bool _showNote = false;

  @override
  // Widget build(BuildContext context, WidgetRef ref) {
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider) + 1;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max, // Ensure Row takes minimum width
            children: [
              Expanded(
                child: GestureDetector(
                  // Wrap Text with GestureDetector
                  onLongPress: () {
                    Clipboard.setData(ClipboardData(text: widget.text));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('English sentence copied')),
                    );
                  },
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      fontSize: textSize,
                      fontWeight: FontWeight.w400,
                    ),
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              if (widget.note != null && widget.note!.isNotEmpty)
                IconButton(
                  padding: EdgeInsets.zero,
                  iconSize:
                      textSize, // Optional: Adjust size for flush appearance
                  onPressed: () {
                    setState(() {
                      _showNote = !_showNote;
                    });
                  },
                  icon: Icon(_showNote ? Icons.expand_less : Icons.note_alt),
                ),
            ],
          ),
          if (_showNote && widget.note != null && widget.note!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.01),
                  border: Border.all(
                    color: Theme.of(context).primaryColor.withOpacity(0.18),
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Note: ${widget.note}',
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// class ExampleSentenceKurdish extends ConsumerWidget {
//   final String text;

//   const ExampleSentenceKurdish({super.key, required this.text});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final textSize = ref.watch(textSizeProvider) + 1;

//     return Align(
//       alignment: Alignment.topRight,
//       child: GestureDetector(
//         // Wrap Text with GestureDetector
//         onLongPress: () {
//           Clipboard.setData(ClipboardData(text: text));
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(
//               content: Directionality(
//                 textDirection: TextDirection.rtl,
//                 child: Text('ڕستەی کوردی لەبەرگیرایەوە'),
//               ),
//             ),
//           );
//         },
//         child: Text(
//           text,
//           style: TextStyle(fontSize: textSize),
//           textDirection: TextDirection.rtl,
//           textAlign: TextAlign.right,
//         ),
//       ),
//     );
//   }
// }

class ExampleSentenceKurdish extends ConsumerStatefulWidget {
  final String text;
  final String? note;
  // (personal; text can be copied) https://bard.google.com/chat/590d23e62de86007

  const ExampleSentenceKurdish({super.key, required this.text, this.note});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ExampleSentenceKurdishState();
}

class _ExampleSentenceKurdishState extends ConsumerState<ExampleSentenceKurdish>
    with SingleTickerProviderStateMixin {
  bool _showNote = false;

  @override
  // Widget build(BuildContext context, WidgetRef ref) {
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider) + 1;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max, // Ensure Row takes minimum width
            children: [
              if (widget.note != null && widget.note!.isNotEmpty)
                IconButton(
                  padding: EdgeInsets.zero,
                  iconSize:
                      textSize, // Optional: Adjust size for flush appearance
                  onPressed: () {
                    setState(() {
                      _showNote = !_showNote;
                    });
                  },
                  icon: Icon(_showNote ? Icons.expand_less : Icons.note_alt),
                ),
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    // Wrap Text with GestureDetector
                    onLongPress: () {
                      Clipboard.setData(ClipboardData(text: widget.text));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text('ڕستەی کوردی لەبەرگیرایەوە'),
                          ),
                        ),
                      );
                    },
                    child: Text(
                      widget.text,
                      style: TextStyle(
                        fontSize: textSize,
                        fontWeight: FontWeight.w400,
                      ),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (_showNote && widget.note != null && widget.note!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.01),
                    border: Border.all(
                      color: Theme.of(context).primaryColor.withOpacity(0.18),
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        'تێبینی: ${widget.note}',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// class CustomIconButtonBritish extends StatelessWidget {
//   final VoidCallback? onPressed;

//   const CustomIconButtonBritish({
//     super.key,
//     this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       iconSize: 18,
//       icon: const Icon(
//         Icons.record_voice_over,
//         color: Colors.blue,
//       ),
//       onPressed: onPressed,
//     );
//   }
// }

class CustomIconButtonBritish extends ConsumerWidget {
  final VoidCallback? onPressed;

  const CustomIconButtonBritish({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);
    return IconButton(
      // iconSize: 18,
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blue, width: 1.0),
        ),
        padding: const EdgeInsets.all(6.0),
        child: Icon(
          Icons.record_voice_over,
          color: Colors.blue,
          size: textSize - 6, // Adjust size as needed
        ),
      ),
      onPressed: onPressed,
    );
  }
}

class CustomIconButtonAmerican extends ConsumerWidget {
  final VoidCallback? onPressed;

  const CustomIconButtonAmerican({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);
    return IconButton(
      // iconSize: 18,
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: const Color.fromARGB(182, 255, 0, 0), width: 1.0),
        ),
        padding: const EdgeInsets.all(6.0),
        child: Icon(
          Icons.record_voice_over,
          color: const Color.fromARGB(182, 255, 0, 0),
          size: textSize - 6, // Adjust size as needed
        ),
      ),
      onPressed: onPressed,
    );
  }
}

class CustomAlertDialog extends ConsumerWidget {
  final String title;
  final String content;

  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);
    // (zee: added dialog)  https://chat.openai.com/c/a248af68-029b-41c6-9bc2-55547b2b3f20
    return AlertDialog(
      title: Text(
        title,
        style: TextStyle(
          fontSize: textSize + 8,
          fontWeight: FontWeight.w600,
        ),
      ),
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          content,
          style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class EnglishMeaningConst extends ConsumerWidget {
  final String text;

  const EnglishMeaningConst({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 2;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onLongPress: () {
                Clipboard.setData(ClipboardData(text: text));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('English meaning copied')),
                );
              },
              child: Text(
                text,
                style:
                    TextStyle(fontSize: textSize, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EnglishButtonTTS extends ConsumerStatefulWidget {
  final Function(String) onBritishPressed;
  final Function(String) onAmericanPressed;
  final VoidCallback onStopPressed;

  const EnglishButtonTTS({
    required this.onBritishPressed,
    required this.onAmericanPressed,
    required this.onStopPressed,
    super.key,
  });

  @override
  // _EnglishButtonTTSState createState() => _EnglishButtonTTSState();
  // State<EnglishButtonTTS> createState() => _EnglishButtonTTSState();
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EnglishButtonTTSState();
}

// class _EnglishButtonTTSState extends State<EnglishButtonTTS> {
class _EnglishButtonTTSState extends ConsumerState<EnglishButtonTTS>
    with SingleTickerProviderStateMixin {
  bool isSpeaking = false;

  // (zee; added tts to meaning text; text comes twice) https://chat.openai.com/c/dff0d3b0-86d4-4ed0-93af-e8272bccfaa5
  // (zee; tts reads meaning; text comes once) https://chat.openai.com/c/c68e6ebf-f914-4eb6-bfc5-afdc77cc6b72

  @override
  Widget build(BuildContext context) {
    // Theme.of(context).primaryColor.withOpacity(0.009),
    final textSize = ref.watch(textSizeProvider);
    return IntrinsicWidth(
      child: Container(
        // height: 50,
        decoration: BoxDecoration(
          // color: Theme.of(context).primaryColor.withOpacity(0.04),
          border: Border.all(
            color: Theme.of(context).primaryColor.withOpacity(0.2),
            width: 1.0, // Adjust the border width
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Theme.of(context).primaryColor.withOpacity(0.2),
          //     spreadRadius: 2,
          //     blurRadius: 4,
          //     offset: Offset(0, 2), // Add a subtle shadow
          //   ),
          // ],
          borderRadius: BorderRadius.circular(51.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomIconButtonBritish(
              onPressed: () {
                widget.onBritishPressed("en-GB");
                updateSpeakingState(true);
              },
            ),
            CustomIconButtonAmerican(
              onPressed: () {
                widget.onAmericanPressed("en-US");
                updateSpeakingState(true);
              },
            ),
            // Conditional rendering of pause button
            if (isSpeaking)
              IconButton(
                icon: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 1.0),
                    ),
                    padding: const EdgeInsets.all(6.0),
                    child: Icon(Icons.pause, size: textSize - 6)),
                onPressed: () {
                  widget.onStopPressed();
                  updateSpeakingState(false);
                },
              ),
          ],
        ),
      ),
    );
  }

  // Function to update the speaking state
  void updateSpeakingState(bool speaking) {
    setState(() {
      isSpeaking = speaking;
    });
  }
}

class CustomSizedBoxForTTS extends StatelessWidget {
  const CustomSizedBoxForTTS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 0.2,
    );
  }
}

class EmptyPageIcon extends StatefulWidget {
  final String text;

  // (not zee) https://chat.openai.com/c/ab801473-3515-4870-bb46-1526257466b9

  const EmptyPageIcon({super.key, required this.text});

  @override
  // ignore: library_private_types_in_public_api
  _EmptyPageIconState createState() => _EmptyPageIconState();
}

class _EmptyPageIconState extends State<EmptyPageIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    // Repeat the animation for a while
    _controller.repeat(reverse: true);

    // Stop the rotation after 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      _controller.stop();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.rotate(
                angle: _animation.value * 2 * 3.141,
                child: const Icon(
                  Icons.history,
                  size: 66.0,
                  // color: Colors.blue,
                ),
              );
            },
          ),
          Text(widget.text),
        ],
      ),
    );
  }
}

// divider
// divider
// divider
// divider
// divider

// // if card is used https://chat.openai.com/c/ab8b1f04-cfed-4baa-b8d4-0dbe07a84aa1
// class MyExpansionTile extends ConsumerStatefulWidget {
//   static const String defaultTitle = "ڕستەی زیاتر"; // Shared title
//   final List<Widget> children;

//   const MyExpansionTile({
//     super.key,
//     required this.children,
//   });

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() =>
//       _MyExpansionTileState();
// }

// class _MyExpansionTileState extends ConsumerState<MyExpansionTile>
//     with SingleTickerProviderStateMixin {
//   bool _isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     // final currentTheme = ref.watch(themeNotifierProvider);
//     return Card(
//       color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
//       elevation: 3,
//       // shadowColor: Colors.grey.withOpacity(0.5),
//       margin: const EdgeInsets.all(8.0),
//       // shape: RoundedRectangleBorder(
//       //   borderRadius: BorderRadius.circular(16.0), // Adjust the border radius
//       //   side: BorderSide(color: Colors.blue.withOpacity(0.7)),
//       // ),
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16.0), // Adjust the border radius
//           side: _isExpanded
//               // ? BorderSide(color: Colors.blue.withOpacity(0.3))
//               ? BorderSide(color: Theme.of(context).primaryColor.withOpacity(0.3))
//               // : BorderSide(color: Colors.blue.withOpacity(0.3)),
//               : BorderSide(color: Theme.of(context).primaryColor.withOpacity(0.3))),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           InkWell(
//             onTap: () {
//               setState(() {
//                 _isExpanded = !_isExpanded;
//               });
//             },
//             child: ListTile(
//               title: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Icon(
//                     _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
//                   ),
//                   Row(
//                     children: [
//                       const Text(
//                         MyExpansionTile.defaultTitle,
//                         textDirection: TextDirection.rtl,
//                         style: TextStyle(
//                           fontSize: 14.0, // Adjust the font size
//                           fontWeight: FontWeight.bold, // Adjust the font weight
//                           // color: Colors.black, // Adjust the text color
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 6,
//                       ),
//                       Icon(
//                         Icons.book,
//                         color: Colors.blue.withOpacity(0.9),
//                         // color: Theme.of(context).primaryColor.withOpacity(0.3),
//                         size: 20.0,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           if (_isExpanded)
//             Padding(
//               padding: const EdgeInsets.only(right: 4.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: widget.children,
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

// // if container is used https://chat.openai.com/c/ab8b1f04-cfed-4baa-b8d4-0dbe07a84aa1
class MyExpansionTile extends ConsumerStatefulWidget {
  static const String defaultTitle = 'ڕستەی زیاتر'; // Shared title
  final List<Widget> children;

  const MyExpansionTile({
    super.key,
    required this.children,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MyExpansionTileState();
}

class _MyExpansionTileState extends ConsumerState<MyExpansionTile>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    // final currentTheme = ref.watch(themeNotifierProvider);
    final textSize = ref.watch(textSizeProvider);
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: _isExpanded
          ? BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.01),
              border: Border.all(
                color: Theme.of(context).primaryColor.withOpacity(0.18),
                width: 1.0,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            )
          : BoxDecoration(
              // color: Theme.of(context).primaryColor.withOpacity(0.01),
              border: Border.all(
                color: Theme.of(context).primaryColor.withOpacity(0.18),
                width: 1.0,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
      // : null, // or nothing
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // _isExpanded
                  //     ? Icon(
                  //         Icons.arrow_drop_up,
                  //         color: Colors.blue,
                  //       )
                  //     : Icon(Icons.arrow_drop_down),
                  Icon(
                    _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    size: textSize + 1,
                  ),
                  Row(
                    children: [
                      Text(
                        MyExpansionTile.defaultTitle,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: textSize + 1, // Adjust the font size
                          // fontWeight: FontWeight.bold, // Adjust the font weight
                          // color: currentTheme
                          //     .primaryColor, // Adjust the text color
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.book,
                        // color: Colors.blue.withOpacity(0.9),
                        // color: Theme.of(context).primaryColor.withOpacity(0.3),
                        size: textSize + 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (_isExpanded)
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: widget.children,
            ),
        ],
      ),
    );
  }
}
