import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinfect extends StatefulWidget {
  const EnglishEntryinfect({super.key});

  @override
  State<EnglishEntryinfect> createState() => _EnglishEntryinfectState();
}

class _EnglishEntryinfectState extends State<EnglishEntryinfect> {
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
- Verb: infect (Derived forms: infects, infected, infecting)
1. Communicate a disease to
"Your children have infected you with this head cold"
 
2. Contaminate with a disease or microorganism (- taint)
 
3. Corrupt with ideas or an ideology
"society was infected by racism"
 
4. Affect in a contagious way
"His laughter infects everyone who is in the same room"
""",
  );

  final String keyword = "infect";
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
    await flutterTts.speak("""infect""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It is not possible to infect another person through kissing.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The eggs were infected with salmonella.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """A computer virus may lurk unseen in a computer's memory, calling up and infecting each of the machine's data files in turn.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She infected the children with her enthusiasm for music.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'UQTtVrEnMNo';
    const double startSecondsend = 14;
    const String videoIdone = 'W7jYqsNFZ8c';
    const double startSecondsone = 261;
    const String videoIdtwo = 'YB6O7jS_VBM';
    const double startSecondstwo = 153;
    const String videoIdthree = 'bUia-EbqS7A';
    const double startSecondsthree = 477;
    const String videoIdfour = 's3YTfhJmh1I';
    const double startSecondsfour = 218;
    const String videoIdfive = 'T-_HKFjxVl0';
    const double startSecondsfive = 639;

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
                      word: """infect""",
                      // alsoEnglishWord: "also: infect",
                      britshText: """IpaUK: /ɪnˈfekt/""",
                      americanText: """IpaUS: /ɪnˈfekt/""",
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
//                     const KurdishVocabulary(text: """
// کوردی:
// """),
// With short examples define "infect", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (کردار) گواستنەوەی نەخۆشییەک"""),
                    SentencesRow(
                      englishText:
                          """It is not possible to infect another person through kissing.""",
                      kurdishText:
                          """ناکرێت کەسێکی تر تووش بکرێت بە ماچکردن.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) واکردنی ئەوەی مادەیەک بەکتریای زیانبەخش لەخۆ بگرێت کە نەخۆشی بگوازێتەوە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: lifecontaminate"),
                    SentencesRow(
                      englishText:
                          """The eggs were infected with salmonella.""",
                      kurdishText: """هێلەکان پیسکران بە سالمۆنێلا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) واکردنی ئەوەی ڤایرۆسێکی کۆمپیوتەر بچێتە کۆمپیوتەرێکی دیکە یان پڕۆگرامێک"""),
                    SentencesRow(
                      englishText:
                          """A computer virus may lurk unseen in a computer's memory, calling up and infecting each of the machine's data files in turn.""",
                      kurdishText:
                          """ڤایرۆسێکی کۆمپیوتەر دەکرێت بە نەبینراوی بمێنێتەوە لە میمۆری کۆمپیوتەردا، چالاک بێت و تووشی هەر داتایەکی ئامێرەکە بێت یەک بە یەک.""",
                      englishNote:
                          """This means a computer virus can hide quietly in the memory without anyone noticing. Then, one by one, it activates, infecting each data file like a silent intruder, corrupting them in a chain reaction, spreading through the entire system, leaving no file untouched.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) واکردنی ئەوەی کەسێک هەستێکی دیاریکراوی هەبێت"""),
                    SentencesRow(
                      englishText:
                          """She infected the children with her enthusiasm for music.""",
                      kurdishText:
                          """منداڵەکانی تووش کرد بە حەزەکەی بۆ میوزیک.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
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
