import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: EnglishEntryabort - speakAbort - abort - /əˈbɔːt/

enum TtsState { playing }

class EnglishEntryabort extends StatelessWidget {
  EnglishEntryabort({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAbort(String languageCode) async {
    // DOPSUM: CHANGE speakAbort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("abort"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAb33(String languageCode) async {
    // DOPSUM: CHANGE speakAbort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The plan was aborted at the last minute."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAb885(String languageCode) async {
    // DOPSUM: CHANGE speakAbort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The virus can cause pregnant animals to abort."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA22(String languageCode) async {
    // DOPSUM: CHANGE speakAbort
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She aborted the child due to health issues."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
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
                                word: "abort"), // DOPSUM: CHANGE WORD ENTRY
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈbɔːt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAbort("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈbɔːrt/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                            CustomIconButtonAmerican(
                              onPressed: () => speakAbort("en-US"),
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
کوردی: پچڕاندن، کوژاندنەوە، لەباربردن، لابردن، وەستاندن، کۆتاییپێھێنان (کۆتاییپێھێنانی بەئەنقەستی جێبەجێکردنی بەرنامە لەبەر سەرھەڵدانی ھەڵە)

١. (کردار) کۆتایی ھێنان بە دووگیانی و ڕێگریکردن لە گەشە و لەدایکبوونی کۆرپەلە؛ لەباربردن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She aborted the child due to health issues."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "منداڵەکەی لەباربرد بەھۆی بارودۆخی تەندرووستییەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakA22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakA22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) منداڵبوونی پێشوەختە بەجۆرێک کە منداڵەکە ڕزگاری نەبێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The virus can cause pregnant animals to abort."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڤایرۆسەکە دەتوانێت وا لە ئاژەڵی دووگیان بکات پێشوەختە بەچکەکەیان بە مردووی ببێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAb885("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAb885("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) کۆتاییپێھێنان بە شتێک پێش ئەوەی تەواو بێت، زۆرجار بەھۆی ئەوەی شکستی دەھێنا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The plan was aborted at the last minute."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پلانەکە لە کۆتا خولەکەکاندا پوچەڵکرایەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAb33("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAb33("en-US"),
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
                    // YoutubeEmbeddedsix(),
                    // YoutubeEmbeddedseven(),
                    // YoutubeEmbeddedeight(),
                    // YoutubeEmbeddednine(),
                    // YoutubeEmbeddedten()
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
- Noun: abort (derived forms: aborts)
1. The act of terminating a project or procedure before it is completed
"I wasted a year of my life working on an abort"; "he sent a short message requesting an abort due to extreme winds in the area"

- Verb: abort (derived forms: aborting, aborted, aborts)
1. Terminate before completion
"abort the mission"; "abort the process running on my computer"
 
2. Cease development, die, and be aborted
"an aborting foetus"
 
3. Terminate a pregnancy by undergoing an abortion
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = '2svi_xw_Q7I';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 318, // DOPSUM: CHANGE IT
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
  static String myVideoId = '7hGqq35EocY';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 935, // DOPSUM: CHANGE IT
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
  static String myVideoId = '5893RkhZgRNC1k';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 589, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'iZbala54uzk';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 732, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'Q3dawHfLXFw';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 726, // DOPSUM: CHANGE IT
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

// end
