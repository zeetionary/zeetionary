import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadjust extends StatefulWidget {
  const EnglishEntryadjust({super.key});

  @override
  State<EnglishEntryadjust> createState() => _EnglishEntryadjustState();
}

class _EnglishEntryadjustState extends State<EnglishEntryadjust> {
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
- Verb: adjust (derived forms: adjusts, adjusted, adjusting)
1. Alter or regulate so as to achieve accuracy or conform to a standard (= set, correct)
"Adjust the clock, please";
 
2. Place in a line or arrange so as to be parallel or straight (align, aline [non-standard], line up)
 
3. Adapt or conform oneself to new or different conditions (= conform, adapt)
"We must adjust to the bad economic situation";
 
4. Make correspondent or conformable
"Adjust your eyes to the darkness"
 
5. Decide how much is to be paid on an insurance claim
""",
  );
// 188888880002200

  final String keyword = "adjust";
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
    await flutterTts.speak("""adjust""");
  }

  Future<void> speakadj459(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This button is for adjusting the volume.");
  }

  Future<void> speakadj7596(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The brakes need to be adjusted.");
  }

  Future<void> speakadj4589(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It took her a while to adjust to living alone.");
  }

  Future<void> speakadj8542(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He smoothed his hair and adjusted his tie.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'QIkodlp8HMM';
    const double startSecondsend = 13;
    const String videoIdone = 'lNAAzs4C-lQ';
    const double startSecondsone = 379;
    const String videoIdtwo = 'XFyo8m3zeEM';
    const double startSecondstwo = 1;
    const String videoIdthree = 'jJrtgrGmZQk';
    const double startSecondsthree = 6;
    const String videoIdfour = '-DFWS9tvfRo';
    const double startSecondsfour = 56;
    const String videoIdfive = 'ZoWlNIzOO0E';
    const double startSecondsfive = 297;
    // const String videoIdsix = 'sATO6kfi_VY';
    // const double startSecondssix = 277;

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
                      word: """adjust""",
                      // alsoEnglishWord: "also: adjust",
                      britshText: """IpaUK: /əˈdʒʌst/""",
                      americanText: """IpaUS: /əˈdʒʌst/""",
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
                    const DefinitionKurdish(text: """
١. (کردار) گۆڕینی شتێک بە کەمی بۆ ئەوەی لەگەڵ بارودۆخێکی تازە بگونجێت"""),
                    SentencesRow(
                      englishText: "This button is for adjusting the volume.",
                      kurdishText: "ئەم دووگمە بۆ ڕێکخستنی دەنگەکەیە.",
                      onPressedBritish: () => speakadj459("en-GB"),
                      onPressedAmerican: () => speakadj459("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "The brakes need to be adjusted.",
                      kurdishText: "وەستێنەرەکان دەبێت ڕێکبخرێن.",
                      onPressedBritish: () => speakadj7596("en-GB"),
                      onPressedAmerican: () => speakadj7596("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) خۆڕاھێنان بە بارودۆخێکی تازە"""),
                    SentencesRow(
                      englishText:
                          "It took her a while to adjust to living alone.",
                      kurdishText: "ماوەیەکی پێچوو تا ڕابێت بە تەنھایی ژیان.",
                      onPressedBritish: () => speakadj4589("en-GB"),
                      onPressedAmerican: () => speakadj4589("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) کردنی گۆڕانێک لە شتێکدا بۆ ئەوەی باشتر یان ڕێکتر دەربکەوێت"""),
                    SentencesRow(
                      englishText: "He smoothed his hair and adjusted his tie.",
                      kurdishText: "قژی سافکرد و بۆینباخەکەی ڕێکخست.",
                      onPressedBritish: () => speakadj8542("en-GB"),
                      onPressedAmerican: () => speakadj8542("en-US"),
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
