import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycycle extends StatefulWidget {
  const EnglishEntrycycle({super.key});

  @override
  State<EnglishEntrycycle> createState() => _EnglishEntrycycleState();
}

class _EnglishEntrycycleState extends State<EnglishEntrycycle> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                automaticallyImplyLeading: false,
                bottom: TabBar(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              const EnglishMeaning(),
              KurdishMeaning(),
              const YoutubeVideos(),
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
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              // TitleOfEntryAlso(),
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
    return const EntryTitle(word: "cycle");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cycle");
  }
}

class IpaUK extends StatelessWidget {
  const IpaUK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUK(),
        const IpaUKtext(),
      ],
    );
  }
}

class IpaUKtext extends StatelessWidget {
  const IpaUKtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUK: /ˈsaɪkl/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcycle(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cycle"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcycle("en-GB"),
    );
  }
}

class IpaUS extends StatelessWidget {
  const IpaUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUS(),
        const IpaUStext(),
      ],
    );
  }
}

class IpaUStext extends StatelessWidget {
  const IpaUStext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUS: /ˈsaɪkl/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcycle(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cycle"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcycle("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcycles1(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was riding his cycle home when he was hit by a lorry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcycles2(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We went for a cycle ride on Sunday."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcycles3(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Lots of people arrived in cars or on cycles."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcycles4(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They completed their journey by cycle."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcycles5(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Every business goes through cycles."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcycles6(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The argument is that reprisals perpetuate the cycle of violence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcycles7(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Life is a natural cycle, just like the changing seasons."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcycles8(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The European market is going through an economic cycle."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcycles9(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This cycle of events continually repeats itself."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcycles10(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "To complete the cycle, oxygen is necessary."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcycles11(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She waited for the washing machine's spin cycle to finish before transferring the clothes to the dryer."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcycles12(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I usually cycle home through the park."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcycles13(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He cycles ten miles to and from work every day."); // DOPSUM: CHANGE TEXT
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
کوردی: سوور، خول، چەرخ، گەڕ، سووڕ یان چەرخی بە نۆرە،	کۆمەڵە، زنجیرە،	دووپێچکە، ڕەوڕەوە، چەرخ،	مۆتۆر (سیکلێت)،	(ئەستێرەوانی) سووڕگە، خولگە، خولگە یان بازنەیێکی وادانراوی ئاسمانی،	چەرخ و سەردەمێکی دوور و درێژ
"""),
          const DefinitionKurdish(text: "١. (ناو) پاسکیل یان ماتۆڕ"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He was riding his cycle home when he was hit by a lorry."),
                    ExampleSentenceKurdish(
                        text: "دووچەرخەکەی دەڕانی بۆ ماڵەوە کە لۆرییەک لێیدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "cycle", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcycles1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcycles1("en-US"),
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
                        text: "We went for a cycle ride on Sunday."),
                    ExampleSentenceKurdish(
                        text: "چووین بۆ دووچەرخە ڕانینێک لە ڕۆژی یەکشەممەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcycles2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcycles2("en-US"),
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
                        text: "Lots of people arrived in cars or on cycles."),
                    ExampleSentenceKurdish(
                        text:
                            "ژمارەیەکی زۆر خەڵکی گەشتن بە ئۆتۆمبێل یان دووچەرخە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcycles3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcycles3("en-US"),
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
                        text: "They completed their journey by cycle."),
                    ExampleSentenceKurdish(
                        text: "گەشتەکەیان بە دووچەرخە تەواو کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcycles4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcycles4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) دووبارەکردنەوەی زنجیرەیەک ڕووداو بە ژمارەیەکی زۆر و ھەمان ڕیزبەندی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Every business goes through cycles."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەموو بازرگانییەک بە ژمارەیەک سووڕدا تێدەپەڕێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcycles5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcycles5("en-US"),
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
                            "The argument is that reprisals perpetuate the cycle of violence."),
                    ExampleSentenceKurdish(
                        text:
                            "مشتومڕەکە ئەوەیە تۆڵەکردنەوە بەردەوامی دەدات بە سووڕی توندتوتیژی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcycles6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcycles6("en-US"),
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
                            "Life is a natural cycle, just like the changing seasons."),
                    ExampleSentenceKurdish(
                        text:
                            "ژیان سووڕێکی سرووشتییە، ھەر وەکو گۆڕانی وەرزەکان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcycles7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcycles7("en-US"),
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
                            "The European market is going through an economic cycle."),
                    ExampleSentenceKurdish(
                        text: "بازاڕی ئەورووپا بە چەرخی ئابووریدا تێدەپەڕێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcycles8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcycles8("en-US"),
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
                            "This cycle of events continually repeats itself."),
                    ExampleSentenceKurdish(
                        text:
                            "چەرخی ڕووداوەکان بەردەوام خۆیان دووبارە دەکەنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcycles9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcycles9("en-US"),
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
                        text: "To complete the cycle, oxygen is necessary."),
                    ExampleSentenceKurdish(
                        text: "بۆ تەواوکردنی سووڕەکە، ئۆکسجین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcycles10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcycles10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) زنجیرەیەکی تەواو"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She waited for the washing machine's spin cycle to finish before transferring the clothes to the dryer."),
                    ExampleSentenceKurdish(
                        text:
                            "چاوەڕێی تەواوبوونی خولانەوەی خلشۆرەکە بوو کە تەواو بێت بۆ ئەوەی جلەکان بگوازێتەوە بۆ وشککەرەوەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcycles11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcycles11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) ڕانینی پاسکیل"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I usually cycle home through the park."),
                    ExampleSentenceKurdish(
                        text: "زۆرجار بە پارکەکەدا پاسکیل دەڕانمە ماڵەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcycles12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcycles12("en-US"),
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
                            "He cycles ten miles to and from work every day."),
                    ExampleSentenceKurdish(
                        text: "ھەموو ڕۆژێک ١٠ میل پاسکیل دەڕانێت بۆ سەر کار."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcycles13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcycles13("en-US"),
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
- Noun: cycle (derived forms: cycles)
1. An interval during which a recurring sequence of events occurs (= rhythm, round)
"the never-ending cycle of the seasons";
 
2. A series of poems or songs on the same theme
"Schubert's song cycles"
 
3. A periodically repeated sequence of events
"a cycle of reprisal and retaliation"
 
4. The unit of frequency; one hertz has a periodic interval of one second (named for Heinrich Rudolph Hertz) (= hertz, Hz, cycle per second, cycles/second, cps, cycles per second)
 
5. A single complete execution of a periodically repeated phenomenon (= oscillation)
"a year constitutes a cycle of the seasons";
 
6. A wheeled vehicle that has two wheels and is moved by foot pedals (= bicycle, bike)

- Verb: cycle (derived forms: cycling, cycles, cycled)
1. Cause to go through a recurring sequence
"cycle the laundry in this washing program"
 
2. Pass through a cycle
"This machine automatically cycles"
 
3. Ride a motorcycle (= motorbike, motorcycle)
 
4. Ride a bicycle (= bicycle, bike, pedal, wheel)
 
5. Recur in repeating sequences
 
6. (electronics) turn the power off and back on
"Avoid cycling the device unnecessarily"
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
    videoId: 'dtp6b76pMak',
    startSeconds: 563,
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
    videoId: 'bHIhgxav9LY',
    startSeconds: 552,
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
    videoId: 'SrDEtSlqJC4',
    startSeconds: 232,
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
    videoId: 'wir7jmefyec',
    startSeconds: 474,
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
    startSeconds: 989,
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
    videoId: 'T48_SrFCdaQ',
    startSeconds: 258,
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
    videoId: '1j_k5WCFShQ',
    startSeconds: 286,
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