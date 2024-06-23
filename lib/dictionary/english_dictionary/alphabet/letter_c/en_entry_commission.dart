import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycommission extends StatelessWidget {
// blank divider
  EnglishEntrycommission({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcommission(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("commission");
  }

  Future<void> speakcommissions1(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The commission is expected to report its findings next month.");
  }

  Future<void> speakcommissions2(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The election commission found that neither candidate received enough votes to avoid a run-off.");
  }

  Future<void> speakcommissions3(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The defendant will be brought to trial before a military commission.");
  }

  Future<void> speakcommissions4(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was also a member of the commission on religious education.");
  }

  Future<void> speakcommissions5(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government appointed an independent commission to investigate the causes of the disaster.");
  }

  Future<void> speakcommissions6(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government has set up a joint commission to consider the problem.");
  }

  Future<void> speakcommissions7(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You get a 10 per cent commission on everything you sell.");
  }

  Future<void> speakcommissions8(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He earned £2 000 in commission last month.");
  }

  Future<void> speakcommissions9(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "1 per cent commission is charged for exchanging foreign currency.");
  }

  Future<void> speakcommissions10(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Eventually she agreed to accept the commission.");
  }

  Future<void> speakcommissions11(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He received a commission to design the new parliament building.");
  }

  Future<void> speakcommissions12(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He resigned his commission when he got married.");
  }

  Future<void> speakcommissions13(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She has been commissioned to write a new national anthem.");
  }

  Future<void> speakcommissions14(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The king commissioned portraits from foreign artists.");
  }

  Future<void> speakcommissions15(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He has just been commissioned (as a) pilot officer.");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                            EntryTitle(word: "commission"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈmɪʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcommission("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈmɪʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcommission("en-US"),
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
                          const KurdishVocabulary(text: """
کوردی: پێ‌سپاردن،	ئەرک، کار، پەیور، بەڵێنی، دەربەندی،	کار پێ‌سپاردن، ڕاسپاردەیی، ڕاسپێری، فەرمانبەری،	بریکاری، نوێنەرایەتی،	بەرپرسایەتی، دەسەڵات،	لیژنە، لێژنە،	دەڵاڵی، دەڵاڵانە، کارانە، دەسبایی، دەس‌بوھا، کۆمیسیۆن، کۆمسیۆن،	(گوناھـ)کردن، دەس‌تیابوون،	بڕیار، دەستوور، فەرمان،	پۆست یا پلەوپایەی سەربازی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) گرووپێکی فەرمی لە خەڵک کە ئەرکی کۆنترۆڵی شتێک یان دۆزینەوە لەسەر شتێکیان پێدراوە، بەتایبەتی لەلایەن حکومەتەوە "),
                          SentencesRow(
                            englishText:
                                "The commission is expected to report its findings next month.",
                            kurdishText:
                                "کۆمسیۆنەکە چاوەڕێ دەکرێت مانگی داھاتوو دۆزینەوەکانی ئاشکرا بکات.", // commission",
                            onPressedBritish: () => speakcommissions1("en-GB"),
                            onPressedAmerican: () => speakcommissions1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The election commission found that neither candidate received enough votes to avoid a run-off.",
                            kurdishText:
                                "کۆمسیۆنی ھەڵبژاردنەکە دۆزییەوە ھیچ یەک لە کاندیدەکان دەنگی پێویستییان بەدەستنەھێنابوو بۆ دوورکەوتنەوە لە ڕووبەڕووبوونەوەی دووەم.",
                            onPressedBritish: () => speakcommissions2("en-GB"),
                            onPressedAmerican: () => speakcommissions2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          children: [
                                            ExampleSentenceEnglish(
                                                text:
                                                    "The defendant will be brought to trial before a military commission."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "گومانلێ‌کراوەکە ھێنرایە پێش کۆمسیۆنێکی سەربازی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommissions3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommissions3("en-US"),
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
                                                    "She was also a member of the commission on religious education."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەروەھا ئەندانی کۆمسیۆنی پەروەردەی ئایینی بوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommissions4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommissions4("en-US"),
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
                                                    "The government appointed an independent commission to investigate the causes of the disaster."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "حکومەت کۆمسیۆنێکی سەربەخۆی دیاریکرد بۆ لێکۆڵینەوە لە ھۆکاری ڕووداوەکە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommissions5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommissions5("en-US"),
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
                                                    "The government has set up a joint commission to consider the problem."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "حکومەت کۆمسیۆنی ھاوبەشێ پێکھێناوە بۆ لێکۆڵینەوە لە کارەساتەکە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommissions6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommissions6("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ڕێژەیەک پارە کە دەدرێت بە کەسێک بۆ فرۆشتنی کەلوپەل، و زیاد دەکات بەپێی ئەو ڕێژەیەی کە دەیفرۆشێت"),
                          SentencesRow(
                            englishText:
                                "You get a 10 per cent commission on everything you sell.",
                            kurdishText:
                                "١٠ لە سەدی دەڵاڵانە وەردەگریت بۆ ھەر شتێک کە دەیفرۆشیت.",
                            onPressedBritish: () => speakcommissions7("en-GB"),
                            onPressedAmerican: () => speakcommissions7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He earned £2 000 in commission last month.",
                            kurdishText:
                                "مانگی ڕابردوو ٢٠٠٠ پاوەندی بە دەڵاڵانە بەدەستھێنا.",
                            onPressedBritish: () => speakcommissions8("en-GB"),
                            onPressedAmerican: () => speakcommissions8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) بڕە پارەیەک کە داوا دەکرێت لەلایەن بانکێک، ھتد بۆ خزمەتگوزارییەک"),
                          SentencesRow(
                            englishText:
                                "1 per cent commission is charged for exchanging foreign currency.",
                            kurdishText:
                                "١ لە سەدی کارانە دەسەندرێت بۆ گۆڕینەوەی دراوی بیانی.",
                            onPressedBritish: () => speakcommissions9("en-GB"),
                            onPressedAmerican: () => speakcommissions9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) داوایەکی فەرمی لە کەسێک بۆ دیزاینێک یان ئەنجامدانی کارێکی وەک بینایەک یان تابلۆیەک"),
                          SentencesRow(
                            englishText:
                                "Eventually she agreed to accept the commission.",
                            kurdishText:
                                "لە کۆتاییدا ڕازی بوو بە پەسەندکردنی داواکە.",
                            onPressedBritish: () => speakcommissions10("en-GB"),
                            onPressedAmerican: () =>
                                speakcommissions10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He received a commission to design the new parliament building.",
                            kurdishText:
                                "داوایەکی پێگەشت بۆ دیزاینی بینا تازەکەی پەرلەمان.",
                            onPressedBritish: () => speakcommissions11("en-GB"),
                            onPressedAmerican: () =>
                                speakcommissions11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) پێگەی ئەفسەری لە سوپادا، زۆرجار بە پلەی ناوەند یان باڵاتر"),
                          SentencesRow(
                            englishText:
                                "He resigned his commission when he got married.",
                            kurdishText:
                                "وازی لە ئەفسەرێتییەکەی ھێنا کە ھاوسەرگیری کرد.",
                            onPressedBritish: () => speakcommissions12("en-GB"),
                            onPressedAmerican: () =>
                                speakcommissions12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) بە فەرمی داواکردن لە کەسێک کە شتێک بنووسێت، درووستی بکات، یان شتێکت بۆ بکات"),
                          SentencesRow(
                            englishText:
                                "She has been commissioned to write a new national anthem.",
                            kurdishText:
                                "داوای لێکراوە ئەنزیمێکی تازەی نیشتیمانی بنووسێت.",
                            onPressedBritish: () => speakcommissions13("en-GB"),
                            onPressedAmerican: () =>
                                speakcommissions13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The king commissioned portraits from foreign artists.",
                            kurdishText:
                                "پاشا داوای پۆرترەیتی لە ھونەرمەندە بیانییەکان کرد.",
                            onPressedBritish: () => speakcommissions14("en-GB"),
                            onPressedAmerican: () =>
                                speakcommissions14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) ھەڵبژاردنی کەسێک وەک ئەفسەر"),
                          SentencesRow(
                            englishText:
                                "He has just been commissioned (as a) pilot officer.",
                            kurdishText:
                                "تازەگی وەک ئەفسەرێکی فڕۆکەوان ھەڵبژێردراوە.",
                            onPressedBritish: () => speakcommissions15("en-GB"),
                            onPressedAmerican: () =>
                                speakcommissions15("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
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
                    ),
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
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

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
- Noun: commission (derived forms: commissions)
1. A special group delegated to consider some matter (= committee)
"a commission is a group that keeps minutes and loses hours";
 
2. A fee for services rendered based on a percentage of an amount received, collected or agreed to be paid (as distinguished from a salary)
"he works on commission"
 
3. The act of granting authority to undertake certain functions (= commissioning)
 
4. The state of being in good working order and ready for operation
"put the ships into commission"; "the motor was out of commission"
 
5. A group of representatives or delegates (= deputation, delegation, delegacy, mission)
 
6. A formal statement of a command or injunction to do something (= charge, direction)
"the judge's commission to the jury";
 
7. (military) an official document issued by a government and conferring on the recipient the rank of an officer in the armed forces (= military commission)
 
8. The act of committing a crime (= perpetration, committal)
 
9. A special assignment that is given to a person or group (= mission, charge)
"a confidential commission to London";

- Verb: commission (derived forms: commissions, commissioning, commissioned)
1. Put into commission; equip for service; of ships
 
2. Place an order for
 
3. Charge with a task
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),

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
  const YoutubeEmbeddedend({super.key});

  final String _videoId = '4uiaVXwkdCE';
  final double _startSeconds = 299;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'Vn4SN7lmE_Q';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'ifPPomncomY';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'uYbv-maH8PM';
  final double _startSeconds = 97;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'G0r3GksslRQ';
  final double _startSeconds = 44;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = '1yqMC887haY';
  final double _startSeconds = 123;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '-1TLCOLJ0PE';
  final double _startSeconds = 1097;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

// end WORD_WEB