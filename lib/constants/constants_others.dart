// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart'; // Add this import for Clipboard
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
// import 'package:zeetionary/questions/question_screen.dart';
// import 'package:zeetionary/quiz/quiz_screen.dart';
// import 'package:zeetionary/grammar/grammar_screen.dart';
// import 'package:zeetionary/dictionary/english_dictionary/english_dictionary.dart';
// import 'package:zeetionary/theme/pallete.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:styled_text/styled_text.dart';
// import 'package:feedback_gitlab/feedback_gitlab.dart';
import 'package:zeetionary/feedback.dart';
import 'dart:async';

class Constants {
  static const logo1Path = 'assets/images/zeetionary_one.png';
  // static const logo2Path = 'assets/images/zeetionary_two.png';
  static const loginZeetionaryPath = 'assets/images/zeetionary_three.png';
  static const googlePath = 'assets/images/google.png';
  static const asiacellPathen = 'assets/images/asiacell_logo_en.png';
  static const asiacellPathckb = 'assets/images/asiacell_logo_ckb.png';
  static const uk1Path = 'assets/images/uk_one.png';
  static const kurd1Path = 'assets/images/kurd_one.png';
  static const boyAva = 'assets/images/boy_two.jpg';
  static const girlAva = 'assets/images/girl.jpg';
}

const double ttsPitch = 1.0;
const double ttsSpeechRate = 0.5;

class ZeetionaryAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ZeetionaryAppbar({super.key});

  // (zee; height for app bar) https://chat.openai.com/c/85a94f32-5a86-4f89-b50f-115abe702021

  @override
  Widget build(BuildContext context) {
    return const AppBarWidget();
  }

  @override
  Size get preferredSize => const Size.fromHeight(_defaultHeight);

  static const double _defaultHeight = 60.0;
}

class AppBarWidget extends ConsumerWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final language = ref.watch(languageProvider);

    // Alignment alignment = language == AppLanguage.english
    //     ? Alignment.topLeft
    //     : Alignment.topRight;

    // Alignment alignmenttwo = language == AppLanguage.english
    //     ? Alignment.topRight
    //     : Alignment.topLeft;

    // Determine text direction based on language
    TextDirection textDirection =
        language == AppLanguage.english ? TextDirection.ltr : TextDirection.rtl;

    return Directionality(
      textDirection: textDirection,
      child: AppBar(
        // centerTitle: true,
        scrolledUnderElevation: 0,
        title: const ZeetionaryAppbarStyle(),
        leading: const BackIconOfAppbar(),
        actions: [
          IconButton(
            icon: const FeedbackIcon(),
            onPressed: () {
              createGitlabIssueFromFeedback(
                  context); // Calls the function to upload feedback to GitLab
            },
          ),
        ],
      ),
    );
  }
}

class FeedbackIcon extends ConsumerWidget {
  const FeedbackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);
    return Icon(
      Icons.feedback,
      size: textSize + 7,
    );
  }
}

class BackIconOfAppbar extends ConsumerWidget {
  const BackIconOfAppbar({
    super.key,
  });

  @override
  // Widget build(BuildContext context) {
  Widget build(BuildContext context, WidgetRef ref) {
    // final currentTheme = ref.watch(themeNotifierProvider);
    final textSize = ref.watch(textSizeProvider);
    return IconButton(
      icon: Icon(
        // Icons.chevron_left,
        Icons.arrow_back,
        size: textSize + 13,
      ),
      // icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Routemaster.of(context).pop();
      },
    );
  }
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

  // invalid use of private API

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

    final language = ref.watch(languageProvider);
    final isKurdish = language == AppLanguage.kurdish;

    return Text(
      isKurdish ? "فەرهەنگ" : "Dictionary",
      style: TextStyle(
        fontSize: textSize, // Adjust font size as needed
        // fontWeight: FontWeight.bold, // Adjust font weight as needed
        color: Theme.of(context).primaryColor,
        // color: Theme.of(context).primaryColor
        //     .withOpacity(0.8), // Text color (will be masked by the gradient)
      ),
    );
  }
}

class ZeetionaryAppbarStyleadver extends ConsumerStatefulWidget {
  const ZeetionaryAppbarStyleadver({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ZeetionaryAppbarStyleadverState();
}

class _ZeetionaryAppbarStyleadverState
    extends ConsumerState<ZeetionaryAppbarStyleadver>
    with SingleTickerProviderStateMixin {
  _ZeetionaryAppbarStyleadverState();

  // bool _showText = true;
  final bool _showText = true;
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    // No animation is initialized here, since we will set it dynamically in the build method
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider) + 10;
    final language = ref.watch(languageProvider);
    final isKurdish = language == AppLanguage.kurdish;

    // Set the slide direction based on language
    _animation = Tween<Offset>(
      begin: isKurdish
          ? const Offset(1.0, 0.0)
          : const Offset(-1.0,
              0.0), // Right to left for Kurdish, left to right for English
      end: Offset.zero, // End at original position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    return AnimatedSwitcher(
      duration: const Duration(seconds: 1),
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeOut,
      child: SlideTransition(
        position: _animation,
        child: _showText
            ? Text(
                isKurdish ? "فەرهەنگ" : "Dictionary",
                key: const ValueKey(1),
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              )
            : Image.asset(
                isKurdish
                    ? Constants.asiacellPathckb
                    : Constants.asiacellPathen,
                key: const ValueKey(2),
                height: 41,
                width: 80,
                fit: BoxFit.contain,
              ),
      ),
    );
  }
}

class ZeetionaryAppbarStyleadvertwo extends ConsumerStatefulWidget {
  const ZeetionaryAppbarStyleadvertwo({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ZeetionaryAppbarStyleadvertwoState();
}

class _ZeetionaryAppbarStyleadvertwoState extends ConsumerState
    with SingleTickerProviderStateMixin {
  // bool _showText = true;
  late AnimationController _controller;
  late Animation<double> _textOpacity;
  late Animation<double> _imageOpacity;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 40), // Total cycle duration
    );

    _textOpacity = TweenSequence<double>([
      TweenSequenceItem(
          tween: Tween(begin: 0.0, end: 1.0),
          weight: 2), // A // fade in for this
      TweenSequenceItem(
          tween: ConstantTween(1.0), weight: 24.5), // B // appear for this
      TweenSequenceItem(
          tween: Tween(begin: 1.0, end: 0.0),
          weight: 0.5), // C // fade out in this
      TweenSequenceItem(
          tween: ConstantTween(0.0),
          weight: 13), // D = E + G + H // disappear for this
    ]).animate(_controller);

    _imageOpacity = TweenSequence<double>([
      TweenSequenceItem(
          tween: Tween(begin: 1.0, end: 0.0),
          weight: 1), // E // fade out in this
      TweenSequenceItem(
          tween: ConstantTween(0.0),
          weight: 27), // F = A + B + C // invisible for this
      TweenSequenceItem(
          tween: Tween(begin: 0.0, end: 1.0), weight: 0.5), // G // fade in this
      TweenSequenceItem(
          tween: ConstantTween(1.0), weight: 11.5), // H // appear for this
    ]).animate(_controller);

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider);
    final language = ref.watch(languageProvider);
    final isKurdish = language == AppLanguage.kurdish;

    return Stack(
      alignment: Alignment.center,
      children: [
        FadeTransition(
          opacity: _textOpacity,
          child: Text(
            isKurdish ? "فەرهەنگ" : "Dictionary",
            style: TextStyle(
              fontSize: textSize + 10,
              color: Theme.of(context).primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        FadeTransition(
          opacity: _imageOpacity,
          child: Image.asset(
            isKurdish ? Constants.asiacellPathckb : Constants.asiacellPathen,
            height: 44,
            width: 80,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}

class ConstantContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding; // Optional padding for the Container
  final EdgeInsetsGeometry? margin; // Optional margin for the Container
  final double? height; // Optional height for the Container
  final double? width; // Optional width for the Container
  final BoxConstraints? constraints; // Optional constraints for the Container

  const ConstantContainer({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.height,
    this.width,
    this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding, // Apply the padding if provided
      margin: margin, // Apply the margin if provided
      height: height, // Apply the height if provided
      width: width, // Apply the width if provided
      constraints: constraints, // Apply the constraints if provided
      decoration: BoxDecoration(
        border: Border.all(
          // color: Colors.red,
          color: Theme.of(context).primaryColor.withOpacity(0.3),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: child,
    );
  }
}

class CustomTabBarSliver extends StatelessWidget
    implements PreferredSizeWidget {
  final List<Widget> tabs;

  // (NOT zee) https://chat.openai.com/c/fe4f63a6-1e1f-4385-bcee-cd7982da22de

  const CustomTabBarSliver({
    super.key,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.blue.shade700, width: 2.0),
        ),
      ),
      child: TabBar(
        tabs: tabs.map((tab) => Tab(icon: tab)).toList(),
        // indicatorColor: Colors.red,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
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

class SentencesIconForTab extends ConsumerWidget {
  const SentencesIconForTab({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider) + 5;
    return Icon(Icons.list, size: textSize + 3);
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

class ListViewSeparator extends StatelessWidget {
  const ListViewSeparator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Theme.of(context).dividerColor.withOpacity(0.15),
      thickness: 1.0,
    );
  }
}

class CustomTabBarNew extends ConsumerWidget implements PreferredSizeWidget {
  final List<Widget> tabs;

  const CustomTabBarNew({
    super.key,
    required this.tabs,
  });

  @override
  // Widget build(BuildContext context) {
  Widget build(BuildContext context, WidgetRef ref) {
    // final currentTheme = ref.watch(themeNotifierProvider);
    // final textSize = ref.watch(textSizeProvider) + 20;
    return TabBar(
      isScrollable: false,
      // indicatorColor: Theme.of(context).scaffoldBackgroundColor,
      labelStyle: TextStyle(color: Theme.of(context).primaryColor),
      indicatorColor: Theme.of(context).primaryColor.withOpacity(0.2),
      // indicatorColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
      // indicatorColor: Colors.red,
      labelColor: Theme.of(context).scaffoldBackgroundColor,
      // unselectedLabelColor: Theme.of(context).scaffoldBackgroundColor,
      tabs: tabs,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48.0);
}

class CustomTabBarNoPrefferedSize extends ConsumerWidget {
  final List<Widget> tabs;

  const CustomTabBarNoPrefferedSize({
    super.key,
    required this.tabs,
  });

  @override
  // Widget build(BuildContext context) {
  Widget build(BuildContext context, WidgetRef ref) {
    // final currentTheme = ref.watch(themeNotifierProvider);
    // final textSize = ref.watch(textSizeProvider) + 20;
    return TabBar(
      indicatorColor: Theme.of(context).primaryColor.withOpacity(0.2),
      // indicatorColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
      // indicatorColor: Colors.red,
      tabs: tabs,
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

class CustomFloatingActionButton extends ConsumerWidget {
  final VoidCallback onPressed;

  const CustomFloatingActionButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);

    return ConstantContainer(
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor:
            Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
        child: Icon(
          Icons.delete,
          size: textSize + 12,
          color: Theme.of(context).primaryColor.withOpacity(0.9),
        ),
      ),
    );
  }
}

class CustomFloatingActionButtonPlayer extends ConsumerWidget {
  final VoidCallback onPressed;

  const CustomFloatingActionButtonPlayer({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);

    return ConstantContainer(
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        // Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
        child: Icon(
          Icons.headphones_outlined,
          // Icons.play_arrow,
          // Icons.music_note,
          size: textSize + 12,
          color: Theme.of(context).primaryColor.withOpacity(0.9),
        ),
      ),
    );
    // return Container(
    //   decoration: BoxDecoration(
    //     border: Border.all(
    //       color: Theme.of(context).primaryColor.withOpacity(0.3),
    //       width: 1.0,
    //     ),
    //     borderRadius: BorderRadius.circular(15.0),
    //   ),
    //   child: FloatingActionButton(
    //     onPressed: onPressed,
    //     backgroundColor:
    //         Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
    //     child: Icon(
    //       Icons.headphones_outlined,
    //       // Icons.play_arrow,
    //       // Icons.music_note,
    //       size: textSize + 12,
    //       color: Theme.of(context).primaryColor.withOpacity(0.9),
    //     ),
    //   ),
    // );
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

class EmptyPageIcon extends StatefulWidget {
  final String text;

  // (not zee) https://chat.openai.com/c/ab801473-3515-4870-bb46-1526257466b9

  const EmptyPageIcon({super.key, required this.text});

  @override
  // _EmptyPageIconState createState() => _EmptyPageIconState();
  State<EmptyPageIcon> createState() => _EmptyPageIconState();
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
                child: Icon(
                  Icons.history,
                  size: 66.0,
                  color: Theme.of(context).primaryColor.withOpacity(0.7),
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

// conversations
// conversations
// conversations
// conversations
// conversations
// conversations
// conversations
// conversations

class CustomConversationsLeft extends ConsumerWidget {
  final String englishText;
  final String kurdishText;
  final Map<String, StyledTextTag> englishTags;
  final Map<String, StyledTextTag> kurdishTags;

  const CustomConversationsLeft({
    super.key,
    required this.englishText,
    required this.kurdishText,
    required this.englishTags,
    required this.kurdishTags,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
                children: [
                  Container(
                    // width: textSize + 30.0,
                    // height: textSize + 20.0,
                    // margin: EdgeInsets.only(
                    //   top: textSize + 50.0,
                    //   bottom: textSize + 33.0,
                    // ),
                    clipBehavior: Clip.antiAlias,
                    // padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .scaffoldBackgroundColor
                          .withOpacity(0.0001),
                      borderRadius: BorderRadius.circular(800.0),
                      border: Border.all(
                        color: Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(0.02),
                        width: 1.0,
                      ),
                    ),
                    child: Image.asset(
                      Constants.boyAva,
                      width: 52,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 300),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).primaryColor.withOpacity(0.3),
                        width: 1.0,
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: StyledText(
                                text: englishText,
                                tags: englishTags,
                                style: TextStyle(fontSize: textSize),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: StyledText(
                                text: kurdishText,
                                tags: kurdishTags,
                                style: TextStyle(fontSize: textSize),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomConversationsRight extends ConsumerWidget {
  final String englishText;
  final String kurdishText;
  final Map<String, StyledTextTag> englishTags;
  final Map<String, StyledTextTag> kurdishTags;

  const CustomConversationsRight({
    super.key,
    required this.englishText,
    required this.kurdishText,
    required this.englishTags,
    required this.kurdishTags,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                children: [
                  Container(
                    // width: textSize + 30.0,
                    // height: textSize + 20.0,
                    // margin: EdgeInsets.only(
                    //   top: textSize + 50.0,
                    //   bottom: textSize + 33.0,
                    // ),
                    clipBehavior: Clip.antiAlias,
                    // padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .scaffoldBackgroundColor
                          .withOpacity(0.0001),
                      borderRadius: BorderRadius.circular(800.0),
                      border: Border.all(
                        color: Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(0.02),
                        width: 1.0,
                      ),
                    ),
                    child: Image.asset(
                      Constants.girlAva,
                      width: 52,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 300),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).primaryColor.withOpacity(0.3),
                        width: 1.0,
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: StyledText(
                                text: englishText,
                                tags: englishTags,
                                style: TextStyle(fontSize: textSize),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: StyledText(
                                text: kurdishText,
                                tags: kurdishTags,
                                style: TextStyle(fontSize: textSize),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
