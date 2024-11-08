import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalignment extends StatefulWidget {
  const EnglishEntryalignment({super.key});

  @override
  State<EnglishEntryalignment> createState() => _EnglishEntryalignmentState();
}

class _EnglishEntryalignmentState extends State<EnglishEntryalignment> {
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
- Noun: alignment (derived forms: alignments)
1. The spatial property possessed by an arrangement or position of things in a straight line or in parallel lines
 
2. The act of adjusting or aligning the parts of a device in relation to each other
 
3. State of agreement and/or having the same or similar goals
"alignment of AI with human values is a major challenge"
 
4. An organization of people (or countries) involved in a pact or treaty (= alliance, coalition, alinement [non-standard])
 
5. (astronomy) apparent meeting or passing of two or more celestial bodies in the same degree of the zodiac (= conjunction)
""",
  );
// 188888880002200

  final String keyword = "alignment";
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
    await flutterTts.speak("""alignment""");
  }

  Future<void> speakalignment2533(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A bone in my spine was out of alignment.");
  }

  Future<void> speakalignment2455(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The door needs to be in alignment with the frame before you start work on it.");
  }

  Future<void> speakalignment3522(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We will implement policies in alignment with our fiscal goals.");
  }

  Future<void> speakalignment35288(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Property prices are too high and need to be brought back into alignment.");
  }

  Future<void> speakalignment325888(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The new prime minister has moved into a much closer alignment with America.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'NZUgNJjUQLY';
    const double startSecondsend = 9;
    const String videoIdone = 'P6EllJTMrZs';
    const double startSecondsone = 0;
    const String videoIdtwo = 'awOMTYDptfk';
    const double startSecondstwo = 18;
    const String videoIdthree = 'c52AaUmEz5c';
    const double startSecondsthree = 297;
    const String videoIdfour = '0sguZ-gRF9I';
    const double startSecondsfour = 3;
    const String videoIdfive = 'U_04dRQZUD4';
    const double startSecondsfive = 10;
    // final String _videoId = 'IxnK1XE6ZAA';
    // final double _startSeconds = 51;
    // final String _videoId = 'hHBP6D5mIpA';
    // final double _startSeconds = 545;
    // final String _videoId = 'xSKFj6ICfSg';
    // final double _startSeconds = 4;
    // final String _videoId = 'OAtQjNNSDtE';
    // final double _startSeconds = 31;

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
                      word: """alignment""",
                      // alsoEnglishWord: "also: alignment",
                      britshText: """IpaUK: /əˈlaɪnmənt/""",
                      americanText: """IpaUS: /əˈlaɪnmənt/""",
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
کوردی: ھێڵ، ڕیز، ڕێکە، ڕێکخستن، میزان‌کردن، تەرازاندن، ڕیزاندن، ڕیزبەندی، ڕیزکردن
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) ڕێک لەسەر ھێڵێکی ڕاست" ""),
                    SentencesRow(
                      englishText: "A bone in my spine was out of alignment.",
                      kurdishText: "ئێسکێک لە بڕبڕەی پشتم پلابوو.",
                      onPressedBritish: () => speakalignment2533("en-GB"),
                      onPressedAmerican: () => speakalignment2533("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "The door needs to be in alignment with the frame before you start work on it.",
                      kurdishText:
                          "دەرگاکە پێویستە لەگەڵ چوارچێوەکەی ڕێک بێت پێش ئەوەی دەست بە کارکردن بکەیت لەسەری.",
                      onPressedBritish: () => speakalignment2455("en-GB"),
                      onPressedAmerican: () => speakalignment2455("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ئەو بارودۆخەی کە پەیوەندی یەکگیرر ھەیە لەنێوان دوو شت"""),
                    SentencesRow(
                      englishText:
                          "We will implement policies in alignment with our fiscal goals.",
                      kurdishText:
                          "ئەو سیاسەت دادەڕێژین کە لەگەل ئامانجەکانی ساڵەکەمان یەکبگرێتەوە.",
                      onPressedBritish: () => speakalignment3522("en-GB"),
                      onPressedAmerican: () => speakalignment3522("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "Property prices are too high and need to be brought back into alignment.",
                      kurdishText: "نرخی زەوی زۆر بەرزە و پێویستە ڕێکبخرێت.",
                      onPressedBritish: () => speakalignment35288("en-GB"),
                      onPressedAmerican: () => speakalignment35288("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) پشتگیری ئابووری یان سیاسی وڵاتێک یان گرووپێک بۆ یەکێکی تر"""),
                    SentencesRow(
                      englishText:
                          "The new prime minister has moved into a much closer alignment with America.",
                      kurdishText:
                          "سەرۆک وەزیرانە نوێیەکە ھاوپەیمانییەکی زیاتری لەگەڵ ئەمریکادا ھەیە.",
                      onPressedBritish: () => speakalignment325888("en-GB"),
                      onPressedAmerican: () => speakalignment325888("en-US"),
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


