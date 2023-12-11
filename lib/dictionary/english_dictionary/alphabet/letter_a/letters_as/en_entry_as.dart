import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// as

// replace EnglishEntryas - replace speakAs

// replace as - /əz/, strong form  /æz/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryas extends StatelessWidget {
  // blank divider
  EnglishEntryas({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAs(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("as"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAs1035(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The children were all dressed as police officers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAs1038(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The bomb was disguised as a package."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAs1041(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Treat me as a friend."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAs1042(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The news came as a shock."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAs1044(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You're as tall as your father."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAs1046(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("As always, he said little."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAs1047(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As many as 2 million people could be affected."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAs1049(String languageCode) async {
    // DOPSUM: CHANGE speakAs
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He sat watching her as she got ready."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAs(String languageCode) async {
  //   // DOPSUM: CHANGE speakAs
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("as"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAs(String languageCode) async {
  //   // DOPSUM: CHANGE speakAs
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("as"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAs(String languageCode) async {
  //   // DOPSUM: CHANGE speakAs
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("as"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAs(String languageCode) async {
  //   // DOPSUM: CHANGE speakAs
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("as"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAs(String languageCode) async {
  //   // DOPSUM: CHANGE speakAs
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("as"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAs(String languageCode) async {
  //   // DOPSUM: CHANGE speakAs
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("as"); // DOPSUM: CHANGE TEXT
  // }

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
                                word:
                                    "as"), // DOPSUM: CHANGE WORD ENTRY - Find /əz/, strong form  /æz/
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
                                    "IpaUK: /əz/, strong form  /æz/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakAs(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əz/, strong form  /æz/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakAs(
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
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 14,
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
کوردی: ھەر ئەوندە، بە ھەمان ڕادە، (بە) ھەمان ئەندازە، بەقەد ئەوە، کاتێ، وەختێ کە، لە کاتی، کاتێ کە، چون، چۆنکە، چونکو، وەکوو، مینا، وەک، ڤەکی، بەوجۆرەی، بەوچەشنەی، بەدەردی، ھەروەکوو، ھەروەک، گەرچی، ئەگەرچی، ھەرچەند، وەکوو، لەچاوی، ھەرچی، کە، تا، ھەتا

١. (ئامراز) بەکاردێت بۆ وتنی ئەوەی کەسێک یان شتێک وەک کەسێکی تر یان شتێکی تر دەردەکەوێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The children were all dressed as police officers."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "منداڵەکان ھەموویان وەک ئەفسەری پۆلیس جلیان پۆشیبوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAs1035("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAs1035(
                                    // REPLACE: as /əz/, strong form  /æz/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The bomb was disguised as a package."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "بۆمبەکە لە شێوەی پاکێجێکدا بوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAs1038("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAs1038(
                                    // REPLACE: as /əz/, strong form  /æz/
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ئامراز) بۆ پیشاندانی پیشە یان ئەرک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Treat me as a friend."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "وەک ھاوڕێیەک بمبینە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAs1041("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAs1041(
                                    // REPLACE: as /əz/, strong form  /æz/
                                    "en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The news came as a shock."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "ھەواڵەکە وەک شۆکێک وابوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAs1042("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAs1042(
                                    // REPLACE: as /əz/, strong form  /æz/
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵکار) بۆ بەراوردکردن بەکاردێ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "You're as tall as your father."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "ھێندەی باوکت درێژی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAs1044("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAs1044(
                                    // REPLACE: as /əz/, strong form  /æz/
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ھاوەڵکار) بەکاردێت بۆ وتنی ئەوەی شتێک بە ھەمان شێوە روودەدات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "As always, he said little."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "وەک ھەمیشە، کەمێک قسەی کرد."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAs1046("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAs1046(
                                    // REPLACE: as /əz/, strong form  /æz/
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵکار) بەکاردێت بۆ سەرنج‌خستنەسەر بڕێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "As many as 2 million people could be affected."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "تا ٢ ملیۆن کەس دەکرێت کاریگەر بن."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAs1047("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAs1047(
                                    // REPLACE: as /əz/, strong form  /æz/
                                    "en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (لێکدەر) لە کاتی ڕوودانی شتێکی تر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He sat watching her as she got ready."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "دانیشتوو سەیری کرد کە خۆی دەگۆڕی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAs1049("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAs1049(
                                    // REPLACE: as /əz/, strong form  /æz/
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
- Adverb: as 
1. To the same degree (= equally, every bit)
"birds were singing and the child sang as sweetly"; "sang as sweetly as a nightingale"; "he is every bit as mean as she is";
 
2. In the idea, character, or condition of, limiting the view to certain attributes or relations
"dressed up as a ghost"

- Conjunction: as  
1. For the reason that; on account of (= because, since, for, coz [Brit, informal], cos [Brit, informal], cuz [non-standard, informal])
"empty, as it had been upside down";
 
3. At the same time that (= when, while, whilst [Brit])
"they were walking home as they were discussing the problem";

- Noun: AS
1. A United States territory on the eastern part of the island of Samoa (= American Samoa, Eastern Samoa)

- Noun: As
1. A very poisonous metallic element that has three allotropic forms; arsenic and arsenic compounds are used as herbicides and insecticides and in various alloys; found in arsenopyrite and orpiment and realgar (= arsenic, atomic number 33)

- Noun: a 
1. The 1st letter of the Roman alphabet (= A)
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = "fsQVfQt0HOk";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 93, // DOPSUM: CHANGE IT
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
  static String myVideoId = "hFZFjoX2cGg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 57, // DOPSUM: CHANGE IT
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
  static String myVideoId = "a_TSR_v07m0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 102, // DOPSUM: CHANGE IT
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
  static String myVideoId = "VrKW58MS12g";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 62, // DOPSUM: CHANGE IT
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
  static String myVideoId = "lVoGZiL-kns";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 128, // DOPSUM: CHANGE IT
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
  static String myVideoId = "Cd1EmYRZynw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 216, // DOPSUM: CHANGE IT
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
  static String myVideoId = "zAGVQLHvwOY";

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

  YoutubeEmbeddedseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  static String myVideoId = "khOUvmOQExc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 10, // DOPSUM: CHANGE IT
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
  static String myVideoId = "_wNsZEqpKUA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 631, // DOPSUM: CHANGE IT
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
  static String myVideoId = "HDntl7yzzVI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 521, // DOPSUM: CHANGE IT
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
  static String myVideoId = "2L7hhxT-pck";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 544, // DOPSUM: CHANGE IT
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
  static String myVideoId = "-HyHZsa79LU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 53, // DOPSUM: CHANGE IT
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

// class YoutubeEmbeddethirteen extends StatelessWidget {
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
//       autoPlay: true,
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
//       autoPlay: true,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   YoutubeEmbeddethirteen({super.key});

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

// end 