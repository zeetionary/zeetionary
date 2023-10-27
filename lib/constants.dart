import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/questions/question_screen.dart';
import 'package:zeetionary/quiz/quiz_screen.dart';
import 'package:zeetionary/grammar/grammar_screen.dart';
import 'package:zeetionary/dictionary/english_dictionary/english_dictionary.dart';
import 'package:zeetionary/dictionary/kurdish_dictionary/kurdish_dictionary.dart';
import 'package:zeetionary/theme/pallete.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Constants {
  static const logo1Path = 'assets/images/zeetionary_one.png';
  static const logo2Path = 'assets/images/zeetionary_two.png';
  static const loginZeetionaryPath = 'assets/images/zeetionary_three.png';
  static const googlePath = 'assets/images/google.png';
  static const uk1Path = 'assets/images/uk_one.png';
  static const kurd1Path = 'assets/images/kurd_one.png';

  static var tabWidgets = [
    const DictionaryScreenEnglish(),
    const DictionaryScreenKurdish(),
    const GrammarScreen(),
    const QuestionsScreen(),
    const QuizScreen(),
  ];
}

class ZeetionaryAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ZeetionaryAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // centerTitle: true,
      title: const ZeetionaryAppbarStyle(),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_rounded),
        onPressed: () {
          Routemaster.of(context).pop();
        },
      ),
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
        fontSize: 24.0, // Adjust font size as needed
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

class VideoIconForTab extends StatelessWidget {
  const VideoIconForTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Image.asset(
        'assets/images/video_one.png',
        width: 24,
        height: 24,
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
        width: 48,
        height: 24,
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
        width: 48,
        height: 24,
      ),
    );
  }
}

class YouTubeContainerDesign extends StatelessWidget {
  const YouTubeContainerDesign({
    super.key,
    required YoutubePlayerController controller,
  }) : _controller = controller;

  final YoutubePlayerController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: 20.0), // Move it down by adjusting the top margin
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Pallete.tabsbackgroundColor,
          width: 2.0, // Adjust the width as needed
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
