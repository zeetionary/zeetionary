import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryconcentrate extends StatelessWidget {
// blank divider
  EnglishEntryconcentrate({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakconcentrate(String languageCode) async {
    // DOPSUM: CHANGE speakconcentrate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("concentrate"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcentrates1(String languageCode) async {
    // DOPSUM: CHANGE speakconcentrate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I can't concentrate with all that noise going on."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcentrates2(String languageCode) async {
    // DOPSUM: CHANGE speakconcentrate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I struggled to concentrate on my job because I was worried about my son."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcentrates3(String languageCode) async {
    // DOPSUM: CHANGE speakconcentrate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She tried to concentrate on reading her book but couldn't."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcentrates4(String languageCode) async {
    // DOPSUM: CHANGE speakconcentrate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I decided to concentrate all my efforts on finding somewhere to live."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcentrates5(String languageCode) async {
    // DOPSUM: CHANGE speakconcentrate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Power is largely concentrated in the hands of a small elite."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcentrates6(String languageCode) async {
    // DOPSUM: CHANGE speakconcentrate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Fighting was concentrated around the towns to the north."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcentrates7(String languageCode) async {
    // DOPSUM: CHANGE speakconcentrate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Singapore has a much smaller and more geographically concentrated population than Australia."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcentrates8(String languageCode) async {
    // DOPSUM: CHANGE speakconcentrate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("These jams made with fruit juice concentrate are lower in added sugar."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcentrates9(String languageCode) async {
    // DOPSUM: CHANGE speakconcentrate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcentrates900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcentrates10(String languageCode) async {
    // DOPSUM: CHANGE speakconcentrate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcentrates1000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcentrates11(String languageCode) async {
    // DOPSUM: CHANGE speakconcentrate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcentrates1100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcentrates12(String languageCode) async {
    // DOPSUM: CHANGE speakconcentrate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcentrates1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakconcentrates13(String languageCode) async {
    // DOPSUM: CHANGE speakconcentrate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakconcentrates1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "concentrate"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒnsntreɪt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakconcentrate("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːnsntreɪt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakconcentrate("en-US"),
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
//                           const KurdishVocabulary(text: """
// کوردی: 
// """),
                          const DefinitionKurdish(
                              text: "١. (کردار) پێدانی تەواوی سەرنجت بە شتێک و بیرنەکردنەوە لە شتی دیکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I can't concentrate with all that noise going on."),
                                    ExampleSentenceKurdish(
                                        text: "ناتوانم سەرنج بدەم بەو هەموو دەنگەدەنگەی هەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "concentrate", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakconcentrates1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakconcentrates1("en-US"),
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
                          "I struggled to concentrate on my job because I was worried about my son."),
                          ExampleSentenceKurdish(
                          text: "نەمدەتوانی بیروهۆشـ بدەم بە کارەکەم بەهۆی ئەوەی نیگەران بووم سەبارەت بە کوڕەکەم."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakconcentrates2("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakconcentrates2("en-US"),
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
                          "She tried to concentrate on reading her book but couldn't."),
                          ExampleSentenceKurdish(
                          text: "هەوڵی دەدا سەرنج بخاتە سەر خوێندنەوە بەڵام نەیدەتوانی."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakconcentrates3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakconcentrates3("en-US"),
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
                          "I decided to concentrate all my efforts on finding somewhere to live."),
                          ExampleSentenceKurdish(
                          text: "بڕیارم تەواوی هەوڵم بدەم بۆ ئەوەی شوێنێک بدۆزمەوە بۆ ژیان."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakconcentrates4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakconcentrates4("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (کردار) پێکەوەنانی شتێک لە شوێنێکدا"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "Power is largely concentrated in the hands of a small elite."),
                          ExampleSentenceKurdish(
                          text: "دەسەڵات کۆکراوەتەوە لە دەستی کۆمەڵێکی بچووک لە دەسەڵاتداراندا."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakconcentrates5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakconcentrates5("en-US"),
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
                          "Fighting was concentrated around the towns to the north."),
                          ExampleSentenceKurdish(
                          text: "شەڕکردن لە دەوری شارۆچکەکانی باکوور چڕکرابوویەوە."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakconcentrates6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakconcentrates6("en-US"),
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
                          "Singapore has a much smaller and more geographically concentrated population than Australia."),
                          ExampleSentenceKurdish(
                          text: "سنگاپوور دانیشتوانێکی بچووکتر و لە ڕووی جوگرافییەوە چڕتری هەیە لە ئوسترالیا."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakconcentrates7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakconcentrates7("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٣. (ناو) مادەیەک کە خەستکراوەتەوە بەهۆی ئەوەی ئاو و مادەکانی دیکەی لێ دەرکراوە"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "These jams made with fruit juice concentrate are lower in added sugar."),
                          ExampleSentenceKurdish(
                          text: "ئەم مرەبایانەی کە لە شەربەتی خەستی میوە درووستکراون شەکری تێکراویان کەمترە."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakconcentrates8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakconcentrates8("en-US"),
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
                        // YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(),
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
- Verb: concentrate (Derived forms: concentrates, concentrating, concentrated)
1. Hold attention and exert mental effort on something (= focus, center [US], centre [Brit, Cdn], pore, rivet, pore over)
"Please concentrate on your studies and not on your hobbies";
 
2. Make denser, stronger, or purer
"concentrate juice"
 
3. Make central (= centralize, centralise [Brit])
 
5. Make more concise (= digest, condense, distill [N. Amer], distil [Brit])
"concentrate the contents of a book into a summary";
 
6. Draw together or meet in one common centre
"These groups concentrate in the inner cities"
 
7. Compress or concentrate (= condense, contract)
 
8. (cooking) be cooked until very little liquid is left (= boil down, reduce, decoct [archaic])
"The sauce should concentrate to one cup";
 
9. (cooking) cook until very little liquid is left (= reduce, boil down)
"The cook concentrated the sauce by boiling it for a long time";

- Noun: concentrate (Derived forms: concentrates)
1. The desired mineral that is left after impurities have been removed from mined ore (= dressed ore)

2. A concentrated form of a foodstuff; the bulk is reduced by removing water
 
3. A concentrated example of something
"the concentrate of contemporary despair"
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
    videoId: 'https://youtu.be/nANGQ_9wD-0?t=',
    startSeconds: 150,
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
    videoId: 'https://youtu.be/DEFD9TSHg_A?t=',
    startSeconds: 4,
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
    videoId: 'https://youtu.be/1Gxrwh4zGPg?t=',
    startSeconds: 1023,
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
    videoId: 'https://youtu.be/Xzv84ZdtlE0?t=',
    startSeconds: 1068,
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
    videoId: 'https://youtu.be/9wY7u3bVnDs?t=',
    startSeconds: 379,
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
    videoId: 'https://youtu.be/CmhFPjE6U8k?t=',
    startSeconds: 77,
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
    videoId: 'https://youtu.be/PGPVpil2UmE?t=',
    startSeconds: 166,
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