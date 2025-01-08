import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanswerable extends StatefulWidget {
  const EnglishEntryanswerable({super.key});

  @override
  State<EnglishEntryanswerable> createState() => _EnglishEntryanswerableState();
}

class _EnglishEntryanswerableState extends State<EnglishEntryanswerable> {
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
- Adjective: answerable 
1. Capable of being answered
 
2. Morally or legally responsible to a higher authority
"parents are answerable for their child's acts"
 
3. Liable to account for one's actions (= accountable)
"the court held the parents answerable for their minor child's acts of vandalism"; "he was answerable to no one";
""",
  );
// 188888880002200

  final String keyword = "answerable";
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
    await flutterTts.speak("""answerable""");
  }

  Future<void> speakanswerable1100(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was a free agent, answerable to no one for her behaviour.");
  }

  Future<void> speakanswerable1102(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Any European central bank should be directly answerable to the European Parliament.");
  }

  Future<void> speakanswerable1104(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Ministers must be made answerable for their decisions.");
  }

  Future<void> speakanswerable1106(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Soldiers who obey orders to commit atrocities should be answerable for their crimes.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'WIW10E1xAOI';
    const double startSecondsend = 392;
    const String videoIdone = 'HL7DEkXV_60';
    const double startSecondsone = 193;
    const String videoIdtwo = 'i2H97mS9l5E';
    const double startSecondstwo = 826;
    const String videoIdthree = 'w6yOScCk9CM';
    const double startSecondsthree = 227;
    const String videoIdfour = 'uSuO2oOwZq4';
    const double startSecondsfour = 859;
    const String videoIdfive = 'LbKmTup4u3I';
    const double startSecondsfive = 622;
    // final String _videoId = 'p6J8n_WeThw';
    // final double _startSeconds = 3194;
    // final String _videoId = 'vrIl3VRGl-w';
    // final double _startSeconds = 184;
    // final String _videoId = 'UMCfU48vVws';
    // final double _startSeconds = 276;
    // final String _videoId = 'k3vFX0YrkMY';
    // final double _startSeconds = 117;

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
                      word: """answerable""",
                      // alsoEnglishWord: "also: answerable",
                      britshText: """IpaUK: /ˈɑːnsərəbl/""",
                      americanText: """IpaUS: /ˈænsərəbl/""",
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
کوردی: بەرپرس، وەڵام‌دەرەوە، شیاوی وەڵام‌دانەوە، پێبەند، دەربەست
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) بوونی پێویستیی وەڵامدانەوە بەرامبەر کەسێک کە دەسەڵاتی بەسەرت ھەیە یان شتێک، بۆ نموونە یاسا، کە کۆنترۆڵی کردارەکانت دەکات"""),
                    SentencesRow(
                      englishText:
                          "She was a free agent, answerable to no one for her behaviour.",
                      kurdishText:
                          "سیخوڕێکی سەربەخۆ بوو کە پێویست نەبوو وەڵامی ھیچ کەس بداتەوە بۆ ڕەفتارەکانی.",
                      onPressedBritish: () => speakanswerable1100("en-GB"),
                      onPressedAmerican: () => speakanswerable1100("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "Any European central bank should be directly answerable to the European Parliament.",
                      kurdishText:
                          "ھەر بانکێکی ئەورووپی دەبێت ڕاستەوخۆ لەژێر چاودێری/بەرپرسیار بێت بەرامبەر یەکێتیی ئەورووپا بێت.",
                      onPressedBritish: () => speakanswerable1102("en-GB"),
                      onPressedAmerican: () => speakanswerable1102("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) بەرپرسیار بۆ شتێک و ھەبوونی ئامادەیی وەرگرتنی سزا بۆی"""),
                    SentencesRow(
                      englishText:
                          "Ministers must be made answerable for their decisions.",
                      kurdishText:
                          "وەزیرەکان دەبێت بەرپرسیاربن بۆ بڕیارەکانیان.",
                      onPressedBritish: () => speakanswerable1104("en-GB"),
                      onPressedAmerican: () => speakanswerable1104("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "Soldiers who obey orders to commit atrocities should be answerable for their crimes.",
                      kurdishText:
                          "ئەو سەربازانەی گوێ‌ڕایەڵی ئەنجامدانی تاوانی جەنگ دەکەن دەبێت ئامادەی وەرگرتنی سزابن.",
                      onPressedBritish: () => speakanswerable1106("en-GB"),
                      onPressedAmerican: () => speakanswerable1106("en-US"),
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


