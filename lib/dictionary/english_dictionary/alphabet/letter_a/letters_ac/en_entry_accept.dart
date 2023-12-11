import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: EnglishEntryaccept - speakAccept - accept - /əkˈsept/

enum TtsState { playing }

class EnglishEntryaccept extends StatelessWidget {
  EnglishEntryaccept({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAccept(String languageCode) async {
    // DOPSUM: CHANGE speakAccept
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("accept"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAccept1112(String languageCode) async {
    // DOPSUM: CHANGE speakAccept
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He asked me to marry him and I accepted."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA68974(String languageCode) async {
    // DOPSUM: CHANGE speakAccept
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You just have to accept the fact that we're never going to be rich."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA2858(String languageCode) async {
    // DOPSUM: CHANGE speakAccept
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He accepts full responsibility for what happened."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAc2456(String languageCode) async {
    // DOPSUM: CHANGE speakAccept
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This machine only accepts coins."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA65489(String languageCode) async {
    // DOPSUM: CHANGE speakAccept
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He accepted all the changes we proposed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAc4781(String languageCode) async {
    // DOPSUM: CHANGE speakAccept
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They accepted the court's decision."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA51968(String languageCode) async {
    // DOPSUM: CHANGE speakAccept
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Please accept our sincere apologies."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
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
                                word: "accept"), // DOPSUM: CHANGE WORD ENTRY
                            // nothing heereee
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əkˈsept/"),
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakAccept(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əkˈsept/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                            CustomIconButtonAmerican(
                              onPressed: () => speakAccept(
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
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
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
                          const DefinitionKurdish(text: """
کوردی: پەسەندکردن، قبوڵکردن

١. (کردار) ڕازیبوون بە وەرگرتنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He asked me to marry him and I accepted."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "داوای لێکردم شووی پێ بکەم و ڕازی بووم."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAccept1112("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAccept1112("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Please accept our sincere apologies."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تکایە داوای لێبووردنەکەمان پەسەند بکە کە لە دڵەوەیە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakA51968("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA51968("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) ڕازیبوون بە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "They accepted the court's decision."),
                              const ExampleSentenceKurdish(
                                  text: "بڕیاری دادگایان پەسەندکرد."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAc4781("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAc4781("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He accepted all the changes we proposed."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەموو ئەو گۆڕانکارییانەی پەسەندکرد کە پێشنیازمان کردبوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakA65489("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA65489("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) وەرگرتنی جۆری پارەدان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "This machine only accepts coins."),
                              const ExampleSentenceKurdish(
                                  text: "ئەم ئامێرە تەنھا سکە وەردەگرێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAc2456("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAc2456("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) دانپێدانان بە ھەڵە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He accepts full responsibility for what happened."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەرپرسیاریەتی تەواو ھەڵدەگرێت بۆ ئەوەی کە ڕوویدا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakA2858("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA2858("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) بەردەوامبوون لە بارودۆخێکی سەختدا بەبێ وەستان چونکە ئەزانیت ناتوانیت بیگۆڕیت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "You just have to accept the fact that we're never going to be rich."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەبێت ئەو ڕاستییە پەسەند بکەیت کە ئێمە ھەرگیز دەوڵەمەند نابین."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakA68974("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA68974("en-US"),
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
                    YoutubeEmbeddedsix(),
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
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
          EnglishMeaningConst(
            text: """
- Verb: accept (derived forms: accepts, accepting, accepted)
1. Consider or hold as true
"I cannot accept the dogma of this church"; "accept an argument"
 
2. Receive willingly something given or offered (= take, have)
"Please accept my present";
 
3. Give an affirmative reply to; respond favourably to (= consent, go for)
"I cannot accept your invitation";
 
4. React favourably to; consider right and proper
"People did not accept atonal music at that time"; "We accept the idea of universal health care"
 
5. Admit into a group or community (= admit, take, take on)
"accept students for graduate study";
 
6. Take on as one's own the expenses or debts of another person (= bear, take over, assume)
"I'll accept the charges";
 
7. Tolerate or accommodate oneself to (= live with, swallow)
"I shall have to accept these unpleasant working conditions";
 
8. Be designed to hold or take (= take)
"This surface will not accept the dye";
 
9. Receive (a report) officially, as from a committee
 
10. Make use of or accept for some purpose (= take)
"accept a risk";
 
11. Be sexually responsive to, used of a female domesticated mammal
"The cow accepted the bull"
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'hS2x1zl4rn0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 76, // DOPSUM: CHANGE IT
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
  static String myVideoId = '-VMSG5WV0hs';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 914, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'a3WnvDtDD2M';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 99, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'tsxmyL7TUJg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 218, // DOPSUM: CHANGE IT
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
  static String myVideoId = '9TugA_z5vQE';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1546, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'hAPqYCRSkaA';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 252, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'Yaui2pL26ZQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 707, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'b1reY72ktEc';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1024, // DOPSUM: CHANGE IT
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

// end
