// end age
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryage extends StatefulWidget {
  const EnglishEntryage({super.key});

  @override
  State<EnglishEntryage> createState() => _EnglishEntryageState();
}

class _EnglishEntryageState extends State<EnglishEntryage> {
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
- Noun: age (derived forms: ages)
1. How long something has existed
"it was replaced because of its age"
 
2. An era of history having some distinctive feature (= historic period)
"we live in a litigious age";
 
3. A time of life (usually defined in years) at which some particular qualification or power arises (= eld)
"she was now of school age";
 
4. A prolonged period of time (= long time, years, yonks [Brit, informal], lifetime, donkey's years [Brit, informal])
"we've known each other for ages";
 
5. A late time of life (= old age, years, eld, geezerhood)
"old age is not for sissies"; "age hasn't slowed him down at all";

- Verb: age (derived forms: ages, ageing, aging, aged)
1. Begin to seem older; get older
"The death of his wife caused him to age fast"
 
2. Grow old or older (= senesce, get on, mature, maturate)
"She aged gracefully"; "we age every day--what a depressing thought!";
 
3. Make older
"The death of his child aged him tremendously"
 
4. Cause to ripen or develop fully (= ripen, mature)
"Age matures a good wine";
""",
  );
// 188888880002200

  final String keyword = "age";
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
    await flutterTts.speak("""age""");
  }

  Future<void> speakage938665(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("When I was your age I was already married.");
  }

  Future<void> speakage28225(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The children range in age from 5 to 10.");
  }

  Future<void> speakage45562(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I waited for ages.");
  }

  Future<void> speakage41663(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She dreaded old age.");
  }

  Future<void> speakage955887(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He lived during the Elizabethan age.");
  }

  Future<void> speakage471114(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("As he aged, his memory got worse.");
  }

  Future<void> speakage25221(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My mother has really aged since she became ill.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'VVh6EkYwIGU';
    const double startSecondsend = 24;
    const String videoIdone = 'kOd19ljsklQ';
    const double startSecondsone = 9;
    const String videoIdtwo = 'gsrakIxmHEY';
    const double startSecondstwo = 141;
    const String videoIdthree = '3YrmQfvUNfg';
    const double startSecondsthree = 26;
    const String videoIdfour = 'Uivy6vnP2B0';
    const double startSecondsfour = 155;
    const String videoIdfive = 'yKBgsQiF380';
    const double startSecondsfive = 1;
    // final String _videoId6 = 'dKbissUX-TE';
    // final double _startSeconds6 = 610;
    // final String _videoId = 'KhSbEsFtvFs';
    // final double _startSeconds = 16;
    // final String _videoId = 'UaQ8CNLE1bk';
    // final double _startSeconds = 1;
    // final String _videoId = '7cf33DCzuqk';
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
                      word: """age""",
                      // alsoEnglishWord: "also: age",
                      britshText: """IpaUK: /eɪdʒ/""",
                      americanText: """IpaUS: /eɪdʒ/""",
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
کوردی: تەمەن، عومر، سن، سێرە، ڕستی ساڵ، ساڵ، کۆنی، کەڤناتی، پیری، کۆنەساڵی، بەساڵاچوویی، قۆناخ، چەرخ، چاخ، ڕۆژگار، زەمانە، سەردەم
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) ژمارەی ئەو ساڵانەی کەسێک ژیاوە یان شتێک بوونی ھەبووە"
                            ""),
                    SentencesRow(
                      englishText: "When I was your age I was already married.",
                      kurdishText:
                          "کە لە تەمەنی تۆ بووم ماوەیەک بوو ھاوسەرگیریم کردبوو.",
                      onPressedBritish: () => speakage938665("en-GB"),
                      onPressedAmerican: () => speakage938665("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "The children range in age from 5 to 10.",
                      kurdishText:
                          "منداڵەکان تەمەنیان لە نێوان ٥ بۆ ١٠ ساڵانە.",
                      onPressedBritish: () => speakage28225("en-GB"),
                      onPressedAmerican: () => speakage28225("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) بۆ ماوەیەکی زۆر"""),
                    SentencesRow(
                      englishText: "I waited for ages.",
                      kurdishText: "بۆ ماوەیەکی زۆر چاوەڕێ بووم.",
                      onPressedBritish: () => speakage45562("en-GB"),
                      onPressedAmerican: () => speakage45562("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) کاتێکی دیاریکراو لە تەمەنی کەسێک"""),
                    SentencesRow(
                      englishText: "She dreaded old age.",
                      kurdishText: "لە پیرێتی دەترسا.",
                      onPressedBritish: () => speakage41663("en-GB"),
                      onPressedAmerican: () => speakage41663("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) سەردەمێکی دیاریکراو لە مێژوودا"""),
                    SentencesRow(
                      englishText: "He lived during the Elizabethan age.",
                      kurdishText: "لە سەردەمی دەسەڵاتداریی ئیلیزابێس ژیا.",
                      onPressedBritish: () => speakage955887("en-GB"),
                      onPressedAmerican: () => speakage955887("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (کردار) تەمەنکردن"""),
                    SentencesRow(
                      englishText: "As he aged, his memory got worse.",
                      kurdishText: "کە تەمەنی دەکرد بیر و ھۆشی خراپتر دەبوو.",
                      onPressedBritish: () => speakage471114("en-GB"),
                      onPressedAmerican: () => speakage471114("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (کردار) پیر دەرکەوتن"""),
                    SentencesRow(
                      englishText:
                          "My mother has really aged since she became ill.",
                      kurdishText: "دایکم ڕەنگی پیربووە لەوەتەی نەخۆش کەوتووە.",
                      onPressedBritish: () => speakage25221("en-GB"),
                      onPressedAmerican: () => speakage25221("en-US"),
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
