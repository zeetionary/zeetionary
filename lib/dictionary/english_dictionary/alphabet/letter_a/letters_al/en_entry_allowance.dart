import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryallowance extends StatefulWidget {
  const EnglishEntryallowance({super.key});

  @override
  State<EnglishEntryallowance> createState() => _EnglishEntryallowanceState();
}

class _EnglishEntryallowanceState extends State<EnglishEntryallowance> {
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
- Noun: allowance (derived forms: allowances)
1. An amount allowed or granted (as during a given period)
"travel allowance"; "my weekly allowance of two eggs"; "a child's allowance should not be too generous"
 
2. A sum granted as reimbursement for expenses
 
3. An amount added or deducted on the basis of qualifying circumstances (= adjustment)
"an allowance for profit";
 
4. A permissible difference; allowing some freedom to move within limits (= leeway, margin, tolerance)
 
5. A reserve fund created by a charge against profits in order to provide for changes in the value of a company's assets (= valuation reserve, valuation account, allowance account)
 
6. The act of allowing
"He objected to the allowance of smoking in the dining room"

- Verb: allowance (derived forms: allowanced, allowances, allowancing)
1. Put on a fixed allowance, as of food
""",
  );
// 188888880002200

  final String keyword = "allowance";
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
    await flutterTts.speak("""allowance""");
  }

  Future<void> speakallowance1298(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Do you get an allowance for clothing?");
  }

  Future<void> speakallowance4251(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The weekly allowance for each child is £15.");
  }

  Future<void> speakallowance12963(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The recommended daily allowance of vitamin C is 60–90 milligrams.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'DpxBfzNb69k';
    const double startSecondsend = 33;
    const String videoIdone = 'CczXOdvBHG0';
    const double startSecondsone = 1;
    const String videoIdtwo = 'yFEy4ktOvV0';
    const double startSecondstwo = 34;
    const String videoIdthree = 'cyMl2wMpnt4';
    const double startSecondsthree = 134;
    const String videoIdfour = 'zG1CpXB_F5M';
    const double startSecondsfour = 25;
    const String videoIdfive = 'W9Vhuc3VUF4';
    const double startSecondsfive = 5;
    // final String _videoId = 'w1NAsxQJqSk';
    // final double _startSeconds = 137;
    // final String _videoId = 'V3NGBo2M1Ps';
    // final double _startSeconds = 309;
    // final String _videoId = 'iqhK6QGehtQ';
    // final double _startSeconds = 833;
    // final String _videoId = '6jP0z4Z3M98';
    // final double _startSeconds = 65;

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
                      word: """allowance""",
                      // alsoEnglishWord: "also: allowance",
                      britshText: """IpaUK: /əˈlaʊəns/""",
                      americanText: """IpaUS: /əˈlaʊəns/""",
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
کوردی: بڕانە، مووچە، جیرە، ڕۆژانە، مانگانە، خەرج، بەش، پشک، ڕێدان، ڕێ‌پێدان، ڕێگەپێدان، بواردان، ھێڵان، ھێشتن، خەرجی، پووڵ یان پارەی گیرفانی، لێ‌دەرکردن، لێ‌داشکاندن، بڕانە
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) بڕە پارەیەک کە بە بەردەوامی دەدرێت بە کەسێک"
                            ""),
                    SentencesRow(
                      englishText: "Do you get an allowance for clothing?",
                      kurdishText: "پارە وەردەگریت بۆ جلوبەرگ؟",
                      onPressedBritish: () => speakallowance1298("en-GB"),
                      onPressedAmerican: () => speakallowance1298("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "The weekly allowance for each child is £15.",
                      kurdishText: "ھەفتانەی ھەر منداڵێک ١٥ پاوەندە.",
                      onPressedBritish: () => speakallowance4251("en-GB"),
                      onPressedAmerican: () => speakallowance4251("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ڕێژەی ڕێگەپێدراو"""),
                    SentencesRow(
                      englishText:
                          "The recommended daily allowance of vitamin C is 60–90 milligrams.",
                      kurdishText:
                          "ڕێژەی پێشنیازکراوی ڕۆژانەی ڤیتامین C ٦٠-٩٠ میلیگرامە.",
                      onPressedBritish: () => speakallowance12963("en-GB"),
                      onPressedAmerican: () => speakallowance12963("en-US"),
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
