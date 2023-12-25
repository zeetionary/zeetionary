import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryagile - replace speakAgile - replace agile - /ˈædʒl/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryagile extends StatelessWidget {
  EnglishEntryagile({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAgile(String languageCode) async {
    // DOPSUM: CHANGE speakAgile
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("agile"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAgile15621(String languageCode) async {
    // DOPSUM: CHANGE speakAgile
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Monkeys are very agile climbers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAgi1778(String languageCode) async {
    // DOPSUM: CHANGE speakAgile
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "For a man of 80, he has a remarkably agile mind."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAgil56663(String languageCode) async {
    // DOPSUM: CHANGE speakAgile
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They used agile methods to complete difficult tasks."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9, // 2 + VIDEOS FIND: YoutubeEmbeddedone
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
                            EntryTitle(word: "agile"), // Find /ˈædʒaɪl/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈædʒaɪl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAgile("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ˈædʒl/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAgile("en-US"),
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
کوردی: چالاک، گورج، ھەڵسووڕ، چاپک، مەزبووت، گورج‌وگۆڵ، توندوتۆڵ، زرنگ، زیرەک، زووبیرکەرەوە

١. (ھاوەڵناو) ھەبوونی توانای خێرا و ئاسان جوڵان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Monkeys are very agile climbers."),
                              const ExampleSentenceKurdish(
                                  text: "مەیموون پیاھەڵگژی گورجە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAgile15621("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAgile15621(
                                        // REPLACE: agile /ˈædʒl/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) ھەبوونی توانای بیرکردنەوە بەخێرایی و زیرەکانە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "For a man of 80, he has a remarkably agile mind."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لەگەڵ ئەوەی ٨٠ ساڵە، ھێشتا بیر و ھۆشێکی زرنگی ھەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAgi1778("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAgi1778(// REPLACE: agile /ˈædʒl/
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) جۆرێکی کارکردن کە تێیدا کارێک بەش بەش لەگەڵ ناوبڕ لانێوانیاندا بۆ ھەڵسەنگاندن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They used agile methods to complete difficult tasks."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە کۆمپانیاکە کارەکانیان بەش بەش دەکرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAgil56663("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAgil56663(// REPLACE: agile /ˈædʒl/
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
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
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
- Adjective: agile
1. Moving quickly and lightly (= nimble, quick, spry)
"sleek and agile as a gymnast";
 
2. Mentally quick (= nimble)
"an agile mind";

3. Describes a method of project management (esp. software development), having short flexible work phases with regular adaption of plans as required to complete the work
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'iVaFVa7HYj4';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 192, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'SO4NdawxAac';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 10, // DOPSUM: CHANGE IT
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
  static String myVideoId = '-zDct5d2smY';

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

  YoutubeEmbeddedthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  static String myVideoId = 'H6GdK-dChtY';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1, // DOPSUM: CHANGE IT
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
  static String myVideoId = '-ZtDsf65d0I';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 15, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'UxMpn92vGXs';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 160, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'pDIzBNF5Eg4';

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

  YoutubeEmbeddedseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// end
