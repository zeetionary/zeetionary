import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadmit extends StatefulWidget {
  const EnglishEntryadmit({super.key});

  @override
  State<EnglishEntryadmit> createState() => _EnglishEntryadmitState();
}

class _EnglishEntryadmitState extends State<EnglishEntryadmit> {
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
- Verb: admit (derived forms: admits, admitted, admitting)
1. Concede the existence, reality or truth of (= acknowledge)
"He admitted his errors"; "she was the last to admit the mistake";
 
2. Allow to enter; grant entry to (= allow in, let in, intromit)
"This pipe admits air"; "We cannot admit non-members into our club building";
 
3. Allow participation in or the right to be part of; permit to exercise the rights, functions, and responsibilities of (= let in, include)
"admit someone to the profession"; "She was admitted to the New Jersey Bar";
 
4. Admit into a group or community (= accept, take, take on)
"We'll have to vote on whether or not to admit a new member";
 
5. Afford possibility (= allow)
"This problem admits of no solution";
 
6. Give access or entrance to
"The French doors admit onto the yard"
 
7. Have room for (= accommodate, hold)
"The theatre admits 300 people";
 
8. Serve as a means of entrance
"This ticket will admit one adult to the show"
""",
  );
// 188888880002200

  final String keyword = "admit";
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
    await flutterTts.speak("""admit""");
  }

  Future<void> speakadmi4527(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She stubbornly refuses to admit the truth.");
  }

  Future<void> speakadmit4568(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "It was generally admitted that the government had acted too quickly.");
  }

  Future<void> speakadmit34587(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He refused to admit his guilt.");
  }

  Future<void> speakadmit45682(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "You will not be admitted to the theatre after the performance has started.");
  }

  Future<void> speakadmit458796(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Two crash victims were admitted to the local hospital.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'mICxKmCjF-4';
    const double startSecondsend = 376;
    const String videoIdone = '6noKf6t59IQ';
    const double startSecondsone = 772;
    const String videoIdtwo = 'N9uhgrNwZfY';
    const double startSecondstwo = 43;
    const String videoIdthree = '8hrp1YFeaEs';
    const double startSecondsthree = 148;
    const String videoIdfour = 'ir7k3nLgnRg';
    const double startSecondsfour = 1;
    const String videoIdfive = 'd4aD-epti4c';
    const double startSecondsfive = 96;
    // const String videoId = 'DTvS9lvRxZ8';
    // const double startSeconds = 16;
    // const String videoId = 'qxVWpWNPEWU';
    // const double startSeconds = 348;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """admit""",
                      // alsoEnglishWord: "also: admit",
                      britshText: """IpaUK: /ədˈmɪt/""",
                      americanText: """IpaUS: /ədˈmɪt/""",
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
١. (کردار) داننان بەوەی شتێک ڕاستە"""),
                    SentencesRow(
                      englishText: "She stubbornly refuses to admit the truth.",
                      kurdishText:
                          "بە کەللەڕەقییەوە ڕەتیدەکاتەوە دان بە ڕاستییەکە بنێ.",
                      onPressedBritish: () => speakadmi4527("en-GB"),
                      onPressedAmerican: () => speakadmi4527("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "It was generally admitted that the government had acted too quickly.",
                      kurdishText:
                          "بەشێوەیەکی گشتی دان بەوەدا نرا کە حکومەت بەزووی ھەنگاوی نا.",
                      onPressedBritish: () => speakadmit4568("en-GB"),
                      onPressedAmerican: () => speakadmit4568("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) داننان بە بەرپرسیاریەتی"""),
                    SentencesRow(
                      englishText: "He refused to admit his guilt.",
                      kurdishText: "ڕەتیکردەوە دان بە ھەڵەکەیدا بنێت.",
                      onPressedBritish: () => speakadmit34587("en-GB"),
                      onPressedAmerican: () => speakadmit34587("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) ڕێگەدان بە کەسێک بچێتە شوێنێک"""),
                    SentencesRow(
                      englishText:
                          "You will not be admitted to the theatre after the performance has started.",
                      kurdishText:
                          "ڕێگەت پێنادرێت بچیتە ناو ھۆڵی شانۆ لە دوای ئەوەی نمایش دەستیپێکردووە.",
                      onPressedBritish: () => speakadmit45682("en-GB"),
                      onPressedAmerican: () => speakadmit45682("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) بردنی کەسێک بۆ نەخۆشخانە"""),
                    SentencesRow(
                      englishText:
                          "Two crash victims were admitted to the local hospital.",
                      kurdishText:
                          "دوو قوربانی پێکدادانەکە بردرانە نەخۆشخانە ناوخۆییەکە.",
                      onPressedBritish: () => speakadmit458796("en-GB"),
                      onPressedAmerican: () => speakadmit458796("en-US"),
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
