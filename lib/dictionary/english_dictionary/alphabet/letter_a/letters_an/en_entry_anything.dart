import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanything extends StatefulWidget {
  const EnglishEntryanything({super.key});

  @override
  State<EnglishEntryanything> createState() => _EnglishEntryanythingState();
}

class _EnglishEntryanythingState extends State<EnglishEntryanything> {
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
- Pronoun: anything 
1. An indefinite thing
"he acted as a backstop in case anything went wrong"
""",
  );
// 188888880002200

  final String keyword = "anything";
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
    await flutterTts.speak("""anything""");
  }

  Future<void> speakanything1010(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Would you like anything else?");
  }

  Future<void> speakanything1012(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There's never anything worth watching on TV.");
  }

  Future<void> speakanything1013(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm so hungry, I'll eat anything.");
  }

  Future<void> speakanything1015(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Is there anything (= any truth) in these rumours?");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '21Z4RIOFhMA';
    const double startSecondsend = 169;
    const String videoIdone = 'ZCg9xHNPR3k';
    const double startSecondsone = 518;
    const String videoIdtwo = 'hFZFjoX2cGg';
    const double startSecondstwo = 416;
    const String videoIdthree = 'a_TSR_v07m0';
    const double startSecondsthree = 24;
    const String videoIdfour = 'DPZzrlFCD_I';
    const double startSecondsfour = 452;
    const String videoIdfive = 'XFGAQrEUaeU';
    const double startSecondsfive = 73;
    // final String _videoId = '9sRQQRiltrE';
    // final double _startSeconds = 121;
    // final String _videoId = '_spuxXnul0U';
    // final double _startSeconds = 828;
    // final String _videoId = 'lVoGZiL-kns';
    // final double _startSeconds = 159;
    // final String _videoId = 'khOUvmOQExc';
    // final double _startSeconds = 352;
    // final String _videoId = 'e09xig209cQ';
    // final double _startSeconds = 962;
    // final String _videoId = '_wNsZEqpKUA';
    // final double _startSeconds = 166;

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
                      word: """anything""",
                      // alsoEnglishWord: "also: anything",
                      britshText: """IpaUK: /ˈeniθɪŋ/""",
                      americanText: """IpaUS: /ˈeniθɪŋ/""",
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
کوردی: شتێ، ھەرشتێ، ھەرچی (بێ)، کارێ، ھیچ‌کارێ، ھەرکار،ھیچ‌شتێ
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (جێناو) بەکاردێت بۆ ئاماژە بۆ شتێک لە ڕستەی نەرێ و پرسیاری، لە دوای if و whether، و لە دوای ھەندێک کردار، بۆ نموونە prevent و ban و avoid"""),
                    SentencesRow(
                      englishText: "Would you like anything else?",
                      kurdishText: "حەزت لە ھیچی ترە؟",
                      onPressedBritish: () => speakanything1010("en-GB"),
                      onPressedAmerican: () => speakanything1010("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "There's never anything worth watching on TV.",
                      kurdishText:
                          "ھەرگیز ھیچ لەسەر تەلەفیزیۆن نییە شایەنی سەیرکردن بێ.",
                      onPressedBritish: () => speakanything1012("en-GB"),
                      onPressedAmerican: () => speakanything1010("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (جێناو) ھەرشتێک، گرنگ نییە چی بێت"""),
                    SentencesRow(
                      englishText: "I'm so hungry, I'll eat anything.",
                      kurdishText: "زۆرم برسییە، ھەرچی ھەبێت ئەیخۆم.",
                      onPressedBritish: () => speakanything1013("en-GB"),
                      onPressedAmerican: () => speakanything1013("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (جێناو) شتێکی گرنگ"""),
                    SentencesRow(
                      englishText:
                          "Is there anything (= any truth) in these rumours?",
                      kurdishText: "ھیچ شتێکی گرنگ لەم دەنگۆیانە ھەیە.",
                      onPressedBritish: () => speakanything1015("en-GB"),
                      onPressedAmerican: () => speakanything1015("en-US"),
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
