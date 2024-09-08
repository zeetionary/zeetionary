import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaerial extends StatefulWidget {
  const EnglishEntryaerial({super.key});

  @override
  State<EnglishEntryaerial> createState() => _EnglishEntryaerialState();
}

class _EnglishEntryaerialState extends State<EnglishEntryaerial> {
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
- Noun: aerial (derived forms: aerials)
1. An electrical device that sends or receives radio or television signals (= antenna, transmitting aerial)
 
2. A pass to a receiver downfield from the passer (= forward pass)

- Adjective: aerial 
1. (botany) existing, living, growing or operating in the air
"aerial roots of a philodendron"; "aerial particles"; "small aerial creatures such as butterflies"; "aerial warfare"; "aerial photography"; "aerial cable cars"
 
2. Characterized by lightness and insubstantiality; as impalpable or intangible as air (= aeriform, airy, aery, ethereal, etherial)
"aerial fancies";
""",
  );
// 188888880002200

  final String keyword = "aerial";
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
    await flutterTts.speak("""aerial""");
  }

  Future<void> speakaeri5692(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A forest of television aerials on the roofs could be seen afar.");
  }

  Future<void> speakaeria2567(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The massive aerial bombardment of military targets continued unabated.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '_7Y61bM7K8M';
    const double startSecondsend = 201;
    const String videoIdone = 'kx1f4z1fb4k';
    const double startSecondsone = 82;
    const String videoIdtwo = 'n-eorLZbBqE';
    const double startSecondstwo = 16;
    const String videoIdthree = 'g8ay9OPHUYI';
    const double startSecondsthree = 89;
    const String videoIdfour = 'fy3aLxx0Wdg';
    const double startSecondsfour = 1;
    const String videoIdfive = 'dEUrrjDI4xE';
    const double startSecondsfive = 9;
    // const String videoId = 'PRMRaj02zpg';
    // const double startSeconds = 357;
    // const String videoId = 'nGnB4xalycg';
    // const double startSeconds = 574;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """aerial""",
                      // alsoEnglishWord: "also: aerial",
                      britshText: """IpaUK: /ˈeəriəl/""",
                      americanText: """IpaUS: /ˈeriəl/""",
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
کوردی: ئاریەڵ، ھەوایی، حەوایی، بایی، ئاسمانی، فڕینی، سەربە فڕین، بڵیند، خەیاڵی، ھیچ، پڕوپووچ، بێ‌بنچینە، سووک، (بەشێ لە گیا یان ڕووەک) لە سەرووی عەرزەوە شین دەبێ
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) پارچە دەزگایەک کە لە وایەر درووستکراوە یان پارچە ئاسنی باریک بۆ وەرگرتن و ناردنی ئاماژەی ڕادیۆ یان تەلەڤیزیۆن"
                            ""),
                    SentencesRow(
                      englishText:
                          "A forest of television aerials on the roofs could be seen afar.",
                      kurdishText:
                          "ژمارەیەکی زۆر ئاریەڵی تەلەڤیزیۆن لەسەر سەربانەکان لە دوورەوە دیار بوون.",
                      onPressedBritish: () => speakaeri5692("en-GB"),
                      onPressedAmerican: () => speakaeri5692("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) لە ئاسمانەوە یان لە ناو فڕۆکەیەک"""),
                    SentencesRow(
                      englishText:
                          "The massive aerial bombardment of military targets continued unabated.",
                      kurdishText:
                          "بۆمبارانی ئاسمانی بۆ سەر ئامانجە سەربازییەکان بەردەوام بوون.",
                      onPressedBritish: () => speakaeria2567("en-GB"),
                      onPressedAmerican: () => speakaeria2567("en-US"),
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
