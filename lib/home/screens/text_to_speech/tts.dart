import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
// import 'package:zeetionary/theme/pallete.dart';

class TTSPage extends ConsumerStatefulWidget {
  const TTSPage({super.key});

  // (zee) https://chat.openai.com/c/846e432d-15cd-4287-af39-429219fc4e0b

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TTSPageState();
}

class _TTSPageState extends ConsumerState<TTSPage> {
  _TTSPageState();
  FlutterTts flutterTts = FlutterTts();
  bool showPauseButton = false;

  TextEditingController textFieldController = TextEditingController();

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  Future<void> speakText(String language) async {
    await flutterTts.setLanguage(language);
    await flutterTts.speak(textFieldController.text);
  }

  Future<void> stopSpeaking() async {
    await flutterTts.stop();
  }

  @override
  Widget build(BuildContext context) {
    // final currentTheme = ref.watch(themeNotifierProvider);
    final textSize = ref.watch(textSizeProvider);

    return Scaffold(
      appBar: const ZeetionaryAppbar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ConstantContainer(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: ConstantContainer(
                        padding: const EdgeInsets.all(6.0),
                        child: Icon(
                          Icons.clear,
                          color: Theme.of(context).primaryColor,
                          size: textSize,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          textFieldController.clear();
                        });
                      },
                    ),
                    CustomIconButtonBritishTTS(
                      onPressed: () {
                        setState(() {
                          showPauseButton = true;
                        });
                        speakText("en-GB");
                      },
                    ),
                    CustomIconButtonAmericanTTS(
                      onPressed: () {
                        setState(() {
                          showPauseButton = true;
                        });
                        speakText("en-US");
                      },
                    ),
                    if (showPauseButton)
                      // IconButton(
                      //   icon: Container(
                      //       decoration: BoxDecoration(
                      //         shape: BoxShape.circle,
                      //         border: Border.all(
                      //             color: Theme.of(context).primaryColor, width: 1.0),
                      //       ),
                      //       padding: const EdgeInsets.all(6.0),
                      //       child: Icon(
                      //         Icons.pause,
                      //         color: Theme.of(context).primaryColor,
                      //         size: 15.0,
                      //       )),
                      IconButton(
                        icon: ConstantContainer(
                          padding: const EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.pause,
                            color: Theme.of(context).primaryColor,
                            // color: Theme.of(context).primaryColor,
                            size: textSize,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            showPauseButton = false;
                          });
                          stopSpeaking();
                        },
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
              child: ConstantContainer(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.7,
                  minHeight: MediaQuery.of(context).size.height * 0.4,
                ),
                padding: const EdgeInsets.all(16),
                child: TextField(
                  controller: textFieldController,
                  maxLines: null,
                  decoration: const InputDecoration(
                    hintText: "Enter text to listen to",
                    border: InputBorder.none,
                  ),
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomIconButtonBritishTTS extends ConsumerWidget {
  final VoidCallback? onPressed;

  const CustomIconButtonBritishTTS({
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
          border: Border.all(color: Colors.blue, width: 0.5),
        ),
        padding: const EdgeInsets.all(5.0),
        child: Icon(
          Icons.record_voice_over,
          color: Colors.blue,
          size: textSize, // Adjust size as needed
        ),
      ),
      onPressed: onPressed,
    );
  }
}

class CustomIconButtonAmericanTTS extends ConsumerWidget {
  final VoidCallback? onPressed;

  const CustomIconButtonAmericanTTS({
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
              color: const Color.fromARGB(182, 255, 0, 0), width: 0.5),
        ),
        padding: const EdgeInsets.all(5.0),
        child: Icon(
          Icons.record_voice_over,
          color: const Color.fromARGB(182, 255, 0, 0),
          size: textSize, // Adjust size as needed
        ),
      ),
      onPressed: onPressed,
    );
  }
}
