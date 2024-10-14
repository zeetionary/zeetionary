import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhurry extends StatefulWidget {
  const EnglishEntryhurry({super.key});

  @override
  State<EnglishEntryhurry> createState() => _EnglishEntryhurryState();
}

class _EnglishEntryhurryState extends State<EnglishEntryhurry> {
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
- Verb: hurry (Derived forms: hurried, hurries, hurrying)
1. Move or travel very quickly (- rush, hotfoot, hasten, hie [archaic], speed, race, pelt along [informal], rush along, bucket along [informal], belt along [informal], step on it [informal], travel rapidly, zip [informal], zoom, zoom along, whizz [informal], whizz along [informal], bucket [informal], wing [informal], pelt [informal], barrel [informal], rocket [informal], belt [informal])
"He hurried down the hall to receive his guests";
 
2. Move faster or act quickly or quicker (- rush, hasten, look sharp, festinate [archaic], hurry up, get a move on [informal], make haste)
"hurry--it's late!";
 
3. Urge to an unnatural speed (- rush)
"Don't hurry me, please!";

- Noun: hurry (Derived forms: hurries)
1. A condition of urgency making it necessary to move or act fast (- haste)
"in a hurry to lock the door";
 
2. Overly eager speed (and possible carelessness) (- haste, hastiness, hurriedness, precipitation)
"he soon regretted his hurry";
 
3. The act of moving hurriedly and in a careless manner (- haste, rush, rushing)
"in his hurry to leave he forgot his book";
""",
  );

  final String keyword = "hurry";
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
    await flutterTts.speak("""hurry""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""You'll have to hurry if you want to catch that train.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We need to hurry or we'll be late for school.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The kids hurried to open their presents.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Hurry and eat before the soup gets cold.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He picked up his bags and hurried across the courtyard.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She hurried away without saying goodbye.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She hurried after Gary to apologize to him.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I hurried home to tell him the news.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I don't want to hurry you but we close in twenty minutes.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was hurried into making an unwise choice.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her application was hurried through.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A good meal should never be hurried.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'lVoGZiL-kns';
    const double startSecondsend = 195;
    const String videoIdone = 'hTqtGJwsJVE';
    const double startSecondsone = 3414;
    const String videoIdtwo = 'sV6uuMAnJUE';
    const double startSecondstwo = 1120;
    const String videoIdthree = '4J0xFUyz1nw';
    const double startSecondsthree = 563;
    const String videoIdfour = 'E47mx4rsVCI';
    const double startSecondsfour = 17;
    const String videoIdfive = 'r-Or05EFLUM';
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
                      word: """hurry""",
                      // alsoEnglishWord: "also: hurry",
                      britshText: """IpaUK: /ˈhʌri/""",
                      americanText: """IpaUS: /ˈhɜːri/""",
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
کوردی: پەلە، لەز، پڕتاو، زوو، پەلەپڕوزکێ، تاوەتڕێ
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) پەلەکردن بەهۆی ئەوەی کاتی پێویست نییە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: rush"),
                    SentencesRow(
                      englishText:
                          """You'll have to hurry if you want to catch that train.""",
                      kurdishText:
                          """دەبێت پەلە بکەیت ئەگەر بتەوێت بگەیت بە شەمەندەفەرەکەدا.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We need to hurry or we'll be late for school.""",
                      kurdishText:
                          """دەبێت پەلە بکەین ئەگەرنا درەنگ دەکەوین بۆ قوتابخانە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The kids hurried to open their presents.""",
                      kurdishText:
                          """منداڵەکان پەلەیان کرد بۆ کردنەوەی دیارییەکانیان.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Hurry and eat before the soup gets cold.""",
                      kurdishText:
                          """پەلە بکە و بخۆ پێش ئەوەی شۆرباکە سارد ببێتەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) چوون بە خێرایی ب ەئاراستەیەکی دیاریکراودا"""),
                    const AlsoEnglishckb(word: "ھەروەھا: rush"),
                    SentencesRow(
                      englishText:
                          """He picked up his bags and hurried across the courtyard.""",
                      kurdishText:
                          """جانتاکانیی هەڵگرت و بە گۆڕەپانەکەدا ڕایکرد.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She hurried away without saying goodbye.""",
                      kurdishText: """بەپەلە ڕۆشت بەبێ گوتنی خوداحافیزی.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She hurried after Gary to apologize to him.""",
                      kurdishText:
                          """بە دوای گاریدا چوو بۆ بۆ داوای لێبوردن‌خوازی.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I hurried home to tell him the news.""",
                      kurdishText: """ڕامکردە ماڵەوە بۆ گوتنی هەواڵەکە پێی.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) پەلەکردن لە کەسێک لە کردنی شتێکدا"""),
                    const AlsoEnglishckb(word: "ھەروەھا: rush"),
                    SentencesRow(
                      englishText:
                          """I don't want to hurry you but we close in twenty minutes.""",
                      kurdishText:
                          """نامەوێت پەلەت لێ بکەم بەڵام لە بیست خولەکدا دەچینەوە (= شوێنەکە دادەخەین).""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was hurried into making an unwise choice.""",
                      kurdishText:
                          """پەلەی لێکرا لەوەی بکەوێتە بڕیارێکی ناژیرانە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (کردار) بەپەلە مامەڵەکردن لەگەڵ شتێک"""),
                    const AlsoEnglishckb(word: "ھەروەھا: rush"),
                    SentencesRow(
                      englishText: """Her application was hurried through.""",
                      kurdishText: """داخوازینامەکە بەپەلە کرا.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (کردار) کردنی شتێک بە خێرایی"""),
                    const AlsoEnglishckb(word: "ھەروەھا: rush"),
                    SentencesRow(
                      englishText: """A good meal should never be hurried.""",
                      kurdishText:
                          """ژەمێکی باش ناکرێت هەرگیز پەلەی لێ بکرێت.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
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