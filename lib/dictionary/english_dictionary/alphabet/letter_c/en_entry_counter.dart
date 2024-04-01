import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycounter extends StatelessWidget {
  const EnglishEntrycounter({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          child: Column(
            children: [
              const EntryAndIPA(),
              const CustomTabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(),
                    KurdishMeaning(),
                    const YoutubeVideos(),
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

class EntryAndIPA extends StatelessWidget {
  const EntryAndIPA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              IpaUK(),
              IpaUS(),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleOfEntry extends StatelessWidget {
  const TitleOfEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const EntryTitle(word: "counter");
  }
}

class IpaUK extends StatelessWidget {
  IpaUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcounter(String languageCode) async {
    // DOPSUM: CHANGE speakcounter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("counter"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUK: /ˈkaʊntə(r)/"),
        CustomIconButtonBritish(
          onPressed: () => speakcounter("en-GB"),
        ),
      ],
    );
  }
}

class IpaUS extends StatelessWidget {
  IpaUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcounter(String languageCode) async {
    // DOPSUM: CHANGE speakcounter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("counter"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUS: /ˈkaʊntər/"),
        CustomIconButtonAmerican(
          onPressed: () => speakcounter("en-US"),
        ),
      ],
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcounters1(String languageCode) async {
    // DOPSUM: CHANGE speakcounter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He pushed the money across the counter to me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounters2(String languageCode) async {
    // DOPSUM: CHANGE speakcounter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She handed me my coffee over the counter."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounters3(String languageCode) async {
    // DOPSUM: CHANGE speakcounter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We stacked the dirty plates on the kitchen counter."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounters4(String languageCode) async {
    // DOPSUM: CHANGE speakcounter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She moved her counter three spaces forward on the board."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounters5(String languageCode) async {
    // DOPSUM: CHANGE speakcounter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You need to reset the counter."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounters6(String languageCode) async {
    // DOPSUM: CHANGE speakcounter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You can get computers to help the counters to count the votes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounters7(String languageCode) async {
    // DOPSUM: CHANGE speakcounter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government's programme should be an effective counter to unemployment."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounters8(String languageCode) async {
    // DOPSUM: CHANGE speakcounter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I tried to argue but he countered that the plans were not yet finished."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounters9(String languageCode) async {
    // DOPSUM: CHANGE speakcounter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Butler has countered with a lawsuit against the firm."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounters10(String languageCode) async {
    // DOPSUM: CHANGE speakcounter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Businesses would like to see new laws to counter late payments of debts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounters11(String languageCode) async {
    // DOPSUM: CHANGE speakcounter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company's plans run counter to local development guidelines."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounters12(String languageCode) async {
    // DOPSUM: CHANGE speakcounter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounters1200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounters13(String languageCode) async {
    // DOPSUM: CHANGE speakcounter
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounters1300"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: ژێتۆن، پوول، مۆرە، زار (یاری)، دیسک (چکۆلە)، پەپکیلە،	(لە لێکدانا) ـژمێر، ـپێو، پش(ت)پاژنە، بەشی پشتەوەی کەوش و پێڵاو،	سنگی ئەسپ،	پاژنە یان کنگی کەشتی کە لە سەرووی ئاوەوەیە،	بەرمیز، بەردەم، پێش‌خوان،	دژەلێدان، زەربە یان لێدانی بەرامبەر، لێدانەوە، پەرچەزەربە، پەرچەلێدان
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) ڕوویەکی درێژی تەخت کە لەسەری شت دەفرۆشرێت یان کاری بازرگانی لە فرۆشگایەک، بانکێک، هتد دەکرێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He pushed the money across the counter to me."),
                    ExampleSentenceKurdish(
                        text: "پارەکەی بەسەر مێزەکەدا بۆم پاڵدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "counter", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounters1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounters1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She handed me my coffee over the counter."),
                    ExampleSentenceKurdish(
                        text: "بەسەر مێزەکەدا قاوەکەی پێمدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounters2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounters2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) ڕوویەکی تەخت لە چێشتخانەدا بۆ ئامادەکردنی خواردن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "We stacked the dirty plates on the kitchen counter."),
                    ExampleSentenceKurdish(
                        text:
                            "دەورییە پیسەکانمان لەسەر پێش‌خوانی چێشتخانەکە ڕیزکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounters3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounters3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) زارێکی بچووک کە لە هەندێک یاری سەر تەختەدا بەکاردێت بۆ خاڵ گرتن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She moved her counter three spaces forward on the board."),
                    ExampleSentenceKurdish(
                        text: "لەسەر تەختەکە سێ بۆشایی پوولەکەی بردە پێشەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounters4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounters4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) ئامێرێکی ئەلیکترۆنی بۆ ژماردنی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "You need to reset the counter."),
                    ExampleSentenceKurdish(
                        text: "دەبێت ژمێرەرەکە سفر بکەیتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounters5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounters5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) کەسێک کە شتێک دەژمێرێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "You can get computers to help the counters to count the votes."),
                    ExampleSentenceKurdish(
                        text:
                            "دەتوانیت کۆمپیوتەرەکان وا لێ‌بکەیت یارمەتی ژمێرەرەکان بدەن دەنگەکان بژمێرن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounters6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounters6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) وەڵامێک بۆ کەسێک/شتێک کە دژ بە بیرۆکە، پێگە، هتد ــیانە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The government's programme should be an effective counter to unemployment."),
                    ExampleSentenceKurdish(
                        text:
                            "پڕۆگرامەکەی حکومەت دەبێت دەبێت پێشگیرییەکی کاریگەر بێت دژ بە بێ‌کاری."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounters7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounters7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (کردار) وەڵامدانەوەی کەسێک بە هەوڵدان بۆ سەلماندنی ئەوەی وتوویەتی ناڕاستە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I tried to argue but he countered that the plans were not yet finished."),
                    ExampleSentenceKurdish(
                        text:
                            "هەوڵمدا مناقەشە بکەم، بەڵام وەڵامی دایەوە بەوەی پلانەکان هێشتا تەواو نەبووبوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounters8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounters8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Butler has countered with a lawsuit against the firm."),
                    ExampleSentenceKurdish(
                        text: "بەتلەر بە سکاڵایەک دژ بە کۆمپانیاکە وەستایەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounters9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounters9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (کردار) کردنی شتێک بۆ کەمکردنەوەی کاریگەری خراپی شتێکی دیکە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Businesses would like to see new laws to counter late payments of debts."),
                    ExampleSentenceKurdish(
                        text:
                            "بازرگانییەکان دەیانەوێت یاسای تازە ببینن کە دژ بە دانەوەی درەنگی قەرز بێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounters10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounters10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (ھاوەڵکار) بە ئاراستەی پێچەوانەی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The company's plans run counter to local development guidelines."),
                    ExampleSentenceKurdish(
                        text:
                            "پلانەکانی کۆمپانیاکە دژ بە ڕێنماییە خۆجێیەکانی گەشەپێدانن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounters11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounters11("en-US"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// DOPSUM: ENGLISH MEANING

class EnglishMeaning extends StatefulWidget {
  const EnglishMeaning({super.key});

  @override
  State<EnglishMeaning> createState() => _EnglishMeaningState();
}

class _EnglishMeaningState extends State<EnglishMeaning> {
  FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    // Extract text from EnglishMeaningConst and store it in textToSpeak
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    // Update the state to reflect that TTS is in progress
    setState(() {
      isSpeaking = true;
    });
  }

// Function to stop TTS
  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: counter (derived forms: counters)
1. Table consisting of a horizontal surface over which business is transacted
 
2. Game equipment (as a piece of wood, plastic, or ivory) used for keeping a count or reserving a space in various card or board games
 
3. A calculator that keeps a record of the number of times something happens (= tabulator)
 
4. A piece of furniture that stands at the side of a dining room; has shelves and drawers (= buffet, sideboard)
 
5. A person who counts things
 
6. A quick reply to a question or remark (especially a witty or critical one) (= rejoinder, retort, return, riposte, replication, comeback)
 
7. (computing) a register whose contents go through a regular series of states (usually states indicating consecutive integers)
 
8. A piece of leather forming the back of a shoe or boot (= heel counter)
"a counter may be used to stiffen the material around the heel and to give support to the foot";
 
9. A return punch (especially by a boxer) (= counterpunch, parry)
 
10. (nautical) the overhanging stern of a vessel above the waterline

- Verb: counter (derived forms: counters, countered, countering)
1. Speak in response
"He countered with some very persuasive arguments"
 
2. Act in advance of; deal with ahead of time (= anticipate, foresee, forestall)

- Adjective: counter 
1. Indicating opposition or resistance (= antagonistic)

- Adverb: counter 
1. In the opposite direction
"run counter"

- Prefix: counter-
1. Opposite, complementary
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'qWAagS_MANg',
    startSeconds: 1240,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'zqllxbPWKNI',
    startSeconds: 267,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'VvJm4pQZ04s',
    startSeconds: 265,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'CaaJyRvvaq8',
    startSeconds: 46,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'yRmOWcWdQAo',
    startSeconds: 1345,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '5R65skWdg7Y',
    startSeconds: 1546,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'fGMCjELDyUY',
    startSeconds: 1682,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return YouTubeScroller(
      children: [
        YoutubeEmbeddedone(),
        YoutubeEmbeddedtwo(),
        YoutubeEmbeddedthree(),
        YoutubeEmbeddedfour(),
        YoutubeEmbeddedfive(),
        YoutubeEmbeddedsix(),
        // YoutubeEmbeddedseven(),
        // YoutubeEmbeddedeight(),
        // YoutubeEmbeddednine(),
        // YoutubeEmbeddedten(),
        // YoutubeEmbeddedeleven(),
        // YoutubeEmbeddedtwelve(),
        // YoutubeEmbeddedthirteen(),
        // YoutubeEmbeddeddfourteen(),
        // YoutubeEmbeddedfifteen(),
        // YoutubeEmbeddeddsixteen(),
        // YoutubeEmbeddeddseventeen(),
        // YoutubeEmbeddeddeighteen(),
        // YoutubeEmbeddeddnineteen(),
        // YoutubeEmbeddedtwenty(),
        // YoutubeEmbeddedmulti(),
        YoutubeEmbeddedend(),
      ],
    );
  }
}

// end WORD_WEB