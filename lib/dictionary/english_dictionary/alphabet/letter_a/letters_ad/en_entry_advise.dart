import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadvise extends StatefulWidget {
  const EnglishEntryadvise({super.key});

  @override
  State<EnglishEntryadvise> createState() => _EnglishEntryadviseState();
}

class _EnglishEntryadviseState extends State<EnglishEntryadvise> {
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
- Verb: advise (derived forms: advised, advising, advises)
1. Give advice to (= rede [archaic], counsel)
"The teacher advises troubled students";
 
2. Inform (somebody) of something (= notify, give notice, send word, apprise)
"I advised him that the rent was due";
 
3. Make a proposal, declare a plan for something (= propose, suggest)
""",
  );
// 188888880002200

  final String keyword = "advise";
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
    await flutterTts.speak("""advise""");
  }

  Future<void> speakadv399865(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They advised me against visiting the south of the country.");
  }

  Future<void> speakadvise259935(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her mother was away and couldn't advise her.");
  }

  Future<void> speakadvi789255(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We employ an expert to advise on new technology.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'ZCbAx9pZU7k';
    const double startSecondsend = 1;
    const String videoIdone = '7jt-g00I9N0';
    const double startSecondsone = 1;
    const String videoIdtwo = '9TugA_z5vQE';
    const double startSecondstwo = 420;
    const String videoIdthree = 'NYQZx1irvYc';
    const double startSecondsthree = 257;
    const String videoIdfour = 'SG6TPTBBz7g';
    const double startSecondsfour = 556;
    const String videoIdfive = 'iXl0rCHpk60';
    const double startSecondsfive = 455;
    // const String videoId = 'n5CPMf5eC_s';
    // const double startSeconds = 930;

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
                      word: """advise""",
                      // alsoEnglishWord: "also: advise",
                      britshText: """IpaUK: /ədˈvaɪz/""",
                      americanText: """IpaUS: /ədˈvaɪz/""",
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
١. (کردار) پێدانی ڕاوێژ و ئامۆژگاری بە کەسێک"""),
                    SentencesRow(
                      englishText:
                          "They advised me against visiting the south of the country.",
                      kurdishText:
                          "ڕاوێژیان پێدام دژ بە سەردانیکردنی باشووری وڵاتەکە.",
                      onPressedBritish: () => speakadv399865("en-GB"),
                      onPressedAmerican: () => speakadv399865("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "Her mother was away and couldn't advise her.",
                      kurdishText:
                          "دایکی دوور بوو لێی و نەیدەتوانی ئامۆژگاری بکات.",
                      onPressedBritish: () => speakadvise259935("en-GB"),
                      onPressedAmerican: () => speakadvise259935("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) یارمەتیدانی کەسێک لە شتێکدا کە زۆری لەسەر دەزانیت"""),
                    SentencesRow(
                      englishText:
                          "We employ an expert to advise on new technology.",
                      kurdishText:
                          "شارەزایەک دادەمەزرێنین بۆپێدانی ڕاوێژ لەسەر تەکنەلۆژیای تازە.",
                      onPressedBritish: () => speakadvi789255("en-GB"),
                      onPressedAmerican: () => speakadvi789255("en-US"),
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
