import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryk extends StatefulWidget {
  const EnglishEntryk({super.key});

  @override
  State<EnglishEntryk> createState() => _EnglishEntrykState();
}

class _EnglishEntrykState extends State<EnglishEntryk> {
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
- Noun: k (Derived forms: ks)
1. The 11th letter of the Roman alphabet (- K, kay)

- Adjective: k
1. Denoting a quantity consisting of 1,000 items or units (- thousand, one thousand, 1000, m)

- Noun: K (Derived forms: Ks)
1. The cardinal number that is the product of 10 and 100 (- thousand, one thousand, 1000, M, chiliad, G, thou, yard)
 
2. The basic unit of thermodynamic temperature adopted under the Système International d'Unités (- kelvin)
 
3. [slang] A street name for ketamine (- jet [slang], super acid [slang], special K [slang], honey oil [slang], green [slang], cat valium [slang], super C [slang])
 
4. A light soft silver-white metallic element of the alkali metal group; oxidizes rapidly in air and reacts violently with water; is abundant in nature in combined forms occurring in sea water and in carnallite and kainite and sylvite (- potassium, atomic number 19)
 
5. A unit of information equal to 1000 bytes (- kilobyte, KB, kB)
 
6. A unit of information equal to 1024 bytes (- kilobyte, kibibyte, KB, kB, KiB)
""",
  );

  final String keyword = "k";
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
    await flutterTts.speak("""k""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""‘King’ begins with (a) K/‘K’.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She earns 40K (= £40 000) a year.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She trained for weeks to run a 10K race.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I bought a computer with 256K of memory""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Water freezes at exactly 273°K.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/ML8IL77gQ3k?t=42';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/_R0xRT2y7Uo?t=1992';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/VFqbGbU8f8o?t=97';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/fC1zzL9DjdU?t=70';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/HxRUuGqqMG4?t=1858';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/D8tPkb98Fkk?t=324';
    const double startSecondsfive = 0;

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
                      word: """k""",
                      // alsoEnglishWord: "also: k",
                      britshText: """IpaUK: /keɪ/""",
                      americanText: """IpaUS: /keɪ/""",
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
کوردی: 
"""),
// With short examples define "k", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) یازدەیەم پیتی ئەلفوبێی ئینگلیزی"""),
                    SentencesRow(
                      englishText: """‘King’ begins with (a) K/‘K’.""",
                      kurdishText: """‘King’ بە K دەست پێدەکات.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٢. (ناو) هەزار"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She earns 40K (= £40 000) a year.""",
                      kurdishText: """٤٠ هەزار لە ساڵێکدا قازانج دەکات.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٣. (ناو) کیلۆمەتر"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She trained for weeks to run a 10K race.""",
                      kurdishText:
                          """بۆ چەندین هەفتە ڕاهێنانی کرد بۆ ڕاکردن لە پێشبڕکێیەکی ١٠ کیلۆمەتری.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٤. (ناو) کیلۆبایت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I bought a computer with 256K of memory""",
                      kurdishText:
                          """کۆمپیوتەرێکم کڕی بە میمۆری ٢٥٦ کیلۆبایتەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٥. (ناو) کێڵڤن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Water freezes at exactly 273°K.""",
                      kurdishText: """ئاو لە ٢٧٣ پلەی ڕێکی کێڵڤن دەیبەستێت.""",
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
// end k