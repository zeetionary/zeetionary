import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryaddress - replace speakAddress - replace address - /əˈdres/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryaddress extends StatelessWidget {
  EnglishEntryaddress({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAddress(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("address"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdd774(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'll give you my address and phone number."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAddress452(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Police found him at an address in West London."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAddr2458(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's your email address?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAddr624(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He gave details of the policy in an address to party members."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdd99(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These concerns were not adequately addressed in the report."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAddr11(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The letter was correctly addressed, but delivered to the wrong house."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAddr766(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He addressed his comments to the supervisor."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAddre444(String languageCode) async {
    // DOPSUM: CHANGE speakAddress
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The President has been asked to address the parliament."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAddress(String languageCode) async {
  //   // DOPSUM: CHANGE speakAddress
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("address"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAddress(String languageCode) async {
  //   // DOPSUM: CHANGE speakAddress
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("address"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12, // 2 + VIDEOS FIND: YoutubeEmbeddedfifteen
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
                            EntryTitle(word: "address"), // Find /əˈdres/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈdres/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAddress("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈdres/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAddress("en-US"),
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
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(), // FIND: 2,
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
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
کوردی: ناونیشان، نیشان، شێوازی لێداون یان دووان، دەراوی دەم، (دەم‌و)ڕاوێژ، شارەزایی، وتاردان، قسەکردن لە بەردەم ئامادەبووان‌دا

١. (ناو) شوێنی ژیان یان کارکردنی کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I'll give you my address and phone number."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ناونیشان و ژمارە تەلەفۆنی خۆمت پێ ئەدەم."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAdd774("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAdd774(// REPLACE: address /əˈdres/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Police found him at an address (= a house or flat) in West London."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پۆلیس لە شوێنێک لە ڕۆژھەڵاتی لەندەن دۆزییەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAddress452("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAddress452(// REPLACE: address /əˈdres/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) ژمارەیەک پیت و ژمارە کە ناونیشانی شوێنێک یان کەسێکە لەسەر ئینتەرنێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "What's your email address?"),
                              const ExampleSentenceKurdish(
                                  text: "ناونیشانی ئیمەیڵەکەت چییە؟"),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAddr2458("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAddr2458(// REPLACE: address /əˈdres/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) وتارێکی فەرمی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He gave details of the policy in an address to party members."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "وردەکارییەکانی سیاسەتیانی ڕوونکردەوە لە وتارێکدا بۆ ئەندامانی پارتەکە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAddr624("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAddr624(// REPLACE: address /əˈdres/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) بیرکرنەوە لە چۆنیەتی مامەڵەکردن لەگەل کێشەیەک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "These concerns were not adequately addressed in the report."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەم نیگەرانیانە بەپێی پێویست لە ڕاپۆرتەکەدا مامەڵەیان لەگەڵ نەکراوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAdd99("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAdd99(// REPLACE: address /əˈdres/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) نووسینی ناو و ناونیشانی کەسێک و شوێنەکەی لەسەر نامەیەک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The letter was correctly addressed, but delivered to the wrong house."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نامەکە بە درووستی ناو و ناونیشانی لەسەر نووسرابوو، بەڵام بۆ ماڵێکی ھەڵە نێردرا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAddr11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAddr11(// REPLACE: address /əˈdres/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) پێشکەشکردنی وتارێک بۆ کۆمەڵە کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The President has been asked to address the parliament."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سەرۆک داوای لێکرا وتارێک لە پەرلەمان پێشکەش بکات."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAddre444("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAddre444(// REPLACE: address /əˈdres/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) وتنی شتێک ڕاستەوخۆ بە کەسێك"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He addressed his comments to the supervisor."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بۆچوونەکانی ڕاستەوخۆ بە سەرپەرشتیارەکە گووت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAddr766("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAddr766(// REPLACE: address /əˈdres/
                                        "en-US"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(), // DOPSUM: FROM YOUTUBE BELOW
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

class EnglishMeaning extends StatelessWidget {
  const EnglishMeaning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DividerDefinition(),
          EnglishMeaningConst(
            text: """
- Noun: address (derived forms: addresses)
1. The place where a person or organization can be found or communicated with
 
2. Written directions for finding some location; written on letters or packages that are to be delivered to that location (= destination, name and address)
 
3. The act of delivering a formal spoken communication to an audience (= speech)
"he listened to an address on minor Roman poets";
 
4. The manner of speaking to another individual
"he failed in his manner of address to the captain"
 
5. A sign in front of a house or business carrying the conventional form by which its location is described
 
6. (golf) the stance assumed by a golfer in preparation for hitting a golf ball
 
7. The social skill to do or say what is appropriate for the occasion (= savoir-faire, savoir faire)
 
8. (computing) the code that identifies where a piece of information is stored (= computer address, reference)

- Verb: address (derived forms: addressed, addresses, addressing)
1. Speak to (= turn to)
"He addressed the crowd outside the window";
 
2. Give a speech to (= speak)
"The chairman addressed the board of trustees";
 
3. Put an address on (an envelope) (= direct)
 
4. Direct a question at someone
 
5. Give attention to something; direct efforts towards something, such as how to solve a problem
"We need to address this issue first"
 
6. Greet, as with a prescribed form, title, or name (= call)
"He always addresses me with 'Sir'";
 
7. Act on verbally or in some form of artistic expression (= cover, treat, handle, plow [N. Amer], deal, plough [Brit, Cdn])
"The course addressed all of Western Civilization";
 
8. (golf) adjust and aim (a golf ball) at in preparation of hitting
 
9. (computing) access or locate by address
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'zPx5N6Lh3sw';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1277, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  static String myVideoId = 'h_jrebvmPlk';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedtwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  static String myVideoId = 'B7VKqFTaPl8';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  static String myVideoId = 'Gyb-DjVT5_c';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 128, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedfour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  static String myVideoId = 'sZ3sCBdqCVU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 66, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedfive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  static String myVideoId = 'hOUGNGWmN0k';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 993, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedsix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  static String myVideoId = 'cqidD7kVnxY';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1379, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  static String myVideoId = 'pFmtmO2cnlg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 64, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  static String myVideoId = 'HAnw168huqA';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 3045, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddednine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  static String myVideoId = 'PqpCeiYycVM';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1107, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
    ),
  );

  YoutubeEmbeddedten({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// end
