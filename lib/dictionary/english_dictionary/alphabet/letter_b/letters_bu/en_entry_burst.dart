import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryburst extends StatelessWidget {
// blank divider
  EnglishEntryburst({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakburst(String languageCode) async {
    // DOPSUM: CHANGE speakburst
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("burst"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbursts1(String languageCode) async {
    // DOPSUM: CHANGE speakburst
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "That balloon will burst if you blow it up any more."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbursts2(String languageCode) async {
    // DOPSUM: CHANGE speakburst
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The dam burst under the weight of water."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbursts3(String languageCode) async {
    // DOPSUM: CHANGE speakburst
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Shells were bursting all around us."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbursts4(String languageCode) async {
    // DOPSUM: CHANGE speakburst
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He felt he would burst with anger and shame."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbursts5(String languageCode) async {
    // DOPSUM: CHANGE speakburst
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He burst into the room without knocking."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbursts6(String languageCode) async {
    // DOPSUM: CHANGE speakburst
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The sun burst through the clouds."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbursts7(String languageCode) async {
    // DOPSUM: CHANGE speakburst
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The words burst from her in an angry rush."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbursts8(String languageCode) async {
    // DOPSUM: CHANGE speakburst
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The roads are bursting with cars."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbursts9(String languageCode) async {
    // DOPSUM: CHANGE speakburst
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I’m bursting (for a pee)!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbursts10(String languageCode) async {
    // DOPSUM: CHANGE speakburst
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I tend to work in bursts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbursts11(String languageCode) async {
    // DOPSUM: CHANGE speakburst
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There was a spontaneous burst of applause."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbursts12(String languageCode) async {
    // DOPSUM: CHANGE speakburst
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A burst in the water pipe flooded the floor."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbursts13(String languageCode) async {
    // DOPSUM: CHANGE speakburst
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Pedestrians scattered as a rapid burst of gunfire erupted unexpectedly."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "burst"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɜːst/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakburst("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɜːrst/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakburst("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 12
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  // VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
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
کوردی: تەقینەوە، تەق، لێک‌بوونەوە، پەقین، دەربوون، ترەکین، درگاکردن، بڵاوبوونەوە، تەنینەوە، تەشەنە، هەڵچوون، فیشقەکردن، گوڕبوون، لە پڕمەدان (گریان یان پێکەنین)، گوللەخستن، تەقاندن، پێوەنان، دەسپێک یان دەرکەوتنی ناکاو، جووڵانی توند و کت‌وپڕ، گڕ، سۆڵە، ڕەهێڵە، ڕێژنە

١. (کردار) تەقین"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "That balloon will burst if you blow it up any more."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "فودانکەکە دەتەقێت ئەگەر هەوای زیاتری تێ بکەیت."),
                              const CustomSizedBoxForTTS(), // With short examples extensively define the word "burst", follow LX strictly
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbursts1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbursts1("en-US"),
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
                                      "The dam burst under the weight of water."),
                              const ExampleSentenceKurdish(
                                  text: "بەنداوەکە تەقی لەژێر پەستانی ئاودا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbursts2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbursts2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "Shells were bursting (= exploding) all around us."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "گوللەتۆپ دەتەقی لە دەوروبەرمان."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbursts3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbursts3("en-US"),
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
                                              "He felt he would burst with anger and shame."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "(بەکارهێنانی خوازراوی) هەستی دەکرد لە تووڕەیی و شەرمەزاریدا دەتەقێتەوە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbursts4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbursts4("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (کردار) چوون بۆ شوێنێک بە خێرایی"),
                          Row(
                          children: [
                          const ExampleSentenceEnglish(
                          text:
                          "He burst into the room without knocking."),
                          const ExampleSentenceKurdish(
                          text: "خۆی کرد بە ژوورەکەدا بەبێ دان لە دەرگا."),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakbursts5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakbursts5("en-US"),
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
                          "The sun burst through the clouds."),
                          const ExampleSentenceKurdish(
                          text: "خۆرەکە لە هەورەکانەوە دەدرەوشایەوە."),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakbursts6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakbursts6("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          Column(
                          children: [
                          MyExpansionTile(
                          children: [
                          Row(
                          children: [
                          const ExampleSentenceEnglish(
                          text:
                          "The words burst from her in an angry rush."),
                          const ExampleSentenceKurdish(
                          text: "وشە لە دەمییەوە دەهاتە خوارەوە  لە تووڕەییدا."),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakbursts7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakbursts7("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٣. (کردار) پڕ لە شتێک"),
                          Row(
                          children: [
                          const ExampleSentenceEnglish(
                          text:
                          "The roads are bursting with cars."),
                          const ExampleSentenceKurdish(
                          text: "ڕێگاکان پڕن لە ئۆتۆمبێل."),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakbursts8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakbursts8("en-US"),
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
                          "I’m bursting (for a pee)! (= I need to use the toilet right now)."),
                          const ExampleSentenceKurdish(
                          text: "خەریکە ئەتەقم بۆ میزکردن!"),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakbursts9("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakbursts9("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٤. (ناو) ماوەیەکی کەم لە چالاکییەکی دیاریکراو یان هەستێکی بەهێز کەلەناکاو دەستپێ دەکات"),
                          Row(
                          children: [
                          const ExampleSentenceEnglish(
                          text:
                          "I tend to work in bursts."),
                          const ExampleSentenceKurdish(
                          text: "خواستم وایە لە کت‌وپڕیدا کار بکەم."),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakbursts10("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakbursts10("en-US"),
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
                          "There was a spontaneous burst of applause."),
                          const ExampleSentenceKurdish(
                          text: "چەپڵەڕێزانێکی لەناکاو دەستی پێکرد."),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakbursts11("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakbursts11("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (ناو) تەقین"),
                          Row(
                          children: [
                          const ExampleSentenceEnglish(
                          text:
                          "A burst in the water pipe flooded the floor."),
                          const ExampleSentenceKurdish(
                          text: "تەقینێک لە بۆری ئاوەکەدا نهۆمەکانی پڕئاو کرد."),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakbursts12("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakbursts12("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٦. (ناو) زنجیرەیەک لە تەقەی چەکێک"),
                          Row(
                          children: [
                          const ExampleSentenceEnglish(
                          text:
                          "Pedestrians scattered as a rapid burst of gunfire erupted unexpectedly."),
                          const ExampleSentenceKurdish(
                          text: "ڕێبواران پەرشوبڵاوبوون کە زنجیرەیەک لە تەقەکردن لەناکاو دەستی پێکرد."),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakbursts13("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakbursts13("en-US"),
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
                    // YoutubeEmbeddedeleven(),
                    // YoutubeEmbeddedtwelve(),
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
- Verb: burst (Derived forms: burst, bursting, bursts)
1. Come open suddenly and violently, as if from internal pressure (= split, break open)
"The bubble burst";

2. Force out or release suddenly and often violently something pent up (= break, erupt)
"burst into tears";

3. Burst outward, usually with noise (= explode)
"The champagne bottle burst";
 
4. Move suddenly, energetically, or violently
"He burst out of the house into the cool night"
 
5. Be in a state of movement or action (= abound, bristle)
"The room burst with screaming children";
 
6. Emerge suddenly
"The sun burst into view"
 
7. Cause to burst (= collapse)
 
8. Break open or apart suddenly and forcefully (= bust [informal])
"The dam burst";

- Noun: burst (Derived forms: bursts)
1. The act of exploding or bursting (= explosion)
"the burst of an atom bomb creates enormous radiation aloft";
 
2. Rapid simultaneous discharge of firearms (= fusillade, salvo, volley)
"our burst from the left flank caught them by surprise";
 
3. A sudden flurry of activity (often for no obvious reason) (= fit)
"a burst of applause";

4. A sudden intense happening (= outburst, flare-up)
"a burst of lightning";
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
  static String myVideoId = "https://youtu.be/qWAagS_MANg?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 124, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});
  static String myVideoId = "https://youtu.be/NZ74oFctP_g?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 33, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});
  static String myVideoId = "https://youtu.be/0ST4_hmop9Y?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 317, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});
  static String myVideoId = "https://youtu.be/L9Mu93VJLcc?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 956, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});
  static String myVideoId = "https://youtu.be/g9QneAV4fVo?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1057, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});
  static String myVideoId = "https://youtu.be/yUZA04AtjIs?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 204, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});
  static String myVideoId = "https://youtu.be/QEbYo07jLoY?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 783, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});
  static String myVideoId = "https://youtu.be/P4tDxQby99A?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 572, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});
  static String myVideoId = "https://youtu.be/iiwBuUTTYio?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 383, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});
  static String myVideoId = "https://youtu.be/w-4I9OWH_68?t=";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 120, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: YouTubeContainerDesign(controller: _controller)),
    );
  }
}

// end WORD_WEB