import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryacute - replace speakAcute - replace acute - /əˈkjuːt/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryacute extends StatelessWidget {
  EnglishEntryacute({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAcute(String languageCode) async {
    // DOPSUM: CHANGE speakAcute
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("acute"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAcute1247(String languageCode) async {
    // DOPSUM: CHANGE speakAcute
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There is an acute shortage of water."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAcut3749(String languageCode) async {
    // DOPSUM: CHANGE speakAcute
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The scandal was an acute embarrassment for the President."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAcute42(String languageCode) async {
    // DOPSUM: CHANGE speakAcute
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("acute abdominal pains"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAcu5268(String languageCode) async {
    // DOPSUM: CHANGE speakAcute
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Dogs have an acute sense of smell."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAcu5269(String languageCode) async {
    // DOPSUM: CHANGE speakAcute
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her judgement is acute."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7, // 2 + VIDEOS FIND: YoutubeEmbeddedfifteen
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
                            EntryTitle(word: "acute"), // Find /əˈkjuːt/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈkjuːt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakAcute("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈkjuːt/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAcute("en-US"),
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
                  // VideoIconForTab(),
                  // VideoIconForTab(),
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
کوردی: تیژ، زیرەک، زرینگ، زووتێگەیشتوو، توند، چەنگ (بەتایبەت بۆ ڕژدی دەم یان تیخی مەڵەغان و داس، بەرامبەرەکەی دەبێتە واڵ کە دەمەکەی (سەبارەت بە چەنگ) بڵاوترە)، ڕژد، تیژ (کەم‌تر لە90 پلە (ئەندازیاری)، سەخت، قووڵ، توند، گران، قەیراناوی، ئاستەم، ئاگا، خراپ، شپرزە، چاوتیژ، وریا، وردبین

١. (ھاوەڵناو) شتێک کە بە ئاستێکی سەخت بوونی ھەیە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "There is an acute shortage of water."),
                              const ExampleSentenceKurdish(
                                  text: "کەمئاوییەکی سەخت بوونی ھەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAcute1247("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAcute1247(
                                        // REPLACE: acute /əˈkjuːt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The scandal was an acute embarrassment for the President."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئابڕووچوونەکە شەرمەزارییەکی خراپ بوو بۆ سەرۆک."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAcut3749("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAcut3749(
                                        // REPLACE: acute /əˈkjuːt/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) نەخۆشییەک کە لەناکاو سەخت و مەترسیدار دەبێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "acute abdominal pains"),
                              const ExampleSentenceKurdish(
                                  text: "ئازاری سەختی سک ئێشە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAcute42("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAcute42(// REPLACE: acute /əˈkjuːt/
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) ھەبوونی ھەستی تیژ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Dogs have an acute sense of smell."),
                              const ExampleSentenceKurdish(
                                  text: "سەگ ھەستێکی تیژی بۆنکردنی ھەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAcu5268("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAcu5268(// REPLACE: acute /əˈkjuːt/
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ھاوەڵناو) زیرەک و خێرا لە تێگەشتن و بڕیاردان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Her judgement is acute."),
                              const ExampleSentenceKurdish(
                                  text: "بڕیاردانی وردبینانەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAcu5269("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAcu5269(// REPLACE: acute /əˈkjuːt/
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
                    // YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    // YoutubeEmbeddedseven(),
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
- Adjective: acute (derived forms: acutest, acuter)
1. Of critical importance and consequence
"an acute (or critical) lack of research funds"
 
2. Extremely sharp or strongly felt (= intense)
"acute pain"; "felt acute annoyance";
 
3. Having or demonstrating ability to recognize or draw fine distinctions (= discriminating, incisive, keen, knifelike, penetrating, penetrative, piercing, sharp)
"an acute observer of politics and politicians";
 
4. Ending in a piercing point; pointed (= acuate, sharp, needlelike)
 
5. (medicine) having or experiencing a rapid onset and short but severe course
"acute appendicitis"; "the acute phase of the illness"; "acute patients"
 
6. Of an angle; less than 90 degrees

- Noun: acute (derived forms: acutes)
1. A mark placed above a vowel to indicate pronunciation (= acute accent, ague)
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'lcBPaHQUvXY';

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
  static String myVideoId = 'sQKK6VWmF7o';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 53, // DOPSUM: CHANGE IT
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
  static String myVideoId = '5CKzP5-0kT4';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 448, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'VmtcrpTRUyI';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 9, // DOPSUM: CHANGE IT
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
  static String myVideoId = '_IcM3i5l534';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 34, // DOPSUM: CHANGE IT
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
