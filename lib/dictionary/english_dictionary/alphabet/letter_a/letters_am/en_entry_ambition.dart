import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryambition extends StatefulWidget {
  const EnglishEntryambition({super.key});

  @override
  State<EnglishEntryambition> createState() => _EnglishEntryambitionState();
}

class _EnglishEntryambitionState extends State<EnglishEntryambition> {
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
- Noun: ambition (derived forms: ambitioning, ambitioned, ambitions)
1. A cherished desire (= aspiration, dream)
"his ambition is to own his own business";
 
2. A strong drive for success (= ambitiousness)

- Verb: ambition (derived forms: ambitioning, ambitioned, ambitions)
1. Have as one's ambition
""",
  );
// 188888880002200

  final String keyword = "ambition";
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
    await flutterTts.speak("""ambition""");
  }

  Future<void> speakambition422(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("At last he had realized his life's ambition.");
  }

  Future<void> speakambition3444(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He had only one ambition in life.");
  }

  Future<void> speakambition344(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was driven by personal ambition.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '_UnDjRJbcN0';
    const double startSecondsend = 3;
    const String videoIdone = 'AOGAGXGCjQ4';
    const double startSecondsone = 1;
    const String videoIdtwo = 'QXrNph4RqyI';
    const double startSecondstwo = 1134;
    const String videoIdthree = '-IWT0AFYhoY';
    const double startSecondsthree = 398;
    const String videoIdfour = '_yhRlnI7NjQ';
    const double startSecondsfour = 15;
    const String videoIdfive = '3Au-5To9rDk';
    const double startSecondsfive = 39;
    // final String _videoId = 'wVbQki1V3yA';
    // final double _startSeconds = 12;
    // final String _videoId = 'zqllxbPWKNI';
    // final double _startSeconds = 199;
    // final String _videoId = 'O4iGNXsqghs';
    // final double _startSeconds = 397;
    // final String _videoId = 'mY3SEMTROas';
    // final double _startSeconds = 1818;
    // final String _videoId = 'Xzv84ZdtlE0';
    // final double _startSeconds = 751;
    // final String _videoId = 'kRr9LQ7mZ_A';
    // final double _startSeconds = 784;

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
                      word: """ambition""",
                      // alsoEnglishWord: "also: ambition",
                      britshText: """IpaUK: /æmˈbɪʃn/""",
                      americanText: """IpaUS: /æmˈbɪʃn/""",
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
کوردی: بەرزەفڕی، بەرز(ە)خوازی، ھێزخوازی، ئارەزوو، ئامانج، ئاوات
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) شتێک کە دەتەوێت بیکەیت یان بە دەستی بھێنیت"
                            ""),
                    SentencesRow(
                      englishText:
                          "At last he had realized his life's ambition.",
                      kurdishText: "لەکۆتاییدا لە ئامانجەکانی ژیانی تێگەشت.",
                      onPressedBritish: () => speakambition422("en-GB"),
                      onPressedAmerican: () => speakambition422("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "He had only one ambition in life.",
                      kurdishText: "یەک ئامانجی لە ژیاندا ھەبوو.",
                      onPressedBritish: () => speakambition3444("en-GB"),
                      onPressedAmerican: () => speakambition3444("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ئاوات‌خواستن بە پارە و دەسەڵات"""),
                    SentencesRow(
                      englishText: "She was driven by personal ambition.",
                      kurdishText: "بە حەز و ئارەزووی خۆی ھەڵدەسووڕا.",
                      onPressedBritish: () => speakambition344("en-GB"),
                      onPressedAmerican: () => speakambition344("en-US"),
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
