import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryirritation extends StatefulWidget {
  const EnglishEntryirritation({super.key});

  @override
  State<EnglishEntryirritation> createState() => _EnglishEntryirritationState();
}

class _EnglishEntryirritationState extends State<EnglishEntryirritation> {
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
- Noun: irritation (Derived forms: irritations)
1. The psychological state of being irritated or annoyed (- annoyance, vexation, botheration [informal])
 
2. A sudden outburst of anger (- pique, temper)
"his irritation sparked like damp firewood";
 
3. (pathology) abnormal sensitivity to stimulation
"any food produced irritation of the stomach"
 
4. The neural or electrical arousal of an organ or muscle or gland (- excitation, innervation)
 
5. An uncomfortable feeling of mental painfulness or distress (- discomfort, soreness)
 
6. Unfriendly behaviour that causes anger or resentment (- aggravation, provocation)
 
7. The act of troubling or annoying someone (- annoyance, annoying, vexation)
 
8. Something or someone that causes annoyance, inconvenience, or makes life more difficult (- annoyance, bother, botheration [informal], pain, infliction, pain in the neck [informal], nuisance)
""",
  );

  final String keyword = "irritation";
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
    await flutterTts.speak("""irritation""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""That kind of behaviour is sure to cause irritation.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It is an antiseptic cream suitable for minor skin irritations.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'CB-J8nI_y78';
    const double startSecondsend = 203;
    const String videoIdone = 'Cg10exNmf7I';
    const double startSecondsone = 219;
    const String videoIdtwo = 'p3O6bKdPLbw';
    const double startSecondstwo = 2824;
    const String videoIdthree = 'OnED0eTNVoA';
    const double startSecondsthree = 655;
    const String videoIdfour = 'f9SA25OukyM';
    const double startSecondsfour = 220;
    const String videoIdfive = 'udI0QnkMRi4';
    const double startSecondsfive = 389;

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
                      word: """irritation""",
                      // alsoEnglishWord: "also: irritation",
                      britshText: """IpaUK: /ˌɪrɪˈteɪʃn/""",
                      americanText: """IpaUS: /ˌɪrɪˈteɪʃn/""",
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
کوردی: ناڕەحەتی، ڕق‌هەستاندن، ورووژاندن، تین‌دان، ئارۆزان، جهنین، تووڕەکردن،	ڕەنجان، دڵمەندی، دڵ‌ئێشان،	سووتانەوە، کزانەوە، چزانەوە
"""),
// With short examples define "irritation", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئەوەی کە بێزار بیت، زیاتر بەوەی کە کەسێک شتێک بەردەوام بکات یان شتێک بەردەوام ڕووبدات"""),
                    SentencesRow(
                      englishText:
                          """That kind of behaviour is sure to cause irritation.""",
                      kurdishText:
                          """ئەو جۆرە ڕەفتارە بێگومان بێزاری درووست دەکات.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئەوەی پێستت یان بەشێکی جەستەت ئازاری هەبێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It is an antiseptic cream suitable for minor skin irritations.""",
                      kurdishText:
                          """کرێمێکی دژە بەکتریایە کە گونجاوە بۆ ئازاری کەمی پێست.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
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
// end irritation
