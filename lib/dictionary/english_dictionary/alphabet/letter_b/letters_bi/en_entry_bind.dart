import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "bind" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace bind - replace EnglishEntrybind

// replace speakBind - /baɪnd/

enum TtsState { playing }

class EnglishEntrybind extends StatelessWidget {
// blank divider
  EnglishEntrybind({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBind(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bind"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds1(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was bound to a chair."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds2(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They bound his hands together."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds3(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The prisoner was bound hand and foot."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds4(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She bound up his wounds."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds5(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She thought that having his child would bind him to her forever."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds6(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He had been bound to secrecy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds7(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Add an egg yolk to make the mixture bind."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds8(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are several different ways to bind a book, for example you can stitch or stick the pages together."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds9(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The edges of the carpet are bound to stop them fraying."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds10(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Borrowing money may put you in a real bind."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds11(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBinds1111"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds12(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBinds1212"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds13(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBinds1313"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds14(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBinds1414"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds15(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBinds1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds16(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBinds1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds17(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBinds1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds18(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBinds1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds19(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBinds1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBinds20(String languageCode) async {
    // DOPSUM: CHANGE speakBind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBinds2020"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 17, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "bind"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /baɪnd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakBind("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /baɪnd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakBind("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 17
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  VideoIconForTab(), // 13
                  VideoIconForTab(), // 14
                  VideoIconForTab(), // 15
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
کوردی: بەند، پێوەندی، تێکەڵی، کێشە، گێچەڵ، جەنجاڵی، دەردی‌سەری، بارودۆخی ئاڵۆز

١. (کردار) بەستنەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She was bound to a chair."),
                              const ExampleSentenceKurdish(
                                  text: "بەسترا بە کورسییەکەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBinds1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBinds1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "They bound his hands together."),
                              const ExampleSentenceKurdish(
                                  text: "دەستەکانییان بەست بە یەکەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBinds2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBinds2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The prisoner was bound hand and foot."),
                              const ExampleSentenceKurdish(
                                  text: "زیندانییەکە دەست و قاچی بەسترایەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBinds3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBinds3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) بەستنی قوماشێکی نەرمی درێژ لە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She bound up his wounds."),
                              const ExampleSentenceKurdish(
                                  text: "برینەکانی بەستەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBinds4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBinds4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) وا لە خەڵکی یان دەمەزراوەیەک بکەیت کە ھەست بە یەکگرتوویی بکەن بۆ ئەوەی پێکەوە بژین و باشتر و خۆشگوزەرانتر کار بکەن پێکەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She thought that having his child would bind him to her forever."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "وای بیرکردەوە کە ھەبوونی منداڵەکەی زیاتر بۆ ھەمیشە ئەوی پێوە دەبەستێتەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBinds5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBinds5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) زۆر لە کەسێک بکەیت شتێک بکات بەوەی بەڵێنی لێ وەربگریت یان بیکەیت بە ئەرک بەسەرییەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He had been bound to secrecy (= made to promise not to tell people about something)."),
                              const ExampleSentenceKurdish(
                                  text: "بەڵێنی دابوو بە نھێنی بیپارێزێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBinds6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBinds6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) وا لە شت بکەیت پێکەوە بنووسێن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Add an egg yolk to make the mixture bind."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زەردێنە ھێلکەیەک زیاد بکە بۆ ئەوەی تێکەڵەکە پێکەوە بنووسێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBinds7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBinds7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) پێکەوەنانی پەڕاکانی کتێبێک و دانانیان لە بەرگە کتێبێکدا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There are several different ways to bind a book, for example you can stitch or stick the pages together."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ژمارەیەک ڕێگای جیاواز ھەیە بۆ پێکەوەنانی کتێبێک، بۆ نموونە دەتوانی پەڕەکان بدووری یان بنووسێنی بە یەکەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBinds8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBinds8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) دوورینی قوماش بە قەراغەکانی شتێکەوە بۆ جوانی یان بەھێزی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The edges of the carpet are bound to stop them fraying."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "قەراغەکانی فەرشەکە دووراون بۆ ئەوەی لێک‌ھەڵنەوەشێ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBinds9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBinds9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ناو) دۆخێکی ناخۆش کە تێیدا ناتوانی چۆنت بوێت ڕەفتار بکەیت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Borrowing money may put you in a real bind."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "قەرزکردنی پارە ڕەنگە بتخاتە دەردەسەری تەواوەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBinds10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBinds10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
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
                    YoutubeEmbeddedten(),
                    YoutubeEmbeddedeleven(),
                    YoutubeEmbeddedtwelve(),
                    YoutubeEmbeddedthirteen(),
                    YoutubeEmbeddeddfourteen(),
                    YoutubeEmbeddedfifteen(),
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
- Verb: bind (derived forms: bound, binds, binding)
1. Remain stuck to; keep in place (= adhere, hold fast, bond, stick, stick to)
"Will this wallpaper bind to the wall?";
 
2. Create social or emotional ties (= tie, attach, bond)
 
3. Make fast; tie or secure, with or as if with a rope
"The Chinese would bind the feet of their women"
 
4. Wrap around with something so as to cover or enclose (= bandage)
 
5. Secure with (or as if with) ropes in order to prevent movement or escape (= tie down, tie up, truss)
"bind the prisoners";
 
6. Bind by an obligation; cause to be indebted (= oblige, hold, obligate)
"He's bound by a contract";

7. Provide with a binding
"bind the books in leather"
 
8. Fasten or secure with a rope, string, or cord (= tie)
"They bound their victim to the chair";

9. (chemistry) form a chemical bond with
"The hydrogen binds the oxygen"
 
10. Cause to be constipated (= constipate)
"These foods tend to bind you";
 
11. (computing) associate an identifier with a value or object

- Noun: bind
1. Something that hinders as if with bonds
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

  static String myVideoId = "y1sF6ZeASU0";

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

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  static String myVideoId = "1SO0uvexcew";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 585, // DOPSUM: CHANGE IT
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

  static String myVideoId = "lGSOWwUvJiU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1207, // DOPSUM: CHANGE IT
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

  static String myVideoId = "sV6uuMAnJUE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 957, // DOPSUM: CHANGE IT
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

  static String myVideoId = "syH0oN_B4g0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 643, // DOPSUM: CHANGE IT
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

  static String myVideoId = "nsnyl8llfH4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 140, // DOPSUM: CHANGE IT
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

  static String myVideoId = "6S8lZxz_sy4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 388, // DOPSUM: CHANGE IT
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

  static String myVideoId = "yGzJZhtQ9NE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 683, // DOPSUM: CHANGE IT
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

  static String myVideoId = "a7wC2M0b5u0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 437, // DOPSUM: CHANGE IT
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

  static String myVideoId = "bW-gVrZBfqM";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 666, // DOPSUM: CHANGE IT
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

  static String myVideoId = "DBxdTkddHaE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 553, // DOPSUM: CHANGE IT
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

  static String myVideoId = "zPAtSGhxwHc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 340, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  YoutubeEmbeddedthirteen({super.key});

  static String myVideoId = "al0CVsiffu8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1019, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  YoutubeEmbeddeddfourteen({super.key});

  static String myVideoId = "jr8tSuMyGOI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 46, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedfifteen extends StatelessWidget {
  YoutubeEmbeddedfifteen({super.key});

  static String myVideoId = "5NjZ-WAmXEE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 86, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  YoutubeEmbeddeddsixteen({super.key});

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

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  YoutubeEmbeddeddseventeen({super.key});

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

class YoutubeEmbeddeddeighteen extends StatelessWidget {
  YoutubeEmbeddeddeighteen({super.key});

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

class YoutubeEmbeddeddnineteen extends StatelessWidget {
  YoutubeEmbeddeddnineteen({super.key});

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

class YoutubeEmbeddedtwenty extends StatelessWidget {
  YoutubeEmbeddedtwenty({super.key});

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

// morethan one video, only first autoplay

// end bind// TODO Implement this library.
