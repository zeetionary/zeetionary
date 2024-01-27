import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bracket" as a TYPE and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more.

enum TtsState { playing }

class EnglishEntrybracket extends StatelessWidget {
// blank divider
  EnglishEntrybracket({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbracket(String languageCode) async {
    // DOPSUM: CHANGE speakbracket
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bracket"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrackets1(String languageCode) async {
    // DOPSUM: CHANGE speakbracket
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Publication dates are given in brackets after each title."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrackets2(String languageCode) async {
    // DOPSUM: CHANGE speakbracket
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Add the numbers in brackets first."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrackets3(String languageCode) async {
    // DOPSUM: CHANGE speakbracket
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "People in the lower income brackets will not be able to afford this."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrackets4(String languageCode) async {
    // DOPSUM: CHANGE speakbracket
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Most of the houses are out of our price bracket."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrackets5(String languageCode) async {
    // DOPSUM: CHANGE speakbracket
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I've bracketed the parts of the text that could be omitted."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrackets6(String languageCode) async {
    // DOPSUM: CHANGE speakbracket
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is unfair to bracket together those who cannot work with those who will not."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbrackets7(String languageCode) async {
    // DOPSUM: CHANGE speakbracket
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The two writers are often bracketed together by critics."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 13, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "bracket"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbrækɪt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbracket("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbrækɪt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbracket("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 13
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
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
کوردی: گۆشەڕاگر، گۆشەبەند، سووچ‌بەند، گوشەبەست، ڕەفحەبەند، ڕەفحەڕاگر، پاڵپشتی ڕەفحە، تاق، تاقە، دیواری، کەوان‌ڕێک، ئانیشکە، کەوانە، برۆنیشان، نیشانەکانی() [] {}، دەستە، کۆمەڵ، پۆل. پۆلاندن، دەستاندن، دەستەکردن، دەستەدەستەکردن

١. (ناو) کەوانەی وەک () یان [] کە لە نووسیندا زانیاری زیادە لە ناویاندا دەنووسرێت. لە بیرکاریدا بەشێک لە ھاوکێشە لە ناو () دەنووسرێت. لە نووسیندا لێدوانی نووسەر لە ناو [] دەنووسرێت."""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Publication dates are given in brackets after each title."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە دوای ھەر ناونیشانێک ساڵی بڵاوکردنەوە دەدرێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrackets1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrackets1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Add the numbers in brackets first."),
                              const ExampleSentenceKurdish(
                                  text: "سەرەتا ژمارەکان لە کەوانەدا بنووسە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrackets2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrackets2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) مەودایەکی دیاریکراو"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "People in the lower income brackets will not be able to afford this."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کەسانی کۆمەڵەی کەمدەرامەت ناتوانن پارەی ئەمە دابین بکەن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrackets3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrackets3("en-US"),
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
                                      "Most of the houses are out of our price bracket."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زۆرینەی خانووەکان لە سەرەوەی ڕێژەی پارەی ئێمەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrackets4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrackets4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) نووسینی زانیاری یان ژمارە لە ناو کەوانەدا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I've bracketed the parts of the text that could be omitted."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەو بەشانەی نووسینەکەم خستووەتە کەوانەوە کە دەکرێت لاببرێن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrackets5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrackets5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) دادانی خەڵکی یان شت لە ھەمان کۆمەڵەدا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It is unfair to bracket together those who cannot work with those who will not."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نادادییە ئەوانەی کە ناتوانن کار بکەن و ئەوانەی کە کار ناکەن لە ھەمان کۆمەڵە پۆلێن بکرێن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrackets6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrackets6("en-US"),
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
                                      "The two writers are often bracketed together by critics."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دوو نووسەرەکە زۆرجار لەلایەن ڕەخنەگرانەوە پێکەوە ناودەھێنرێن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbrackets7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbrackets7("en-US"),
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
- Noun: bracket (derived forms: brackets)
1. [Brit] Either of two punctuation marks, "(" or ")", used to enclose textual material (= parenthesis, round bracket [Brit])
 
2. Either of two punctuation marks ([ or ]) used to enclose textual material (= square bracket)
 
3. A category falling within certain defined limits
 
4. Either of two punctuation marks ('<' or '>') used in computer programming and sometimes used to enclose textual material (= angle bracket)
 
5. A support projecting from a wall (as to hold a shelf) (= wall bracket)

- Verb: bracket (derived forms: bracketing, bracketed, brackets)
1. Support with brackets
"bracket bookshelves"
 
2. Place into brackets (= bracket out)
"Please bracket this remark";
 
3. Classify or group
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
    videoId: 'V3NGBo2M1Ps',
    startSeconds: 441,
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
    videoId: 'P2pwC5wc21o',
    startSeconds: 5,
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
    videoId: '0q8vYIT6O3Q',
    startSeconds: 82,
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
    videoId: 'PZzZ4gO7E2I',
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

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'dVZKn6NSmNg',
    startSeconds: 354,
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
    videoId: 'mTtbg9poe_w',
    startSeconds: 248,
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
    videoId: 'bT8QS5sxONw',
    startSeconds: 89,
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
    videoId: 'PZYWzsB_yfA',
    startSeconds: 452,
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
    videoId: 'LQdjmGimh04',
    startSeconds: 22,
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
    videoId: 'CmBzCnCj2XY',
    startSeconds: 797,
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'wksm1xI1Ms0',
    startSeconds: 122,
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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'PUT_VIDEO_ID_PUT_VIDEO_ID_5555555',
    startSeconds: 222222222222222,
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

// more than one video, only first autoplay

// haʊʊʊʊʊʊʊ4
// end bracket
