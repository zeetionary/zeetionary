// end agent
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryagent extends StatefulWidget {
  const EnglishEntryagent({super.key});

  @override
  State<EnglishEntryagent> createState() => _EnglishEntryagentState();
}

class _EnglishEntryagentState extends State<EnglishEntryagent> {
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
- Noun: agent (derived forms: agents)
1. An active and efficient cause; capable of producing a certain effect
"their research uncovered new disease agents"
 
2. A representative who acts on behalf of other persons or organizations
 
3. A substance that exerts some force or effect
 
4. A businessman who buys or sells for another in exchange for a commission (= factor, broker)
 
5. Any agent or representative of a federal agency or bureau (= federal agent)
 
6. The semantic role of the animate entity that instigates or causes the happening denoted by the verb in the clause (= agentive role)
""",
  );
// 188888880002200

  final String keyword = "agent";
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
    await flutterTts.speak("""agent""");
  }

  Future<void> speakagen25966(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Our agent in New York deals with all US sales.");
  }

  Future<void> speakag15224(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She got the work through an agent.");
  }

  Future<void> speakage256999(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was operating as an undercover agent in London.");
  }

  Future<void> speakagent56922(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The charity has been an agent for social change.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'f9SA25OukyM';
    const double startSecondsend = 9;
    const String videoIdone = '54z8jWNM0bE';
    const double startSecondsone = 167;
    const String videoIdtwo = 'CxDVAd_N5nI';
    const double startSecondstwo = 6;
    const String videoIdthree = 'LHqbfJ3tq4Y';
    const double startSecondsthree = 34;
    const String videoIdfour = 'SzWtVTuugEg';
    const double startSecondsfour = 1;
    const String videoIdfive = 'D8iMBvmBNgM';
    const double startSecondsfive = 27;

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
                      word: """agent""",
                      // alsoEnglishWord: "also: agent",
                      britshText: """IpaUK: /ˈeɪdʒənt/""",
                      americanText: """IpaUS: /ˈeɪdʒənt/""",
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
کوردی: نوێنەر، بریکار، دەڵاڵ، (ڕێزمان) کارا، بکەر، ھۆکار، بکەر، ئەنجام‌دەر، سیخوڕ، ئامێر، ئامراز، کەرەسە، ھۆ، (کیمیا) کارا (= ماک یان مادەیێ کە دەبێتە ھۆی کاردانەوەی کیمیایی)
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) کەسێک کە نوێنەری کەسێکی ترە لە بزنسێک یان سیاسەت"
                            ""),
                    SentencesRow(
                      englishText:
                          "Our agent in New York deals with all US sales.",
                      kurdishText:
                          "نوێنەرەکەمان لە نیویۆرک مامەڵە لەگەڵ ھەموو فرۆشتنەکانمان لە ئەمریکا دەکات.",
                      onPressedBritish: () => speakagen25966("en-GB"),
                      onPressedAmerican: () => speakagen25966("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) کەسێک کە ڕێکخەری کاری گۆەانیبێژێک یان یاریزانێکە، یان بڵاوکەرەوە دەدۆزێتەوە بۆ نووسەرێک"""),
                    SentencesRow(
                      englishText: "She got the work through an agent.",
                      kurdishText: "لە ڕێگەی بریکارێکەوە کارەکەی وەرگرت.",
                      onPressedBritish: () => speakag15224("en-GB"),
                      onPressedAmerican: () => speakag15224("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) کەسێک کە بە نھێنی زانیاری بۆ حکومەتێک یان دامەزراوەیەک کۆدەکاتەوە"""),
                    SentencesRow(
                      englishText:
                          "She was operating as an undercover agent in London.",
                      kurdishText: "وەک سیخوڕێکی نھێنی کاری دەکرد لە لەندەن.",
                      onPressedBritish: () => speakage256999("en-GB"),
                      onPressedAmerican: () => speakage256999("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) کەسێک/شتێک کە کاریگەرییەکی گرنگی لەسەر بارودۆخێک ھەیە"""),
                    SentencesRow(
                      englishText:
                          "The charity has been an agent for social change.",
                      kurdishText:
                          "ڕێکخراوەکە وەسیلەیەکی باش بووە بۆ گۆڕانکاری کۆمەڵایەتی.",
                      onPressedBritish: () => speakagent56922("en-GB"),
                      onPressedAmerican: () => speakagent56922("en-US"),
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
