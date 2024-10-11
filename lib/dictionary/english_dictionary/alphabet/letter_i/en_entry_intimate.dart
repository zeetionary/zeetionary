import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryintimate extends StatefulWidget {
  const EnglishEntryintimate({super.key});

  @override
  State<EnglishEntryintimate> createState() => _EnglishEntryintimateState();
}

class _EnglishEntryintimateState extends State<EnglishEntryintimate> {
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
- Verb: intimate (Derived forms: intimated, intimates, intimating)
1. Give to understand (- adumbrate, insinuate)
"I intimated that I did not like his wife";
 
2. Imply as a possibility (- suggest)
"The evidence intimates a need for more clarification";

- Adjective: intimate
1. Marked by close acquaintance, association, or familiarity
"intimate friend"; "intimate relations between economics, politics, and legal principles"
 
2. Concerning things deeply private and personal (- private)
"intimate correspondence";
 
3. Having or fostering a warm or friendly and informal atmosphere (- cozy [N. Amer], informal, cosy [Brit, Cdn])
"an intimate cocktail lounge"; "the small room was cosy and intimate";
 
4. Having mutual interests or affections; of established friendship (- familiar)
"pretending she is on an intimate footing with those she slanders";
 
5. Used euphemistically to refer to the genitals
"he touched her intimate parts"
 
6. Involved in a sexual relationship (- sexual)
"the intimate relations between husband and wife"; "she had been intimate with many men";
 
7. Innermost or essential (- inner, internal)
"the intimate structure of matter";
 
8. Thoroughly acquainted through study or experience (- knowledgeable, versed, knowledgable)
"this girl, so intimate with nature";

- Noun: intimate (Derived forms: intimates)
1. Someone to whom private matters are confided (- confidant)
""",
  );

  final String keyword = "intimate";
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
    await flutterTts.speak("""intimate""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We're not on intimate terms with our neighbours.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The article revealed intimate details about his family life.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He knew an intimate little cafe where they would not be disturbed.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He has an intimate knowledge of the English countryside.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The story highlights an intimate connection between love and trust.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He has already intimated to us his intention to retire.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He was a wartime minister and intimate of Churchill.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'HDntl7yzzVI';
    const double startSecondsend = 1140;
    const String videoIdone = 'ea4Tq7HB7kU';
    const double startSecondsone = 206;
    const String videoIdtwo = '6YxGCccOEHc';
    const double startSecondstwo = 101;
    const String videoIdthree = 'cqidD7kVnxY';
    const double startSecondsthree = 59;
    const String videoIdfour = 'qg2nGY1aqlg';
    const double startSecondsfour = 1797;
    const String videoIdfive = 'ViSE3F7KT68';
    const double startSecondsfive = 50;

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
                      word: """intimate""",
                      // alsoEnglishWord: "also: intimate",
                      britshText: """IpaUK: /ˈɪntɪmət/""",
                      americanText: """IpaUS: /ˈɪntɪmət/""",
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
کوردی: گەرم‌وگوڕ، یەکماڵ، گیانی‌گیانی، نزیک، تێکەڵاو، تێکەڵ، خۆشەویست،	تایبەتی، خۆیی، پێرسۆناڵ، دۆستانە،	پڕوردەکاری، قووڵ، دوورودرێژ، چڕوپڕ، ورد، تەواو،	هەبوونی پێوەندی سێکسی، هەبوونی سەروساخت
"""),
// With short examples define "intimate", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) هەبوونی پەیوەندییەکی نزیک و دۆستانە"""),
                    SentencesRow(
                      englishText:
                          """We're not on intimate terms with our neighbours.""",
                      kurdishText:
                          """لە دۆخی تێکەڵاوی نیین لەگەڵ دراوسێکانمان.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) تایبەت و کەسی، زۆرجار بە شێوەی سێکسی"""),
                    SentencesRow(
                      englishText:
                          """The article revealed intimate details about his family life.""",
                      kurdishText:
                          """وتارەکە وردەکاریی کەسی ئاشکرا لەسەر ژیانی خێزانیی.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) کە هاندەرە بۆ پەیوەندیی نزیک و کەسی، زۆرجار بە سرووشتی سێکسییەوە"""),
                    SentencesRow(
                      englishText:
                          """He knew an intimate little cafe where they would not be disturbed.""",
                      kurdishText:
                          """سەبارەت بە قاوەخانەیەکی بچووکی گەرم‌وگوڕ دەزانی کە تێیدا بێزار ناکرێن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ھاوەڵناو) بە وردەکاریی زۆرەوە"""),
                    SentencesRow(
                      englishText:
                          """He has an intimate knowledge of the English countryside.""",
                      kurdishText:
                          """زانیاری وردی لەسەر دەشت‌ودەری ئینگلیز هەیە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٥. (ھاوەڵناو) زۆر نزیک"""),
                    SentencesRow(
                      englishText:
                          """The story highlights an intimate connection between love and trust.""",
                      kurdishText:
                          """چیرۆکەکە تیشک دەخاتە سەر پەیوەندییەکی نزیکی نێوان خۆشەویستی و متمانە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) گوتن بە کەسێک بیر لە چی دەکەیتەوە یان مەبەستت چییە"""),
                    const AlsoEnglishckb(
                        word: "ھەروەھا: let it be known/make it known that…"),
                    SentencesRow(
                      englishText:
                          """He has already intimated to us his intention to retire.""",
                      kurdishText:
                          """پێشوەختە ویستی خانەنشێنبوونی پێمان گوتووە.""",
                      englishNote:
                          """Also: He has already intimated (that) he intends to retire.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ناو) هاوڕێیەکی نزیک"""),
                    SentencesRow(
                      englishText:
                          """He was a wartime minister and intimate of Churchill.""",
                      kurdishText:
                          """وەزیرێکی کاتی جەنگ و دۆستی نزیکی چەرچڵ بوو.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
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
// end intimate