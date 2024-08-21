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
    final file = await player.load('audio_two.mp3');
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
      body: BodyOfGoodmorning(),
      bottomNavigationBar: isPlayerVisible
          ? Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              height: 160,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Slider(
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
                              icon: Icon(Icons.replay_5,
                                  color: Theme.of(context).primaryColor),
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
                              iconSize: textSize + 25,
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
            )
          : null,
    );
  }
}

class BodyOfGoodmorning extends StatelessWidget {
  const BodyOfGoodmorning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomAlignWidgetLeft(
            text: 'Text with <red>reeeed</red> action inside.',
            tags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
          ),
          CustomAlignWidgetRight(
            text: 'Text with <red>reeeed</red> action inside.',
            tags: {
              'red': StyledTextTag(
                style: const TextStyle(color: Colors.red),
              ),
            },
          )
        ],
      ),
    );
  }
}
