import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryact - replace speakAct - replace act - /ækt/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryact extends StatelessWidget {
  EnglishEntryact({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAct(String languageCode) async {
    // DOPSUM: CHANGE speakAct
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("act"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAct7859(String languageCode) async {
    // DOPSUM: CHANGE speakAct
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is vital that we act to stop the destruction of the rainforests."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAct42693(String languageCode) async {
    // DOPSUM: CHANGE speakAct
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government was criticized for failing to act decisively."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAct7691(String languageCode) async {
    // DOPSUM: CHANGE speakAct
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The man was seen acting suspiciously."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAct4589(String languageCode) async {
    // DOPSUM: CHANGE speakAct
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Who's acting the part of Hamlet?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAct15932(String languageCode) async {
    // DOPSUM: CHANGE speakAct
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He's been acting the devoted husband all day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAct1527(String languageCode) async {
    // DOPSUM: CHANGE speakAct
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Can you act as interpreter?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAct3541(String languageCode) async {
    // DOPSUM: CHANGE speakAct
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Alcohol acts quickly on the brain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAct75381(String languageCode) async {
    // DOPSUM: CHANGE speakAct
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You have committed a serious criminal act."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAc25341(String languageCode) async {
    // DOPSUM: CHANGE speakAct
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The old Act has now been repealed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAct1258(String languageCode) async {
    // DOPSUM: CHANGE speakAct
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Don't take her seriously—it's all an act."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAct75638(String languageCode) async {
    // DOPSUM: CHANGE speakAct
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The king is killed in the opening act."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAct(String languageCode) async {
  //   // DOPSUM: CHANGE speakAct
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("act"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAct(String languageCode) async {
  //   // DOPSUM: CHANGE speakAct
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("act"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAct(String languageCode) async {
  //   // DOPSUM: CHANGE speakAct
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("act"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAct(String languageCode) async {
  //   // DOPSUM: CHANGE speakAct
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("act"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(
                                word:
                                    "act"), // DOPSUM: CHANGE WORD ENTRY - Find /ækt/
                            // nothing heereee
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ækt/"),
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakAct(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ækt/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAct(
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
کوردی: کار، کردە، کردەوە، کریار، دەستوور، فەرمان، ڕەفتار، ڕەوتار، ھەڵس‌وکەوت، قانوون، یاسا، زاکوون، قەباڵە، سەنەد، پەردە (شانو)، بەش، شانۆ، بەرنامە، دەستەی شانۆیی (میوزیکژەن، ئەکتەر و ھتد)، واخۆنیشان‌دان، واخۆنواندن، واخۆدەرخستن، (ماف) دەستووری نووسراوی پارلەمان، کۆنگرێس و ھتد

١. (کردار) کردنی شتێک بە مەبەستی دیاریکراو، یان بۆ مامەڵەکردن  لەگەڵ بارودۆخێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "It is vital that we act to stop the destruction of the rainforests."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زۆر گرنگە ھەنگاوبنێین بۆ وەستاندنی وێرانکردنی جەنگەڵەکان."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAct7859("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAct7859("en-US"), // REPLACE act /ækt/
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The government was criticized for failing to act decisively."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "حکومەت بەر ڕەخنە درا بەھۆی شکستھێنان لە ھەنگاونان بە خێرایی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAct42693("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAct42693("en-US"), // REPLACE act /ækt/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) ڕەفتارکردن بەشێوەیەک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The man was seen acting suspiciously."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پیاوەکە بینرا بە گوماناوییەوە ڕەفتاری دەکرد."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAct7691("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAct7691("en-US"), // REPLACE act /ækt/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) ڕۆڵبینین لە بەشیکی شانۆیەک یان فیلمێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Who's acting the part of Hamlet?"),
                              const ExampleSentenceKurdish(
                                  text: "کێ ڕۆڵی ھاملێت دەبینێت؟"),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAct4589("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAct4589("en-US"), // REPLACE act /ækt/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) خۆنیشاندانت بەشێوەیەکی تایبەت لە ڕێگەی ڕەفتارکردنتەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He's been acting the devoted husband all day."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تەواوی ڕۆژەکە وەک مێردێکی خەمخۆر خۆی نیشانداوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAct15932("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAct15932("en-US"), // REPLACE act /ækt/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) کردنی کارێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Can you act as interpreter?"),
                              const ExampleSentenceKurdish(
                                  text: "ئەتوانی وەک وەرگێڕێک کار بکەیت؟"),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAct1527("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAct1527("en-US"), // REPLACE act /ækt/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) ھەبوونی کاریگەرییەک لەسەر شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Alcohol acts quickly on the brain."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کحوول ڕاستەوخۆ کاریگەری لەسەر مێشک دەبێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAct3541("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAct3541("en-US"), // REPLACE act /ækt/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) شتێک کە کەسێک دەیکات"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "You have committed a serious criminal act."),
                              const ExampleSentenceKurdish(
                                  text: "کارێکی تاوانکاریی کوشندەت کردووە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAct75381("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAct75381("en-US"), // REPLACE act /ækt/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ناو) یاسایەک کە لەلایەن پەرلەمانەوە دەرکراوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The old Act has now been repealed."),
                              const ExampleSentenceKurdish(
                                  text: "یاسا کۆنەکە ئێستا ھەڵپەسێردراوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAc25341("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAc25341("en-US"), // REPLACE act /ækt/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ناو) ڕەفتارێک کە ڕاستی نییە و یەنھا بە مەبەستە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Don't take her seriously—it's all an act."),
                              const ExampleSentenceKurdish(
                                  text: "بە جدی مەیگرە، ھەمووی نمایشە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAct1258("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAct1258("en-US"), // REPLACE act /ækt/
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ناو) یەکێک لەو بەشانەی شانۆ یان ئۆپێرایەکی لێ پێکدێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The king is killed in the opening act."),
                              const ExampleSentenceKurdish(
                                  text: "پاشا لە یەکەم بەش دەکوژرێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAct75638("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAct75638("en-US"), // REPLACE act /ækt/
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
- Noun: act (derived forms: acts)
1. Something that people do or cause to happen (= deed, human action, human activity)
 
2. (law) a legal document codifying the result of deliberations of a committee, society or legislative body (= enactment)
 
3. A subdivision of a play, opera or ballet
 
4. A short performance that is part of a longer program (= routine, number, turn, bit)
"he did his act three times every evening";
 
5. A manifestation of insincerity
"he put on quite an act for her benefit"

- Verb: act (routine, number, turn, bit)
1. Perform an action; do something (= move)
"think before you act"; "The governor should act on the new energy bill"; "The nanny acted quickly by grabbing the toddler and covering him with a wet towel";
 
2. Show a certain behaviour; conduct or comport oneself (= behave, do)
"You should act like an adult"; "The dog acts ferocious, but he is really afraid of people";
 
3. (performing arts) Perform a role or part (= play, represent)
"She wants to act Lady Macbeth, but she is too young for the role";
 
4. Discharge one's duties
"She acts as the chair"; "In what capacity are you acting?"
 
5. Pretend to have certain qualities or state of mind (= play, act as)
"He acted the idiot";
 
6. Be suitable for theatrical performance
"This scene acts well"
 
7. Have a desired or expected effect or outcome (= work)
"The breaks of my new car act quickly";
 
8. Be engaged in an activity, often for no particular purpose other than pleasure
 
9. Behave unnaturally or affectedly (= dissemble, pretend)
"She's just acting";
 
10 (dramaturgy) perform on a stage or theatre (= play, roleplay, playact)
"She acts in this play"; "He acted in 'Julius Caesar'";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = '9jAC3FFXUgY';

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
  static String myVideoId = 'jxLkbJozKbY';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 421, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'B8OIka3jP90';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 212, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'kfZe5L1I17U';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 202, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'nJDvbcIby38';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 437, // DOPSUM: CHANGE IT
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
  static String myVideoId = '_7_QXVcvcfQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 588, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'voyu61pPEdA';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 672, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'Lr-zoNnDid0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 508, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'A5fWlmRambI';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 683, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'LtxikccfpaU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 100, // DOPSUM: CHANGE IT
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
