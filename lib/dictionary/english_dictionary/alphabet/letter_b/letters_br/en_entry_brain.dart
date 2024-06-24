import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "brain" as TYPE and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more.

enum TtsState { playing }

class EnglishEntrybrain extends StatelessWidget {
// blank divider
  EnglishEntrybrain({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbrain(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("brain");
  }

  Future<void> speakbrains1(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The human brain is a complex organ.");
  }

  Future<void> speakbrains2(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My tired brain couldn't cope with such a complex problem.");
  }

  Future<void> speakbrains3(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was found to have sustained a brain injury.");
  }

  Future<void> speakbrains4(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sometimes the doctor will also do a brain scan.");
  }

  Future<void> speakbrains5(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was found to have a blood clot on his brain.");
  }

  Future<void> speakbrains6(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She died of a brain tumour.");
  }

  Future<void> speakbrains7(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She is Britain's youngest female brain surgeon.");
  }

  Future<void> speakbrains8(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The scan apparently showed no damage to the brain.");
  }

  Future<void> speakbrains9(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The local market offered fresh cow brain for sale.");
  }

  Future<void> speakbrains10(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It doesn't take much brain to work out that both stories can't be true.");
  }

  Future<void> speakbrains11(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Teachers spotted that he had a good brain at an early age.");
  }

  Future<void> speakbrains12(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We have the best scientific brains in the country working on this.");
  }

  Future<void> speakbrains13(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's always been the brains of the family.");
  }

  Future<void> speakbrains14(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was the brains behind the robberies.");
  }

  Future<void> speakbrains15(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The accident could have easily brained him.");
  }

  Future<void> speakbrains16(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll brain you if you don't keep quiet.");
  }

  Future<void> speakbrains17(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrains1717");
  }

  Future<void> speakbrains18(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrains1818");
  }

  Future<void> speakbrains19(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrains1919");
  }

  Future<void> speakbrains20(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrains2020");
  }

  Future<void> speakbrains21(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrains2121");
  }

  Future<void> speakbrains22(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrains2222");
  }

  Future<void> speakbrains23(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrains2323");
  }

  Future<void> speakbrains24(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrains2424");
  }

  Future<void> speakbrains25(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrains2525");
  }

  Future<void> speakbrains26(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrains2626");
  }

  Future<void> speakbrains27(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrains2727");
  }

  Future<void> speakbrains28(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrains2828");
  }

  Future<void> speakbrains29(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrains2929");
  }

  Future<void> speakbrains30(String languageCode) async {
    // DOPSUM: CHANGE speakbrain
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbrains3030");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "brain"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /breɪn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbrain("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /breɪn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbrain("en-US"),
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
                  VideoIconForTab(), // 01
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
کوردی: مێشک، مێژەڵاک، مەژی، مێژی، مۆخ، دەماخ، عەقڵ، ئاوەز، ھۆش، تێگەیشتن، مرۆی زیرەک و بەھۆش، بیریار، ھزرڤان، مێشک، مەغز (بۆ خواردن)، ڕێکخەری سەرەکی، زیرەک
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) مێشکی مرۆڤ و ئاژەڵ"),
                          SentencesRow(
                            englishText: "The human brain is a complex organ.",
                            kurdishText: "مێشکی مرۆڤ ئەندامێکی ئاڵۆزە.",
                            onPressedBritish: () => speakbrains1("en-GB"),
                            onPressedAmerican: () => speakbrains1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "My tired brain couldn't cope with such a complex problem.",
                            kurdishText:
                                "مێشکە ماندووەکەم نەیدەتوانی مامەڵە لەگەڵ کێشەیەکی وەھا ئاڵۆز بکات.",
                            onPressedBritish: () => speakbrains2("en-GB"),
                            onPressedAmerican: () => speakbrains2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She was found to have sustained a brain injury.",
                            kurdishText: "زانرا کە مێشکی تووشی گورز بووە.",
                            onPressedBritish: () => speakbrains3("en-GB"),
                            onPressedAmerican: () => speakbrains3("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Sometimes the doctor will also do a brain scan.",
                                    kurdishText:
                                        "ھەندێکجار دکتۆرەکە سکانێکی مێشک دەکات.",
                                    onPressedBritish: () =>
                                        speakbrains4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbrains4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He was found to have a blood clot on his brain.",
                                    kurdishText:
                                        "زانرا کە کڵۆیەک خوێن لە مێشکیدا ھەیە.",
                                    onPressedBritish: () =>
                                        speakbrains5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbrains5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "She died of a brain tumour.",
                                    kurdishText: "بە گرێی مێشک مرد.",
                                    onPressedBritish: () =>
                                        speakbrains6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbrains6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She is Britain's youngest female brain surgeon.",
                                    kurdishText:
                                        "ئەو گەنجترین نەشتەرگەری مێشکە لە بەریتانیادا.",
                                    onPressedBritish: () =>
                                        speakbrains7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbrains7("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The scan apparently showed no damage to the brain.",
                                    kurdishText:
                                        "سکانەکە ھیچ زیانێکی لە مێشکدا پیشان نەدا.",
                                    onPressedBritish: () =>
                                        speakbrains8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbrains8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) مێشکی ئاژەڵێک کە وەک خواردن دەخورێت"),
                          SentencesRow(
                            englishText:
                                "The local market offered fresh cow brain for sale.",
                            kurdishText:
                                "فرۆشگا لۆکاڵییەکە مەغزی تازەی مانگای ھەبوو بۆ فرۆشتن.",
                            onPressedBritish: () => speakbrains9("en-GB"),
                            onPressedAmerican: () => speakbrains9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) توانای بیرکردنەوە بەخێرایی، ژیرانە، و ئاقڵانە"),
                          SentencesRow(
                            englishText:
                                "It doesn't take much brain to work out that both stories can't be true.",
                            kurdishText:
                                "ھێندە بیرکردنەوەی ناوێت کە بزانی ھەردوو چیرۆکەکە ناکرێت ڕاست بن.",
                            onPressedBritish: () => speakbrains10("en-GB"),
                            onPressedAmerican: () => speakbrains10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Teachers spotted that he had a good brain at an early age.",
                            kurdishText:
                                "مامۆستاکان لە تەمەنێکی سەرەتاوە ھەستیان کرد مێشکێکی باشی ھەیە.",
                            onPressedBritish: () => speakbrains11("en-GB"),
                            onPressedAmerican: () => speakbrains11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) کەسێکی زیرەک"),
                          SentencesRow(
                            englishText:
                                "We have the best scientific brains in the country working on this.",
                            kurdishText:
                                "زیرەکترینەکانی زانستمان لە وڵاتەکەدا ھەیە کە کار لەسەر ئەمە دەکەن.",
                            onPressedBritish: () => speakbrains12("en-GB"),
                            onPressedAmerican: () => speakbrains12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) زیرەکترین کەس لەناو کۆمەڵێکدا، کەسی بەرپرس و ڕێکخەر"),
                          SentencesRow(
                            englishText:
                                "He's always been the brains of the family.",
                            kurdishText: "ھەمیشە بلیمەتی ناو خێزانەکەی بوو.",
                            onPressedBritish: () => speakbrains13("en-GB"),
                            onPressedAmerican: () => speakbrains13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He was the brains behind the robberies.",
                            kurdishText: "سەرقافڵەی دزییەکان بوو.",
                            onPressedBritish: () => speakbrains14("en-GB"),
                            onPressedAmerican: () => speakbrains14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) کووشتنی کەسێک یان ئاژەڵێک بە لێدانێکی سەخت لە سەردا"),
                          SentencesRow(
                            englishText:
                                "The accident could have easily brained him.",
                            kurdishText: "ڕووداوەکە بە ئاسانی دەکرا بیکوشتایە.",
                            onPressedBritish: () => speakbrains15("en-GB"),
                            onPressedAmerican: () => speakbrains15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) لێدان لە سەری کەسێک"),
                          SentencesRow(
                            englishText:
                                "I'll brain you if you don't keep quiet.",
                            kurdishText: "دەکێشمە سەرتا گەر بێدەنگ نەبیت.",
                            onPressedBritish: () => speakbrains16("en-GB"),
                            onPressedAmerican: () => speakbrains16("en-US"),
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
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
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
- Noun: brain (derived forms: brains)
1. That part of the central nervous system that includes all the higher nervous centres; enclosed within the skull; continuous with the spinal cord (= encephalon)
 
2. Mental ability (= brainpower, learning ability, mental capacity, mentality, wit, smarts [N. Amer, Austral, informal])
"he's got plenty of brains but no common sense";

3. That which is responsible for one's thoughts, feelings, and conscious brain functions; the seat of the faculty of reason (= mind, head, loaf [Brit, informal])
"his brain wandered";
 
4. Someone who has exceptional intellectual ability and originality (= genius, mastermind, brainiac [N. Amer], Einstein, smart cookie [N. Amer, informal], brainbox [Brit, informal])
 
5. The brain of certain animals used as meat

- Verb: brain (derived forms: braining, brained, brains)
1. Hit on the head
 
2. Kill by smashing someone's skull
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 667;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 275;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'SwQhKFMxmDY';
  final double _startSeconds = 16;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'uT_GcOGEFsk';
  final double _startSeconds = 255;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'WDetHC86Dgo';
  final double _startSeconds = 138;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'NFtQOxjWfaA';
  final double _startSeconds = 217;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'B5Nwv-OtTaM';
  final double _startSeconds = 534;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'SZ3BZBBC-Qc';
  final double _startSeconds = 154;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'VS1BTPIbXso';
  final double _startSeconds = 17;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'GkZtHnD3xGs';
  final double _startSeconds = 611;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'D1zkVBHPh5c';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end

// haʊʊʊʊʊʊʊ4
// end brain
