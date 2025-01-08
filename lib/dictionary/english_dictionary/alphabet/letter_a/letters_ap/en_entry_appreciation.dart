import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappreciation extends StatefulWidget {
  const EnglishEntryappreciation({super.key});

  @override
  State<EnglishEntryappreciation> createState() =>
      _EnglishEntryappreciationState();
}

class _EnglishEntryappreciationState extends State<EnglishEntryappreciation> {
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
- Noun: appreciation (derived forms: appreciations)
1. Understanding of the nature, meaning, quality or magnitude of something (= grasp, hold)
"he has a good appreciation of accounting practices";
 
2. Delicate discrimination (especially of aesthetic values) (= taste, discernment, perceptiveness)
"arrogance and lack of appreciation contributed to his rapid success";
 
3. An expression of gratitude
"he expressed his appreciation in a short note"
 
4. A favourable judgment (= admiration)
"a small token in appreciation of your works";
 
5. An increase in price or value
"an appreciation of 30% in the value of real estate"
 
6. A feeling of thankfulness and appreciation (= gratitude)
"he was overwhelmed with appreciation for their help";
""",
  );
// 188888880002200

  final String keyword = "appreciation";
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
    await flutterTts.speak("""appreciation""");
  }

  Future<void> speakappreciation814(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She shows little appreciation of good music.");
  }

  Future<void> speakappreciation815(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I have now developed an appreciation of poetry.");
  }

  Future<void> speakappreciation817(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I had no appreciation of the problems they faced.");
  }

  Future<void> speakappreciation818(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There is a growing appreciation of the need for change.");
  }

  Future<void> speakappreciation820(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I would like to express my appreciation and thanks to you all.");
  }

  Future<void> speakappreciation824(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The appreciation in the value of the house has brought joy to the homeowners.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '4DhHXoIC0iU';
    const double startSecondsend = 55;
    const String videoIdone = 'T1x_knZmZAk';
    const double startSecondsone = 6530;
    const String videoIdtwo = 'g275afit9l0';
    const double startSecondstwo = 1820;
    const String videoIdthree = 'rFeRdjcKWSc';
    const double startSecondsthree = 704;
    const String videoIdfour = 'mdAJ5-fKnzo';
    const double startSecondsfour = 36;
    const String videoIdfive = 'VgMKgkUKEvs';
    const double startSecondsfive = 54;
    // final String _videoId = 'rnMB8zgKWXc';
    // final double _startSeconds = 1;
    // final String _videoId = 'VdOTxgYPxgc';
    // final double _startSeconds = 264;
    // final String _videoId = 'hFZFjoX2cGg';
    // final double _startSeconds = 143;
    // final String _videoId = 'F5pgG1M_h_U';
    // final double _startSeconds = 96;
    // final String _videoId = 'jgkMFBDyzE8';
    // final double _startSeconds = 300;
    // final String _videoId = 'EtgxTKuN018';
    // final double _startSeconds = 437;

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
                      word: """appreciation""",
                      // alsoEnglishWord: "also: appreciation",
                      britshText: """IpaUK: /əˌpriːʃiˈeɪʃn/""",
                      americanText: """IpaUS: /əˌpriːʃiˈeɪʃn/""",
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
کوردی: قەدرزانی، قەدرلێنان، بایەخ، پێزانین، سپاس‌کردن، ڕێزلێنان، لێکدانەوە، نرخاندن، ھەڵسەنگاندن، تێگەیشتن، پێ‌پێبردن، پێزانین، ھەست‌پێکردن. خۆشی، چوونەسەرێ، ھەستان، بەرزبوونەوە، زۆربوون (نرخ)
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئەو خۆشیەی کە ھەتە لە کاتی چێژ بینین لە شتێکی باش"""),
                    SentencesRow(
                      englishText:
                          "She shows little appreciation of good music.",
                      kurdishText: "قەدری میوزیکی خۆش نازانێ.",
                      onPressedBritish: () => speakappreciation814("en-GB"),
                      onPressedAmerican: () => speakappreciation814("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "I have now developed an appreciation of poetry.",
                      kurdishText: "دەستم‌کردووە بە چێژ وەرگرتن لە ھۆنراوە.",
                      onPressedBritish: () => speakappreciation815("en-GB"),
                      onPressedAmerican: () => speakappreciation815("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) تێگەشتنی تەواو بۆ شتێک"""),
                    SentencesRow(
                      englishText:
                          "I had no appreciation of the problems they faced.",
                      kurdishText:
                          "تەواو بێ ئاگا بووم لەو کێشانەی ڕووبەڕووی دەبوونەوە.",
                      onPressedBritish: () => speakappreciation817("en-GB"),
                      onPressedAmerican: () => speakappreciation817("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "There is a growing appreciation of the need for change.",
                      kurdishText:
                          "تێگەشتنی زیاتر و زیاتر ھەیە بۆ پێویستیی گۆڕانکاری.",
                      onPressedBritish: () => speakappreciation818("en-GB"),
                      onPressedAmerican: () => speakappreciation818("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) ھەستی سوپاسگوزری و پێزانین"""),
                    SentencesRow(
                      englishText:
                          "I would like to express my appreciation and thanks to you all.",
                      kurdishText:
                          "دەمەوێت پێزانین و سوپاسگوزاریم بۆ ھەمووتان دەرببڕم.",
                      onPressedBritish: () => speakappreciation820("en-GB"),
                      onPressedAmerican: () => speakappreciation820("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) زیادبوونی نرخی شتێک لە دوای ماوەیەک"""),
                    SentencesRow(
                      englishText:
                          "The appreciation in the value of the house has brought joy to the homeowners.",
                      kurdishText:
                          "بەرزبوونی نرخی خانووەکان خۆشی ھێناوە بۆ خاوەنەکانیان.",
                      onPressedBritish: () => speakappreciation824("en-GB"),
                      onPressedAmerican: () => speakappreciation824("en-US"),
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
