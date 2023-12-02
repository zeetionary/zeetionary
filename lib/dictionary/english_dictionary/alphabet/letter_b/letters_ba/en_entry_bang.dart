import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// More sentences is NOT done

// Define the word "bang" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace bang - replace EnglishEntrybang

// replace speakBang - /bæŋ/

enum TtsState { playing }

class EnglishEntrybang extends StatelessWidget {
// blank divider
  EnglishEntrybang({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBang(String languageCode) async {
    // DOPSUM: CHANGE speakBang
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bang"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBangs1(String languageCode) async {
    // DOPSUM: CHANGE speakBang
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The baby was banging the table with his spoon."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBangs2(String languageCode) async {
    // DOPSUM: CHANGE speakBang
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She banged the door shut."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBangs3(String languageCode) async {
    // DOPSUM: CHANGE speakBang
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He kept banging his chair against the wall."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBangs4(String languageCode) async {
    // DOPSUM: CHANGE speakBang
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She tripped and banged her knee on the desk."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBangs5(String languageCode) async {
    // DOPSUM: CHANGE speakBang
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She had banged a ton of guys by the time she was 25."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBangs6(String languageCode) async {
    // DOPSUM: CHANGE speakBang
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The door swung shut with a bang."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBangs7(String languageCode) async {
    // DOPSUM: CHANGE speakBang
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I think she must have got a bang on the head."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBangs8(String languageCode) async {
    // DOPSUM: CHANGE speakBang
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She blew her bangs out of her face."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBangs9(String languageCode) async {
    // DOPSUM: CHANGE speakBang
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My estimate was bang on target."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBangs10(String languageCode) async {
    // DOPSUM: CHANGE speakBang
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "'Bang! Bang! You're dead!' said the child, pointing a plastic gun at me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBangs11(String languageCode) async {
    // DOPSUM: CHANGE speakBang
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBangs1111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBangs12(String languageCode) async {
    // DOPSUM: CHANGE speakBang
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBangs1212"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(
                                word: "bang"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /bæŋ/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakBang(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /bæŋ"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakBang(
                                  "en-US"), // DOPSUM: CHANGE THE WORD ABOVE
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TabBar(
                isScrollable: true,
                tabs: const [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 14
                  VideoIconForTab(), // 07 --- FIND: DOPSUM_WRITE_A_SENTENCE
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                ],
                indicator: BoxDecoration(
                  color: Pallete.tabsbackgroundColor,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.all(4.0),
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
                          const DefinitionKurdish(text: """
کوردی: (دەنگ) تەق، تەق‌تەق، شەق، زرمە، بەنگ، دەنگ، دەنگی تەقینەوە، بەمب، بزووتنەوەی کت‌وپڕ، لێدان، (شێوازێکی قژ) پەرچەم، (کامپیوتێر) نیشانەی (!)، بەتەواوەتی، ورد، بەوردی، دروست، کیوکیو (دەنگی تەقینی گوللە)

١. (کردار) لێدان لە شتێک بەشێوەیەک کە دەنگێکی بەرز درووست بکات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The baby was banging the table with his spoon."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "منداڵەکە بە کەوچکەکەی زرمەی ھەڵساندبوو لە مێزەکە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBangs1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBangs1(// REPLACE: bang
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) گرتنی شتێک بە دەنگێکی بەرزەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She banged the door shut."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "دەرگاکەی بەتوندی قەپاتکرد."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBangs2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBangs2(// REPLACE: bang
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) دانانی شتێک لە شوێنێک بە توندی و لەناکاو"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He kept banging his chair against the wall."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەردەوام بوو لە کێشانی کورسییەکە بە دیوارەکەدا."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBangs3("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBangs3(// REPLACE: bang
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) کێشانی شتێک، زۆرجار ئەندامێکی جەستە، بە شتێکدا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She tripped and banged her knee on the desk."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "پێی ھەڵکەوت و چۆکی کێشا بە مێزەکەدا."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBangs4("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBangs4(// REPLACE: bang
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) کردنی سێکس لەگەڵ کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She had banged a ton of guys by the time she was 25."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سێکسی لەگەڵ یەک دونیا پیاو کردبوو کە تەمەنی ٢٥ ساڵان بوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBangs5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBangs5(// REPLACE: bang
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) دەنگێکی بەرز"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The door swung shut with a bang."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "دەرگاکە بە زرمیەکەوە قەپات بوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBangs6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBangs6(// REPLACE: bang
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) لێدانێکی توند لەسەر جەستە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I think she must have got a bang on the head."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پێم‌وایە دەبێت شتێک کێشابێتی بەسەریدا."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBangs7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBangs7(// REPLACE: bang
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ناو) پەرچەمی قژ؛ بەشی پێشەوە کە شۆڕ دەبێتەوە بۆ ناوچاوان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She blew her bangs out of her face."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "پەرچەمی لەسەر ڕووخساری لادا."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBangs8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBangs8(// REPLACE: bang
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ھاوەڵکار) بەتەواوی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "My estimate was bang on target."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "خەمڵاندنەکەم بەتەواوی لەجێی خۆی بوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBangs9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBangs9(// REPLACE: bang
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (سەرسوڕمان) بەکاردێت بۆ ئاماژە بە دەنگێکی بەرز، بۆ نموونە دەنگی فیشەک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "'Bang! Bang! You're dead!' said the child, pointing a plastic gun at me."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کە منداڵە بچووکەکە چەکێکی پلاستیکی ڕووم تێکردبوو وتی 'تەق تەق، تۆ مردووی'."),
                              CustomIconButtonBritish(
                                onPressed: () => speakBangs10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakBangs10(// REPLACE: bang
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
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
          EnglishMeaningConst(
            text: """
- Noun: bang (derived forms: banged, bangs, banging)
1. A sudden very loud noise (= clap, eruption, blast, bam)
 
2. A vigorous blow (= knock, bash [informal], smash, belt [informal], sock [informal])
"he got a bang on the head";
 
3. [N. Amer] A border of hair that is cut short and hangs across the forehead (= fringe)
 
4. A sudden pleasurable excitement (= charge, rush, flush, thrill, kick, buzz [informal])
"they got a great bang out of it";
 
5. [informal] A conspicuous success (= hit, smash, smasher [informal], strike, sizzler [informal])
"the party went with a bang";
 
6. A preparation of the leaves and flowers of the hemp plant; much used in India (= bhang)
 
7. [vulgar] Slang for sexual intercourse (= rumpy-pumpy [informal])
 
8. [N. Amer] A punctuation mark (!) used after an exclamation (= exclamation mark [Brit, Cdn], exclamation point [N. Amer])

- Verb: bang
1. Strike violently (= slam)
"bang the ball";
 
2. To produce a sharp often metallic explosive or percussive sound
"One of them banged the sash of the window nearest my bed"
 
3. Close violently (= slam)
"He banged the door shut";
 
4. Move noisily
"The window banged shut"; "The old man banged around the house"
 
5. [vulgar] Have sexual intercourse (= sleep together, love, make love, sleep with, have sex, know [archaic], do it [informal], be intimate, have intercourse, lie with [archaic], bed [informal], get it on [informal])
"they banged in the back of the car";
 
6. Leap, jerk, bang (= spang)
"Bullets banged into the trees";

- Adverb: bang
1. Directly (= slap, slapdash, smack [informal], bolt)
"he ran bang into the pole";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = "XlHzvTEstz8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 339, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "qjqh9UVfNNk";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 581, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "Unzc731iCUY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1211, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "cykdSb7xqI4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 119, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "enjLYKFLG6U";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 255, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "0e8woEkKmG8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 2429, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "Ic_IapE_D-Q";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 821, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "Mhlpk5ZrYLM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 423, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "DvDwlyGthtY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 271, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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
  static String myVideoId = "ff-Fsop_82I";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1078, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  static String myVideoId = "Rez9pBbdCMk";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 47, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedeleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  static String myVideoId = "0e8woEkKmG8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 366, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedtwelve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// morethan one video, only first autoplay

// class YoutubeEmbeddedthirteen extends StatelessWidget {
//   static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";
//   static String myVideoIdTwo = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";
//   static String myVideoIdThree = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

//   final YoutubePlayerController _controller = YoutubePlayerController(
//     initialVideoId: myVideoId,
//     flags: const YoutubePlayerFlags(
//       autoPlay: true,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   final YoutubePlayerController _controllertwo = YoutubePlayerController(
//     initialVideoId: myVideoIdTwo,
//     flags: const YoutubePlayerFlags(
// autoPlay: false,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   final YoutubePlayerController _controllerthree = YoutubePlayerController(
//     initialVideoId: myVideoIdThree,
//     flags: const YoutubePlayerFlags(
//       autoPlay: false,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   YoutubeEmbeddedthirteen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             YouTubeContainerDesign(controller: _controller),
//             YouTubeContainerDesign(controller: _controllertwo),
//             YouTubeContainerDesign(controller: _controllerthree),
//           ],
//         ),
//       ),
//     );
//   }
// }

// end bang// TODO Implement this library.