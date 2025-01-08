import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryancient extends StatefulWidget {
  const EnglishEntryancient({super.key});

  @override
  State<EnglishEntryancient> createState() => _EnglishEntryancientState();
}

class _EnglishEntryancientState extends State<EnglishEntryancient> {
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
- Adjective: ancient  
1. Belonging to times long past especially of the historical period before the fall of the Western Roman Empire
"ancient history"; "ancient civilizations such as those of the Etruscans and Sumerians"; "ancient Greece"
 
2. Very old
"an ancient mariner"

- Noun: ancient (derived forms: ancients)
1. A very old person (= antediluvian)
 
2. A person who lived in ancient times
""",
  );
// 188888880002200

  final String keyword = "ancient";
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
    await flutterTts.speak("""ancient""");
  }

  Future<void> speakancient2258(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Archaeologists are excavating the ruined temples of this ancient civilization.");
  }

  Future<void> speakancient4077(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("People have lived in this valley since ancient times.");
  }

  Future<void> speakancient102(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He's got an ancient laptop.");
  }

  Future<void> speakancient558030(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The ancients believed in mythical creatures and powerful gods.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'J-K5OjAkiEA';
    const double startSecondsend = 20;
    const String videoIdone = 'Zad6v8ZHzdg';
    const double startSecondsone = 6;
    const String videoIdtwo = 'BmUrJaOo1Lw';
    const double startSecondstwo = 1;
    const String videoIdthree = 'Z2Zl64cSmpo';
    const double startSecondsthree = 20;
    const String videoIdfour = 'xPGdOXstSyk';
    const double startSecondsfour = 10;
    const String videoIdfive = 'FQz32ecOwDI';
    const double startSecondsfive = 23;
    // final String _videoId = 'noRrXgnejto';
    // final double _startSeconds = 1;
    // final String _videoId = 'bnHSx-rDEuw';
    // final double _startSeconds = 24;
    // final String _videoId = 'JQs4QyKnYMQ';
    // final double _startSeconds = 1;
    // final String _videoId = 'myxVsYI4WZk';
    // final double _startSeconds = 61;
    // final String _videoId = 'eQzeHYI3Q7Q';
    // final double _startSeconds = 12;
    // final String _videoId = 'KhSbEsFtvFs';
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
                      word: """ancient""",
                      // alsoEnglishWord: "also: ancient",
                      britshText: """IpaUK: /ˈeɪnʃənt/""",
                      americanText: """IpaUS: /ˈeɪnʃənt/""",
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
کوردی: کۆن، کەڤنار، کەون، باستان، مێژینەدار، بەرین، دێرین، زووگین، باستانی، دێرینە، قەدیمی، (کۆن و بە شۆخی) پیر، کۆن، دێرساڵ، بەسەڵاچوو، خەڵکی کەونار، زووژیاوان
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) زۆر‌کۆن؛ پێش ھەزاران ساڵ"""),
                    SentencesRow(
                      englishText:
                          "Archaeologists are excavating the ruined temples of this ancient civilization.",
                      kurdishText:
                          "شوێنەوارناسان پەرستگا وێرانەکانی ئەم شارستانیەتە کۆنە ھەڵدەدەنەوە.",
                      onPressedBritish: () => speakancient2258("en-GB"),
                      onPressedAmerican: () => speakancient2258("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "People have lived in this valley since ancient times.",
                      kurdishText: "خەڵکی لەدێر زەمانەوە لەم دۆڵە ژیاون.",
                      onPressedBritish: () => speakancient4077("en-GB"),
                      onPressedAmerican: () => speakancient4077("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) زۆر‌کۆن؛ شتێک لەزووەوە ھەیە"""),
                    SentencesRow(
                      englishText: "He's got an ancient laptop.",
                      kurdishText: "لاپتۆپێکی قەدیمی ھەیە.",
                      onPressedBritish: () => speakancient102("en-GB"),
                      onPressedAmerican: () => speakancient102("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) وەک ناو بەکاردێت بۆ خەڵکی سەردەمی کۆن"""),
                    SentencesRow(
                      englishText:
                          "The ancients believed in mythical creatures and powerful gods.",
                      kurdishText:
                          "زووژیاوان باوەڕیان بە بوونەوەری ئەفسانەیی و کۆمەڵە خواوەندی بەدەسەڵات ھەبوو.",
                      onPressedBritish: () => speakancient558030("en-GB"),
                      onPressedAmerican: () => speakancient558030("en-US"),
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


