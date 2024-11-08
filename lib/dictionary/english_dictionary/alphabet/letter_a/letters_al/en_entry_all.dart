import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryall extends StatefulWidget {
  const EnglishEntryall({super.key});

  @override
  State<EnglishEntryall> createState() => _EnglishEntryallState();
}

class _EnglishEntryallState extends State<EnglishEntryall> {
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
- Adjective: all 
1. (quantifier) used with either mass or count nouns to indicate the whole number or amount of or every one of a class
"we sat up all night"; "ate all the food"; "all men are mortal"; "all parties are welcome"
 
2. Completely given to or absorbed by
"became all attention"

- Adverb: all 
1. To a complete degree or to the full or entire extent; Completely or entirely (= wholly, entirely, completely, totally, altogether, whole, right, totes [informal])
"the directions were all wrong";

- Pronoun: all 
1. All people (= everybody, everyone, all and sundry, one and all)
 
2. All things; the whole quantity or number (= everything)
""",
  );
// 188888880002200

  final String keyword = "all";
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
    await flutterTts.speak("""all""");
  }

  Future<void> speakall25344(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("All horses are animals, but not all animals are horses.");
  }

  Future<void> speakall3481(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("All my plants have died.");
  }

  Future<void> speakall3441(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He has lost all his money.");
  }

  Future<void> speakall39521(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He's worked hard all year.");
  }

  Future<void> speakall36284(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("In all honesty, I can't agree.");
  }

  Future<void> speakall48517(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The magazine was all advertisements.");
  }

  Future<void> speakall35288(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They've eaten all of it.");
  }

  Future<void> speakall32581(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("All of them enjoyed the party.");
  }

  Future<void> speakall24163(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It was all that I had.");
  }

  Future<void> speakall1246(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The coffee went all over my skirt.");
  }

  Future<void> speakall38955(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Now don't get all upset about it.");
  }

  Future<void> speakall3582(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The end of the trip came all too soon.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'XG8b7WhANNA';
    const double startSecondsend = 163;
    const String videoIdone = 'OENj7Z-afhY';
    const double startSecondsone = 1;
    const String videoIdtwo = '-6vzjjIrRK8';
    const double startSecondstwo = 68;
    const String videoIdthree = 'Wiy8icSKKQs';
    const double startSecondsthree = 335;
    const String videoIdfour = 'D244b4E3yuA';
    const double startSecondsfour = 63;
    const String videoIdfive = 'TxFR_7KsTDA';
    const double startSecondsfive = 25;
    // final String _videoId = 'WHSElo9Jghw';
    // final double _startSeconds = 12;
    // final String _videoId = 'uK1Kh7sooGE';
    // final double _startSeconds = 25;
    // final String _videoId = '1nYD3nu_F8s';
    // final double _startSeconds = 68;
    // final String _videoId = '0Kr4JO9591c';
    // final double _startSeconds = 90;
    // final String _videoId = 'PGqZkOveLb8';
    // final double _startSeconds = 32;
    // final String _videoId = 'pNyzWagLcJE';
    // final double _startSeconds = 20;

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
                      word: """all""",
                      // alsoEnglishWord: "also: all",
                      britshText: """IpaUK: /ɔːl/""",
                      americanText: """IpaUS: /ɔːl/""",
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
کوردی: ھەموو، گشت، پاکی، تەواو، سەرتاسەر، بەتەواوەتی، یەک‌سەرە، ھەر یەک لە، زۆرترینی، زۆرینەی، زۆر، یەکجار، ھەمووجێیێ، پڕلە، ھەرچی
"""),
                    const DefinitionKurdish(text: """١. (پێشناو) ھەموو"""),
                    SentencesRow(
                      englishText:
                          "All horses are animals, but not all animals are horses.",
                      kurdishText:
                          "ھەموو ئەسپێک ئاژەڵە، بەڵام ھەموو ئاژەڵێک ئەسپ نییە.",
                      onPressedBritish: () => speakall25344("en-GB"),
                      onPressedAmerican: () =>
                          speakall25344(// REPLACE: all //ɔːl/
                              "en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "All my plants have died.",
                      kurdishText: "ھەموو ڕووەکەکانم وشکیان کردووە.",
                      onPressedBritish: () => speakall3481("en-GB"),
                      onPressedAmerican: () =>
                          speakall3481(// REPLACE: all //ɔːl/
                              "en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "He has lost all his money.",
                      kurdishText: "ھەموو پارەکەی لەدەستداوە.",
                      onPressedBritish: () => speakall3441("en-GB"),
                      onPressedAmerican: () =>
                          speakall3441(// REPLACE: all //ɔːl/
                              "en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (پێشناو) تەواوی ماوەیەک"""),
                    SentencesRow(
                      englishText: "He's worked hard all year.",
                      kurdishText: "تەواوی ساڵەکە بە سەختی کاری کردووە.",
                      onPressedBritish: () => speakall39521("en-GB"),
                      onPressedAmerican: () =>
                          speakall39521(// REPLACE: all //ɔːl/
                              "en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (پێشناو) تا بەرزترین ئاست"""),
                    SentencesRow(
                      englishText:
                          "In all honesty (= being as honest as I can), I can't agree.",
                      kurdishText: "تەواو سەرڕاست بم، ناتوانم ھاوڕابم.",
                      onPressedBritish: () => speakall36284("en-GB"),
                      onPressedAmerican: () =>
                          speakall36284(// REPLACE: all //ɔːl/
                              "en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (پێشناو) پێکھاتوو تەنھا لە یەک شت"""),
                    SentencesRow(
                      englishText: "The magazine was all advertisements.",
                      kurdishText: "گۆڤارەکە ھەموو ڕیکلام بوو.",
                      onPressedBritish: () => speakall48517("en-GB"),
                      onPressedAmerican: () =>
                          speakall48517(// REPLACE: all //ɔːl/
                              "en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (جێناو) ھەموو"""),
                    SentencesRow(
                      englishText: "They've eaten all of it.",
                      kurdishText: "ھەموویان خواردووە.",
                      onPressedBritish: () => speakall35288("en-GB"),
                      onPressedAmerican: () =>
                          speakall35288(// REPLACE: all //ɔːl/
                              "en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "All of them enjoyed the party.",
                      kurdishText: "ھەموویان چێژیان لە ئاھەنگەکە بینی.",
                      onPressedBritish: () => speakall32581("en-GB"),
                      onPressedAmerican: () =>
                          speakall32581(// REPLACE: all //ɔːl/
                              "en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (جێناو) تەنھا شت، ھەموو ئەوەی ھەتە"""),
                    SentencesRow(
                      englishText: "It was all that I had.",
                      kurdishText: "ئەوە ھەموو ئەوە بوو ھەمبوو.",
                      onPressedBritish: () => speakall24163("en-GB"),
                      onPressedAmerican: () =>
                          speakall24163(// REPLACE: all //ɔːl/
                              "en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٧. (ھاوەڵکار) بە تەواوی"""),
                    SentencesRow(
                      englishText: "The coffee went all over my skirt.",
                      kurdishText: "قاوەکە ڕژا بە ھەموو تەنوورەکەمدا.",
                      onPressedBritish: () => speakall1246("en-GB"),
                      onPressedAmerican: () =>
                          speakall1246(// REPLACE: all //ɔːl/
                              "en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٨. (ھاوەڵکار) زۆر"""),
                    SentencesRow(
                      englishText: "Now don't get all upset about it.",
                      kurdishText: "زۆر پەست مەبە لەسەری.",
                      onPressedBritish: () => speakall38955("en-GB"),
                      onPressedAmerican: () =>
                          speakall38955(// REPLACE: all //ɔːl/
                              "en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٩. (ھاوەڵکار) زیاتر لەوەی حەزی پێیە"""),
                    SentencesRow(
                      englishText: "The end of the trip came all too soon.",
                      kurdishText: "کۆتایی گەشتەکە زۆر زوو ھات.",
                      onPressedBritish: () => speakall3582("en-GB"),
                      onPressedAmerican: () =>
                          speakall3582(// REPLACE: all //ɔːl/
                              "en-US"),
                    ),
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

