import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zeetionary/theme/pallete.dart';

// replace these: EnglishEntryablaze - speakAblaze - ablaze - /əˈbleɪz/

enum TtsState { playing }

class EnglishEntryablaze extends StatelessWidget {
  EnglishEntryablaze({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAblaze(String languageCode) async {
    // DOPSUM: CHANGE speakAblaze
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("ablaze"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA241(String languageCode) async {
    // DOPSUM: CHANGE speakAblaze
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He turned to her, his eyes ablaze with love."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA614(String languageCode) async {
    // DOPSUM: CHANGE speakAblaze
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Every window was ablaze with light."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAb37(String languageCode) async {
    // DOPSUM: CHANGE speakAblaze
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The trees were ablaze with the colours of autumn."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA256(String languageCode) async {
    // DOPSUM: CHANGE speakAblaze
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Cars and buses were set ablaze during the riot."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak258(String languageCode) async {
    // DOPSUM: CHANGE speakAblaze
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The whole building was soon ablaze."); // DOPSUM: CHANGE TEXT
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
                                word: "ablaze"), // DOPSUM: CHANGE WORD ENTRY
                            // nothing heereee
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈbleɪz/"),
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakAblaze(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈbleɪz/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                            CustomIconButtonAmerican(
                              onPressed: () => speakAblaze(
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
                  VideoIconForTab(),
                  VideoIconForTab(),
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
کوردی: گڕگرتوو، داگیرساو، ئاورگرتوو، ئاورتێبەربوو، کڵپەکردوو، ھەڵبوو، سوورەوەبوو، تووڕە، بریقەدار، ڕۆشن، ڕووناک، بەشەوق

١. (ھاوەڵناو) سووتان بەخێرایی و بەھێزی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The whole building was soon ablaze."),
                              const ExampleSentenceKurdish(
                                  text: "تەواوی بیناکە زوو بوو بە بڵێسە."),
                              CustomIconButtonBritish(
                                onPressed: () => speak258("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speak258("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Cars and buses were set ablaze during the riot."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئۆتۆمبێل و پاسەکان لە ئاژاوەکەدا ئاگر تێبەردران."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA256("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA256("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ھاوەڵناو) ڕۆشن و پڕ لە ڕەنگ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The trees were ablaze with the colours of autumn."),
                              const ExampleSentenceKurdish(
                                  text: "دارەکان پڕ لە ڕەنگی پایز بوون."),
                              CustomIconButtonBritish(
                                onPressed: () => speakAb37("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakAb37("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Every window was ablaze with light."),
                              const ExampleSentenceKurdish(
                                  text: "پەنجەرەکان پڕ لە ڕۆشنایی بوون."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA614("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA614("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ھاوەڵناو) پڕ لە ھەست و جۆشوخرۆشی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He turned to her, his eyes ablaze with love."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕووی تێکرد بە چاوی پڕ لە خۆشەویستییەوە."),
                              CustomIconButtonBritish(
                                onPressed: () => speakA241("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA241("en-US"),
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
- Adjective: ablaze
1. Keenly excited (especially sexually) or indicating excitement (=aflame, aroused)
"his face all ablaze with excitement";
 
2. Flaming as it burns (=afire [literary], aflame, aflare [rare], alight, on fire, burning, in flames)
"forests set ablaze by lightning";
 
3. Resembling flame in brilliance or colour
"maple trees ablaze in autumn"
 
4. Lighted with red light as if with flames (=inflamed, reddened)
"streets ablaze with lighted Christmas trees";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'EwBA1fOQ96c';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 264, // DOPSUM: CHANGE IT
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
  static String myVideoId = '2ISWs5rB1q4';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 364, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'BHnqRoEXu5o';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 715, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'QtI9J-CzcUU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 917, // DOPSUM: CHANGE IT
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
  static String myVideoId = '91OmO2YMiDM';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 2644, // DOPSUM: CHANGE IT
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
