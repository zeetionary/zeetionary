import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinnocent extends StatefulWidget {
  const EnglishEntryinnocent({super.key});

  @override
  State<EnglishEntryinnocent> createState() => _EnglishEntryinnocentState();
}

class _EnglishEntryinnocentState extends State<EnglishEntryinnocent> {
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
- Adjective: innocent
1. Free from evil or guilt (- guiltless, clean-handed)
"an innocent child"; "the principle that one is innocent until proved guilty";
 
2. Lacking intent or capacity to injure (- innocuous)
"an innocent prank";
 
3. Free from sin (- impeccant, sinless)
 
4. Lacking in sophistication or worldliness (- ingenuous)
"a child's innocent stare";
 
5. Not knowledgeable about something specified (- unacquainted)
"American tourists wholly innocent of French";
 
6. Completely wanting or lacking (- barren, destitute, devoid, free, empty)
"innocent of literary merit";
 
7. [archaic] (used of things) lacking sense or awareness
"fine innocent weather"

- Noun: innocent (Derived forms: innocents)
1. A person who lacks knowledge of evil (- inexperienced person)
""",
  );

  final String keyword = "innocent";
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
    await flutterTts.speak("""innocent""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They have imprisoned an innocent man.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """English law a person is accounted innocent until they are proved guilty.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The accused was found innocent.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She continued to assert that she was innocent.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Innocent civilians had been shot and bayoneted.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Do you believe that your government could be bloody-minded enough to kill 300 innocent civilians?""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Three innocent bystanders were killed in the crossfire.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He cast himself as the innocent victim of a hate campaign.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """How can they put such a damning construction on a perfectly innocent phrase?""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She decidedly said that she was innocent.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Thousands of innocent civilians have been killed in this conflict.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""At the time I was still an innocent young child.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was a perfectly innocent remark.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'UuGpm01SPcA';
    const double startSecondsend = 387;
    const String videoIdone = 'ewLpXw6uN28';
    const double startSecondsone = 1149;
    const String videoIdtwo = 'raSeaAeryWE';
    const double startSecondstwo = 2800;
    const String videoIdthree = 'qjqh9UVfNNk';
    const double startSecondsthree = 1316;
    const String videoIdfour = 'Tz2_7acRcnQ';
    const double startSecondsfour = 31;
    const String videoIdfive = 'LO9hUrEjLM4';
    const double startSecondsfive = 77;

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
                      word: """innocent""",
                      // alsoEnglishWord: "also: innocent",
                      britshText: """IpaUK: /ˈɪnəsnt/""",
                      americanText: """IpaUS: /ˈɪnəsnt/""",
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
کوردی: بێ‌گوناهـ، بێ‌تاوان، بێ‌سووچ، پاک، داوێن‌پاک،	سادە، فەقیر، تایەن، ساویلکە، بێ‌ئازار، بێ‌وەی، بێ‌قەلەودەلە (گەوجانە)،	بێ‌بەری (لە)، بێ
"""),
// With short examples define "innocent", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) کە تاوانبار نییە بە تاوانێک"""),
                    SentencesRow(
                      englishText: """They have imprisoned an innocent man.""",
                      kurdishText: """پیاوێکی بێ‌تاوانیان دەستگیرکردووە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """English law a person is accounted innocent until they are proved guilty.""",
                      kurdishText:
                          "لە یاسای ئینگلتەرە کەسێک بە بێتاوان سەیردەکرێت تا بە تاوانبار دەسەلمێندرێت.",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The accused was found innocent.""",
                      kurdishText: "گومانلێکراو بە بێتاوان ناسێندرا.",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She continued to assert that she was innocent.""",
                      kurdishText: "بەردەوام بوو لە جەختکردنەوە لە بێ‌تاوانیی.",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Three innocent bystanders were killed in the crossfire.""",
                      kurdishText: "لە تەقەکەدا سێ سەیرکەری بێ‌تاوان کوژران.",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She decidedly said that she was innocent.""",
                      kurdishText: "بە دڵنیاییەوە گوتی کە بێ‌تاوانە.",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) ئەوەی کەسێک بمرێت یان زیانی پێبگات لە ئەنجامی جەنگ، تاوانێک، هتد ئەگەرچی ڕاستەوخۆ بەشێک نەبێ لێی"""),
                    SentencesRow(
                      englishText:
                          """Thousands of innocent civilians have been killed in this conflict.""",
                      kurdishText:
                          """هەزاران هاوڵاتی بێ‌تاوان لەم پێکدادانە کوژراون.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Innocent civilians had been shot and bayoneted.""",
                      kurdishText:
                          "ھاوڵاتی بێ‌تاوان بە فیشەک و سەرنێزە لێیان دراوە.",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Do you believe that your government could be bloody-minded enough to kill 300 innocent civilians?""",
                      kurdishText:
                          "باوەڕت وایە حکومەتەکەت ھێندە خوێنخۆر بێت ٣٠٠ ھاوڵاتیی مەدەنی بێ‌تاوان بکوژێت؟",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He cast himself as the innocent victim of a hate campaign.""",
                      kurdishText:
                          "خۆی وەک قوربانیی بێ‌تاوانی کەمپینە ڕقاوییەکە پیشاندا.",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) هەبوونی ئەزموونی کەمی جیهان، بە تایبەتی لە بابەتی سێکس یان یان توندووتیژی"""),
                    const AlsoEnglishckb(word: "ھەروەھا: naive"),
                    SentencesRow(
                      englishText:
                          """At the time I was still an innocent young child.""",
                      kurdishText:
                          """لەو کاتەدا تەنها منداڵێکی بێ‌گوناح بووم.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) کە ئامانج لێی ئەوە نییە زیان بگەیەنێت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: harmless"),
                    SentencesRow(
                      englishText: """It was a perfectly innocent remark.""",
                      kurdishText: """لێدوانێکی تەواو بێ مەبەست بوو.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """How can they put such a damning construction on a perfectly innocent phrase?""",
                      kurdishText:
                          "چۆن دەتوانن واتایەکی ھێندە خراپ لێکبدەنەوە لە زاراوەیەکی تەواو بێ مەبەست؟",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
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
// end innocent