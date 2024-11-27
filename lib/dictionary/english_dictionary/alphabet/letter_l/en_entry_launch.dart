import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylaunch extends StatefulWidget {
  const EnglishEntrylaunch({super.key});

  @override
  State<EnglishEntrylaunch> createState() => _EnglishEntrylaunchState();
}

class _EnglishEntrylaunchState extends State<EnglishEntrylaunch> {
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
- Verb: launch (Derived forms: launching, launches, launched)
1. Start a new organization or institution (- establish, set up, found)
 
2. Propel with force
"launch the space shuttle"; "Launch a ship"
 
3. Cause to move or slide from the land into the water; set afloat
"launch a ship"
 
4. Begin with vigour (- plunge)
"He launched into a long diatribe";
 
5. Get going; give impetus to (- set in motion)
"launch a career";
 
6. Smoothen the surface of
"launch plaster"

- Noun: launch (Derived forms: launches)
1. A motorboat with an open deck or a half deck
 
2. The act of propelling with force (- launching)
""",
  );

  final String keyword = "launch";
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
    await flutterTts.speak("""launch""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The government recently launched a national safety campaign.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Police have launched an investigation into the incident.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Government forces launched an attack against militants in the north of the country.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The company plans to launch the service to coincide with the World Cup this summer.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The new series launches in July.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The Navy is to launch a new warship today.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The satellite was successfully launched into orbit earlier this month.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Residents have launched a protest against the proposed development.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Without warning he launched himself at me.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""You can launch programs and documents from your keyboard.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In the six months since its launch the car has sold extremely well.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The official launch date is in May.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They are preparing for the launch of the new campaign next month.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """About 50 artists attended the official launch of the exhibition.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The crew members were taken ashore on a police launch.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/VrKW58MS12g?t=1317';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/zqllxbPWKNI?t=1479';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/_wNsZEqpKUA?t=709';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/e09xig209cQ';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/3N4yIDfN-M8?t=134';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/hFZFjoX2cGg?t=451';
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
                      word: """launch""",
                      // alsoEnglishWord: "also: launch",
                      britshText: """IpaUK: /lɔːntʃ/""",
                      americanText: """IpaUS: /lɔːntʃ/""",
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
کوردی: هەڵدان، هایشتن، بەردان، خستن،	(کەشتی) خستنەئاوەوە،	خستنەڕوو، ڕانان، لەبەرچاودانان، پیشان‌دان، خستنەبازاڕەوە
"""),
// With short examples define "launch", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (کردار) دەستپێکردنی چالاکییەک"""),
                    SentencesRow(
                      englishText:
                          """The government recently launched a national safety campaign.""",
                      kurdishText:
                          """حکومەت کەمپینێکی سەلامەتی نیشتیمانی دەستپێکردووە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Police have launched an investigation into the incident.""",
                      kurdishText:
                          """پۆلیس لێکۆڵینەوەیەکی لەسەر ڕووداوەکە دەستپێکردووە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Government forces launched an attack against militants in the north of the country.""",
                      kurdishText:
                          """حکومەت هێرشێکی دژ بە چەکداران لە باکووری وڵاتەکە دەستپێکردووە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) ناساندنی بەرهەم یان خزمەتگوزارییەک بۆ یەکەم جار بە خەڵکی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The company plans to launch the service to coincide with the World Cup this summer.""",
                      kurdishText:
                          """کۆمپانیاکە پلانی هەیە خزمەتگوزارییەکە ڕابگەیەنێت بۆ هاوکات بێت لەگەڵ جامی جیهانی ئەم هاوینە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The new series launches in July.""",
                      kurdishText: """زنجیرە تازەکە لە تەممووز دەست پێدەکات.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) خستنە ناو ئاوی کەشتی یان بەلەمێک، بە تایبەتی کە تازە درووستکراوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The Navy is to launch a new warship today.""",
                      kurdishText:
                          """هێزی دەریایی ئەمڕۆ کەشتییەکی تازەی جەنگی دەخاتە ئاوەوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) هاویشتنی شتێک بۆ ئاسمان، بۆ نموونە کەشتی ئاسمانی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The satellite was successfully launched into orbit earlier this month.""",
                      kurdishText:
                          """سەتەلایتەکە بەسەرکەوتووی سەرەتای ئەم مانگە هاوێژرا بۆ خولگە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (کردار) ڕەخنەگرتن لە ک/شت بە توندی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Residents have launched a protest against the proposed development.""",
                      kurdishText:
                          """هاوڵاتییەکان ناڕەزاییان دژ بە گەشەپێدانە پێشنیارکراوەکە ڕاگەیاندووە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (کردار) بازدان بۆ پێشەوە بە هێزی زۆرەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Without warning he launched himself at me.""",
                      kurdishText: """بەبێ ئاگاداری خۆی بۆم هەڵدا.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) خستنەکاری/کەوتنەکاری پڕۆگرامێکی کۆمپیوتەر"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You can launch programs and documents from your keyboard.""",
                      kurdishText:
                          """دەتوانیت لە تەختەکلیلەکەتەوە پڕۆگرام و دۆکیومێنت بخەیتەکار.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) ئەوەی شتێک هەڵبدەیت، دەست پێبکەیت، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In the six months since its launch the car has sold extremely well.""",
                      kurdishText:
                          """لە شەش مانگەوە لە دوای ناساندنی ئۆتۆمبێلەکە زۆر باش فرۆشی هەبووە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The official launch date is in May.""",
                      kurdishText: """ڕێکەوتی ناساندنی فەرمی لە ئایارە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They are preparing for the launch of the new campaign next month.""",
                      kurdishText:
                          """ئامادەکاری دەکەن بۆ دەستپێکردنی کەمپینە تازەکە لە مانگی داهاتوو.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) بۆنەیەک کە تێیدا شتێک بۆ یەکەم جار ڕادەگەیەندرێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """About 50 artists attended the official launch of the exhibition.""",
                      kurdishText:
                          """نزیکەی ٥٠ هونەرمەند بەژداری کرانەوەی فەرمیی پێشانگاکە بوون.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (ناو) بەلەمێکی گەورە بە ماتۆڕەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The crew members were taken ashore on a police launch.""",
                      kurdishText:
                          """ئەندامانی تاقمەکە برانە کەناراو بە بەلەمێکی پۆلیس.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
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
// end launch