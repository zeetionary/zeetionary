import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryincidental extends StatefulWidget {
  const EnglishEntryincidental({super.key});

  @override
  State<EnglishEntryincidental> createState() => _EnglishEntryincidentalState();
}

class _EnglishEntryincidentalState extends State<EnglishEntryincidental> {
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
- Adjective: incidental
1. Not of prime or central importance (- nonessential, accidental)
"incidental to the integral meanings of poetry";
 
2. Occurring with or following as a consequence (- attendant, consequent, accompanying, concomitant, ensuant, resultant, sequent, collateral)
"snags incidental to the changeover in management";
 
3. Being minor or subordinate; happening as a chance consequence (- incident, accidental)
"the road will bring other incidental advantages"; "extra duties incidental to the job"; "labour problems incidental to a rapid expansion"; "confusion incidental to a quick change"; "incidental expenses";

- Noun: incidental (Derived forms: incidentals)
1. (frequently plural) an expense not budgeted or not specified (- incidental expense, minor expense)
"he requested reimbursement of £7 for incidental expenses";
 
2. An item that is incidental
""",
  );

  final String keyword = "incidental";
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
    await flutterTts.speak("""incidental""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The discovery was incidental to their main research.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Information skills are not merely incidental to the curriculum but central to it.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""These risks are incidental to the work of a firefighter.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""You'll need money for incidentals such as tips and taxis.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'wh4aWZRtTwU';
    const double startSecondsend = 629;
    const String videoIdone = 'p0gwPwtXLjI';
    const double startSecondsone = 164;
    const String videoIdtwo = 'tURHTuKHBZs';
    const double startSecondstwo = 1730;
    const String videoIdthree = 'IiyBo-qLDeM';
    const double startSecondsthree = 1481;
    const String videoIdfour = 'H4BsZTsNMkQ';
    const double startSecondsfour = 264;
    const String videoIdfive = 'GHRZ8JHTEf0';
    const double startSecondsfive = 368;

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
                      word: """incidental""",
                      // alsoEnglishWord: "also: incidental",
                      britshText: """IpaUK: /ˌɪnsɪˈdentl/""",
                      americanText: """IpaUS: /ˌɪnsɪˈdentl/""",
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
کوردی: کەم، چکۆلە، لاوەکی، ناسەرەکی، ناگرنگ، تێهەڵکێش، ڕێکەوتی، شانسی
"""),
// With short examples define "incidental", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کە پەیوەندیدار بە شتێکی دیکە ڕوودەدات بەڵام هێندەی ئەوە گرنگ نییە"""),
                    SentencesRow(
                      englishText:
                          """The discovery was incidental to their main research.""",
                      kurdishText:
                          """دۆزینەوەکە بەشێک بوو لە توێژینەوەی سەرەکییان.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Information skills are not merely incidental to the curriculum but central to it.""",
                      kurdishText:
                          """شارەزاییەکانی زانیاری تەنها بەشێک نین لە پڕۆگرامەکە بەڵکو بەشی سەرەکیین.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) کە وەک ئەنجامی سرووشتی شتێک ڕوودەدات"""),
                    SentencesRow(
                      englishText:
                          """These risks are incidental to the work of a firefighter.""",
                      kurdishText:
                          """ئەم مەترسییانە بەشێکن لە کاری ئاگرکووژێنەرەوە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) شتێک کە ڕوودەدات پەیوەندیدار بە شتێکی دیکە ڕوودەدات بەڵام هێندەی ئەوە گرنگ نییە"""),
                    SentencesRow(
                      englishText:
                          """You'll need money for incidentals such as tips and taxis.""",
                      kurdishText:
                          """پێویستیت بە پارەیە بۆ شتە لاوەکییەکانی وەک شاگردانە و کرێی تاکسی.""",
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