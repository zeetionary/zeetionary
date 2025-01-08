import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryancestor extends StatefulWidget {
  const EnglishEntryancestor({super.key});

  @override
  State<EnglishEntryancestor> createState() => _EnglishEntryancestorState();
}

class _EnglishEntryancestorState extends State<EnglishEntryancestor> {
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
- Noun: ancestor (derived forms: ancestors)
1. Someone from whom you are descended (but usually more remote than a grandparent) (= ascendant, ascendent, antecedent, root)
 
2. An earlier form from which a later form evolved
""",
  );
// 188888880002200

  final String keyword = "ancestor";
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
    await flutterTts.speak("""ancestor""");
  }

  Future<void> speakancestor7690(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His ancestors had come to America from Ireland.");
  }

  Future<void> speakancestor4800(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There were portraits of his ancestors on the walls of the room.");
  }

  Future<void> speakancestor02560(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "These bones come from an animal that is the ancestor of the modern horse.");
  }

  Future<void> speakancestor0805(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This wooden instrument is the ancestor of the modern metal flute.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '9kakBfGxhpM';
    const double startSecondsend = 74;
    const String videoIdone = 'KN7sekRxFHg';
    const double startSecondsone = 38;
    const String videoIdtwo = 'QkCJcTtjDME';
    const double startSecondstwo = 103;
    const String videoIdthree = 'jBBJvgK5YAg';
    const double startSecondsthree = 32;
    const String videoIdfour = 'KD1R9AIFB0c';
    const double startSecondsfour = 49;
    const String videoIdfive = 'M8lm9HOHwZY';
    const double startSecondsfive = 1;
    // final String _videoId = 'J-K5OjAkiEA';
    // final double _startSeconds = 495;
    // final String _videoId = 'KT18KJouHWg';
    // final double _startSeconds = 754;
    // final String _videoId = 'j9h2-ZVDLB8';
    // final double _startSeconds = 67;
    // final String _videoId = 'ZT3X1fYFViE';
    // final double _startSeconds = 735;
    // final String _videoId = '39qDQ0chwOk';
    // final double _startSeconds = 384;
    // final String _videoId = 'QHscMam4W7s';
    // final double _startSeconds = 492;

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
                      word: """ancestor""",
                      // alsoEnglishWord: "also: ancestor",
                      britshText: """IpaUK: /ˈænsestə(r)/""",
                      americanText: """IpaUS: /ˈænsestər/""",
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
کوردی: ڕەچەڵەک، پێشینە، کال‌وباب، باووباپیر(ان)، بنەباب، ئەژداد، شێوەی سەرەتایی یان کۆن
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) باوان؛ کەسێکی بنەماڵەکەت کە زۆر لەمەوپێش ژیاوە"""),
                    SentencesRow(
                      englishText:
                          "His ancestors had come to America from Ireland.",
                      kurdishText: "باوانی لە ئێرلەنداوە ھات‌بوون بۆ ئەمریکا.",
                      onPressedBritish: () => speakancestor7690("en-GB"),
                      onPressedAmerican: () => speakancestor7690("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "There were portraits of his ancestors on the walls of the room.",
                      kurdishText: "وێنەی باوانی لەسەر دیواری ژوورەکە بوو.",
                      onPressedBritish: () => speakancestor4800("en-GB"),
                      onPressedAmerican: () => speakancestor4800("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ئاژەڵێک کە لە کۆندا ژیاوە و لە ئێستادا ئاژەڵێکی تر لێوەی گەشەی کردووە"""),
                    SentencesRow(
                      englishText:
                          "These bones come from an animal that is the ancestor of the modern horse.",
                      kurdishText:
                          "ئەم ئێسکانە ھی ئاژەڵێکن کە باوانی ئەسپی ئێستایە.",
                      onPressedBritish: () => speakancestor02560("en-GB"),
                      onPressedAmerican: () => speakancestor02560("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) شێوەیەکی سەرەتایی کەرەستەیەک کە لە ئێستادا زیاتر بەرەوپێش‌چووە"""),
                    SentencesRow(
                      englishText:
                          "This wooden instrument is the ancestor of the modern metal flute.",
                      kurdishText:
                          "ئەم ئامێرە دارینە شێوەی سەرەتایی فلوتی ئاسنی ئەم سەردەمەیە.",
                      onPressedBritish: () => speakancestor0805("en-GB"),
                      onPressedAmerican: () => speakancestor0805("en-US"),
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


