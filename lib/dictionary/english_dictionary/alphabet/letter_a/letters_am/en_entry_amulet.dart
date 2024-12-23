import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamulet extends StatefulWidget {
  const EnglishEntryamulet({super.key});

  @override
  State<EnglishEntryamulet> createState() => _EnglishEntryamuletState();
}

class _EnglishEntryamuletState extends State<EnglishEntryamulet> {
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
- Noun: amulet (derived forms: amulets)
1. A trinket or piece of jewellery usually hung about the neck and thought to be a magical protection against evil or disease (= talisman)
""",
  );
// 188888880002200

  final String keyword = "amulet";
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
    await flutterTts.speak("""amulet""");
  }

  Future<void> speakamulet44018(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The child was wearing a shiny amulet around his neck for good luck.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'UVl_fiD3jlM';
    const double startSecondsend = 20;
    const String videoIdone = '7j5ul4XBjAI';
    const double startSecondsone = 84;
    const String videoIdtwo = 'En9gBAnfZZk';
    const double startSecondstwo = 1;
    const String videoIdthree = '4YINmpUxiBw';
    const double startSecondsthree = 1;
    const String videoIdfour = 'IjycsgMc1Ok';
    const double startSecondsfour = 1;
    const String videoIdfive = 'oiLdWXLXDeA';
    const double startSecondsfive = 723;
    // final String _videoId = 'pKWP5Hl5ETI';
    // final double _startSeconds = 262;
    // final String _videoId = 'oPNP59S9n20';
    // final double _startSeconds = 138;
    // final String _videoId = '8hIr9H_LMKE';
    // final double _startSeconds = 49;
    // final String _videoId = 'WQTnI66LDGQ';
    // final double _startSeconds = 375;
    // final String _videoId = 'Ppk9Ms1SflE';
    // final double _startSeconds = 165;
    // final String _videoId = 'kvLeLgb5Wyo';
    // final double _startSeconds = 1189;

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
                      word: """amulet""",
                      // alsoEnglishWord: "also: amulet",
                      britshText: """IpaUK: /ˈæmjʊlət/""",
                      americanText: """IpaUS: /ˈæmjʊlət/""",
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
کوردی: دۆعا، تەلەسم، دێوبەند، چاوەزار، نووشتە
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) خشڵێک کە کەسێک دەیبەستێت‌ لەخۆی چونکە باوەڕی وایە لە خراپە دەیپارێزێت"
                            ""),
                    SentencesRow(
                      englishText:
                          "The child was wearing a shiny amulet around his neck for good luck.",
                      kurdishText:
                          "منداڵەکە چاوەزارێکی لە دەوری ملی بەستبوو بۆ ھێنانی بەختی باش.",
                      onPressedBritish: () => speakamulet44018("en-GB"),
                      onPressedAmerican: () => speakamulet44018("en-US"),
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


