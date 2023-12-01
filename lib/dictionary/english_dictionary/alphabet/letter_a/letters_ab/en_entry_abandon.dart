import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

enum TtsState { playing }

class EnglishEntryabandon extends StatelessWidget {
  EnglishEntryabandon({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAbandon(String languageCode) async {
    // DOPSUM: CHANGE speakAbandon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("abandon"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA664(String languageCode) async {
    // DOPSUM: CHANGE speakAbandon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Germany abandoned its political leaders after WWII."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak145632(String languageCode) async {
    // DOPSUM: CHANGE speakAbandon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The baby had been abandoned by its mother."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak4522369(String languageCode) async {
    // DOPSUM: CHANGE speakAbandon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Snow forced many drivers to abandon their vehicles."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak112547(String languageCode) async {
    // DOPSUM: CHANGE speakAbandon
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They abandoned the match because of rain."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(), // new app bar
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
                            Text(
                              'abandon', // DOPSUM: CHANGE WORD ENTRY
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                            // Text(
                            //   '(verb)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'IpaUK: /əˈbændən/', // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.blue,
                              ),
                              onPressed: () =>
                                  speakAbandon(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'IpaUS: /əˈbændən/', // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                              style: TextStyle(fontSize: 14),
                            ),
                            IconButton(
                              iconSize: 16,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakAbandon(
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
                  VideoIconForTab(),
                  VideoIconForTab(),
                  VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
                  // VideoIconForTab(),
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
کوردی: کەم‌تەرخەمی، گوێ‌پێ‌نەدان، بێ‌جڵەوی، بەربەڕەڵایی، پشت‌گوێ‌خستن، بێ‌خەیاڵی، ئالۆرێتی، وازلێھێنان، وەلانان

١. (کردار) جێھێشتنی کەسێک یان شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The baby had been abandoned by its mother."),
                              const ExampleSentenceKurdish(
                                  text: "منداڵەکە لەلایەن دایکی جێھێڵدرابوو."),
                              CustomIconButtonBritish(
                                onPressed: () => speak145632("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speak145632("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Snow forced many drivers to abandon their vehicles."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەفر ژمارەیەکی زۆر شۆفێری ناچارکرد ئۆتۆمبێلەکانیان بەجێبھێڵن."),
                              CustomIconButtonBritish(
                                onPressed: () => speak4522369("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speak4522369("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const Text(
                            // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                            '٢. (کردار) وەستان لە کردنی شتێک',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                          ),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They abandoned the match because of rain."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "یارییەکەیان وەستاند بەھۆی باران بارین."),
                              CustomIconButtonBritish(
                                onPressed: () => speak112547("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speak112547("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const Text(
                            // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                            '٣. (کردار) وەستان لە باوەڕبوون بە شتێک',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                          ),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Germany abandoned its political leaders after WWII."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەڵمانیا دەستبەرداری سەرکردایەتییەکەی بوو لەدوای جەنگی دووەمی جیھان."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA664("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA664("en-US"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(), // DOPSUM: FROM YOUTUBE BELOW
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    // YoutubeEmbeddedfour(),
                    // YoutubeEmbeddedfive(),
                    // YoutubeEmbeddedsix()
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
- Verb: abandon (abandoned, abandons, abandoning)
1. Forsake, leave behind
"We abandoned the old car in the empty parking lot"

2. Give up with the intent of never claiming again (=give up)
"Abandon your life to God";

3.Leave behind empty; move out of (=vacate, empty)
"You must abandon your office by tonight";

4. Stop maintaining or insisting on ideas or claims (=give up)
"He abandoned the thought of asking for her hand in marriage";

5. Leave someone who needs or counts on you; leave in the lurch (=forsake [literary], desolate, desert)
"The mother abandoned her children";

- Noun: abandon
1. The trait of lacking restraint or control; reckless freedom from inhibition or worry (=wantonness, unconstraint)
"she danced with abandon";

2. A feeling of extreme emotional intensity
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = '1oUBHJNL1RI';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 110, // DOPSUM: CHANGE IT
      // endAt: 135, // DOPSUM: CHANGE IT
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
  static String myVideoId = '7Yq-v0l16KU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 4352, // DOPSUM: CHANGE IT
      // endAt: 4372, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'jdM3ID4m38U';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1498, // DOPSUM: CHANGE IT
      // endAt: 1518, // DOPSUM: CHANGE IT
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

// end
