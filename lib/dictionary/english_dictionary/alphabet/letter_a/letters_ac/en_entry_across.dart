import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryacross - replace speakAcross - replace across - /əˈkrɔːs/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryacross extends StatelessWidget {
  EnglishEntryacross({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAcross(String languageCode) async {
    // DOPSUM: CHANGE speakAcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("across"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAcr2149(String languageCode) async {
    // DOPSUM: CHANGE speakAcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I drew a line across the page."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAcr2437(String languageCode) async {
    // DOPSUM: CHANGE speakAcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Where's the nearest bridge across the river?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAcr4269(String languageCode) async {
    // DOPSUM: CHANGE speakAcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There's a bank right across the street."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAc2568(String languageCode) async {
    // DOPSUM: CHANGE speakAcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He hit him across the face."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAcro154(String languageCode) async {
    // DOPSUM: CHANGE speakAcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her family is scattered across the country."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAcro2568(String languageCode) async {
    // DOPSUM: CHANGE speakAcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The river is too wide. We can't swim across."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAcr258(String languageCode) async {
    // DOPSUM: CHANGE speakAcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When my name was called, he looked across at me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAcr7598(String languageCode) async {
    // DOPSUM: CHANGE speakAcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There's a school just across from our house."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAcross(String languageCode) async {
  //   // DOPSUM: CHANGE speakAcross
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("across"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9, // 2 + VIDEOS FIND: YoutubeEmbeddedfifteen
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
                                    "across"), // DOPSUM: CHANGE WORD ENTRY - Find /əˈkrɒs/
                            // nothing heereee
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈkrɒs/"),
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakAcross(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈkrɔːs/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAcross(
                                  "en-US"), // DOPSUM: CHANGE THE WORD ABOVE
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
                  VideoIconForTab(), // FIND: 2,
                  VideoIconForTab(),
                  VideoIconForTab(),
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
کوردی: پێدا، پیا، لەم‌بەر بۆ ئەوبەر، لە لایەکەوە، لەم سەر بۆ ئەوسەر، بۆ لایەکی تر، لە لایەکەوە بۆ لایەکی تر، ئەوبەر، لەسەر، لەژوور، لەبانی، بەنێو، لەنێوان، یەکتربڕ،  بەرەوڕووی، بەرامبەری، ھەمبەری، سەرانسەر، سەرتاسەر

١. (ئامراز) لەلایەک بۆ لەیەکی تر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I drew a line across the page."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھێڵێکم کێشا لە لایەکی پەڕەکە بۆ لەیەکەی تری."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAcr2149("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAcr2149(
                                    "en-US"), // REPLACE across /əˈkrɔːs/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Where's the nearest bridge across the river?"),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نزیکترین پرد کە بەسەر ڕووبارەکەدا بڕوات لە کوێیە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAcr2437("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAcr2437(
                                    "en-US"), // REPLACE across /əˈkrɔːs/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ئامراز) لەلایەکەی تری شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There's a bank right across the street."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بانکێک ھەیە لە لایەکەی تری شەقامەکەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAcr4269("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAcr4269(
                                    "en-US"), // REPLACE across /əˈkrɔːs/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ئامراز) لەسەر بەشێکی جەستە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He hit him across the face."),
                              const ExampleSentenceKurdish(
                                  text: "کێشای بە ڕووخساریدا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAc2568("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAc2568(
                                    "en-US"), // REPLACE across /əˈkrɔːs/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ئامراز) لە ھەموو بەشێکی وڵاتێک، گرووپێک. شوێنێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Her family is scattered across the country."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خێزانەکەی بە وڵاتەکەدا بڵاوبووبوونەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAcro154("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAcro154(
                                    "en-US"), // REPLACE across /əˈkrɔːs/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵکار) لەلایەک بۆ لەیەکی تر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The river is too wide. We can't swim across."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕووبارەکە زۆر فراوانە. ناتوانین بپەڕینەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAcro2568("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAcro2568(
                                    "en-US"), // REPLACE across /əˈkrɔːs/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ھاوەڵکار) بە ئاراستەیەکی دیاریکراو و ڕوو لە کەسێک یان شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "When my name was called, he looked across at me."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کە ناوم خوێندرایەوە، ڕاستەوخۆ ڕووی لە من کرد."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAcr258("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAcr258(
                                    "en-US"), // REPLACE across /əˈkrɔːs/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵکار) لە بەرامبەر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There's a school just across from our house."),
                              const ExampleSentenceKurdish(
                                  text: "خوێندنگەیەک لە بەرامبەر ماڵمان ھەیە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAcr7598("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAcr7598(
                                    "en-US"), // REPLACE across /əˈkrɔːs/
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
                    // YoutubeEmbeddedeight(),
                    // YoutubeEmbeddednine(),
                    // YoutubeEmbeddedten(),
                    // YoutubeEmbeddedeleven(),
                    // YoutubeEmbeddedtwelve(),
                    // YoutubeEmbeddedthirteen(),
                    // YoutubeEmbeddedfourteen(),
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
- Adverb: across 
1. To the opposite side
"the football field was 300 feet across"
 
2. Transversely (= crosswise, crossways)
"the marble slabs were cut across";

- Preposition: across 
1. In the whole extent of; everywhere (= throughout, over, all over, all around, around, round)
"climate change will be a problem across the world";
 
2. On the opposite side of
"That store is across the street"
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'w0xPJDeTOc8';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 7, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'oYBq6tgx_5M';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 780, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'oD9BaNAH-eE';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 7, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'yd1JhZzoS6A';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 16, // DOPSUM: CHANGE IT
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
  static String myVideoId = '9hCEs2dwuPQ';

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

  YoutubeEmbeddedfive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  static String myVideoId = 'q2tJqO6nCSc';

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

  YoutubeEmbeddedsix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  static String myVideoId = 'DDmz9iqyeSU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 373, // DOPSUM: CHANGE IT
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

// end
