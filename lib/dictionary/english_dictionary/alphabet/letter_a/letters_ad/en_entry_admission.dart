import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadmission extends StatefulWidget {
  const EnglishEntryadmission({super.key});

  @override
  State<EnglishEntryadmission> createState() => _EnglishEntryadmissionState();
}

class _EnglishEntryadmissionState extends State<EnglishEntryadmission> {
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
- Noun: admission (derived forms: admissions)
1. The act of admitting someone to enter (= admittance)
"the surgery was performed on his second admission to the clinic";
 
2. An acknowledgment of the truth of something
 
3. The fee charged for admission (= entrance fee, admission charge, admission fee, admission price, price of admission, entrance money)
 
4. The right to enter (= entrée, access, accession, admittance)
""",
  );
// 188888880002200

  final String keyword = "admission";
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
    await flutterTts.speak("""admission""");
  }

  Future<void> speakadmiss836541(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Hospital admission is not necessary in most cases.");
  }

  Future<void> speakadmiss735891(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Is there any charge for admission?");
  }

  Future<void> speakadm587914(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She has made no admission of any involvement in the plot.");
  }

  Future<void> speakadmis912587(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There is an admission fee of 10 dollars.");
  }

  @override
  Widget build(BuildContext context) {
    
    const String videoIdend = 'H5GN9KBQcvQ';
    const double startSecondsend = 17;
    const String videoIdone = 'XPG6Ul68nnE';
    const double startSecondsone = 105;
    const String videoIdtwo = 'kElsSj8hky4';
    const double startSecondstwo = 199;
    const String videoIdthree = '3C9wZf88y4Q';
    const double startSecondsthree = 29;
    const String videoIdfour = 'uxIuDJyzvDY';
    const double startSecondsfour = 296;

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
                      word: """admission""",
                      // alsoEnglishWord: "also: admission",
                      britshText: """IpaUK: /ədˈmɪʃn/""",
                      americanText: """IpaUS: /ədˈmɪʃn/""",
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
کوردی: پەسند، قەبووڵ، وەرگرتن، وەرگیران، چوونەنێو(ەوە)، چوونەژوورێ، ماف یان دەستووری چوونەژوورەوە، ژوورانە، دەرکانە، پارەی چوونەژوورەوە، درگانە، دان‌پیانان، چوونەژێر، پێ‌ناسین، پێ‌لێنان، ڕاستی وتن، سەلماندن
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) وەرگرتنی کەسێک لە شوێنێک" ""),
                          SentencesRow(
                            englishText:
                                "Hospital admission is not necessary in most cases.",
                            kurdishText:
                                "بردنە نەخۆشخانە لە زۆر حاڵەتدا پێویست نییە.",
                            onPressedBritish: () => speakadmiss836541("en-GB"),
                            onPressedAmerican: () => speakadmiss836541("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Is there any charge for admission?",
                            kurdishText:
                                "ھیچ پارەیەک بۆ چوونەژوورەوە وەردەگیرێت؟",
                            onPressedBritish: () => speakadmiss735891("en-GB"),
                            onPressedAmerican: () => speakadmiss735891("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) دانپێدانانی کەسێک"""),
                          SentencesRow(
                            englishText:
                                "She has made no admission of any involvement in the plot.",
                            kurdishText:
                                "ھیچ دانپێدانانێکی نەناوە بە تێوەگلان لە پلانەکەوە.",
                            onPressedBritish: () => speakadm587914("en-GB"),
                            onPressedAmerican: () => speakadm587914("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) بڕە پارەیەک کە ئەدرێت بۆ چوونەژوورەوە بۆ شوێنێک"""),
                          SentencesRow(
                            englishText:
                                "There is an admission fee of 10 dollars.",
                            kurdishText: "کرێی چوونەژوورەوە ١٠ دۆلارە.",
                            onPressedBritish: () => speakadmis912587("en-GB"),
                            onPressedAmerican: () => speakadmis912587("en-US"),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
