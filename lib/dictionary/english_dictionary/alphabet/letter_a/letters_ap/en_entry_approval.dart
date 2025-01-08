import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapproval extends StatefulWidget {
  const EnglishEntryapproval({super.key});

  @override
  State<EnglishEntryapproval> createState() => _EnglishEntryapprovalState();
}

class _EnglishEntryapprovalState extends State<EnglishEntryapproval> {
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
- Noun: approval (derived forms: approvals)
1. The formal act of approving (= blessing, approving)
"his decision merited the approval of any sensible person";
 
2. A feeling of liking something or someone good
"although she fussed at them, she secretly viewed all her children with approval"
 
3. Acceptance as satisfactory (= favorable reception [US], favourable reception [Brit, Cdn])
"he bought it on approval";
 
4. A message expressing a favourable opinion (= commendation)
"words of approval seldom passed his lips";
""",
  );
// 188888880002200

  final String keyword = "approval";
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
    await flutterTts.speak("""approval""");
  }

  Future<void> speakapproval826(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I could tell I had earned her approval.");
  }

  Future<void> speakapproval829(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He showed his approval by smiling.");
  }

  Future<void> speakapproval831(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The plan will be submitted to the committee for official approval.");
  }

  Future<void> speakapproval832(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He won approval for his project.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '9TugA_z5vQE';
    const double startSecondsend = 326;
    const String videoIdone = 'rRymSi8SmqA';
    const double startSecondsone = 412;
    const String videoIdtwo = 'oD9BaNAH-eE';
    const double startSecondstwo = 981;
    const String videoIdthree = 'WUjVPIEtJd0';
    const double startSecondsthree = 258;
    const String videoIdfour = 'IgF3OX8nT0w';
    const double startSecondsfour = 810;
    const String videoIdfive = 'EpGCCKB3Oag';
    const double startSecondsfive = 287;
    // final String _videoId = 'qQ01eLt_bxo';
    // final double _startSeconds = 1110;
    // final String _videoId = 'V2ec7EE0pB8';
    // final double _startSeconds = 2022;
    // final String _videoId = 'knjliFs3gR8';
    // final double _startSeconds = 937;
    // final String _videoId = 'TVe5XPU10Zc';
    // final double _startSeconds = 323;
    // final String _videoId = 'H9Yk5rictuc';
    // final double _startSeconds = 132;
    // final String _videoId = '9s9UXXAmlTg';
    // final double _startSeconds = 762;

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
                      word: """approval""",
                      // alsoEnglishWord: "also: approval",
                      britshText: """IpaUK: /əˈpruːvl/""",
                      americanText: """IpaUS: /əˈpruːvl/""",
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
کوردی: پەسندکردن، مۆرکردن، ڕەوابینی، ڕەزامەندی، ڕێک‌کەوتن، پەژراندن
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) ھەستی بەدڵبوونی شتێک"""),
                    SentencesRow(
                      englishText: "I could tell I had earned her approval.",
                      kurdishText:
                          "دەمتوانی بڵێم ڕەزامەندیی ئەوم بەدەست‌ھێناوە.",
                      onPressedBritish: () => speakapproval826("en-GB"),
                      onPressedAmerican: () => speakapproval826("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "He showed his approval by smiling.",
                      kurdishText: "ڕەزامەندیی پیشان‌دا بە پێکەنین‌کردن.",
                      onPressedBritish: () => speakapproval829("en-GB"),
                      onPressedAmerican: () => speakapproval829("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ڕازی‌بوون یان مۆڵەتدان بە شتێک"""),
                    SentencesRow(
                      englishText:
                          "The plan will be submitted to the committee for official approval.",
                      kurdishText:
                          "پلانەکە پێشکەشی لیژنەکە دەکرێت بۆ پەسەندکردنی فەرمی.",
                      onPressedBritish: () => speakapproval831("en-GB"),
                      onPressedAmerican: () => speakapproval831("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "He won approval for his project.",
                      kurdishText: "پڕۆژەکەی پەسەندکردنی وەرگرت.",
                      onPressedBritish: () => speakapproval832("en-GB"),
                      onPressedAmerican: () => speakapproval832("en-US"),
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
