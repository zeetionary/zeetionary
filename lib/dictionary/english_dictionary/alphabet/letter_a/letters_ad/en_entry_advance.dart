import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryadvance - replace speakAdvance - replace advance - /ədˈvɑːns/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryadvance extends StatelessWidget {
  EnglishEntryadvance({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAdvance(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("advance"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdv2567(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We live in an age of rapid technological advance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdvan3567(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Enemy advances had forced them to retreat into the mountains."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdv253(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The publishers have paid me an advance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdv23574(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He had made advances to one of his colleagues."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdvan6988(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Our knowledge of the disease has advanced considerably over recent years."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAd456(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The troops were finally given the order to advance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdv3568(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They worked together to advance the cause of democracy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdva391(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We will advance you the money."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdva7864(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The article advances a new theory to explain changes in the climate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdva8529(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The date of the trial has been advanced by one week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAdv9678(String languageCode) async {
    // DOPSUM: CHANGE speakAdvance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Participants advance through the program by answering a series of questions."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAdvance(String languageCode) async {
  //   // DOPSUM: CHANGE speakAdvance
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("advance"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAdvance(String languageCode) async {
  //   // DOPSUM: CHANGE speakAdvance
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("advance"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "advance"), // Find /ədˈvɑːns/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ədˈvɑːns/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAdvance("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ədˈvɑːns/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAdvance("en-US"),
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
کوردی: پێشکەوتن، پێشکەوت، بەرکەوتن، چوونەپێش، پێش‌وەچوون، پێشڕەوی، ھەستان، بەرزبوونەوە، زۆربوون، چوونەسەرێ، چوونەسەرەوەی نرخ، گرانی، یارمەتی، قەرز، پیشەکی، پێش، پێش‌پێدان، ھەوڵ و تێکۆشان بۆ دەست‌پێ‌کردنی پێوەندی سێکسی، سازکردن

١. (ناو) بەرەوپێشچوون و سەرکەوتن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We live in an age of rapid technological advance."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە سەردەمێکدا دەژین کە تەکنەلۆژیا بەخێرایی بەرەو پێشەوە دەچێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdv2567("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdv2567(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) بۆ پێشەوە جووڵەی کۆمەڵێک کەس، بەتایبەت یەکەی سەربازی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Enemy advances had forced them to retreat into the mountains."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پێشڕەویی دووژمن ناچاری کردبوون بکشێنەوە ناو چیکان."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdvan3567("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdvan3567(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) پارەیەک کە لەپێشدا دەدرێت وەک پێشەکی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The publishers have paid me an advance."),
                              const ExampleSentenceKurdish(
                                  text: "بڵاوکەرەوەکان پێشەکییەکیان داوە پێم."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdv253("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdv253(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) ھەوڵدان بۆ دەستپێکردنی پەیوەندیی سێکسی لەگەڵ کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He had made advances to one of his colleagues."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەوڵیدا پەیوەندی سێکسی لەگەڵ یەکێک لە ھاوکارەکانی درووست بکات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdv23574("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdv23574(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) بەرەوپێشچوون و گەشەکردن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Our knowledge of the disease has advanced considerably over recent years."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تێگەشتنمان بۆ نەخۆشییەکە زۆر بەرەوپێشچووە لە چەند ساڵی ڕابردوودا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdvan6988("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdvan6988(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) بەرەوپێشچوونی کۆمەڵە کەسێک، بەتایبەتی پێشڕەویکردنی سەربازی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The troops were finally given the order to advance."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سەربازان لە کۆتاییدا فەرمانی پێشڕەوییان پێدرا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAd456("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAd456(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) یارمەتیدان لە سەرکەوتنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They worked together to advance the cause of democracy."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پێکەوە کاریان کرد بۆ بەرەوپێشچوونی دۆزی دیموکراسی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdv3568("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdv3568(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) پێدانی پارە لە پێش کاتی خۆی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We will advance you the money."),
                              const ExampleSentenceKurdish(
                                  text: "پارەکەت بە پێشەکی پێدەدەین."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdva391("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdva391(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (کردار) پێشنیارکردنی بیرۆکەیەک یان پلانێک بۆ گەنگەشەکردن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The article advances a new theory to explain changes in the climate."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "وتارەکە بیردۆزێکی تازە پێشنیار دەکات بۆ ڕوونکردنەوەی گۆڕان لە ئاووھەوا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdva7864("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdva7864(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) گۆڕینی کاتی ڕووداوێک بۆ ئەوەی زووتر ڕووبدات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The date of the trial has been advanced by one week."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕێکەوتی دانیشتنەکەی دادگا یەک ھەفتە ھێنراوەتە پێشەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdva8529("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdva8529(
                                        // REPLACE: advance /ədˈvɑːns/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) چوونە قۆناغێکی دواتری شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Participants advance through the program by answering a series of questions."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەژداربووان دەچنە قۆناغەکانی دواتری پڕۆگرامەکە بە وەڵامدانەوەی ژمارەیەک پرسیار."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAdv9678("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAdv9678(
                                        // REPLACE: advance /ədˈvɑːns/
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
- Verb: advance (derived forms: advanced, advances, advancing)
1. Move forward, also in the metaphorical sense (= progress, pass on, move on, march on, go on)
"Time advances";
 
2. Bring forward for consideration or acceptance (= throw out)
"advance an argument";
 
3. Increase or raise (= boost, supercharge)
"advance the voltage in an electrical circuit";
 
4. Contribute to the progress or growth of (= promote, boost, further, encourage)
"I am advancing the use of computers in the classroom";
 
5. Cause to move forward (= bring forward)
 
6. Obtain advantages, such as points, etc. (= gain, win, pull ahead, make headway, get ahead, gain ground)
 
7. Make progress in knowledge or status (= progress, come on, come along, get on, get along, shape up)
"He advanced well in school";
 
8. Become more developed and sophisticated
"We are advancing technology every day"
 
9. Give a promotion to or assign to a higher position (= promote, upgrade, kick upstairs, raise, elevate)
"Women tend not to advance in the major law firms";

10. Pay in advance
"Can you advance me some money?"
 
11. Move forward (= set ahead)
"we have to advance clocks and watches when we travel eastward";
 
12. Rise in rate or price (= gain)
"The stock market advanced 24 points today";

- Noun: advance ((derived forms: advances))
1. A movement forward (= progress, progression)
"he listened for the advance of the troops";
 
2. A change for the better; progress in development (= improvement, betterment)
 
3. A tentative suggestion designed to elicit the reactions of others (= overture, approach, feeler)
"she rejected his advances";
 
4. The act of moving forward (as toward a goal) (= progress, progression, procession, advancement, forward motion, onward motion)
 
5. An amount paid before it is earned (= cash advance)
 
6. Increase in price or value (= rise)
"the news caused a general advance on the stock market";

- Adjective: advance 
1. Being ahead of time or need (= beforehand)
"gave advance warning";
 
2. Situated ahead or going before (= advanced, in advance)
"an advance party"; "an in advance party";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'X4qjfVZR51s';

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
  static String myVideoId = 'Yi-lD_LX_qM';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 217, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'tsxmyL7TUJg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1509, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'D_Y18GEjfNY';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 148, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'yRmOWcWdQAo';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1176, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'IEp31mUaxfg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 211, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'IgF3OX8nT0w';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 13, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'aTDG16Mh2_w';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 224, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'YkmlPaGui5k';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1879, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'pTk9HnIwEYU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 434, // DOPSUM: CHANGE IT
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
