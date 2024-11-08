import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryallergy extends StatefulWidget {
  const EnglishEntryallergy({super.key});

  @override
  State<EnglishEntryallergy> createState() => _EnglishEntryallergyState();
}

class _EnglishEntryallergyState extends State<EnglishEntryallergy> {
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
- Noun: allergy (derived forms: allergies)
1. Hypersensitivity reaction to a particular allergen; symptoms can vary greatly in intensity (= allergic reaction)
""",
  );
// 188888880002200

  final String keyword = "allergy";
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
    await flutterTts.speak("""allergy""");
  }

  Future<void> speakallergy462555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I have an allergy to animal hair.");
  }

  Future<void> speakallergy53699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He developed an allergy to wheat.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'JSoGsO6n-qU';
    const double startSecondsend = 38;
    const String videoIdone = 'jR1GlpPVewg';
    const double startSecondsone = 294;
    const String videoIdtwo = 'civyA2P3Cs4';
    const double startSecondstwo = 6;
    const String videoIdthree = 'j_G9oOqrHJU';
    const double startSecondsthree = 466;
    const String videoIdfour = 'LexTnUKqTqU';
    const double startSecondsfour = 1;
    const String videoIdfive = 'S0r_JEwQp8M';
    const double startSecondsfive = 1;
    // final String _videoId = 'atOI5c_uNIs';
    // final double _startSeconds = 12;
    // final String _videoId = '70b8IHjvIn8';
    // final double _startSeconds = 27;
    // final String _videoId = 'sQgGHFa_P50';
    // final double _startSeconds = 590;
    // final String _videoId = 'ihePYDVItPc';
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
                      word: """allergy""",
                      // alsoEnglishWord: "also: allergy",
                      britshText: """IpaUK: /ˈælədʒi/""",
                      americanText: """IpaUS: /ˈælərdʒi/""",
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
کوردی: ئالێرژی، ھەستیاری، پێ‌نەکەوتن، پێ‌نەکەوتوویی، دڵ‌ھەڵکەوتن، پێ‌نەکەوتە، بێزاری، بێزلێ‌ھاتنەوە، قین‌لێ‌بوون
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) حاڵەتێکی تەندرووستی کە وات لێ دەکات بارودۆخت تێک بچێت یان نەخۆش بکەویت ئەگەر شتێک بۆخیت یان دەست لە شتێک بدەیت"""),
                    SentencesRow(
                      englishText: "I have an allergy to animal hair.",
                      kurdishText: "ھەستیاریم بە مووی ئاژەڵ ھەیە.",
                      onPressedBritish: () => speakallergy462555("en-GB"),
                      onPressedAmerican: () => speakallergy462555("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "He developed an allergy to wheat.",
                      kurdishText: "ھەستیاری بە گەنمی بۆ درووست بوو.",
                      onPressedBritish: () => speakallergy53699("en-GB"),
                      onPressedAmerican: () => speakallergy53699("en-US"),
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

