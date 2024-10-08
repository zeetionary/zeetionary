// end agreement
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryagreement extends StatefulWidget {
  const EnglishEntryagreement({super.key});

  @override
  State<EnglishEntryagreement> createState() => _EnglishEntryagreementState();
}

class _EnglishEntryagreementState extends State<EnglishEntryagreement> {
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
- Noun: agreement (derived forms: agreements)
1. The statement (oral or written) of an exchange of promises (= understanding)
"they had an agreement that they would not interfere in each other's business";

2. Compatibility of observations (= correspondence)
"there was no agreement between theory and measurement";

3. Harmony of people's opinions, actions or characters (= accord, concert)
"the two parties were in agreement";

4. The thing arranged or agreed to (= arrangement)

5. The determination of grammatical inflection on the basis of word relations (= concord)

6. The verbal act of agreeing
""",
  );
// 188888880002200

  final String keyword = "agreement";
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
    await flutterTts.speak("""agreement""");
  }

  Future<void> speakagre45669(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They had an agreement never to talk about work at home.");
  }

  Future<void> speakagre35666(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The agreement was signed during a meeting at the UN.");
  }

  Future<void> speakagreem3544(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Is everybody in agreement now?");
  }

  Future<void> speakagreeme25699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "You'll have to get your parents' agreement if you want to go on the trip.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'sB3LqFDzurE';
    const double startSecondsend = 124;
    const String videoIdone = 'DiX3FqEIfaI';
    const double startSecondsone = 61;
    const String videoIdtwo = 'xU6VwLLL4WE';
    const double startSecondstwo = 36;
    const String videoIdthree = 'TnTOR-UCJIQ';
    const double startSecondsthree = 1;
    const String videoIdfour = '4Be5zuYqngY';
    const double startSecondsfour = 22;
    const String videoIdfive = '1yxeRrOtT7g';
    const double startSecondsfive = 8;
    // final String _videoId = 'x09DaDHyqpQ';
    // final double _startSeconds = 21;
    // final String _videoId = '3tnDjCA4peY';
    // final double _startSeconds = 1;

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
                      word: """agreement""",
                      // alsoEnglishWord: "also: agreement",
                      britshText: """IpaUK: /əˈɡriːmənt/""",
                      americanText: """IpaUS: /əˈɡriːmənt/""",
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
کوردی: ڕێک‌کەوتن، ھاتنەڕێ، ڕالێ‌بوون، بەرایی(دان)، وتەوبڕە، پێک‌ھاتن، تەبایی، سازان، گونجان، یەک‌بیری، قایل‌بوون، قەبووڵ‌کردن، پەسندکردن، بڕیار، بەڵێنی، گفت، پەیمان، ڕێک‌کەوتن‌نامە، (ڕێزمان) یەک‌گیری، یەک‌گرتنەوە یەکان‌گیری (ھەبوونی ھەمان ژمارە، دۆخ، چاوگ و کەس)
"""),
                    const DefinitionKurdish(text: """١. (ناو) ڕێککەوتن"""),
                    SentencesRow(
                      englishText:
                          "They had an agreement never to talk about work at home.",
                      kurdishText:
                          "ڕێککەوتنێکیان ھەبوو کە ھەرگیز لە ماڵەوە باسی کار نەکەن.",
                      onPressedBritish: () => speakagre45669("en-GB"),
                      onPressedAmerican: () => speakagre45669("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "The agreement (= the document recording the agreement) was signed during a meeting at the UN.",
                      kurdishText:
                          "ڕێککەوتنەکە واژۆکرا لە کۆبوونەوەیەکدا لە نەتەوە یەکگرتووەکان.",
                      onPressedBritish: () => speakagre35666("en-GB"),
                      onPressedAmerican: () => speakagre35666("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ھاوڕایی لەگەڵ کەسێک"""),
                    SentencesRow(
                      englishText: "Is everybody in agreement now?",
                      kurdishText: "ھەمووان ئێستا ھاوڕان؟",
                      onPressedBritish: () => speakagreem3544("en-GB"),
                      onPressedAmerican: () => speakagreem3544("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) مۆڵەتپێدان بە شتێک"""),
                    SentencesRow(
                      englishText:
                          "You'll have to get your parents' agreement if you want to go on the trip.",
                      kurdishText:
                          "پێویستە مۆڵەتی دایک و باوکت وەربگری پێش ئەوەی گەشتەکە بکەیت.",
                      onPressedBritish: () => speakagreeme25699("en-GB"),
                      onPressedAmerican: () => speakagreeme25699("en-US"),
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





