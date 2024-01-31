import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycamp extends StatelessWidget {
// blank divider
  EnglishEntrycamp({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcamp(String languageCode) async {
    // DOPSUM: CHANGE speakcamp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("camp"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcamps1(String languageCode) async {
    // DOPSUM: CHANGE speakcamp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's return to camp."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcamps2(String languageCode) async {
    // DOPSUM: CHANGE speakcamp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We broke camp early the next morning."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcamps3(String languageCode) async {
    // DOPSUM: CHANGE speakcamp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He spent two weeks at camp this summer."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcamps4(String languageCode) async {
    // DOPSUM: CHANGE speakcamp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They criticized the appalling conditions in the refugee camps."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcamps5(String languageCode) async {
    // DOPSUM: CHANGE speakcamp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The military built three new army camps near the German border."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcamps6(String languageCode) async {
    // DOPSUM: CHANGE speakcamp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We were in opposing camps."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcamps7(String languageCode) async {
    // DOPSUM: CHANGE speakcamp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The region split into two armed camps."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcamps8(String languageCode) async {
    // DOPSUM: CHANGE speakcamp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There was an air of confidence in the England camp."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcamps9(String languageCode) async {
    // DOPSUM: CHANGE speakcamp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I camped overnight in a field."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcamps10(String languageCode) async {
    // DOPSUM: CHANGE speakcamp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They go camping in France every year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcamps11(String languageCode) async {
    // DOPSUM: CHANGE speakcamp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'm camping out at a friend's apartment at the moment."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcamps12(String languageCode) async {
    // DOPSUM: CHANGE speakcamp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcamps1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcamps13(String languageCode) async {
    // DOPSUM: CHANGE speakcamp
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcamps1313"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "camp"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kæmp/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcamp("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kæmp/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcamp("en-US"),
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
کوردی: وارگە، چادرگا، کەمپ، ھۆبە، زۆم، بارەگا، ھەوارگە، لەشکرگا، ڕێباز، گروپ، دەستە، حیزب، خێوەت، چادر

١. (ناو) خێوەت یان بینای کاتی کە خەڵکی بە کاتی تێیدا دەژی"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Let's return to camp."),
                                    ExampleSentenceKurdish(
                                        text: "با بگەڕێینەوە کەمپ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples extensively define the word "camp", follow LX strictly
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcamps1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcamps1("en-US"),
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
                                            "We broke camp early the next morning."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەیانی ڕۆژی دواتر کۆتاییمان بە کەمپ ھێنا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcamps2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcamps2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) شێنێک کە منداڵان لە ھاوینا بۆی دەچن و وەرزش و چالاکی دیکە ئەنجام دەدەن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He spent two weeks at camp this summer."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دوو ھەفتەی لە کامپ بەسەر برد ئەم ھاوینە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcamps3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcamps3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) شوێنێک کە بینای کاتی یان خێوەتە و حکومەت خەڵکی تێدا ڕادەگرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They criticized the appalling conditions in the refugee camps."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەرکۆنەی دۆخی تۆقێنەری کەمپی پەنابەرانیان کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcamps4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcamps4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) شوێنی ژیانی سەربازان لە کاتی جەنگ یان ڕاھێنان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The military built three new army camps near the German border."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سوپا سێ کەمپی تازەی سەربازیی درووستکرد لە نزیک سنووری ئەڵمانیا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcamps5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcamps5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) کۆمەڵە کەسێک کە ھەمان بیرۆکەیان ھەیە و دژی ئەو کەسانەن کە بیرۆکەی تریان ھەیە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "We were in opposing camps."),
                                    ExampleSentenceKurdish(
                                        text: "لە دوو بەرەی جیاواز بووین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcamps6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcamps6("en-US"),
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
                                            "The region split into two armed camps."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەرێمەکە بوو بە دوو کەرتی سەربازیی دژبەرەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcamps7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcamps7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) یەکێک لە لایەنەکانی ڕکابەرییەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "There was an air of confidence in the England camp."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕواڵەتێکی خۆباوەڕی ھەبوو لە لایەنی ئینگلتەرە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcamps8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcamps8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) دانانی خێوەتێک و ژیان تێیدا بۆ ماوەیەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I camped overnight in a field."),
                                    ExampleSentenceKurdish(
                                        text: "شەو لە کێڵگەیەکدا کەمپم دانا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcamps9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcamps9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) چوون بۆ مانەوە لە کەمپ لەکاتی پشوودا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They go camping in France every year."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەموو ساڵێک دەچن بۆ کەمپکردن لە فەرەنسا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcamps10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcamps10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) مانەوە لە ماڵی کەسێک بۆ ماوەیەکی کاتی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I'm camping out at a friend's apartment at the moment."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە ئێستادا لە دەستەژووری ھاوڕێیەکم دەمێنمەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcamps11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcamps11("en-US"),
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
- Noun: camp (derived forms: camps)
1. Temporary lodgings in the country for travellers or vacationers
"level ground is best for parking and camp areas"
 
2. (military) temporary living quarters specially built by the army for soldiers (= encampment, cantonment, bivouac)
"wherever he went in the camp the men were grumbling";

3. A group of people living together in a camp
"the whole camp laughed at his mistake"
 
4. An exclusive circle of people with a common purpose (= clique, coterie, ingroup, inner circle, pack)
 
5. A penal institution (often for forced labour)
"China has many camps for political prisoners"
 
6. Something that is considered amusing not because of its originality but because of its unoriginality
"the living room was pure camp"
 
7. Shelter for persons displaced by war or political oppression or for religious beliefs (= refugee camp)
 
8. A site where care and activities are provided for children during the summer months (= summer camp)
"city kids get to see the country at a summer camp";

- Verb: camp (derived forms: camped, camps, camping)
1. Live in or as if in a tent (= encamp, camp out, bivouac, tent, bivvy [informal], bivvy up [informal])
"Can we go camping again this summer?"; "The houseguests had to camp in the living room"; "Can we go camping out again this summer?";
 
2. Establish or set up a camp (= camp down)
 
3. [informal] Give an artificially banal or sexual quality to

- Adjective: camp (derived forms: camper, campest)
Usage: informal
1. Providing sophisticated amusement by virtue of having artificially (and vulgarly) mannered, banal or sentimental qualities (= campy [informal])
"they played up the silliness of their roles for camp effect";

2. Having unsuitable feminine qualities (= effeminate, emasculate, epicene, cissy [Brit, informal], sissified [informal], sissyish [informal], sissy [informal], campy [informal])
"a camp man";
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
    videoId: '-HyHZsa79LU',
    startSeconds: 355,
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
    videoId: 'tsxmyL7TUJg',
    startSeconds: 1590,
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
    videoId: '_0RTH57v66I',
    startSeconds: 49,
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
    videoId: 'FgT3GCsJteA',
    startSeconds: 100,
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
    videoId: '-jDHmEpZpbI',
    startSeconds: 138,
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
    videoId: 'gE_uuJckDns',
    startSeconds: 620,
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
    videoId: 'zVpciPkBSgM',
    startSeconds: 229,
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
    videoId: 'V7CmawVRrC0',
    // startSeconds: 222222222222222,
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
    videoId: 'QKrjcybCnJ8',
    startSeconds: 470,
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
    videoId: '2pGfxcZZNfE',
    startSeconds: 684,
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
