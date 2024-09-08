import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaddict extends StatefulWidget {
  const EnglishEntryaddict({super.key});

  @override
  State<EnglishEntryaddict> createState() => _EnglishEntryaddictState();
}

class _EnglishEntryaddictState extends State<EnglishEntryaddict> {
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
- Noun: addict (derived forms: addicts, addicted, addicting)
1. Someone who is physiologically dependent on a substance or activity
 
2. Someone who is so ardently devoted to something that it resembles an addiction (= nut [informal], freak, junkie [informal], junky [informal])
"a golf addict";

- Verb: addict (derived forms: addicts, addicted, addicting)
1. To cause (someone or oneself) to become dependent (on something, especially a narcotic drug) (= hook)
""",
  );
// 188888880002200

  final String keyword = "addict";
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
    await flutterTts.speak("""addict""");
  }
  
    Future<void> speakadd2354(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Many young boys become computer addicts.");
  }

  Future<void> speakaddi2541(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He used to be a drug addict for years.");
  }

  @override
  Widget build(BuildContext context) {

    
    const String videoIdend = 'r8E1Hq5tktg';
    const double startSecondsend = 62;
    const String videoIdone = 'BvBQVvuP-BY';
    const double startSecondsone = 410;
    const String videoIdtwo = 'nBnip0Vjn5s';
    const double startSecondstwo = 110;
    const String videoIdthree = 'fbWNvNQ3mbg';
    const double startSecondsthree = 33;
    const String videoIdfour = 'Ab5niZNeE1k';
    const double startSecondsfour = 212;
    const String videoIdfive = 'I0iVAkyjrm8';
    const double startSecondsfive = 81;
    // const String videoId = 'jX04_ON3_2M';
    // const double startSeconds = 118;

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
                      word: """addict""",
                      // alsoEnglishWord: "also: addict",
                      britshText: """IpaUK: /ˈædɪkt/""",
                      americanText: """IpaUS: /ˈædɪkt/""",
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
کوردی: (بنیادەمی) گیرۆدە، خووپێ‌گرتوو، ئالوودە، فێر، سەوداسەر، دیل، ھۆگر، گیرۆدە
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) کەسێک کە ناتوانێت دەستبەرداری شتێک بێت"
                                  ""),
                          SentencesRow(
                            englishText:
                                "Many young boys become computer addicts.",
                            kurdishText:
                                "ژمارەیەکی زۆر لە کوڕانی گەنج ئاڵوودەی کۆمپیوتەر دەبن.",
                            onPressedBritish: () => speakadd2354("en-GB"),
                            onPressedAmerican: () => speakadd2354("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He used to be a drug addict for years.",
                            kurdishText:
                                "جاران بۆ ماوەیەکی زۆر ئاڵوودەی مادەی ھۆشبەر بوو.",
                            onPressedBritish: () => speakaddi2541("en-GB"),
                            onPressedAmerican: () => speakaddi2541("en-US"),
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