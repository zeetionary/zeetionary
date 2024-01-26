import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybubble extends StatelessWidget {
// blank divider
  EnglishEntrybubble({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbubble(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bubble"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles1(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He blew bubbles into the water through a straw."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles2(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are air bubbles trapped inside the ice."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles3(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The children like to have bubbles in their bath."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles4(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A simple act of kindness can create a powerful bubble of hope."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles5(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He made millions before the dotcom bubble burst."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles6(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He's been staying with his sister and her husband at weekends since he chose to form a bubble with them."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles7(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The water in the pan was beginning to bubble."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles8(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The water in the saucepan was bubbling furiously."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles9(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was bubbling over with excitement."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles10(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The little girl bubbled with health."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles11(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbubbles1111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles12(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbubbles1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles13(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbubbles1313"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles14(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbubbles1414"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles15(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbubbles1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles16(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbubbles1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles17(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbubbles1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles18(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbubbles1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles19(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbubbles1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles20(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbubbles2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles21(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbubbles2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles22(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbubbles2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbubbles23(String languageCode) async {
    // DOPSUM: CHANGE speakbubble
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbubbles2323"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 14, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          // EdgeInsets.zero,
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            EntryTitle(word: "bubble"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbʌbl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbubble("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbʌbl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbubble("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const CustomTabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 14
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
کوردی: بڵق، تۆقلە، پۆڕگاو، قوڵپ، پەقژک، ھەک، بڵقەبڵق، کوڵەکوڵ، قوڵتەقوڵ

١. (ناو) بڵق؛ تۆپەڵەیەک لە ھەوا یان گاز لە ناو شلەدا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He blew bubbles into the water through a straw."),
                              const ExampleSentenceKurdish(
                                  text: "بە قەسەبێک بڵقی دەکرد بە ئاوەکەدا."),
                              const CustomSizedBoxForTTS(), // Define the word "bubble" as
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbubbles1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbubbles1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There are air bubbles trapped inside the ice."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بڵقە ھەوا لە ناو سەھۆڵەکەدا گیریان خواردووە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbubbles2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbubbles2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) کەفی سابوون، تایت، ھتد"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The children like to have bubbles in their bath."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "منداڵەکان حەزدەکەن کەف لە حەوزەکەیاندا بێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbubbles3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbubbles3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) کەمێک لە ھەست کە کەسێک دەیەوێت دەری ببڕێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "A simple act of kindness can create a powerful bubble of hope."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەڵوێستێکی سادەی بەخشندەیی دەکرێت قەترەیەکی بەھێز لە ھیوا درووست بکات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbubbles4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbubbles4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) دۆخێکی باش کە زۆر بەردەوام نابێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He made millions before the dotcom bubble burst."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ملیۆنان دەلاری پەیداکرد پێش سەردەمی خۆشگوزەرانی دۆتکۆم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbubbles5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbubbles5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) کۆمەڵە کەسێک کە لەگەڵیاندا لە پەیوەندیدایت لە کاتی نەخۆشیدا کە دەبێت خۆت لە خەك=ڵکی دووربخەیتەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He's been staying with his sister and her husband at weekends since he chose to form a bubble with them."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە کۆتایی ھەفتە لەگەڵ خوشکەکەی و ھاوسەرەکەی ماوەتەوە بەھۆی ئەوەی بڕیاریدا لەگەڵ ئەوان بمێنێتەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbubbles6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbubbles6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) درووستکردنی بڵق و کەف"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The water in the pan was beginning to bubble."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئاوی مەنجەڵەکە دەستی بە بڵقە‌بڵق دەکرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbubbles7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbubbles7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) درووستکردنی دەنگی بڵقە‌بڵق"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The water in the saucepan was bubbling furiously."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئاوی مەنجەڵەکە بە توندی بڵقە‌بڵقی دەکرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbubbles8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbubbles8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) پڕ لە ھەستێکی دیاریکراو"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She was bubbling over with excitement."),
                              const ExampleSentenceKurdish(
                                  text: "لە خۆشیدا جێی بە خۆی نەدەگرت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbubbles9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbubbles9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) ھەستێک کە بە بەھێزی بوونی ھەیە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The little girl bubbled with health."),
                              const ExampleSentenceKurdish(
                                  text: "کچە بچووکەکە تەواو تەندرووست بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbubbles10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbubbles10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(),
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
                    YoutubeEmbeddednine(),
                    YoutubeEmbeddedten(),
                    YoutubeEmbeddedeleven(),
                    YoutubeEmbeddedtwelve(),
                    // YoutubeEmbeddedthirteen(),
                    // YoutubeEmbeddeddfourteen(),
                    // YoutubeEmbeddedfifteen(),
                    // YoutubeEmbeddeddsixteen(),
                    // YoutubeEmbeddeddseventeen(),
                    // YoutubeEmbeddeddeighteen(),
                    // YoutubeEmbeddeddnineteen(),
                    // YoutubeEmbeddedtwenty(),
                    // YoutubeEmbeddedmulti(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// DOPSUM: ENGLISH MEANING

class EnglishMeaning extends StatefulWidget {
  const EnglishMeaning({super.key});

  @override
  State<EnglishMeaning> createState() => _EnglishMeaningState();
}

class _EnglishMeaningState extends State<EnglishMeaning> {
  FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    // Extract text from EnglishMeaningConst and store it in textToSpeak
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    // Update the state to reflect that TTS is in progress
    setState(() {
      isSpeaking = true;
    });
  }

  // Function to stop TTS
  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

  // Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: bubble (derived forms: bubbles)
1. A hollow globule of gas (e.g., air or carbon dioxide)
 
2. A speculative scheme that depends on unstable factors that the planner cannot control (= house of cards)
"a real estate bubble";

3. An impracticable and illusory idea
"he didn't want to burst the newcomer's bubble"
 
4. A dome-shaped covering made of transparent glass or plastic

- Verb: bubble (derived forms: bubbling, bubbles, bubbled)
1. Form, produce, or emit bubbles
"The soup was bubbling"
 
2. Flow in an irregular current with a bubbling noise (= ripple, babble, guggle, burble, gurgle)
"bubbling brooks";

3. Rise in bubbles or as if in bubbles
"bubble to the surface"
 
4. Cause to form bubbles
"bubble gas through a liquid"
 
5. Expel gas from the stomach (= burp [informal], belch, eruct [formal])
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'HvNdJ2RCReg',
    startSeconds: 88,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'lVoGZiL-kns',
    startSeconds: 123,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Kou7ur5xt_4',
    startSeconds: 46,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'h4CyhQqAPpk',
    startSeconds: 509,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '3cxHwQl9pNM',
    startSeconds: 321,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'hTqtGJwsJVE',
    startSeconds: 1120,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '3B4aevUeaWY',
    startSeconds: 5,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '197479hGyb8',
    startSeconds: 117,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'ro4NcGQJ-UE',
    startSeconds: 171,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'A_ftLsL6vYY',
    // startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'iP_9eb4RY4I',
    startSeconds: 495,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'QvDUbdg0Hek',
    startSeconds: 61,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

// end WORD_WEB// TODO Implement this library.
