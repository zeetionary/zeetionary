import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "bombardment" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace bombardment - /bɒmˈbɑːdmənt/

enum TtsState { playing }

class EnglishEntrybombardment extends StatelessWidget {
// blank divider
  EnglishEntrybombardment({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbombardment(String languageCode) async {
    // DOPSUM: CHANGE speakbombardment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bombardment"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombardments1(String languageCode) async {
    // DOPSUM: CHANGE speakbombardment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The city came under heavy bombardment."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombardments2(String languageCode) async {
    // DOPSUM: CHANGE speakbombardment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A president is under constant bombardment from every direction."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombardments3(String languageCode) async {
    // DOPSUM: CHANGE speakbombardment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombardments33"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombardments4(String languageCode) async {
    // DOPSUM: CHANGE speakbombardment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombardments44"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombardments5(String languageCode) async {
    // DOPSUM: CHANGE speakbombardment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombardments55"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombardments6(String languageCode) async {
    // DOPSUM: CHANGE speakbombardment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombardments66"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbombardments7(String languageCode) async {
    // DOPSUM: CHANGE speakbombardment
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbombardments77"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "bombardment"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɒmˈbɑːdmənt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbombardment("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɑːmˈbɑːrdmənt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbombardment("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 11
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  // VideoIconForTab(), // 10
                  // VideoIconForTab(), // 11
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
کوردی: بۆمباران، بۆردومان، ئاگرباران، ڕێژنە، ڕەھێڵە

١. (ناو) ھێرشێک کە تێیدا چەکی قورس ئاراستەی شوێنێک دەکرێت یان بۆمب بەسەریدا بەردەدرێتەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The city came under heavy bombardment."),
                              const ExampleSentenceKurdish(
                                  text: "شارەکە کەوتە ژێر بۆمبارانی توند."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakbombardments1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakbombardments1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) دۆخێک کە تێیدا کەسێک ڕووبەڕووی ڕەخنە و پرسیاری زۆر دەبێتەوە یان زانیارییەکی زۆری پێدەدرێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "A president is under constant bombardment from every direction."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سەرۆکەکان ھەمیشە لەژێر ڕەخنە و پرسیاری بەردەوامن بۆ ھەر ھەنگاوێک."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakbombardments2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakbombardments2("en-US"),
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
- Noun: bombardment (derived forms: bombardments)
1. The rapid and continuous delivery of linguistic communication (spoken or written) (= barrage, outpouring, onslaught)
"a bombardment of mail complaining about his mistake";

2. The heavy fire of artillery to saturate an area rather than hit a specific target (= barrage, barrage fire, battery, shelling)
"they laid down a bombardment in front of the advancing troops";

3. The act (or an instance) of subjecting a body or substance to the impact of high-energy particles (as electrons or alpha rays)
 
4. An attack by dropping bombs (= bombing)
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  static String myVideoId = "VNZ0so0LCoM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 866, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  static String myVideoId = "CYvjC94jDu4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 159, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  static String myVideoId = "YPIQjBy4Ilw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 37, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  static String myVideoId = "vVloMqJEsME";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 12332, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  static String myVideoId = "EMXnJMCoFYI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 935, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  static String myVideoId = "D5XPuS-Y0fg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1007, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  static String myVideoId = "IRbjyMnX62A";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 2138, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  static String myVideoId = "mmuECGK-_NY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 847, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  static String myVideoId = "N0SgC78YFPc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 733, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// more than one video, only first autoplay

// end bombardment
