import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamount extends StatefulWidget {
  const EnglishEntryamount({super.key});

  @override
  State<EnglishEntryamount> createState() => _EnglishEntryamountState();
}

class _EnglishEntryamountState extends State<EnglishEntryamount> {
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
- Noun: amount (derived forms: amounts)
1. A quantity of money (= sum, sum of money, amount of money)
"the amount he had in cash was insufficient"; "he borrowed a large amount of money";
 
2. The relative magnitude of something with reference to a criterion
"an adequate amount of food for four people"
 
3. How much there is or how many there are of something that you can quantify (= measure, quantity)
 
4. A quantity obtained by the addition of a group of numbers (= sum, total)

- Verb: amount (derived forms: amounts, amounting, amounted)
1. Be tantamount or equivalent to
"Her action amounted to a rebellion"
 
2. Add up in number or quantity (= total, number, add up, come)
"The bills amounted to £2,000";

3. To measure up to in kind or quality (= come, add up)
"This idea will never amount to anything";
""",
  );
// 188888880002200

  final String keyword = "amount";
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
    await flutterTts.speak("""amount""");
  }

  Future<void> speakamount4447(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I was amazed at the amount he could eat.");
  }

  Future<void> speakamount49652(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Try to reduce the amount of energy and water you use at home.");
  }

  Future<void> speakamount3522(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Everyone has paid the same amount.");
  }

  Future<void> speakamount5523(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("His earnings are said to amount to £300 000 per annum.");
  }

  Future<void> speakamount5622(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Their actions in the war amount to genocide.");
  }

  Future<void> speakamount514(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You'll never amount to anything.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '1bP5AvsRex4';
    const double startSecondsend = 29;
    const String videoIdone = 'TPKpxno16Cw';
    const double startSecondsone = 283;
    const String videoIdtwo = 'UCQv96-dqmQ';
    const double startSecondstwo = 20;
    const String videoIdthree = 'qy2r9X0wM1o';
    const double startSecondsthree = 1229;
    const String videoIdfour = 'GVsUOuSjvcg';
    const double startSecondsfour = 432;
    const String videoIdfive = 'kHTcoPoAnys';
    const double startSecondsfive = 742;
    // final String _videoId = 'mS9CFBlLOcg';
    // final double _startSeconds = 1485;
    // final String _videoId = 'XfLHaB8dEYc';
    // final double _startSeconds = 174;
    // final String _videoId = 'ChgIkbg0x80';
    // final double _startSeconds = 500;
    // final String _videoId = '4J0xFUyz1nw';
    // final double _startSeconds = 7;
    // final String _videoId = 'ZnKvQbpDYXU';
    // final double _startSeconds = 129;
    // final String _videoId = 'qWAagS_MANg';
    // final double _startSeconds = 228;

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
                      word: """amount""",
                      // alsoEnglishWord: "also: amount",
                      britshText: """IpaUK: /əˈmaʊnt/""",
                      americanText: """IpaUS: /əˈmaʊnt/""",
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
کوردی: سەرجەم، کۆ، تێکڕا، بڕ، ھێند، ھەند، ئەندازە
"""),
                    const DefinitionKurdish(text: "١. (ناو) ڕێژە یان بڕ" ""),
                    SentencesRow(
                      englishText: "I was amazed at the amount he could eat.",
                      kurdishText: "سەرسام‌بووم بەوەی دەتوانێت چەندە بخوات.",
                      onPressedBritish: () => speakamount4447("en-GB"),
                      onPressedAmerican: () => speakamount4447("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "Try to reduce the amount of energy and water you use at home.",
                      kurdishText:
                          "ھەوڵ‌بدە بڕی وزە و ئاوی بەکارھێندراو لە مەڵەوە کەم‌بکەوە.",
                      onPressedBritish: () => speakamount49652("en-GB"),
                      onPressedAmerican: () => speakamount49652("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) بڕە پارەیەک"""),
                    SentencesRow(
                      englishText: "Everyone has paid the same amount.",
                      kurdishText: "ھەمووان ھەمان بڕیان داوە.",
                      onPressedBritish: () => speakamount3522("en-GB"),
                      onPressedAmerican: () => speakamount3522("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) کۆی‌گشتی شتێک"""),
                    SentencesRow(
                      englishText:
                          "His earnings are said to amount to £300 000 per annum.",
                      kurdishText:
                          "قازانجەکانی دەبن بە ٣٠٠٠٠٠ پاوەند لە ساڵێکدا.",
                      onPressedBritish: () => speakamount5523("en-GB"),
                      onPressedAmerican: () => speakamount5523("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) ھاوتابوون بە شتێک """),
                    SentencesRow(
                      englishText:
                          "Their actions in the war amount to genocide.",
                      kurdishText:
                          "کردەوەکانیان لە جەنگەکەدا ھاوتایە بە جینۆساید.",
                      onPressedBritish: () => speakamount5622("en-GB"),
                      onPressedAmerican: () => speakamount5622("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (کردار) بوون بە شتێک """),
                    SentencesRow(
                      englishText: "You'll never amount to anything.",
                      kurdishText: "ھەرگیز نابیت بە ھیچ.",
                      onPressedBritish: () => speakamount514("en-GB"),
                      onPressedAmerican: () => speakamount514("en-US"),
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

