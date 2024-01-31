import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybuzz extends StatelessWidget {
// blank divider
  EnglishEntrybuzz({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbuzz(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("buzz"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuzzs1(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Bees buzzed lazily among the flowers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuzzs2(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The doorbell buzzed loudly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuzzs3(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("New York buzzes from dawn to dusk."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuzzs4(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The place was buzzing with journalists."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuzzs5(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The doctor buzzed for the next patient to come in."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuzzs6(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I heard a buzz and then saw the plane in the distance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuzzs7(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was woken by the buzz of a mosquito in his ear."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuzzs8(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The buzz of conversation suddenly stopped when she came into the room."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuzzs9(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Flying gives me a real buzz."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuzzs10(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There was a buzz of excitement all around the room."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuzzs11(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The buzz is that Matt is in Scotland. Have you heard anything?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuzzs12(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuzzs1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuzzs13(String languageCode) async {
    // DOPSUM: CHANGE speakbuzz
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuzzs1313"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "buzz"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bʌz/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbuzz("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bʌz/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbuzz("en-US"),
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
کوردی: ویزەویز، گیزەگیز، (دەزگا) فڕەفڕ، ڤڕەڤڕ، زرنگانەوە، دەنگەدەنگ، ھەراوھوریا، قیژەقیژ، دەنگۆ، قسەڵۆک، دەنگی بوزێر (یان تەلەفۆن)، زەنگ یان زڕەی تەلەفۆن، ھەستی وروژان یان خۆشی

١. (کردار) دەرکردنی دەنگێکی نزمی بەردەوام"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Bees buzzed lazily among the flowers."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەنگ بە ھێواشی گیزەیان دەھات لەناو گوڵەکاندا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples extensively define the word "buzz", follow LX strictly
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuzzs1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuzzs1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) دەرکردنی دەنگێک کە وەک دەنگی ھەنگ وای"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "The doorbell buzzed loudly."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زەنگی دەرگاکە بە بەرزی دەنگی دەھات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuzzs2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuzzs2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (کردار) پڕ لە خرۆشاوی و چالاکی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "New York buzzes from dawn to dusk."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نیویۆرک لە بەرەبەیانەوە تا مەغریب ھاژەی دێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuzzs3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuzzs3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The place was buzzing with journalists."),
                                    ExampleSentenceKurdish(
                                        text: "شوێنەکە پڕبوو لە ڕۆژنامەنووس."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuzzs4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuzzs4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) بانگکردنی کەسێک بە دەستنان بە زەنگێکدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The doctor buzzed for the next patient to come in."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پزیشکەکە زەنگی بۆ نەخۆشی دواتر لێدا بچێتە ژوورەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuzzs5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuzzs5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ناو) دەنگێکی بەردەوامی نزم"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I heard a buzz and then saw the plane in the distance."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گوێم لە ھاژەکە بوو و دواتر فڕۆکەکەم لە دوورەوە دیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuzzs6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuzzs6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He was woken by the buzz of a mosquito in his ear."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە خەو ھەستا بە دەنگی مێشوولەیەک لە گوێیدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuzzs7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuzzs7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) دەنگی قسەی خەڵکی، بە تایبەتی کە خرۆشاون"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The buzz of conversation suddenly stopped when she came into the room."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەنگی گفتوگۆ لەناکاو وەستا کە ئەو ھاتە ژوورەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuzzs8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuzzs8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) ھەستێکی بەھێزی خۆشحاڵی، جۆشھوخرۆشی، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Flying gives me a real buzz."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فڕین ھەستێکی تەواو ڕاستەقینەم پێ دەبەخشێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuzzs9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuzzs9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "There was a buzz of excitement all around the room."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەستێکی خۆشی لە تەواوی ژوورەکەدا ھەبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuzzs10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuzzs10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) ھەواڵێک کە خەڵکی بە یەکدی دەڵێن و لەوانەیە ڕاست بێت و لەوانەیە ڕاست نەبێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The buzz is that Matt is in Scotland. Have you heard anything?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "قسەڵۆکەکە ئەوەیە مات لە سکۆتلەندایە. ھیچت بیستووە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuzzs11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuzzs11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YouTubeScroller(
                      children: [
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
- Noun: buzz (derived forms: buzzes)
1. Sound of rapid vibration (= bombilation, bombination)
"the buzz of a bumble bee";
 
2. [informal] A confusion of activity and gossip
"the buzz of excitement was so great that a formal denial was issued"
 
3. [informal] A sudden pleasurable excitement (= bang, charge, rush, flush, thrill, kick)
 
4. Strong widespread interest and excitement about a particular topic
"This book is generating quite a buzz"

- Verb: buzz (derived forms: buzzing, buzzes, buzzed)
1. Make a buzzing sound (= bombinate, bombilate)
"bees were buzzing around the hive";
 
2. Be noisy with activity (= hum, seethe)
"This office is buzzing with activity";
 
3. Call with a buzzer
"he buzzed the servant"
 
4. [informal] (air travel) fly low
"Planes buzzed the crowds in the square"
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
    videoId: 'MGO4_8YRKro',
    startSeconds: 133,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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
    videoId: 'bGqvimnOTeg',
    startSeconds: 232,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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
    videoId: 'n4BrXiSgW7M',
    startSeconds: 38,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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
    videoId: 'Bi2jES0T9zY',
    startSeconds: 84,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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
    videoId: 'MqYM0Lo3He8',
    startSeconds: 219,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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
    videoId: 'O5xC8T1XsE4',
    startSeconds: 3649,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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
    videoId: 'd7TJuAt5hkk',
    startSeconds: 586,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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
    videoId: 'w20q6ofJYBY',
    startSeconds: 1675,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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
    videoId: 'AMrT2DjG0gE',
    startSeconds: 922,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
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
    videoId: 'DTvOL7EszHc',
    startSeconds: 27,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

// end WORD_WEB
