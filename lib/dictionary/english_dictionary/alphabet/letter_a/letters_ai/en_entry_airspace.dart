// end airspace
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryairspace extends StatefulWidget {
  const EnglishEntryairspace({super.key});

  @override
  State<EnglishEntryairspace> createState() => _EnglishEntryairspaceState();
}

class _EnglishEntryairspaceState extends State<EnglishEntryairspace> {
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
- Noun: airspace (derived forms: air spaces, airspaces)
1. The space in the atmosphere immediately above the earth (= air space)
 
2. The atmosphere above a nation that is deemed to be under its jurisdiction
"the plane was refused permission to enter Chinese airspace"
""",
  );
// 188888880002200

  final String keyword = "airspace";
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
    await flutterTts.speak("""airspace""");
  }

  Future<void> speakairspace4355(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The airspace over Europe is becoming more and more crowded.");
  }

  Future<void> speakairspace5366(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The jet entered Chinese airspace without permission.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '1FghL5wqAVc';
    const double startSecondsend = 170;
    const String videoIdone = 'd3yWQgBAcj4';
    const double startSecondsone = 8;
    const String videoIdtwo = 'cTLDidYtiXk';
    const double startSecondstwo = 1;
    const String videoIdthree = 'lRn6pz4g7rc';
    const double startSecondsthree = 1;
    const String videoIdfour = '7n6cRlceht4';
    const double startSecondsfour = 38;
    const String videoIdfive = 'jWtJGdPWIVA';
    const double startSecondsfive = 5;
    // final String _videoId = 'TGShvzugkfY';
    // final double _startSeconds = 430;
    // final String _videoId = 'Nts_8ZLIxwo';
    // final double _startSeconds = 43;

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
                      word: """airspace""",
                      // alsoEnglishWord: "also: airspace",
                      britshText: """IpaUK: /ˈeəspeɪs/""",
                      americanText: """IpaUS: /ˈerspeɪs/""",
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
کوردی: ناوچەی فڕین، بواری فڕین، ئاسمانی وڵاتێ
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئاسمانی وڵاتێک کە لەلایەن ئەو وڵاتەوە کۆنترۆڵ کراوە"""),
                    SentencesRow(
                      englishText:
                          "The airspace over Europe is becoming more and more crowded.",
                      kurdishText:
                          "ئاسمانی ئەورووپا زیاتر و زیاتر قەرەباڵغ دەبێت.",
                      onPressedBritish: () => speakairspace4355("en-GB"),
                      onPressedAmerican: () => speakairspace4355("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "The jet entered Chinese airspace without permission.",
                      kurdishText: "فڕۆکەکە چووە ئاسمانی چین بەبێ مۆڵەت.",
                      onPressedBritish: () => speakairspace5366("en-GB"),
                      onPressedAmerican: () => speakairspace5366("en-US"),
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



