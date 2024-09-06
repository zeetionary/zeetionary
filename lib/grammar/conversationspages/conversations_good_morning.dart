import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
import 'package:styled_text/styled_text.dart';

class ConversationsGoodMorning extends ConsumerStatefulWidget {
  const ConversationsGoodMorning({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ConversationsGoodMorningState();
}

class _ConversationsGoodMorningState
    extends ConsumerState<ConversationsGoodMorning> {
  final audioPlayer = AudioPlayer();

  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool isPlayerVisible = false;

  @override
  void initState() {
    super.initState();

    setAudio();

    // Listen to the player state changes
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    // Listen to the duration changes
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    // Listen to the position changes
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.stop);

    final player = AudioCache(prefix: 'assets/');
    final file = await player.load('good_morning.mp3');
    audioPlayer.setSourceDeviceFile(file.path);
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider);

    return Scaffold(
      appBar: const ZeetionaryAppbar(),
      floatingActionButton: !isPlayerVisible
          ? CustomFloatingActionButtonPlayer(
              onPressed: () {
                setState(() {
                  isPlayerVisible = true;
                });
              },
            )
          : null,
      body: const BodyOfGoodmorning(),
      bottomNavigationBar: isPlayerVisible
          ? Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              height: 180,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    border: Border.all(
                      color: Theme.of(context).primaryColor.withOpacity(0.3),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Slider(
                              thumbColor: Theme.of(context).highlightColor,
                              activeColor: Theme.of(context).primaryColor,
                              min: 0,
                              max: duration.inSeconds.toDouble(),
                              value: position.inSeconds.toDouble(),
                              onChanged: (value) async {
                                final newPosition =
                                    Duration(seconds: value.toInt());
                                await audioPlayer.seek(newPosition);

                                await audioPlayer.resume();
                              },
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.keyboard_arrow_down,
                                color: Theme.of(context).primaryColor),
                            onPressed: () async {
                              await audioPlayer.pause();
                              setState(() {
                                isPlayerVisible = false;
                              });
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(formatTime(position)),
                            Text(formatTime(duration - position)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.replay_5,
                                  color: Theme.of(context).primaryColor,
                                ),
                                iconSize: textSize + 25,
                                onPressed: () async {
                                  final newPosition =
                                      position - const Duration(seconds: 5);
                                  await audioPlayer.seek(newPosition);
                                },
                              ),
                              IconButton(
                                icon: Icon(
                                    isPlaying ? Icons.pause : Icons.play_arrow,
                                    color: Theme.of(context).primaryColor),
                                iconSize: textSize + 35,
                                onPressed: () async {
                                  if (isPlaying) {
                                    await audioPlayer.pause();
                                  } else {
                                    await audioPlayer.resume();
                                  }
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.forward_5,
                                    color: Theme.of(context).primaryColor),
                                iconSize: textSize + 25,
                                onPressed: () async {
                                  final newPosition =
                                      position + const Duration(seconds: 5);
                                  await audioPlayer.seek(newPosition);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : null,
    );
  }
}

class BodyOfGoodmorning extends StatelessWidget {
  const BodyOfGoodmorning({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomConversationsLeft(
            englishText: 'Good morning!',
            kurdishText: 'بەیانیت باش!',
            englishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
            kurdishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
          ),
          CustomConversationsRight(
            englishText: 'Morning! How’s it going?',
            kurdishText: 'بەیانی تۆش باش! کاروبار چۆنە؟',
            englishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
            kurdishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
          ),
          CustomConversationsLeft(
            englishText:
                """Pretty good. Got my <red>coffee</red>, so I'm set. How about you?""",
            kurdishText:
                """زۆر باش. قاوەکەمم خواردەوە، بۆیە تەواو ئامادەم. ئەی تۆ؟""",
            englishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
            kurdishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
          ),
          CustomConversationsRight(
            englishText:
                """Same here. Already checked a few emails, so I'm feeling <red>productive</red>.""",
            kurdishText:
                """منیش. پێشوەختە سەیری چەند ئیمەیڵێکم کرد، بۆیە ھەست دەکەم شتێکم بەدەستھێناوە.""",
            englishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
            kurdishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
          ),
          CustomConversationsLeft(
            englishText:
                """Nice! Any big <red>tasks</red> on your plate today?""",
            kurdishText: """باشە! ھیچ ئەرکێک ئەمڕۆ لە ھەگبەتدایە؟""",
            englishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
            kurdishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
          ),
          CustomConversationsRight(
            englishText:
                """A couple of meetings and a <red>report</red> to finish. You?""",
            kurdishText:
                """چەند کۆبوونەوەیەک و ڕاپۆرتێک بۆ تەواوکردن. ئەی تۆ؟""",
            englishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
            kurdishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
          ),
          CustomConversationsLeft(
            englishText:
                """Similar. We should <red>catch up</red> later about that project.""",
            kurdishText: """منیش. دەبێت دواتر لەسەر ئەو پڕۆژەیە قسە بکەین.""",
            englishTags: {
              'red>': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
            kurdishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
          ),
          CustomConversationsRight(
            englishText:
                """Definitely! Let’s <red>touch base</red> after lunch.""",
            kurdishText: """بەدڵنیاییەوە! با دوای نانی نیوەڕۆ قسە بکەینەوە""",
            englishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
            kurdishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
          ),
          CustomConversationsLeft(
            englishText: """Sounds like a plan. Have a good morning!""",
            kurdishText: """پلانێکی باشە. بەیانییەکی خۆش!""",
            englishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
            kurdishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
          ),
          CustomConversationsRight(
            englishText: """You too! See you later.""",
            kurdishText: """بۆ تۆش! دەتبینمەوە.""",
            englishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
            kurdishTags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
          ),
        ],
      ),
    );
  }
}

// class BodyOfGoodmorning extends StatelessWidget {
//   const BodyOfGoodmorning({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.symmetric(vertical: 32),
//       child: Column(
//         children: <Widget>[
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Directionality(
//               textDirection: TextDirection.rtl,
//               child: Row(
//                 children: [
//                   Image.asset(
//                     Constants.googlePath,
//                     width: 52,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         color: Theme.of(context).primaryColor.withOpacity(0.3),
//                         width: 1.0,
//                       ),
//                       borderRadius: BorderRadius.circular(15.0),
//                     ),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Align(
//                             alignment: Alignment.centerLeft,
//                             child: Directionality(
//                               textDirection: TextDirection.ltr,
//                               child: StyledText(
//                                 text: 'Hello, <red>how</red> are you?',
//                                 tags: {
//                                   'red': StyledTextTag(
//                                     style: const TextStyle(color: Colors.red),
//                                   ),
//                                 },
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Align(
//                             alignment: Alignment.centerRight,
//                             // alignment: Alignment.topRight,
//                             child: Directionality(
//                               textDirection: TextDirection.rtl,
//                               child: StyledText(
//                                 text: 'سڵاو <red>چۆنیت</red>؟',
//                                 tags: {
//                                   'red': StyledTextTag(
//                                     style: const TextStyle(color: Colors.red),
//                                   ),
//                                 },
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }