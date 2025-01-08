import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryangle extends StatefulWidget {
  const EnglishEntryangle({super.key});

  @override
  State<EnglishEntryangle> createState() => _EnglishEntryangleState();
}

class _EnglishEntryangleState extends State<EnglishEntryangle> {
  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    flutterTts.setLanguage("en-US");
    fetchSentences();
  }

  FlutterTts flutterTts = FlutterTts();

  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(textToSpeak);

    setState(() {
      isSpeaking = true;
    });
  }

  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
Noun: angle (derived forms: angles)
1. The space between two lines or planes that intersect; the inclination of one line to another; measured in degrees or radians
 
2. A biased way of looking at or presenting something (= slant)

- Verb: angle (derived forms: angling, angles, angled)
1. Move or proceed at an angle
"he angled his way into the room"
 
2. To incline or bend from a vertical position (= lean, tilt, tip, slant)
 
3. Seek indirectly (= fish)
"angle for compliments";
 
4. Fish with a hook
 
5. Present with a bias (= slant, weight)
 
6. Place (something) at an angle
"angle the mirror to see better"

- Noun: Angle (derived forms: Angles)
1. A member of a Germanic people who conquered England and merged with the Saxons and Jutes to become Anglo-Saxons
""",
  );
// 188888880002200

  final String keyword = "angle";
  List<Map<String, dynamic>> filteredSentences = [];

  Future<void> fetchSentences() async {
    final sentences =
        await DatabaseUtils.instance.fetchFilteredSentences(keyword: keyword);
    setState(() {
      filteredSentences = sentences;
    });
  }

  void speakEnglish(String text, {String? languageCode}) async {
    await flutterTts.setLanguage(languageCode ?? "en-GB");
    await flutterTts.speak(text);
  }

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""angle""");
  }

  Future<void> speakangle11480(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The interior angles of a square are right angles or angles of 90 degrees.");
  }

  Future<void> speakangle46055(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It's a modern building, all brick and glass and sharp angles.");
  }

  Future<void> speakangle45906(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She adjusted the angle of the legs to make the table stand more firmly.");
  }

  Future<void> speakangle440(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Venus and the Earth orbit the Sun at a slight angle to each other.");
  }

  Future<void> speakangle450(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The painting changes slightly when seen from different angles.");
  }

  Future<void> speakangle905(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("You can look at the issue from many different angles.");
  }

  Future<void> speakangle225870(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He angled his chair so that he could sit and watch her.");
  }

  Future<void> speakangle5401(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The programme is angled towards younger viewers.");
  }

  Future<void> speakangle5580(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("On weekends, they often go angling by the lake.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 's6Mo7YNAmcs';
    const double startSecondsend = 285;
    const String videoIdone = 'lFlu60qs7_4';
    const double startSecondsone = 1534;
    const String videoIdtwo = 'HaHLqQawrqQ';
    const double startSecondstwo = 4323;
    const String videoIdthree = 'ojjzXyQCzso';
    const double startSecondsthree = 197;
    const String videoIdfour = 'krtf-v19TJg';
    const double startSecondsfour = 757;
    const String videoIdfive = 'bAdlDU0urMc';
    const double startSecondsfive = 62;
    // final String _videoId = 'HSn57YVDvHg';
    // final double _startSeconds = 12;
    // final String _videoId = 'YtTGZzGsLpI';
    // final double _startSeconds = 4;
    // final String _videoId = 'FHJ3CMWnVxY';
    // final double _startSeconds = 30;
    // final String _videoId = 'dJOz8SYbN28';
    // final double _startSeconds = 135;
    // final String _videoId = '7j5ul4XBjAI';
    // final double _startSeconds = 189;
    // final String _videoId = 'lex6USTugUU';
    // final double _startSeconds = 140;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """angle""",
                      // alsoEnglishWord: "also: angle",
                      britshText: """IpaUK: /ˈæŋɡl/""",
                      americanText: """IpaUS: /ˈæŋɡl/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const CustomTabBarNew(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    SentencesIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              SingleChildScrollView(
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
              ),
              SingleChildScrollView(
                child: CustomColumnWidget(
                  children: [
                    const KurdishVocabulary(text: """
کوردی: گۆشە، سووچ، کونجیک، موور، قولینچک، گوونیا، بۆچوون، ڕوانگە، دید و بۆچوون، نێرین، دیتن
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) گۆشە؛ بۆشایی نێوان دوو ھێڵ لەو خاڵەی بە یەکدی دەگەن"""),
                    SentencesRow(
                      englishText:
                          "The interior angles of a square are right angles or angles of 90 degrees.",
                      kurdishText:
                          "گۆشەکانی ناوەوەی چوارگۆشەیەک تەواون یان گۆشەی ٩٠ پلەیین.",
                      onPressedBritish: () => speakangle11480("en-GB"),
                      onPressedAmerican: () => speakangle11480("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) سووچەکانی ناوەوە یان دەرەوەی شتێک"""),
                    SentencesRow(
                      englishText:
                          "It's a modern building, all brick and glass and sharp angles.",
                      kurdishText:
                          "بینایەکی سەردەمیانەیە، ھەموو خشت و شووشە و گۆشەی تیژە.",
                      onPressedBritish: () => speakangle46055("en-GB"),
                      onPressedAmerican: () => speakangle46055("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) ئاراستەی شتێک کە نە بەرەو سەرەوە یان خوارەوە، نە بەرەو ڕاست یان چەپە"""),
                    SentencesRow(
                      englishText:
                          "She adjusted the angle of the legs to make the table stand more firmly.",
                      kurdishText:
                          "ئاراستەی لاقەکانی ڕێکخست بۆ ئەوەی مێزەکە قایمتر بوەستێ.",
                      onPressedBritish: () => speakangle45906("en-GB"),
                      onPressedAmerican: () => speakangle45906("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "Venus and the Earth orbit the Sun at a slight angle to each other.",
                      kurdishText:
                          "زووھرە و زەوی بەدەوری خۆردا دەسووڕێنەوە بە ئاراستەیەک کەمێک بەلای یەکتردا.",
                      onPressedBritish: () => speakangle440("en-GB"),
                      onPressedAmerican: () => speakangle440("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) گۆشەنیگا؛ شوێنی سەیرکردنی شتێک"""),
                    SentencesRow(
                      englishText:
                          "The painting changes slightly when seen from different angles.",
                      kurdishText:
                          "تابلۆکە کەمێک دەگۆڕێت کە لە گۆشەنیگای دیکەوە سەیردەکرێت.",
                      onPressedBritish: () => speakangle450("en-GB"),
                      onPressedAmerican: () => speakangle450("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (ناو) گۆشەنیگا؛ شێوازی ڕوانین یان بیرکردنەوە لە شتێک"""),
                    SentencesRow(
                      englishText:
                          "You can look at the issue from many different angles.",
                      kurdishText:
                          "بابەتەکە دەتوانرێت لە زۆر گۆشەنیگای جیاوازەوە سەیربکرێت.",
                      onPressedBritish: () => speakangle905("en-GB"),
                      onPressedAmerican: () => speakangle905("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (کردار) دانانی شتێک بەشێوەیەک کە ڕاستەوخۆ ڕووی لە شتێک نییە"""),
                    SentencesRow(
                      englishText:
                          "He angled his chair so that he could sit and watch her.",
                      kurdishText:
                          "کورسییەکەی بەلاداخست بۆ ئەوەی دابنیشێت و سەیری بکات.",
                      onPressedBritish: () => speakangle225870("en-GB"),
                      onPressedAmerican: () => speakangle225870("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٧. (کردار) پێشکەشکردنی زانیاری یان ڕاپۆرتێک بە شێوازێک یان بۆ کەسانێکی دیاریکراو"""),
                    SentencesRow(
                      englishText:
                          "The programme is angled towards younger viewers.",
                      kurdishText: "پڕۆگرامەکە بۆ بیسەرانی گەنجە.",
                      onPressedBritish: () => speakangle5401("en-GB"),
                      onPressedAmerican: () => speakangle5401("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٨. (کردار) ماسیگرتن بە قولاب"""),
                    SentencesRow(
                      englishText:
                          "On weekends, they often go angling by the lake.",
                      kurdishText:
                          "لە ڕۆژانی کۆتایی ھەفتە دەچن بۆ ماسیگرتن لە دەریاچەکە.",
                      onPressedBritish: () => speakangle5580("en-GB"),
                      onPressedAmerican: () => speakangle5580("en-US"),
                    ),
                    // const DividerSentences(),
                    // const DividerDefinition(),
                  ],
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  if (filteredSentences.isEmpty) {
                    return const NoSentencesFromDatabase();
                  } else {
                    return ListView.builder(
                      itemCount: filteredSentences.length,
                      itemBuilder: (context, index) {
                        final sentence = filteredSentences[index];
                        final showDivider = filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1;
                        return CustomSentenceWidget(
                          englishText: sentence['english'].toString(),
                          frenchText: sentence['french'].toString(),
                          keyword: keyword,
                          onPressedBritish: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-GB",
                          ),
                          onPressedAmerican: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-US",
                          ),
                          showDivider: showDivider,
                        );
                      },
                    );
                  }
                },
              ),
              const YouTubeScroller(
                children: [
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdend),
                    videoId: videoIdend,
                    startSeconds: startSecondsend,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdone),
                    videoId: videoIdone,
                    startSeconds: startSecondsone,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdtwo),
                    videoId: videoIdtwo,
                    startSeconds: startSecondstwo,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdthree),
                    videoId: videoIdthree,
                    startSeconds: startSecondsthree,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfour),
                    videoId: videoIdfour,
                    startSeconds: startSecondsfour,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfive),
                    videoId: videoIdfive,
                    startSeconds: startSecondsfive,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// end WORD_WEB


