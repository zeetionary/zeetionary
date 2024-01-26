import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "boost" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace boost - /buːst/

enum TtsState { playing }

class EnglishEntryboost extends StatelessWidget {
// blank divider
  EnglishEntryboost({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakboost(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("boost"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts1(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The movie helped boost her screen career."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts2(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The total was boosted to nearly £200 by donations from parents."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts3(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company is looking for ways to boost sales in Asia, its biggest market."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts4(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "More than half of over 18s in the country have now been boosted against Covid."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts5(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The tax cuts will give a much needed boost to the economy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts6(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Winning the competition was a wonderful boost for her morale."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts7(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Motorists who operate diesel-powered vehicles would face a 1.5-cent-a-gallon boost in fuel taxes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts8(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The new software update offers a performance boost."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts9(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboosts99"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts10(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboosts1010"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts11(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboosts1111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts12(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboosts1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts13(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboosts1313"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts14(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboosts1414"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts15(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboosts1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts16(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboosts1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts17(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboosts1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts18(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboosts1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts19(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboosts1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakboosts20(String languageCode) async {
    // DOPSUM: CHANGE speakboost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakboosts2020"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "boost"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /buːst/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakboost("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /buːst/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakboost("en-US"),
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
کوردی: پاڵ، زیخان، پەڵ‌پێوەنان، ھەڵێنان (بۆسەرێ) بردنەسەرێ، چوونەسەرێ، ھەڵکێشان، (بە)تواناکردن، بەھێزکردن، بەکێش‌کردن، پێزداری، زۆربوون، خرانەسەر، یارمەتی، یاریدە، کۆمەک، ھاندان، دنەدان، ورەپێدان

١. (کردار) زیادکردنی شتێک، یان وای لێ بکەیت باشتر یان سەرکەوتووتر بێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The movie helped boost her screen career."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "فیلمەکە کارکردنی لە سینەمادا بەرەو پێش برد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboosts1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboosts1("en-US"),
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
                                      "The total was boosted to nearly £200 by donations from parents."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کۆی گشتی زیادکرا بۆ نزیکەی ٢٠٠ پاوەند بەو بەخشینەی دایک و باوکی دایان."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboosts2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboosts2("en-US"),
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
                                      "The company is looking for ways to boost sales in Asia, its biggest market."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کۆمپانیاکە ھەوڵ دەدات فرۆشتن لە ئاسیادا زیاد بکات کە بەھێزترین بازاڕیەتی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboosts3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboosts3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) وەرگرتنی ڤاکسین"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "More than half of over 18s in the country have now been boosted against Covid."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زیاتر لە نیوەی کەسانی سەروو ١٨ ساڵ لە وڵاتەکەدا ڤاکسینیان وەرگرتووە دژ بە کۆرۆنا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboosts4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboosts4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) شتێک کە یارمەتی یان ھانی کەسێک/شتێک دەدات"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The tax cuts will give a much needed boost to the economy."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کەمکردنەوەی باج یارمەتیی زۆر پێویست بە ئابووری دەدات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboosts5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboosts5("en-US"),
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
                                      "Winning the competition was a wonderful boost for her morale."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بردنەوەی پێشبڕکێیەکە ھاندەرێکی باشی ورەی بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboosts6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboosts6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) زیادبوون لە شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Motorists who operate diesel-powered vehicles would face a 1.5-cent-a-gallon boost in fuel taxes."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەو شۆفێرانەی کە ئامێری گوازەرەوەی گازوایل بەکاردێنن ڕووبەڕووی ١,٥ سەنت بۆ ھەر گاڵۆنێک باجی سوتەمەنی دەبنەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboosts7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboosts7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) زیادبوون لە توانای بزوێنەرێک یان ئامێرێکی کارەبایی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The new software update offers a performance boost."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نوێکردنەوەی تازەی نەرمامێرەکە زیادبوونێک لە توانای کارکردن دەبەخشێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakboosts8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakboosts8("en-US"),
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
- Verb: boost (derived forms: boosts, boosting, boosted)
1. Give help (to improve, increase, etc); be beneficial to
"The tax cut will boost the economy"
 
2. Contribute to the progress or growth of (= promote, advance, further, encourage)
"I am boosting the use of computers in the classroom";
 
3. Increase or raise (= advance, supercharge)
"boost the voltage in an electrical circuit";
 
4. Push or shove upward, as if from below or behind
"The singer had to be boosted onto the stage by a special contraption"

- Noun: boost (derived forms: boosts)
1. The act of giving hope or support to someone (= encouragement, fillip)
 
2. An increase in cost (= rise, hike, cost increase)
"they asked for a 10% boost in rates";
 
3. The act of giving a push
"he gave her a boost over the fence"
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
    videoId: 'wHGs_QVafh4',
    startSeconds: 733,
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
    videoId: 'D0x2dgpBDzc',
    startSeconds: 392,
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
    videoId: 'lex6USTugUU',
    startSeconds: 639,
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
    videoId: 'YRhqMWUH2Ig',
    startSeconds: 140,
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
    videoId: 'b2lDdwxNWto',
    startSeconds: 475,
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
    videoId: 'xVQxvthAcLU',
    startSeconds: 1593,
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
    videoId: '8eq2vGEEbB4',
    startSeconds: 458,
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
    videoId: 'hunhgK9tOCs',
    startSeconds: 976,
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
    videoId: '3s2qAFfpJf4',
    startSeconds: 56,
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
    videoId: 'uLSv17iE_4Q',
    startSeconds: 1261,
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
    videoId: 'D5XPuS-Y0fg',
    startSeconds: 118,
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
    videoId: 'JwygW91gOdc',
    startSeconds: 7,
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

// more than one video, only first autoplay

// end boost
