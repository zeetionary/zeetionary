import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryallot extends StatefulWidget {
  const EnglishEntryallot({super.key});

  @override
  State<EnglishEntryallot> createState() => _EnglishEntryallotState();
}

class _EnglishEntryallotState extends State<EnglishEntryallot> {
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
- Verb: allot (derived forms: allots, allotted, allotting)
1. Give out (= assign, portion)
"We were allotted new uniforms";
 
2. Let have; give the right to; give the opportunity or permission to (= allow, grant, accord)
"Mandela was allotted few visitors in prison";
 
3. Give or provide in small portions (= distribute, administer, mete out, deal, parcel out, lot, dispense, deal out, dish out, dole out, mete, dole)
"allot critical remarks to everyone present";
""",
  );
// 188888880002200

  final String keyword = "allot";
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
    await flutterTts.speak("""allot""");
  }

  Future<void> speakallot4266(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I completed the test within the time allotted.");
  }

  Future<void> speakallot341(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("How much money has been allotted to us?");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'egLsCoXpJNA';
    const double startSecondsend = 20;
    const String videoIdone = 'aH6h_V1NpC4';
    const double startSecondsone = 61;
    const String videoIdtwo = 'RLSV4oI2U4Q';
    const double startSecondstwo = 732;
    const String videoIdthree = 'w2K8n3vJcjQ';
    const double startSecondsthree = 615;
    const String videoIdfour = 'V5BXuZL1HAg';
    const double startSecondsfour = 1682;
    const String videoIdfive = 'S525zDvRulo';
    const double startSecondsfive = 2073;
    // final String _videoId = 'n2JNb8idBMA';
    // final double _startSeconds = 652;

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
                      word: """allot""",
                      // alsoEnglishWord: "also: allot",
                      britshText: """IpaUK: /əˈlɒt/""",
                      americanText: """IpaUS: /əˈlɑːt/""",
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
کوردی: تەرخان‌دان، تایبەتی‌دان، دابەش‌کردن، دابەشاندن، بەشینەوە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) پێدانی پارە، کات، یان ئەرک بە کەسێک"""),
                    SentencesRow(
                      englishText:
                          "I completed the test within the time allotted.",
                      kurdishText:
                          "تاقیکردنەوەکەم لە ماوەی کاتی دیاریکراو تەواوکرد.",
                      onPressedBritish: () => speakallot4266("en-GB"),
                      onPressedAmerican: () => speakallot4266("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "How much money has been allotted to us?",
                      kurdishText: "چەندە پارەمان بۆ تەرخانکراوە.",
                      onPressedBritish: () => speakallot341("en-GB"),
                      onPressedAmerican: () => speakallot341("en-US"),
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

