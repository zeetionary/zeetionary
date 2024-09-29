import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychoice extends StatelessWidget {
  EnglishEntrychoice({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchoice(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("choice");
  }

  Future<void> speakchoices1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We are faced with a difficult choice.");
  }

  Future<void> speakchoices2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I am sure you have made the right choice.");
  }

  Future<void> speakchoices3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There is a wide range of choices open to you.");
  }

  Future<void> speakchoices4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Doctors have to make moral choices every day of their lives.");
  }

  Future<void> speakchoices5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("If I had the choice, I would stop working tomorrow.");
  }

  Future<void> speakchoices6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He had no choice but to leave.");
  }

  Future<void> speakchoices7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He had no choice about that.");
  }

  Future<void> speakchoices8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Your decision leaves me with no choice but to resign.");
  }

  Future<void> speakchoices9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(" I believe in freedom of choice.");
  }

  Future<void> speakchoices10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This colour wasn't my first choice.");
  }

  Future<void> speakchoices11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She's the obvious choice for the job.");
  }

  Future<void> speakchoices12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Hawaii remains a popular choice for winter vacation travel.");
  }

  Future<void> speakchoices13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I don’t like his choice of friends.");
  }

  Future<void> speakchoices14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I think she's a very good choice for captain.");
  }

  Future<void> speakchoices15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Maria defended her choice of name for the child.");
  }

  Future<void> speakchoices16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The menu has a good choice of desserts.");
  }

  Future<void> speakchoices17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I can't decide. There's too much choice.");
  }

  Future<void> speakchoices18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Students have a free choice from a range of subjects.");
  }

  Future<void> speakchoices19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She has a choice between three different universities.");
  }

  Future<void> speakchoices20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The curtains come in a choice of twelve different colours.");
  }

  Future<void> speakchoices21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I had the the most expensive dish on the menu - a choice fillet of fish.");
  }

  Future<void> speakchoices22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She summed up the situation in a few choice phrases.");
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
                            EntryTitle(word: "choice"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃɔɪs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchoice("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃɔɪs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchoice("en-US"),
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
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const KurdishVocabulary(text: """
کوردی: ھەڵبژاردن، سەرپشک‌بوون،	مافی ھەڵبژاردن،	پەسندکردن، دەس‌لەسەردانان، سەرپشکی،	جۆراوجۆری،	ڕێگاچارە،	ھەڵبژاردە، دەستەبژێر، بەرپەسند، پەسندکراو، سەرتۆپ، یەکجارباش،	ورد
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) ھەڵبژاردن لە نێوان دوو ھەڵبژاردە یان زیاتردا"),
                          SentencesRow(
                            englishText:
                                "We are faced with a difficult choice.",
                            kurdishText:
                                "ڕووبەڕووی ھەڵبژاردنی سەخت بووینەتەوە.",
                            onPressedBritish: () => speakchoices1("en-GB"),
                            onPressedAmerican: () => speakchoices1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I am sure you have made the right choice.",
                            kurdishText:
                                "دڵنیام ھەڵبژاردنێکی درووستت ئەنجام‌داوە.",
                            onPressedBritish: () => speakchoices2("en-GB"),
                            onPressedAmerican: () => speakchoices2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "There is a wide range of choices open to you.",
                                    kurdishText:
                                        "ھەڵبژاردەی زیاتر لەبەردەستە بۆت.",
                                    onPressedBritish: () =>
                                        speakchoices3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchoices3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Doctors have to make moral choices every day of their lives.",
                                    kurdishText:
                                        "پزیشکان ھەموو ڕۆژێکی ژیانیان دەبێت ھەڵبژاردنی ئەخلاقی ئەنجام بدەن.",
                                    onPressedBritish: () =>
                                        speakchoices4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchoices4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) مافی ھەڵبژاردن"),
                          SentencesRow(
                            englishText:
                                "If I had the choice, I would stop working tomorrow.",
                            kurdishText:
                                "ئەگەر بمتوانیایە، سبەی وازم لە کارکردن دەھێنا.",
                            onPressedBritish: () => speakchoices5("en-GB"),
                            onPressedAmerican: () => speakchoices5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He had no choice but to leave (= this was the only thing he could do).",
                            kurdishText:
                                "ھیچ ھەڵبژاردەیەکی نەبوو جگە لە ڕۆشتن.",
                            onPressedBritish: () => speakchoices6("en-GB"),
                            onPressedAmerican: () => speakchoices6("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText: "He had no choice about that.",
                                    kurdishText:
                                        "ھیچ ھەڵبژاردەیەکی نەبوو سەبارەت بە ئەوە.",
                                    onPressedBritish: () =>
                                        speakchoices7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchoices7("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Your decision leaves me with no choice but to resign.",
                                    kurdishText:
                                        "بڕیارەکەت ھیچ ھەڵبژاردەیەکم بۆ ناھێڵیتەوە جگە لە دەستلەکارکێشانەوە.",
                                    onPressedBritish: () =>
                                        speakchoices8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchoices8("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        " I believe in freedom of choice.",
                                    kurdishText:
                                        "باوەڕم بە ئازادی ڕادەربڕین ھەیە.",
                                    onPressedBritish: () =>
                                        speakchoices9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchoices9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) کەسێک یان شتێک کە ھەڵبژاردەیەکە"),
                          SentencesRow(
                            englishText: "This colour wasn't my first choice.",
                            kurdishText: "ئەم ڕەنگە یەکەم ھەڵبژاردەم نەبوو.",
                            onPressedBritish: () => speakchoices10("en-GB"),
                            onPressedAmerican: () => speakchoices10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She's the obvious choice for the job.",
                            kurdishText: "ھەڵبژاردەی ئاشکرایە بۆ کارەکە.",
                            onPressedBritish: () => speakchoices11("en-GB"),
                            onPressedAmerican: () => speakchoices11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Hawaii remains a popular choice for winter vacation travel.",
                            kurdishText:
                                "ھاوایی ھەڵبژاردەیەکی باوە بۆ گەشتی پشووی زستانە.",
                            onPressedBritish: () => speakchoices12("en-GB"),
                            onPressedAmerican: () => speakchoices12("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "I don’t like his choice of friends (= the people he chooses as his friends).",
                                    kurdishText:
                                        "حەزم بەوە نییە کێ دەکات بە ھاوڕێی.",
                                    onPressedBritish: () =>
                                        speakchoices13("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchoices13("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "I think she's a very good choice for captain.",
                                    kurdishText:
                                        "پێم‌وایە ھەڵبژاردەیەکی باشە بۆ کاپتنی.",
                                    onPressedBritish: () =>
                                        speakchoices14("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchoices14("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Maria defended her choice of name for the child.",
                                    kurdishText:
                                        "ماریا بەرگری لە ھەڵبژاردەکەی بۆ ناوی منداڵەکە کرد.",
                                    onPressedBritish: () =>
                                        speakchoices15("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchoices15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) ئەو ھەڵبژاردانەی کە بەردەستن"),
                          SentencesRow(
                            englishText:
                                "The menu has a good choice of desserts.",
                            kurdishText:
                                "مێنووەکە ژمارەیەک ھەڵبژاردەی باشی لێیە.",
                            onPressedBritish: () => speakchoices16("en-GB"),
                            onPressedAmerican: () => speakchoices16("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I can't decide. There's too much choice.",
                            kurdishText:
                                "ناتوانم بڕیار بدەم. ھەڵبژاردەی زۆر ھەیە.",
                            onPressedBritish: () => speakchoices17("en-GB"),
                            onPressedAmerican: () => speakchoices17("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Students have a free choice from a range of subjects.",
                                    kurdishText:
                                        "خوێندکاران ھەڵبژاردەی ئازادیان ھەیە لە ژمارەیەک بابەتدا.",
                                    onPressedBritish: () =>
                                        speakchoices18("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchoices18("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She has a choice between three different universities.",
                                    kurdishText:
                                        "ھەڵبژاردەی لە نێوان سێ زانکۆی جیاوازدا ھەبوو.",
                                    onPressedBritish: () =>
                                        speakchoices19("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchoices19("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The curtains come in a choice of twelve different colours.",
                                    kurdishText:
                                        "پەردەکان ١٥ ڕەنگی جیاوازیان ھەیە.",
                                    onPressedBritish: () =>
                                        speakchoices20("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchoices20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) بە کوالێتی زۆر باش (لە ئەمریکا واتە زۆر باش بەڵام نەک باشترین)"),
                          SentencesRow(
                            englishText:
                                "I had the the most expensive dish on the menu - a choice fillet of fish.",
                            kurdishText:
                                "گرانترین خواردنی سەر مێنووەکەم خوارد، پارچەیەک گۆشتی خاوی زۆر باشی خاو.",
                            onPressedBritish: () => speakchoices21("en-GB"),
                            onPressedAmerican: () => speakchoices21("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ھاوەڵناو) زمانی توندی قسەکردن کە بە ئەنقەستە بۆ ئەوەی کاریگەری ھەبێت"),
                          SentencesRow(
                            englishText:
                                "She summed up the situation in a few choice phrases.",
                            kurdishText:
                                "دۆخەکەی بە چەند زاراوەیەکی زبر کورتکردەوە.",
                            onPressedBritish: () => speakchoices22("en-GB"),
                            onPressedAmerican: () => speakchoices22("en-US"),
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
                        YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(), //
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: choice (derived forms: choices)
1. The person or thing chosen or selected (= pick, selection)
"he was my choice for mayor";
 
2. The act of choosing or selecting (= selection, option, pick)
"your choice of colours was unfortunate";
 
3. One of a number of things from which only one can be chosen (= option, alternative)
"my only choice is to refuse";

- Adjective: choice (derived forms: choicer, choicest)
1. Of superior grade (= prime, prize, quality, select)
"choice wines";
 
2. Appealing to refined taste
"choice wine"
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'jHEPQpSKdbg';
  final double _startSeconds = 15;

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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'U860z3rsmls';
  final double _startSeconds = 23;

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

  final String _videoId = '-rxnEcbyt2g';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'KEU7p8KlSVY';
  final double _startSeconds = 27;

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

  final String _videoId = 'zmEv7vTOQGE';
  final double _startSeconds = 3566;

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

  final String _videoId = 's1SaD-gSZO4';
  final double _startSeconds = 200;

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

  final String _videoId = 'VwPGtn9qJZ4';
  final double _startSeconds = 393;

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

  final String _videoId = 'b0yONlMjxjs';
  final double _startSeconds = 64;

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

// end WORD_WEB
