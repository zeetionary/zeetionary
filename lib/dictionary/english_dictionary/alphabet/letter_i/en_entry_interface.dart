import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinterface extends StatefulWidget {
  const EnglishEntryinterface({super.key});

  @override
  State<EnglishEntryinterface> createState() => _EnglishEntryinterfaceState();
}

class _EnglishEntryinterfaceState extends State<EnglishEntryinterface> {
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
- Noun: interface (Derived forms: interfaces)
1. (chemistry) a surface forming a common boundary between two things (two objects, liquids or chemical phases)
 
2. (computing) a program that controls a display for the user (usually on a computer monitor) and that allows the user to interact with the system (- user interface)
 
3. The overlap where two theories or phenomena affect each other or have links with each other
"the interface between chemistry and biology"
 
4. (computing) computer circuit consisting of the hardware and associated circuitry that links one device with another (especially a computer and a hard disk drive or other peripherals) (- port)

- Verb: interface (Derived forms: interfaced, interfaces, interfacing)
1. (computing) to connect with an interface
 
2. Interact
"I think you should try to interface with sales department"
""",
  );

  final String keyword = "interface";
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
    await flutterTts.speak("""interface""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The new version of the program comes with a much better user interface than the original.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We need a clearer interface between management and the workforce.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The new system interfaces with existing telephone equipment.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'SrDEtSlqJC4';
    const double startSecondsend = 690;
    const String videoIdone = 'pFEB0chiuJA';
    const double startSecondsone = 244;
    const String videoIdtwo = 'qg2nGY1aqlg';
    const double startSecondstwo = 2076;
    const String videoIdthree = 'UoSSCUMk-7I';
    const double startSecondsthree = 208;
    const String videoIdfour = 'SwQhKFMxmDY';
    const double startSecondsfour = 141;
    const String videoIdfive = 'mrkAmmMakMg';
    const double startSecondsfive = 137;

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
                      word: """interface""",
                      // alsoEnglishWord: "also: interface",
                      britshText: """IpaUK: /ˈɪntəfeɪs/""",
                      americanText: """IpaUS: /ˈɪntərfeɪs/""",
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
کوردی: خاڵی هاوبەش، ڕووی هاوبەش، ئاستی هاوبەش، هاوڕوو، جەمسەر، خاڵی پێک‌گەیشتن
"""),
// With short examples define "interface", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) شێوازی دەرکەوتنی داتا و زانیاری لەسەر پڕۆگرامێکی کۆمپیوتەری، بۆ نموونە وێبسایتێک"""),
                    SentencesRow(
                      englishText:
                          """The new version of the program comes with a much better user interface (= way of showing information to a user) than the original.""",
                      kurdishText:
                          """وەشانە تازەکەی پڕۆگرامەکە ڕووکارێکی بەکارهێنەریی زۆر باشتری هەیە وەک لەوەی سەرەتا.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئەو خاڵەی کە دوو بابەت، سیستەم، هتد تێیدا کار لە یەکدی دەکەن"""),
                    SentencesRow(
                      englishText:
                          """We need a clearer interface between management and the workforce.""",
                      kurdishText:
                          """پێویستیمان بە کارلێکی زیاتر هەیە لە نێوان بەڕێوەبەرایەتی و دەستی کار.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵناو) پەیوەست بە شتێک"""),
                    SentencesRow(
                      englishText:
                          """The new system interfaces with existing telephone equipment.""",
                      kurdishText:
                          """سیستەمە تازە پەیوەست دەبێت بە ئامێری هەبووی تەلەفۆن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
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
// end interface