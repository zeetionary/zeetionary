import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycritical extends StatefulWidget {
  const EnglishEntrycritical({super.key});

  @override
  State<EnglishEntrycritical> createState() => _EnglishEntrycriticalState();
}

class _EnglishEntrycriticalState extends State<EnglishEntrycritical> {
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
              // const TitleOfEntryAlso(),
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
    return const EntryTitle(word: "critical");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: critical");
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
    return const IPAofEnglish(text: "IpaUK: /ˈkrɪtɪkl/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcritical(String languageCode) async {
    // DOPSUM: CHANGE speakcritical
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("critical"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcritical("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈkrɪtɪkl/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcritical(String languageCode) async {
    // DOPSUM: CHANGE speakcritical
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("critical"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcritical("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcriticals1(String languageCode) async {
    // DOPSUM: CHANGE speakcritical
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You should just ignore any critical comments."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcriticals2(String languageCode) async {
    // DOPSUM: CHANGE speakcritical
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The supervisor is always very critical."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcriticals3(String languageCode) async {
    // DOPSUM: CHANGE speakcritical
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Some parents are highly critical of the school."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcriticals4(String languageCode) async {
    // DOPSUM: CHANGE speakcritical
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Industry leaders are working together to address this critical issue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcriticals5(String languageCode) async {
    // DOPSUM: CHANGE speakcritical
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The kidneys play a critical role in overall health."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcriticals6(String languageCode) async {
    // DOPSUM: CHANGE speakcritical
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Reducing levels of carbon dioxide in the atmosphere is of critical importance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcriticals7(String languageCode) async {
    // DOPSUM: CHANGE speakcritical
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Your decision is critical to our future."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcriticals8(String languageCode) async {
    // DOPSUM: CHANGE speakcritical
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "One of the victims of the fire remains in a critical condition."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcriticals9(String languageCode) async {
    // DOPSUM: CHANGE speakcritical
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The first 24 hours after the operation are the most critical."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcriticals10(String languageCode) async {
    // DOPSUM: CHANGE speakcritical
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This is a critical moment in our country's history."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcriticals11(String languageCode) async {
    // DOPSUM: CHANGE speakcritical
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His latest film attracted enthusiastic critical comment from cinema-goers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcriticals12(String languageCode) async {
    // DOPSUM: CHANGE speakcritical
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Critical response to the play was mixed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcriticals13(String languageCode) async {
    // DOPSUM: CHANGE speakcritical
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In her day she never received the critical acclaim she deserved."); // DOPSUM: CHANGE TEXT
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
کوردی: ڕەخنەیی‌یانە، ڕەخنەگرانە،	گرنگ، دیاری‌کەر، بڕیاردەر،	مەترسی‌دار، قەیراناوی، تەنگژەیی، سەخت، شپرزە، شلوق،	بەئیراد، وردەگر، عەیب‌دۆزەرەوە، ڕەخنەگرانە، سەربە ڕەخنەگر،	لێوەشاو بۆ ڕەخنە
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵناو) ڕەخنەگرانە؛ گوتنی شتی خراپی کەسێک یان شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "You should just ignore any critical comments."),
                    ExampleSentenceKurdish(
                        text: "دەبێت ھەموو لێدوانێکی ڕەخنەگرانە پشتگوێ بخەیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "critical", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcriticals1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcriticals1("en-US"),
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
                        text: "The supervisor is always very critical."),
                    ExampleSentenceKurdish(
                        text: "سەرپەرشتیارەکە ھەمیشە ڕەخنەگرانەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcriticals2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcriticals2("en-US"),
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
                            "Some parents are highly critical of the school."),
                    ExampleSentenceKurdish(
                        text: "ھەندێک دایباب زۆر دژبەری قوتابخانەکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcriticals3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcriticals3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ھاوەڵناو) زۆر گرنگ چونکە شتێک لە داھاتوودا کاریگەر دەبێت پێی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Industry leaders are working together to address this critical issue."),
                    ExampleSentenceKurdish(
                        text:
                            "دەستڕۆشتووانی پیشەسازی پێکەوە کاردەکەن بۆ مامەڵە لەگەڵ ئەم کێشە گرنگە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcriticals4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcriticals4("en-US"),
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
                            "The kidneys play a critical role in overall health."),
                    ExampleSentenceKurdish(
                        text:
                            "گورچیلەکان ڕۆڵێکی گرنگ دەبینن لە تەندرووستی گشتیدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcriticals5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcriticals5("en-US"),
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
                            "Reducing levels of carbon dioxide in the atmosphere is of critical importance."),
                    ExampleSentenceKurdish(
                        text:
                            "کەمکردنەوەی ئاستی دووەم ئۆکسیدی کاربۆن لە بەرگەھەوا بایەخی گرنگی ھەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcriticals6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcriticals6("en-US"),
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
                        text: "Your decision is critical to our future."),
                    ExampleSentenceKurdish(
                        text: "بڕیارەکەت بۆ داھاتوومان گرنگە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcriticals7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcriticals7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) گرنگ و نادیار، و بەئەگەرەوە ترسناک بێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "One of the victims of the fire remains in a critical condition."),
                    ExampleSentenceKurdish(
                        text:
                            "یەکێک لە قوربانیانی ئاگرەکە لە دۆخێکی ناجێگیردا ماوەتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcriticals8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcriticals8("en-US"),
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
                            "The first 24 hours after the operation are the most critical."),
                    ExampleSentenceKurdish(
                        text:
                            "یەکەم ٢٤ کاتژمێری دوای نەشتەرگەرییەکە گرنگترینە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcriticals9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcriticals9("en-US"),
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
                            "This is a critical moment in our country's history."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەمە ساتەوەختێکی بایەخدارە لە مێژووی وڵاتەکەماندا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcriticals10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcriticals10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ھاوەڵناو) لەخۆگرتنی بڕیاردان سەبارەت بە لایەنە باش و خراپەکانی کەسێک یان شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "His latest film attracted enthusiastic critical comment from cinema-goers."),
                    ExampleSentenceKurdish(
                        text:
                            "تازەترین فیلمی لێدوانی بەجۆشی ڕەخنەگرانەی لە بینەرانی سینەماوە بە دوای خۆیدا ھێنا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcriticals11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcriticals11("en-US"),
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
                        text: "Critical response to the play was mixed."),
                    ExampleSentenceKurdish(
                        text: "وەڵامی ڕەخنەگرانە بۆ شانۆکە تێکەڵ بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcriticals12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcriticals12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ھاوەڵناو) بەپێی بڕیاری ڕەخنەگران"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "In her day she never received the critical acclaim (= praise from the critics) she deserved."),
                    ExampleSentenceKurdish(
                        text:
                            "لە کاتی خۆیدا ھەرگیز ستایشی ڕەخنەگرانی وەرنەگرت کە شایەنی بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcriticals13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcriticals13("en-US"),
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
- Adjective: critical 
1. Marked by a tendency to find and call attention to errors and flaws
"a critical attitude"
 
2. Urgently needed; absolutely necessary (= vital)
"a critical element of the plan"; "critical medical supplies";
 
3. Forming or having the nature of a turning point or crisis (= decisive, climacteric)
"a critical point in the campaign"; "the critical test";
 
4. Characterized by careful evaluation and judgment
"a critical reading"; "a critical dissertation"; "a critical analysis of Melville's writings"
 
5. Being in or verging on a state of crisis or emergency
"a critical shortage of food"; "a critical illness"; "an illness at the critical stage"
 
6. Of or involving or characteristic of critics or criticism
"critical acclaim"
 
7. (physics) at or of a point at which a property or phenomenon suffers an abrupt change especially having enough mass to sustain a chain reaction
"a critical temperature of water is 100 degrees C--its boiling point at standard atmospheric pressure"; "critical mass"; "go critical"
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
    videoId: 'VrKW58MS12g',
    startSeconds: 669,
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
    videoId: 'FT3ODSg1GFE',
    startSeconds: 180,
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
    videoId: 'AF8d72mA41M',
    startSeconds: 587,
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
    videoId: 'sV6uuMAnJUE',
    startSeconds: 839,
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
    videoId: 'SrDEtSlqJC4',
    startSeconds: 1676,
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
    videoId: 'Zad6v8ZHzdg',
    startSeconds: 914,
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
    videoId: 'ao2Jfm35XeE',
    startSeconds: 807,
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