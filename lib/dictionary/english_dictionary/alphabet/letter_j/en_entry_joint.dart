import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjoint extends StatefulWidget {
  const EnglishEntryjoint({super.key});

  @override
  State<EnglishEntryjoint> createState() => _EnglishEntryjointState();
}

class _EnglishEntryjointState extends State<EnglishEntryjoint> {
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
- Noun: joint (Derived forms: joints)
1. Junction by which parts or objects are joined together
 
2. (anatomy) the point of connection between two bones or elements of a skeleton (especially if it allows motion) (- articulation, articulatio)
 
3. The shape or manner in which things come together and a connection is made (- articulation, join, juncture, junction)
 
4. A piece of meat roasted or for roasting and of a size for slicing into more than one portion (- roast)
 
5. [informal] Marijuana leaves rolled into a cigarette for smoking (- marijuana cigarette, reefer [slang], stick [informal], spliff [slang])
 
6. [informal] A disreputable place of entertainment

- Adjective: joint
1. Affecting or involving two or more
"joint income-tax return"; "joint ownership"
 
2. Involving both houses of a legislature
"a joint session of Congress"
 
3. United or combined
"a joint session of Congress"; "joint owners"

- Verb: joint (Derived forms: jointed, joints, jointing)
1. Fit as if by joints
 
2. (carpentry) provide with a joint (- articulate)
"the carpenter jointed two pieces of wood";
 
3. Fasten with a joint
 
4. Separate (meat) at the joint
""",
  );

  final String keyword = "joint";
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
    await flutterTts.speak("""joint""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The report was a joint effort.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They were joint owners of the house.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The scheme is a joint Anglo-French operation.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The two sides agreed to establish a joint working group.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My joints are really stiff this morning.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He dislocated his elbow joint.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You have fluid in the joint.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The joint was sealed with waterproof tape.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He bought a joint of beef for Sunday dinner.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We had lunch at a hamburger joint and then went to see a movie.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/V3NGBo2M1Ps?t=415';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/XG8b7WhANNA?t=862';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/QLq6GEiHqR8?t=409';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/9yjZpBq1XBE?t=1715';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/q8y-RLkpsnk?t=432';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/Pon4Zux5MaQ?t=118';
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
                      word: """joint""",
                      // alsoEnglishWord: "also: joint",
                      britshText: """IpaUK: /dʒɔɪnt/""",
                      americanText: """IpaUS: /dʒɔɪnt/""",
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
کوردی: جومگە، بەند، پل، ماچلەک، خرتک، خرتکە، گە(هـ)، مۆڤک،	قۆرت، گرێ، (لە ڕووەک‌دا) بەشێ لە لاسکی گیا کە گەڵا یان لقێکی لێ شین دەبێ،	جەمسەر، پێوەستگا، بەستنگە، بەند، شوێنی پێکەوەبەستراوی، جێی پێکەوەبەستن، جێی پێک‌گەیشتنەوە، یەکدگیری، شوێنی لێک‌بەسران،	پارچە، بەش، کەرت، (گۆشت) لەت، پەل، تیکە،	شوێنی ڕابواردن، مەی‌خانە،	جگەرە (کە مەریوانەی تیابێ)،	لاولاوە، دوولایی، ئەنجامە، بەست، بەستەر،	(زەوی‌ناسی) قەڵەش، درز، تڵیش،	هاوبەش، هەڤ‌پشک، پێکڤەیی، شەریکی،	دوولایەنە، دووقۆڵی، دوولایی
"""),
// With short examples define "joint", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کە دوو کەس یان زیاتر لەخۆدەگرێت"""),
                    SentencesRow(
                      englishText:
                          """The report was a joint effort (= we worked on it together).""",
                      kurdishText: """ڕاپۆرتەکە هەوڵێکی هاوبەش بوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They were joint owners of the house (= they owned it together).""",
                      kurdishText: """خاوەنی هاوبەشی خانووەکە بوون.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The scheme is a joint Anglo-French operation.""",
                      kurdishText:
                          """پلانەکە ئۆپەراسیۆنێکی هاوبەشی ئینگلیز و فەرەنسایە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The two sides agreed to establish a joint working group.""",
                      kurdishText:
                          """هەردوو لایەنەکە ڕازی بوون گرووپێکی کارکردنی هاوبەش درووست بکەن.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) شوێنی پێکەوە لکانی دوو ئێسک لە جەستە بەشێوەیەک کە ڕێگا دەدات بجوولێن و بچەمێنەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """My joints are really stiff this morning.""",
                      kurdishText: """جومگەکانم ئەم بەیانییە بەڕاستی پتەون.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He dislocated his elbow joint.""",
                      kurdishText: """جومگەی ئانیشكی لەجێ چوو.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """You have fluid in the joint.""",
                      kurdishText: """شلەت هەیە لە جومگەکەدا.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) شوێنێک کە دوو یان زیاتر لە بەشەکانی شتێک بەستراون بە یەکدییەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The joint was sealed with waterproof tape.""",
                      kurdishText: """بەینەکە بە تێپی ئاوگێڕەوە توندکرا.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) پارچە گۆشتێک کە برژێندراوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He bought a joint of beef for Sunday dinner.""",
                      kurdishText:
                          """پارچە گۆشتێکی مانگای کڕی بۆ نانی ئێوارەی یەکشەممە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) شوێنێک کە تێیدا خەڵکی چاوپێکەوتنیان دەبێت بۆ خواردن، خواردنەوە، سەما، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We had lunch at a hamburger joint and then went to see a movie.""",
                      kurdishText:
                          """نانی نیوەڕۆمان لە خواردنگەیەکی هەمبەرگر خوارد و دواتر چووین بۆ بینینی فیلمێک.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
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
// end joint