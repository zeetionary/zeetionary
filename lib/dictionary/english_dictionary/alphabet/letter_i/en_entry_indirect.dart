import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryindirect extends StatefulWidget {
  const EnglishEntryindirect({super.key});

  @override
  State<EnglishEntryindirect> createState() => _EnglishEntryindirectState();
}

class _EnglishEntryindirectState extends State<EnglishEntryindirect> {
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
- Adjective: indirect
1. Having intervening factors, persons or influences
"reflection from the ceiling provided a soft indirect light"; "indirect evidence"; "an indirect cause"
 
2. Not as a direct effect or consequence
"indirect benefits"; "an indirect advantage"
 
3. Not direct in spatial dimension; not leading by a straight line or course to a destination
"sometimes taking an indirect path saves time"; "you must take an indirect course in sailing"
 
4. Descended from a common ancestor but through different lines (- collateral)
"an indirect descendant of the Stuarts";
 
5. Not direct in manner, language, behaviour or action
"making indirect but legitimate inquiries"; "an indirect insult"; "doubtless they had some indirect purpose in mind"; "though his methods are indirect they are not dishonest"; "known as a shady indirect fellow"
""",
  );

  final String keyword = "indirect";
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
    await flutterTts.speak("""indirect""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The building collapsed as an indirect result of the heavy rain.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """There would be some benefit, however indirect, to the state.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The territories were under the indirect control of the British Empire.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The comment was an indirect attack on the prime minister.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The plant prefers indirect sunlight.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'qWAagS_MANg';
    const double startSecondsend = 1390;
    const String videoIdone = 'e-or_D-qNqM';
    const double startSecondsone = 213;
    const String videoIdtwo = 'gQmiqmxJMtA';
    const double startSecondstwo = 6176;
    const String videoIdthree = 'f2kEGj-S1Tc';
    const double startSecondsthree = 661;
    const String videoIdfour = 'E2rtQFAibEA';
    const double startSecondsfour = 8674;
    const String videoIdfive = 'vntKopJeeuo';
    const double startSecondsfive = 38;

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
                      word: """indirect""",
                      // alsoEnglishWord: "also: indirect",
                      britshText: """IpaUK: /ˌɪndəˈrekt/, /ˌɪndaɪˈrekt/""",
                      americanText: """IpaUS: /ˌɪndəˈrekt/, /ˌɪndaɪˈrekt/""",
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
کوردی: ناڕاستەوخۆ، ناڕاست، بەپێچ‌وپەنا، تیان،	خوار، لار،	ناسەرەکی، لاوەکی، لاتەنیشتی،	(سەودا) چەوت، نادروست، فێڵاوی، دەغەڵانە
"""),
// With short examples define "indirect", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کە وەک ئامانج، ئەنجام، یان هۆکاری ناڕاستەوخۆی شتێک ڕوودەدات"""),
                    SentencesRow(
                      englishText:
                          """The building collapsed as an indirect result of the heavy rain.""",
                      kurdishText:
                          """بیناکە ڕووخا وەک ئەنجامی ناڕاستەوخۆی بارانە بەخووڕەکە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There would be some benefit, however indirect, to the state.""",
                      kurdishText:
                          """هەندێک سوود دەبێت بۆ دۆخەکەم هەرچەندە ناڕاستەوخۆش بێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) کە ڕاستەوخۆ ناکرێت"""),
                    SentencesRow(
                      englishText:
                          """The territories were under the indirect control of the British Empire.""",
                      kurdishText:
                          """ناوچەکان لەژێر کۆنترۆڵی ناڕاستەوخۆی ئیمپراتۆریەتیی بەریتانی بوون.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) کە دووربکەویتەوە لە گوتنی شتێک بە ڕاستەوخۆ و ڕوونی"""),
                    SentencesRow(
                      englishText:
                          """The comment was an indirect attack on the prime minister.""",
                      kurdishText:
                          """لێدوانەکە هێرشێکی ناڕاستەوخۆ بوو لەسەر سەرۆک وەزیران.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ھاوەڵناو) کە بە هێڵێکی ڕاستەوخۆ ناچێت"""),
                    SentencesRow(
                      englishText: """The plant prefers indirect sunlight.""",
                      kurdishText:
                          """ڕووەکەکە تیشکی خۆری ناڕاستەوخۆی پێباشە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
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