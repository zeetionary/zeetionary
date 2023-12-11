import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: EnglishEntryabove - speakAbove - above - /əˈbʌv/

enum TtsState { playing }

class EnglishEntryabove extends StatelessWidget {
  EnglishEntryabove({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAbove(String languageCode) async {
    // DOPSUM: CHANGE speakAbove
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("above"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA1249(String languageCode) async {
    // DOPSUM: CHANGE speakAbove
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Please write to us at the above address."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak1529(String languageCode) async {
    // DOPSUM: CHANGE speakAbove
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("children aged 12 and above"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speak9221(String languageCode) async {
    // DOPSUM: CHANGE speakAbove
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Seen from above the cars looked tiny."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA2477(String languageCode) async {
    // DOPSUM: CHANGE speakAbove
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Put it on the shelf above."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA6641(String languageCode) async {
    // DOPSUM: CHANGE speakAbove
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's not above lying when it suits her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA2886(String languageCode) async {
    // DOPSUM: CHANGE speakAbove
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I rate her above most other players of her age."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA337(String languageCode) async {
    // DOPSUM: CHANGE speakAbove
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Temperatures have been above average."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA6224(String languageCode) async {
    // DOPSUM: CHANGE speakAbove
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A captain in the navy ranks above a captain in the army."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakA3447(String languageCode) async {
    // DOPSUM: CHANGE speakAbove
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We were flying above the clouds."); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
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
                                word: "above"), // DOPSUM: CHANGE WORD ENTRY
                            // nothing heereee
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈbʌv/"),
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakAbove(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈbʌv/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                            CustomIconButtonAmerican(
                              onPressed: () => speakAbove(
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
                  VideoIconForTab(),
                  VideoIconForTab(),
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
کوردی: لەسەر، لەژوور، لەبان، لە ئاسمان، لەسەرووی، لەژوور سیفر، باڵا، ژوورسەر، بەژوور، بان‌سەر، ژوورتر، بان‌تر، زۆرتر لە، پتر لە، زیاتر لە، گەورەتر، پێش‌تر، سەروو، سەرتر (کتێب و نووسراوە)

١. (ئامراز) لە سەروو کەسێک یان شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We were flying above the clouds."),
                              const ExampleSentenceKurdish(
                                  text: "لە سەروو ھەورەکانەوە دەفڕین."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakA3447("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA3447("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "A captain in the navy ranks above a captain in the army."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کاپتنێک لە ھێزی دەریایی لە سەروو کاپتنێکی سوپاوەیە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakA6224("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA6224("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ئامراز) لە سەروو ڕێژەیەک، ژمارەیەک، یان ئاستێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Temperatures have been above average."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پلەی گەرمی لە سەروو ڕێژەی ئاسایی بووە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakA337("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA337("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ئامراز) کاتێک شتێک باشتر یان گرنگترە لە شتی تر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I rate her above most other players of her age."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەڵسەنگاندنم بۆی ئەوەیە کە باشترە لە یاریزانانی دیکەی ھاوتەمەنی خۆی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakA2886("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA2886("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ئامراز) لە ئاستێک کە شتێکی لێ ناوەشێتەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She's not above lying when it suits her."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە درۆکردن بەدەر نییە کە لە بەرژەوەندی خۆی بێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakA6641("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA6641("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ھاوەڵکار) لە شوێنێکی بەرز"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Put it on the shelf above."),
                              const ExampleSentenceKurdish(
                                  text: "بیخە سەر ڕەفەکەی سەرەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakA2477("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA2477("en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Seen from above the cars looked tiny."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە سەرەوە ئۆتۆمبێلەکان وردیلانە دیاربوون."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speak9221("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speak9221("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ھاوەڵکار) لە سەروو ڕێژەیەک، ژمارەیەک، یان ئاستێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "children aged 12 and above"),
                              const ExampleSentenceKurdish(
                                  text: "منداڵانی تەمەن ١٢ ساڵ یان زیاتر."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speak1529("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speak1529("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵناو) ئاماژەپێکراو لەسەرەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Please write to us at the above address."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تکایە لە ڕێگای ناونیشانەکەی سەرەوەوە پەیوەندیمان پێوە بکە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakA1249("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakA1249("en-US"),
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
                    YoutubeEmbeddednine(),
                    YoutubeEmbeddedten()
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
- Preposition: above
1. At a higher position than (= over)
"the picture above radiator"; "the light above the table";

- Adverb: above
1. (in writing) at an earlier place (=supra)
"see above";
 
2. In or to a place that is higher
- higher up, in a higher place, to a higher place

- Noun: above (derived forms: aboves)
1. An earlier section of a written text
"for instructions refer to the above"

- Adjective: above 
1. Appearing earlier in the same text
"flaws in the above interpretation"
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = 'nLGBEETtEPc';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 69, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'BiQIc7fG9pA';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 28, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'vmsTcj3WuoE';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 293, // DOPSUM: CHANGE IT
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
  static String myVideoId = '_Mhem1xH2aA';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 368, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'QaNuhF-6uoo';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1181, // DOPSUM: CHANGE IT
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
  static String myVideoId = '-HyHZsa79LU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'tsxmyL7TUJg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 334, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'rLc99wNie4Q';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 287, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'KtJJuf7VyMQ';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 407, // DOPSUM: CHANGE IT
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
  static String myVideoId = '-L7o6HtX8Vg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 153, // DOPSUM: CHANGE IT
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
