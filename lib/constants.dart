import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:zeetionary/questions/question_screen.dart';
// import 'package:zeetionary/quiz/quiz_screen.dart';
// import 'package:zeetionary/grammar/grammar_screen.dart';
// import 'package:zeetionary/dictionary/english_dictionary/english_dictionary.dart';
// import 'package:zeetionary/dictionary/kurdish_dictionary/kurdish_dictionary.dart';
import 'package:zeetionary/theme/pallete.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Constants {
  static const logo1Path = 'assets/images/zeetionary_one.png';
  // static const logo2Path = 'assets/images/zeetionary_two.png';
  static const loginZeetionaryPath = 'assets/images/zeetionary_three.png';
  static const googlePath = 'assets/images/google.png';
  static const uk1Path = 'assets/images/uk_one.png';
  static const kurd1Path = 'assets/images/kurd_one.png';

  // static var tabWidgets = [
  //   const DictionaryScreenEnglish(),
  //   const DictionaryScreenKurdish(),
  //   const GrammarScreen(),
  //   const QuestionsScreen(),
  //   const QuizScreen(),
  // ];
}

class ZeetionaryAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ZeetionaryAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // centerTitle: true,
      scrolledUnderElevation: 0,
      title: const ZeetionaryAppbarStyle(),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_rounded),
        onPressed: () {
          Routemaster.of(context).pop();
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.history),
          onPressed: () {
            Routemaster.of(context).push('/history-screen');
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

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
    final currentTheme = ref.watch(themeNotifierProvider);

    return Text(
      'Zeetionary',
      style: TextStyle(
        fontSize: 26.0, // Adjust font size as needed
        fontWeight: FontWeight.bold, // Adjust font weight as needed
        color: currentTheme
            .primaryColor, // Text color (will be masked by the gradient)
      ),
    );
  }
}

// class ZeetionaryAppbarStyle extends StatelessWidget {
//   const ZeetionaryAppbarStyle({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ShaderMask(
//       shaderCallback: (Rect bounds) {
//         return const LinearGradient(
//           colors: [
//             Color.fromARGB(255, 107, 118, 175),
//             Color.fromARGB(255, 136, 62, 100),
//           ], // Define your gradient colors here
//           tileMode: TileMode.clamp,
//         ).createShader(bounds);
//       },
//       child: const Text(
//         'Zeetionary',
//         style: TextStyle(
//           fontSize: 24.0, // Adjust font size as needed
//           fontWeight: FontWeight.bold, // Adjust font weight as needed
//           color: Colors.white, // Text color (will be masked by the gradient)
//         ),
//       ),
//     );
//   }
// }

class CustomTabBar extends ConsumerWidget {
  final List<Widget> tabs;

  const CustomTabBar({super.key, required this.tabs});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(themeNotifierProvider);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: currentTheme.shadowColor.withOpacity(0.5),
            blurRadius: 4.0,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            currentTheme.colorScheme.background,
            currentTheme.colorScheme.background.withOpacity(0.9),
          ],
        ),
      ),
      child: TabBar(
        isScrollable: true,
        tabs: tabs,
        indicator: BoxDecoration(
          color: currentTheme.shadowColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
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
//     final currentTheme = ref.watch(themeNotifierProvider);

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
//     final currentTheme = ref.watch(themeNotifierProvider);

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

// class CustomTabBar extends StatelessWidget {
//   final List<Widget> tabs;

//   const CustomTabBar({super.key, required this.tabs});

//   @override
//   Widget build(BuildContext context) {
//     return TabBar(
//       isScrollable: true,
//       tabs: tabs,
//       indicator: BoxDecoration(
//         color: Pallete.tabsbackgroundColor,
//         borderRadius: BorderRadius.circular(16.0),
//       ),
//       indicatorSize: TabBarIndicatorSize.tab,
//       indicatorPadding: const EdgeInsets.all(4.0),
//     );
//   }
// }

class VideoIconForTab extends StatelessWidget {
  const VideoIconForTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Image.asset(
        'assets/images/video_one.png',
        width: 26,
        height: 30,
      ),
    );
  }
}

class KurdIconForTab extends StatelessWidget {
  const KurdIconForTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Image.asset(
        'assets/images/kurd_one.png',
        width: 80,
        height: 30,
      ),
    );
  }
}

class UkIconForTab extends StatelessWidget {
  const UkIconForTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Image.asset(
        'assets/images/uk_one.png',
        width: 80,
        height: 30,
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

class YouTubeContainerDesign extends ConsumerWidget {
  const YouTubeContainerDesign({
    super.key,
    required YoutubePlayerController controller,
  }) : _controller = controller;

  final YoutubePlayerController _controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(themeNotifierProvider);

    return Container(
      margin: const EdgeInsets.only(
          top: 20.0), // Move it down by adjusting the top margin
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: currentTheme.shadowColor,
          width: 3.0, // Adjust the width as needed
        ),
      ),
      child: YoutubePlayer(
        controller: _controller,
        liveUIColor: Colors.amber,
      ),
    );
    // Scaffold(
    //   body: YoutubePlayer(
    //     controller: _controller,
    //     liveUIColor: Colors.amber,
    //   ),
    // );

    // Scaffold(
    //   body: Container(
    //     padding: EdgeInsets.all(8.0),
    //     decoration: BoxDecoration(
    //       border: Border.all(
    //         color: Pallete.tabsbackgroundColor,
    //         width: 2.0, // Adjust the width as needed
    //       ),
    //     ),
    //     child: YoutubePlayer(
    //       controller: _controller,
    //       liveUIColor: Colors.amber,
    //     ),
    //   ),
    // );

    // color: Pallete.tabsbackgroundColor,

    // Scaffold(
    //   body: Container(
    //     margin: const EdgeInsets.only(
    //         top: 40.0), // Move it down by adjusting the top margin
    //     padding: const EdgeInsets.all(10.0),
    //     decoration: BoxDecoration(
    //       color: Pallete.tabsbackgroundColor,
    //       // color: Colors.blue, // Background color
    //       borderRadius: BorderRadius.circular(10.0), // Rounded corners
    //       boxShadow: const [
    //         BoxShadow(
    //           color: Colors.grey,
    //           blurRadius: 5.0,
    //           spreadRadius: 2.0,
    //         ),
    //       ],
    //     ),
    //     child: YoutubePlayer(
    //       controller: _controller,
    //       liveUIColor: Colors.amber,
    //     ),
    //   ),
    // );
  }
}

class EntryTitle extends StatelessWidget {
  final String word;

  const EntryTitle({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Text(
          word,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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

class IPAofEnglish extends StatelessWidget {
  final String text;

  // const IPAofEnglish({Key? key, required this.text}) : super(key: key);
  const IPAofEnglish({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      // padding: const EdgeInsets.all(8.0), // Add padding here
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

class DefinitionKurdish extends StatelessWidget {
  final String text;

  const DefinitionKurdish({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}

class ExampleSentenceEnglish extends StatelessWidget {
  final String text;

  const ExampleSentenceEnglish({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            text,
            style: const TextStyle(fontSize: 14),
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}

class ExampleSentenceKurdish extends StatelessWidget {
  final String text;

  const ExampleSentenceKurdish({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          text,
          style: const TextStyle(fontSize: 14),
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.right,
        ),
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

class CustomIconButtonBritish extends StatelessWidget {
  final VoidCallback? onPressed;

  const CustomIconButtonBritish({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 18,
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blue, width: 1.0),
        ),
        padding: const EdgeInsets.all(6.0),
        child: const Icon(
          Icons.record_voice_over,
          color: Colors.blue,
          size: 16.0, // Adjust size as needed
        ),
      ),
      onPressed: onPressed,
    );
  }
}

class CustomIconButtonAmerican extends StatelessWidget {
  final VoidCallback? onPressed;

  const CustomIconButtonAmerican({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 18,
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: const Color.fromARGB(182, 255, 0, 0), width: 1.0),
        ),
        padding: const EdgeInsets.all(6.0),
        child: const Icon(
          Icons.record_voice_over,
          color: Color.fromARGB(182, 255, 0, 0),
          size: 16.0, // Adjust size as needed
        ),
      ),
      onPressed: onPressed,
    );
  }
}

class EnglishMeaningConst extends StatelessWidget {
  final String text;

  const EnglishMeaningConst({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSizedBoxForTTS extends StatelessWidget {
  const CustomSizedBoxForTTS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 2,
    );
  }
}
