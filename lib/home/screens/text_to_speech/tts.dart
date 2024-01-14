import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
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
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1.0),
                        ),
                        padding: const EdgeInsets.all(6.0),
                        child: Icon(
                          Icons.clear,
                          color: Theme.of(context).primaryColor,
                          size: 15.0,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          textFieldController.clear();
                        });
                      },
                    ),
                    CustomIconButtonBritish(
                      onPressed: () {
                        setState(() {
                          showPauseButton = true;
                        });
                        speakText("en-GB");
                      },
                    ),
                    CustomIconButtonAmerican(
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
                        icon: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 1.0),
                          ),
                          padding: const EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.pause,
                            color: Theme.of(context).primaryColor,
                            // color: Theme.of(context).primaryColor,
                            size: 15.0,
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
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  // color: Theme.of(context).scaffoldBackgroundColor,
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
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
