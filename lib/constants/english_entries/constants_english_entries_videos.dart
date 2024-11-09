// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart'; // Add this import for Clipboard
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
// import 'package:zeetionary/questions/question_screen.dart';
// import 'package:zeetionary/quiz/quiz_screen.dart';
// import 'package:zeetionary/grammar/grammar_screen.dart';
// import 'package:zeetionary/dictionary/english_dictionary/english_dictionary.dart';
// import 'package:zeetionary/theme/pallete.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:styled_text/styled_text.dart';
// import 'package:feedback_gitlab/feedback_gitlab.dart';
// import 'package:zeetionary/feedback.dart';
// import 'dart:async';
import 'package:zeetionary/constants/constants_others.dart';



// '[^']*-[^']*' // find youtube videos with hyphens

class YoutubeEmbeddingWidget extends StatelessWidget {
  final String videoId;
  final double startSeconds;

  const YoutubeEmbeddingWidget({
    super.key,
    required this.videoId,
    required this.startSeconds,
  });

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: videoId,
      startSeconds: startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: videoId,
        startSeconds: startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// class YouTubeScroller extends StatefulWidget {
//   final List<Widget> children;

//   const YouTubeScroller({super.key, required this.children});

//   @override
//   State<YouTubeScroller> createState() => _YouTubeScrollerState();
// }

// class _YouTubeScrollerState extends State<YouTubeScroller> {

class YouTubeScroller extends ConsumerStatefulWidget {
  final List<Widget> children;

  // const YouTubeScroller({super.key});
  const YouTubeScroller({super.key, required this.children});

  // invalid use of private API

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _YouTubeScrollerState();
}

class _YouTubeScrollerState extends ConsumerState<YouTubeScroller> {
  _YouTubeScrollerState();

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final currentTheme = ref.watch(themeNotifierProvider);
    final textSize = ref.watch(textSizeProvider);
    return Stack(
      children: [
        widget.children[_selectedIndex],
        Positioned(
          bottom: 16,
          left: 6,
          right: 6,
          child: ConstantContainer(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.grey),
            //   borderRadius: BorderRadius.circular(8.0),
            // ),
            child: Row(
              children: [
                if (_selectedIndex > 0)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex--;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(Icons.chevron_left,
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.5),
                          size: textSize + 22),
                    ),
                  ),
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                            List.generate(widget.children.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                // color: _selectedIndex == index
                                //     ? Theme.of(context).primaryColor
                                //     // ? Colors.blue
                                //     : Colors.transparent,
                                border: Border.all(
                                  // color: Colors.grey,
                                  color: _selectedIndex == index
                                      ? Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.7)
                                      // ? Colors.blue
                                      : Colors.transparent,
                                  width: 0.5,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                '${index + 1}',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: _selectedIndex == index
                                      ? Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.6)
                                      // ? Colors.blue
                                      : Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.4),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ),
                if (_selectedIndex < widget.children.length - 1)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex++;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(Icons.chevron_right,
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.5),
                          size: textSize + 22),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// class YouTubeScroller extends StatefulWidget {
//   final List<Widget> children;

//   const YouTubeScroller({Key? key, required this.children}) : super(key: key);

//   // @override // invalid use of private API
//   // _YouTubeScrollerState createState() => _YouTubeScrollerState();

//   @override
//   State<YouTubeScroller> createState() => _YouTubeScrollerState();
// }

// class _YouTubeScrollerState extends State<YouTubeScroller> {
//   int _currentIndex = 0;

//   void _nextPage() {
//     setState(() {
//       if (_currentIndex < widget.children.length - 1) {
//         _currentIndex++;
//       }
//     });
//   }

//   void _previousPage() {
//     setState(() {
//       if (_currentIndex > 0) {
//         _currentIndex--;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           child: IndexedStack(
//             index: _currentIndex,
//             children: widget.children.asMap().entries.map((entry) {
//               int idx = entry.key;
//               Widget child = entry.value;

//               // Only return the child widget if it matches the current index
//               return idx == _currentIndex
//                   ? Container(
//                       key: ValueKey<int>(
//                           _currentIndex), // Ensure state is not preserved
//                       child: child,
//                     )
//                   : const SizedBox.shrink();
//             }).toList(),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (_currentIndex > 0)
//               IconButton(
//                 icon: const Icon(Icons.arrow_back),
//                 onPressed: _previousPage,
//               ),
//             const SizedBox(width: 140),
//             if (_currentIndex < widget.children.length - 1)
//               IconButton(
//                 icon: const Icon(Icons.arrow_forward),
//                 onPressed: _nextPage,
//               ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class YouTubeScroller extends StatefulWidget {
//   final List<Widget> children;

//   const YouTubeScroller({super.key, required this.children});

//   @override
//   State<YouTubeScroller> createState() => _YouTubeScrollerState();
// }

// class _YouTubeScrollerState extends State<YouTubeScroller> {
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         widget.children[_selectedIndex],
//         Positioned(
//           top: 16,
//           left: 16,
//           right: 16,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(widget.children.length, (index) {
//               return GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     _selectedIndex = index;
//                   });
//                 },
//                 child: Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 4.0),
//                   padding: const EdgeInsets.all(8.0),
//                   decoration: BoxDecoration(
//                     color: _selectedIndex == index ? Colors.blue : Colors.grey,
//                     shape: BoxShape.circle,
//                   ),
//                   child: Text(
//                     '${index + 1}',
//                     style: const TextStyle(color: Colors.white),
//                   ),
//                 ),
//               );
//             }),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class YouTubeScroller extends StatelessWidget {
//   final List<Widget> children;

//   const YouTubeScroller({super.key, required this.children});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: children.length,
//       child: Column(
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TabBarView(
//                 physics: const NeverScrollableScrollPhysics(),
//                 children: children.map((child) {
//                   return Center(child: child);
//                 }).toList(),
//               ),
//             ),
//           ),
//           Container(
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey),
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: TabBar(
//               isScrollable: true,
//               tabs: List.generate(children.length, (index) {
//                 return Tab(
//                   child: Container(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text('${index + 1}'),
//                   ),
//                 );
//               }),
//               indicatorColor: Colors.blue,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//
//
//
//
//
//

// class YouTubeScroller extends StatelessWidget {
//   final List<Widget> children;

//   const YouTubeScroller({super.key, required this.children});

//   @override
//   Widget build(BuildContext context) {
//     return PageView(
//       scrollDirection: Axis.vertical,
//       children: children,
//     );
//   }
// }

// Below is to ensure that the state is not preserved in the YouTubeScroller widget when using PageView

// class YouTubeScroller extends StatelessWidget {
//   final List<Widget> children;

//   const YouTubeScroller({Key? key, required this.children}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return PageView(
//       scrollDirection: Axis.vertical,
//       children: children.map((child) {
//         return Container(
//           key: UniqueKey(), // Ensure state is not preserved
//           child: child,
//         );
//       }).toList(),
//     );
//   }
// }

class YouTubeContainerDesignNew extends StatelessWidget {
  const YouTubeContainerDesignNew({
    super.key,
    required YoutubePlayerController controller,
    bool showIndicator = true,
  })  : _controller = controller,
        _showIndicator = showIndicator;

  final YoutubePlayerController _controller;
  final bool _showIndicator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 50.0, left: 15, right: 15),
          padding: const EdgeInsets.all(4.0),
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
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: YoutubePlayer(
              key: UniqueKey(), // Ensure state is not preserved
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
              color: Theme.of(context).primaryColor.withOpacity(0.000001),
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
                color: Theme.of(context).primaryColor.withOpacity(0.00000001),
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
        Container(
          margin: const EdgeInsets.only(top: 50.0, left: 15, right: 15),
          padding: const EdgeInsets.all(4.0),
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
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: YoutubePlayer(
              key: UniqueKey(), // Ensure state is not preserved
              controller: _controller,
              aspectRatio: 16 / 9,
            ),
          ),
        ),
      ],
    );
  }
}

// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube

// https://chatgpt.com/c/a588ca57-5cec-42a1-9605-fa3efb5f27b3
// params: defaultYoutubePlayerParams, // Using the constant here
const defaultYoutubePlayerParams = YoutubePlayerParams(
  enableCaption: true,
  captionLanguage: 'en',
  showFullscreenButton: true,
  showControls: false,
  strictRelatedVideos: true,
);

// params: getDefaultYoutubePlayerParams(), // Using the helper function here
YoutubePlayerParams getDefaultYoutubePlayerParams() {
  return const YoutubePlayerParams(
    enableCaption: true,
    captionLanguage: 'en',
    showFullscreenButton: true,
    showControls: false,
    strictRelatedVideos: true,
  );
}

class YouTubeVideosScaffold extends StatelessWidget {
  final YoutubePlayerController controller;
  final VoidCallback onReloadVideo;

  const YouTubeVideosScaffold({
    super.key,
    required this.controller,
    required this.onReloadVideo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: onReloadVideo,
          );
        },
      ),
    );
  }
}

class YouTubeVideosContainer extends StatelessWidget {
  final YoutubePlayerController controller;
  final VoidCallback onReloadVideo;

  const YouTubeVideosContainer({
    // Key? key,
    super.key,
    required this.controller,
    bool showIndicator = true,
    required this.onReloadVideo,
  }) : _showIndicator = showIndicator;

  final bool _showIndicator;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ConstantContainer(
            margin: const EdgeInsets.only(top: 55.0, left: 6, right: 6),
            padding: const EdgeInsets.all(6.0),
            // decoration: BoxDecoration(
            //   boxShadow: [
            //     BoxShadow(
            //       color: Theme.of(context).primaryColor.withOpacity(0.06),
            //       offset: const Offset(0, 4),
            //       blurRadius: 8,
            //     ),
            //   ],
            //   border: Border.all(
            //     color: Theme.of(context).primaryColor.withOpacity(0.1),
            //     width: 2.0,
            //   ),
            //   borderRadius: BorderRadius.circular(15.0),
            // ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: YoutubePlayer(
                controller: controller,
                aspectRatio: 16 / 9,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: onReloadVideo,
            child: Icon(
              Icons.replay,
              color: Theme.of(context).primaryColor.withOpacity(0.4),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          if (_showIndicator) // Conditionally show the indicator
            const NextVideoIndicator(),
        ],
      ),
    );
  }
}

class YouTubeVideosScaffoldEnd extends StatelessWidget {
  final YoutubePlayerController controller;
  final VoidCallback onReloadVideo;

  const YouTubeVideosScaffoldEnd({
    super.key,
    required this.controller,
    required this.onReloadVideo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: onReloadVideo,
          );
        },
      ),
    );
  }
}

class YouTubeVideosContainerEnd extends StatelessWidget {
  final YoutubePlayerController controller;
  final VoidCallback onReloadVideo;

  const YouTubeVideosContainerEnd({
    super.key,
    required this.controller,
    required this.onReloadVideo,
  });

  // const YouTubeContainerDesignEnd({
  //   super.key,
  //   required YoutubePlayerController controller,
  // })  : _controller = controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ConstantContainer(
            margin: const EdgeInsets.only(top: 55.0, left: 6, right: 6),
            padding: const EdgeInsets.all(6.0),
            // decoration: BoxDecoration(
            //   boxShadow: [
            //     BoxShadow(
            //       color: Theme.of(context).primaryColor.withOpacity(0.06),
            //       offset: const Offset(0, 4),
            //       blurRadius: 8,
            //     ),
            //   ],
            //   border: Border.all(
            //     color: Theme.of(context).primaryColor.withOpacity(0.1),
            //     width: 2.0,
            //   ),
            //   borderRadius: BorderRadius.circular(15.0),
            // ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: YoutubePlayer(
                controller: controller,
                aspectRatio: 16 / 9,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: onReloadVideo,
            child: Icon(
              Icons.replay,
              color: Theme.of(context).primaryColor.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}

// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube
// new youtube