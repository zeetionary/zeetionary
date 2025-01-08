import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryangelic extends StatefulWidget {
  const EnglishEntryangelic({super.key});

  @override
  State<EnglishEntryangelic> createState() => _EnglishEntryangelicState();
}

class _EnglishEntryangelicState extends State<EnglishEntryangelic> {
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
- Adjective: angelic 
1. Marked by utter benignity; resembling or befitting an angel or saint (= angelical, beatific, saintlike, saintly, sainted)
"angelic beneficence";
 
2. Having a kind personality, befitting an angel or cherub (= angelical, cherubic, seraphic, sweet)
"an angelic smile";
 
3. Of or relating to angels (= angelical)
"angelic messenger";
""",
  );
// 188888880002200

  final String keyword = "angelic";
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
    await flutterTts.speak("""angelic""");
  }

  Future<void> speakangelic790(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She smiled, revealing her angelic face to everyone around.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'EuNEDD_6zW4';
    const double startSecondsend = 532;
    const String videoIdone = '8m-V53p1WWo';
    const double startSecondsone = 51;
    const String videoIdtwo = 'iICE-gW8rIk';
    const double startSecondstwo = 108;
    const String videoIdthree = 'tC_BjnRc94o';
    const double startSecondsthree = 67;
    const String videoIdfour = 'iwJNi-f1NPc';
    const double startSecondsfour = 24;
    const String videoIdfive = 'Mx8JkGHaGUI';
    const double startSecondsfive = 86;
    // final String _videoId = 'WUjVPIEtJd0';
    // final double _startSeconds = 838;
    // final String _videoId = 'EtgxTKuN018';
    // final double _startSeconds = 257;
    // final String _videoId = 'Am1lDj2mUVY';
    // final double _startSeconds = 1016;
    // final String _videoId = 'dS3njIz_Qzs';
    // final double _startSeconds = 89;

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
                      word: """angelic""",
                      // alsoEnglishWord: "also: angelic",
                      britshText: """IpaUK: /ænˈdʒelɪk/""",
                      americanText: """IpaUS: /ænˈdʒelɪk/""",
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
کوردی: فریشتەئاسا، فریشتەیی، ئاسمانی
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) فریشتەئاسا؛ باش و میھرەبان و جوان"
                            ""),
                    SentencesRow(
                      englishText:
                          "She smiled, revealing her angelic face to everyone around.",
                      kurdishText:
                          "پێکەنی و ڕووخسارە فریشتەئاساکەی پیشانی ھەمووان دا.",
                      onPressedBritish: () => speakangelic790("en-GB"),
                      onPressedAmerican: () => speakangelic790("en-US"),
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


