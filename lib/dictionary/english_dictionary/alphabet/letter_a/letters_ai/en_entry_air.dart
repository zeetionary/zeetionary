import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryair - replace speakAir - replace air - /eə(r)/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryair extends StatelessWidget {
  EnglishEntryair({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAir(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("air"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAir11524(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Let's go out for some fresh air."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAir42112(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was gasping for air as she ran out of the burning house."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAir2133(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Wave your hands in the air!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAir4144(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I kicked the ball high into the air."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAir45666(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We watched as the helicopter took to the air."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAir3544(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There was an air of complete confidence about her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAir58999(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Air the sheets well."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAir49258(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Leave the window open to air the room."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAir96354(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The issues were openly aired and discussed by the group."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAir74952(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The program aired last week."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAir(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAir(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAir(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAir(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAir(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAir(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAir(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAir(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAir(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air"); // DOPSUM: CHANGE TEXT
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "air"), // Find /eə(r)/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /eə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAir("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /er/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAir("en-US"),
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
کوردی: ھەوا، دەم‌وچاو، ڕوو، سەکوت، شێوە، ڕواڵەت، کەش و ھەوا، کەش، شنەبا، سریوە، ھەوا، بەند، سۆزە، ئاواز، خۆنواندن، خۆنیشان‌دان

١. (ناو) ھەوا؛ ئەو گازانەی کە لە بەرگەھەوای زەویدا ھەن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Let's go out for some fresh air."),
                              const ExampleSentenceKurdish(
                                  text: "با بچین ھەندێک ھەوای پاک ھەڵمژین."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAir11524("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAir11524(// REPLACE: air /er/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She was gasping for air as she ran out of the burning house."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەناسەبڕکێی بوو بۆ ھەوا کە لە خانووە سووتاوەکەوە ڕایکردە دەرەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAir42112("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAir42112(// REPLACE: air /er/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) بۆشایی؛ بۆشایی نێوان زەوی و ئاسمان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Wave your hands in the air!"),
                              const ExampleSentenceKurdish(
                                  text: "دەست ڕاوەشێنە لە ھەوادا!"),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAir2133("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAir2133(// REPLACE: air /er/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I kicked the ball high into the air."),
                              const ExampleSentenceKurdish(
                                  text: "بەرز لە تۆپەکەم ھەڵدا بە ئاسماندا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAir4144("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAir4144(// REPLACE: air /er/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) ئاسمان کە فڕۆکە تێیدا دەفڕێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We watched as the helicopter took to the air."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سەیرمان کرد کە ھەلیکۆپتەرەکە فڕییە ئاسمان."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAir45666("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAir45666(// REPLACE: air /er/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) ڕواڵەت؛ شێوازی دەرکەوتنی شتێک یان کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There was an air of complete confidence about her."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕواڵەتێکی تەواو متمانە بەخۆبوونی تێدا بوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAir3544("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAir3544(// REPLACE: air /er/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) وشککردنەوەی جل"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Air the sheets well."),
                              const ExampleSentenceKurdish(
                                  text: "پێخەفەکان باش وشک بکەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAir58999("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAir58999(// REPLACE: air /er/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) ڕێگەدان بە ھەوا بۆ ناو ژوورێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Leave the window open to air the room."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پەنجەرەکە بە کراوەیی بھێڵەوە بۆ ئەوەی ھەوای پاک بێتە ژوورەکەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAir49258("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAir49258(// REPLACE: air /er/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) دەربڕینی بیروڕا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The issues were openly aired and discussed by the group."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بابەتەکان بە ڕاشکاوی دەربڕدران و گەنگەشە کران لەلایەن گرووپەکەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAir96354("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAir96354(// REPLACE: air /er/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) پەخشکردنی پڕۆگرامی تەلەفیزیۆنی یان ڕادیۆیی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The program aired last week."),
                              const ExampleSentenceKurdish(
                                  text: "پڕۆگرامەکە ھەفتەی ڕابردوو پێشکەشکرا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAir74952("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAir74952(// REPLACE: air /er/
                                        "en-US"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(), // DOPSUM: FROM_YOUTUBE_BELOW
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
Noun: air (derived forms: airs)
1. A mixture of gases (especially oxygen) required for breathing; the stuff that the wind consists of
"air pollution"; "a smell of chemicals in the air"; "open a window and let in some air"; "I need some fresh air"
 
2. The region above the ground
"her hand stopped in mid air"; "he threw the ball into the air"
 
3. A distinctive but intangible quality surrounding a person or thing (= aura, atmosphere)
"an air of mystery"; "the house had a neglected air";
 
4. A slight wind (usually refreshing) (= breeze, zephyr, gentle wind)
"as he waited he could feel the air on his neck";
 
5. The mass of air surrounding the Earth (= atmosphere)
"it was exposed to the air";
 
6. A succession of notes forming a distinctive sequence (= tune, melody, strain, melodic line, line, melodic phrase)
"she was humming an air from Beethoven";
 
7. Medium for radio and television broadcasting (= airwave)
"the program was on the air from 9 til midnight";

8. Travel via aircraft (= air travel, aviation)
"air travel involves too much waiting in airports"; "if you've time to spare go by air";
 
9. [archaic] Once thought to be one of four elements composing the universe (Empedocles), associated with the humour blood

- Verb: air (derived forms: aired, airs, airing)
1. Expose to fresh air (= air out, aerate)
"air your old sneakers";
 
2. (broadcast medium) be broadcast
"This show will air Saturdays at 2 P.M."
 
3. (broadcast medium) broadcast over the airwaves, as in radio or television (= send, broadcast, beam, transmit)
"We cannot air this X-rated song";

4. Make public (= publicize, publicise [Brit], bare)
"She aired her opinions on welfare";

5. Expose to warm or heated air, so as to dry
"Air linen"
 
6. Let in fresh air to replace the current air (= vent, ventilate, air out)
"air the old winter clothes"; "air out the smoke-filled rooms";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'k7YVxLLIuGM';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 108, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'y0mfNWKBQp0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 11, // DOPSUM: CHANGE IT
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
  static String myVideoId = '_-mBeYC2KGc';

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
  static String myVideoId = 'lZgp3WLQjoE';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 986, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'DPZzrlFCD_I';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 138, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'DTvS9lvRxZ8';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 234, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'tK-tq3OfPF8';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 928, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'e09xig209cQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 20, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'EPmZolscz2M';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 540, // DOPSUM: CHANGE IT
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
  static String myVideoId = '1SO0uvexcew';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 71, // DOPSUM: CHANGE IT
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
