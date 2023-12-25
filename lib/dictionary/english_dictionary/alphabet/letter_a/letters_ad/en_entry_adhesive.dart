import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryDopsum - replace speakAdhesive - replace adhesive - /ədˈhiːsɪv/, /ədˈhiːzɪv/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryadhesive extends StatelessWidget {
  EnglishEntryadhesive({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAdhesive(String languageCode) async {
    // DOPSUM: CHANGE speakAdhesive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("adhesive"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdhesive471(String languageCode) async {
    // DOPSUM: CHANGE speakAdhesive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The adhesive takes at least an hour to set."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdhesive6355(String languageCode) async {
    // DOPSUM: CHANGE speakAdhesive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The labels are easy to apply and very adhesive."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAdhesive(String languageCode) async {
  //   // DOPSUM: CHANGE speakAdhesive
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("adhesive"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7, // 2 + VIDEOS FIND: YoutubeEmbeddedfifteen
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
                            EntryTitle(
                                word:
                                    "adhesive"), // Find /ədˈhiːsɪv/, /ədˈhiːzɪv/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUK: /ədˈhiːsɪv/, /ədˈhiːzɪv/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAdhesive("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ədˈhiːsɪv/, /ədˈhiːzɪv/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAdhesive("en-US"),
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
                  // VideoIconForTab(), // FIND: 2,
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
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
کوردی: پێوەنووساو، چەسپۆک، زووپێوەنووساو، مەتریاڵی پێوەنووساو، مادەی چەسپیو یان لیچق، لەزگە، چەسپ

١. (ناو) مادەیەک کە دەلکێت بە شتەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The adhesive takes at least an hour to set."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لەزگەکە نزیکەی یەک کاتژمێری دەوێت تاوەکو شوێنی خۆی بگرێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdhesive471("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdhesive471(
                                        // REPLACE: adhesive /ədˈhiːsɪv/, /ədˈhiːzɪv/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) ھەبوونی خاسیەتی لکان بە شتەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The labels are easy to apply and very adhesive."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نووسراوەکان بە ئاسانی لێدەدرێن و باش دەنووسێن پێوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdhesive6355("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdhesive6355(
                                        // REPLACE: adhesive /ədˈhiːsɪv/, /ədˈhiːzɪv/
                                        "en-US"),
                                  ),
                                ],
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
                    // YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    // YoutubeEmbeddedseven(),
                    // YoutubeEmbeddedeight(),
                    // YoutubeEmbeddednine(),
                    // YoutubeEmbeddedten(),
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
- Noun: adhesive (derived forms: adhesives)
1. A substance that unites or bonds surfaces together (= adhesive material, adhesive agent)

- Adjective: adhesive 
1. Tending to adhere
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = '9do-yk2OCoM';

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

  YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  static String myVideoId = 'cLNmQNv8-cs';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 4, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'eA0rEO7-Zo8';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 19, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'AuSmcYTR2zo';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 28, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'FopN3GRaL2U';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 31, // DOPSUM: CHANGE IT
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

// end
