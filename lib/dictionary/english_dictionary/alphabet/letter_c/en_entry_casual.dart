import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycasual extends StatelessWidget {
  // blank divider
  EnglishEntrycasual({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcasual(String languageCode) async {
    // DOPSUM: CHANGE speakcasual
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("casual"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasuals1(String languageCode) async {
    // DOPSUM: CHANGE speakcasual
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She felt comfortable in casual clothes and wore them most of the time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasuals2(String languageCode) async {
    // DOPSUM: CHANGE speakcasual
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His clothes were artfully arranged to look casual."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasuals3(String languageCode) async {
    // DOPSUM: CHANGE speakcasual
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was just a casual remark—I wasn't really serious."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasuals4(String languageCode) async {
    // DOPSUM: CHANGE speakcasual
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He tried to sound casual, but I knew he was worried."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasuals5(String languageCode) async {
    // DOPSUM: CHANGE speakcasual
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("At a casual glance, everything seemed normal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasuals6(String languageCode) async {
    // DOPSUM: CHANGE speakcasual
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They are employed on a casual basis."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasuals7(String languageCode) async {
    // DOPSUM: CHANGE speakcasual
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They were having casual sex, but it never became a serious relationship."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasuals8(String languageCode) async {
    // DOPSUM: CHANGE speakcasual
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The disease is not spread by casual contact."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasuals9(String languageCode) async {
    // DOPSUM: CHANGE speakcasual
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She changed into flat casuals before walking round the town."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasuals10(String languageCode) async {
    // DOPSUM: CHANGE speakcasual
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasuals1010"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasuals11(String languageCode) async {
    // DOPSUM: CHANGE speakcasual
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasuals1111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasuals12(String languageCode) async {
    // DOPSUM: CHANGE speakcasual
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasuals1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasuals13(String languageCode) async {
    // DOPSUM: CHANGE speakcasual
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasuals1313"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "casual"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkæʒuəl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcasual("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkæʒuəl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcasual("en-US"),
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
                  VideoIconForTab(),
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
کوردی: ڕێکەوتی، هەڵکەوتی، بەختەکی، نامەبەستی، نائەنقەست، کەمتەرخەم، بێ‌خەیاڵ، بێ‌دەربەست، لامسەرلا، بێ‌ئەندێشە، گوێ‌پێنەدەر، لاسار، ئالۆری، نەڕشت، بەتەنگەوەنەبوو، نابەرپرس، سەرزارەکی، ڕەمەکی، فشە، سەرسەرەکی، کاتی، خۆمانە، نافەرمی، ناهەمیشەیی، کاتی، بەروەخت، پچڕپچڕ، ناڕێک‌وپێک، کرێکاری کاتی، بەرکاتی، کەوش و جل‌وبەرگی نافەرمی

١. (ھاوەڵناو) شتێک کە فەرمی نییە"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She felt comfortable in casual clothes and wore them most of the time."),
                                    ExampleSentenceKurdish(
                                        text: "هەستی بە ئاسوودەیی دەکرد بە جلی نافەرمییەوە و زۆرجار لەبەری دەکردن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // Define the word "casual", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasuals1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasuals1("en-US"),
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
                          "His clothes were artfully arranged to look casual."),
                          ExampleSentenceKurdish(
                          text: "جلەکانی زیرەکانە ڕێکخرابوون بۆ ئەوەی نافەرمی دەربکەوێت."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcasuals2("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcasuals2("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (ھاوەڵناو) بەبێ پیشاندانی گرنگی"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "It was just a casual remark—I wasn't really serious."),
                          ExampleSentenceKurdish(
                          text: "تەنها لێدوانێکی نامەبەست بوو، بە جدیم نەبوو."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcasuals3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcasuals3("en-US"),
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
                          "He tried to sound casual, but I knew he was worried."),
                          ExampleSentenceKurdish(
                          text: "هەوڵیدا ئاسایی دەربکەوێت، بەڵام دەمزانی نیگەرانە."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcasuals4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcasuals4("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٣. (ھاوەڵناو) بەبێ گرنگیدان بە وردەکاری"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "At a casual glance, everything seemed normal."),
                          ExampleSentenceKurdish(
                          text: "بە ڕوانینێکی ڕەمەکی، هەموو شتێک ئاسایی دیاربوو."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcasuals5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcasuals5("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٤. (ھاوەڵناو) شتێک کە هەمیشەیی نییە"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "They are employed on a casual basis (= they do not have a permanent job with the company)."),
                          ExampleSentenceKurdish(
                          text: "بە ناهەمیشەیی دامەزروان."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcasuals6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcasuals6("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (ھاوەڵناو) پەیوەندییەکی ڕووکەشانە کە هەستی بۆ یەکدی تێدا نییە"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "They were having casual sex, but it never became a serious relationship."),
                          ExampleSentenceKurdish(
                          text: "سێکسی بۆخۆشییان دەکرد، بەڵام هەرگیز نەگەشتن بە پەیوەندییەکی ڕاست."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcasuals7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcasuals7("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٦. (ناو) بەڕێکەوت"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "The disease is not spread by casual contact."),
                          ExampleSentenceKurdish(
                          text: "نەخۆشییەکە بە بەرکەوتنی بەڕێکەوت بڵاونابێتەوە."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcasuals8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcasuals8("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٧. (ناو) جلوبەرگ و پێڵاوی نافەرمی"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "She changed into flat casuals before walking round the town."),
                          ExampleSentenceKurdish(
                          text: "فلاتی نافەرمی لەپێ‌کرد پێش ئەوەی بە شارۆچکەکە بگەڕێت."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcasuals9("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcasuals9("en-US"),
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
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(), // 
                        // YoutubeEmbeddednine(),
                        // YoutubeEmbeddedten(),
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
                        YoutubeEmbeddedend(),
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
- Adjective: casual 
1. Marked by blithe unconcern (= insouciant, nonchalant)
"an ability to interest casual students"; "showed a casual disregard for cold weather";
 
2. Without or seeming to be without plan or method; offhand
"a casual remark"; "information collected by casual methods and in their spare time"
 
3. Appropriate for ordinary or routine occasions (= everyday, daily)
"casual clothes";

4. Occurring, appearing or singled out by chance (= chance)
"seek help from casual passers-by"; "a casual meeting";
 
5. Hasty and without attention to detail; not thorough (= cursory, passing, perfunctory, superficial)
"a casual inspection failed to reveal the house's structural flaws";
 
6. Not regular; working on an informal or ad hoc basis (= occasional)
"casual employment"; "a casual correspondence with a former teacher";
 
7. Characterized by a feeling of irresponsibility (= fooling)
"a broken back is nothing to be casual about; it is no fooling matter";
 
8. Natural and unstudied (= free-and-easy)
"using their Christian names in a casual way";
 
9. Not showing effort or strain (= effortless)
"casual grace"; "a difficult feat performed with casual mastery";

- Noun: casual (Derived forms: casuals)
Usage: Brit
1. A worker (especially in an office) hired on a temporary basis (= temp [informal], temporary, temporary worker, casual worker)
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

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/ygzSSDEo7Dk?t=',
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
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/vbbQxOJbK7s?t=',
    startSeconds: 28,
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
    videoId: 'https://youtu.be/cYmBDyRXRas',
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

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/_nxZxJK2usk?t=',
    startSeconds: 116,
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
    videoId: 'https://youtu.be/7ER4ozbVvpM?t=',
    startSeconds: 50,
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
    videoId: 'https://youtu.be/F7AUQWFXXv0?t=',
    startSeconds: 17,
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
    videoId: 'https://youtu.be/lVoGZiL-kns?t=',
    startSeconds: 272,
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
    videoId: 'https://youtu.be/oD9BaNAH-eE?t=',
    startSeconds: 269,
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

// end WORD_WEB