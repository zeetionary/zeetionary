import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadoption extends StatefulWidget {
  const EnglishEntryadoption({super.key});

  @override
  State<EnglishEntryadoption> createState() => _EnglishEntryadoptionState();
}

class _EnglishEntryadoptionState extends State<EnglishEntryadoption> {
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
- Noun: adoption (derived forms: adoptions)
1. The act of accepting with approval; favourable reception (= acceptance, acceptation, espousal)
"its adoption by society";
 
2. (law) a legal proceeding that creates a parent-child relation between persons not related by blood; the adopted child is entitled to all privileges belonging to a natural child of the adoptive parents (including the right to inherit)
 
3. The appropriation (of ideas or words etc) from another source (= borrowing)
"the adoption of ancient motifs was very apparent";
""",
  );
// 188888880002200

  final String keyword = "adoption";
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
    await flutterTts.speak("""adoption""");
  }

  Future<void> speakadopt58694(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She put the baby up for adoption.");
  }

  Future<void> speakadop5861(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The widespread adoption of new technology could save 162 billion dollars a year.");
  }

  Future<void> speakadop25674(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The party announced the formal adoption of George Smith as their election candidate.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'vn1_vUghWzA';
    const double startSecondsend = 157;
    const String videoIdone = 'nmZtoWLX3JE';
    const double startSecondsone = 48;
    const String videoIdtwo = 'uPQ7GRQFZDg';
    const double startSecondstwo = 65;
    const String videoIdthree = 'pJvqmSz-1eM';
    const double startSecondsthree = 42;
    const String videoIdfour = 'ZkH5UCp8h1k';
    const double startSecondsfour = 30;
    const String videoIdfive = '9As1fbbmq-U';
    const double startSecondsfive = 180;

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
                      word: """adoption""",
                      // alsoEnglishWord: "also: adoption",
                      britshText: """IpaUK: /əˈdɒpʃn/""",
                      americanText: """IpaUS: /əˈdɑːpʃn/""",
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
کوردی: کردنەمناڵی خۆ، مناڵ‌گرتنەخۆ، مناڵ‌ھەڵگرتنەوە، ھەڵبژاردن، پەسند، وەرگرتن، ڕەچاوکردن، گرتنەبەر
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) ھەڵگرتنەوەی منداڵ" ""),
                    SentencesRow(
                      englishText: "She put the baby up for adoption.",
                      kurdishText: "دەستبەرداری منداڵەکە بوو بۆ ھەڵگرتنەوە.",
                      onPressedBritish: () => speakadopt58694("en-GB"),
                      onPressedAmerican: () => speakadopt58694("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) دەستکردن بە بەکارھێنانی شتێک"""),
                    SentencesRow(
                      englishText:
                          "The widespread adoption of new technology could save 162 billion dollars a year.",
                      kurdishText:
                          "بەکارھێنانی بەرفراوانی تەکنەلۆژیای تازە ئەکرێت ١٦٢ ملیار دۆلاری ساڵانە بگەڕێنێتەوە.",
                      onPressedBritish: () => speakadop5861("en-GB"),
                      onPressedAmerican: () => speakadop5861("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) دیاریکردنی کەسێک وەک کاندیدی ھەڵبژاردن"""),
                    SentencesRow(
                      englishText:
                          "The party announced the formal adoption of George Smith as their election candidate.",
                      kurdishText:
                          "پارتەکە بە فەرمی ھەڵبژاردنی جۆرج سمیسی وەک کاندیدی ھەڵبژاردنەکان ڕاگەیاند.",
                      onPressedBritish: () => speakadop25674("en-GB"),
                      onPressedAmerican: () => speakadop25674("en-US"),
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
