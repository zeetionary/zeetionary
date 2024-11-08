import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryambush extends StatefulWidget {
  const EnglishEntryambush({super.key});

  @override
  State<EnglishEntryambush> createState() => _EnglishEntryambushState();
}

class _EnglishEntryambushState extends State<EnglishEntryambush> {
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
Noun: ambush (derived forms: ambushed, ambushes, ambushing)
1. The act of concealing yourself and lying in wait to attack by surprise (= ambuscade [archaic], lying in wait, trap)

- Verb: ambush (derived forms: ambushed, ambushes, ambushing)
1. Wait in hiding to attack (= scupper [informal], bushwhack [N. Amer], waylay, lurk, ambuscade [archaic], lie in wait)
"They read about the bold proposal of leading out a party of French and Indians to ambush the English in the woods";
 
2. Hunt (quarry) by stalking and ambushing (= still-hunt [N. Amer])
""",
  );
// 188888880002200

  final String keyword = "ambush";
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
    await flutterTts.speak("""ambush""");
  }

  Future<void> speakambush4355(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Two soldiers were killed in a terrorist ambush.");
  }

  Future<void> speakambush4699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The guerrillas ambushed them near the bridge.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '_7Y61bM7K8M';
    const double startSecondsend = 201;
    const String videoIdone = 'la20lUzZ6b0';
    const double startSecondsone = 34;
    const String videoIdtwo = 'hwQD6CSLwgo';
    const double startSecondstwo = 10;
    const String videoIdthree = 'Nbw49Llcstg';
    const double startSecondsthree = 54;
    const String videoIdfour = 'Qi8trre9FX4';
    const double startSecondsfour = 93;
    const String videoIdfive = 'RgfXw6FbmrA';
    const double startSecondsfive = 488;
    // final String _videoId = 'zWy7XLZEzdw';
    // final double _startSeconds = 1;
    // final String _videoId = 'EvNLPc25SiQ';
    // final double _startSeconds = 23;
    // final String _videoId = 'k0KLCdQCy-w';
    // final double _startSeconds = 151;
    // final String _videoId = 'yRmOWcWdQAo';
    // final double _startSeconds = 769;
    // final String _videoId = 'zJtJH46dyDE';
    // final double _startSeconds = 742;
    // final String _videoId = '_rjmTjXYheE';
    // final double _startSeconds = 411;

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
                      word: """ambush""",
                      // alsoEnglishWord: "also: ambush",
                      britshText: """IpaUK: /ˈæmbʊʃ/""",
                      americanText: """IpaUS: /ˈæmbʊʃ/""",
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
کوردی: بۆسە، داو، پارێز، کەسان یان سەربازانی بۆسەنشین، ھێرشی کت‌وپڕ یان خافڵگیرانە، ھێرشی بۆسەیی
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) بۆسە؛ خۆشاردنەوە لە شوێنێک و ئەنجامدانی ھێرشی لەناکاو"""),
                    SentencesRow(
                      englishText:
                          "Two soldiers were killed in a terrorist ambush.",
                      kurdishText: "دوو سەرباز لە بۆسەیەکی تیرۆریستی کوژران.",
                      onPressedBritish: () => speakambush4355("en-GB"),
                      onPressedAmerican: () => speakambush4355("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) خستنە بۆسەوە"""),
                    SentencesRow(
                      englishText:
                          "The guerrillas ambushed them near the bridge.",
                      kurdishText: "گەریلاکان خستنیانە بۆسەوە.",
                      onPressedBritish: () => speakambush4699("en-GB"),
                      onPressedAmerican: () => speakambush4699("en-US"),
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
