import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylash extends StatefulWidget {
  const EnglishEntrylash({super.key});

  @override
  State<EnglishEntrylash> createState() => _EnglishEntrylashState();
}

class _EnglishEntrylashState extends State<EnglishEntrylash> {
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
- Verb: lash (Derived forms: lashing, lashes, lashed)
1. Beat severely with a whip or rod (- flog, welt, whip, lather, slash, strap, trounce, whale [N. Amer, informal])
"The teacher often lashed the students";
 
2. Lash or flick about sharply
"The lion lashed its tail"
 
3. Strike as if by whipping (- whip)
"The curtain lashed her face";
 
4. Bind with a rope, chain, or cord
"lash the horse"
 
5. [Brit, informal] Spend money extravagantly, esp. to indulge oneself (- splurge [informal], lash out [Brit, informal], splash out [Brit, informal])
"I lashed out on a new TV";

- Noun: lash (Derived forms: lashes)
1. Any of the short curved hairs that grow from the edges of the eyelids (- eyelash, cilium)
 
2. Leather strip that forms the flexible part of a whip (- thong)
 
3. A quick blow delivered with a whip or whiplike object (- whip, whiplash)
"the lash raised a red welt";
""",
  );

  final String keyword = "lash";
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
    await flutterTts.speak("""lash""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The rain lashed at the windows.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Branches lashed at my face.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Huge waves lashed the shore.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The prisoners were regularly lashed with electric cable.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She lashed him for breaking his promise again.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """During the storm everything on deck had to be lashed down.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The crocodile's tail was lashing furiously from side to side.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She lowered her lashes in sudden embarrassment.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They each received 20 lashes for stealing.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The lash struck him across the back.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/PYS3UZFPJWI?t=839';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/pTysrwci0pU?t=1296';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/HxRUuGqqMG4?t=1162';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/CtTjc4nJlDM?t=73';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/7fduMinwJZ8?t=66';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/xKmZGQp6yng?t=9';
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
                      word: """lash""",
                      // alsoEnglishWord: "also: lash",
                      britshText: """IpaUK: /læʃ/""",
                      americanText: """IpaUS: /læʃ/""",
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
کوردی: قەمچی، جەڵدە، قورپاچ، شێلاق،	زمانەی شێلاق،	لێدان بە شێلاق (بۆ سزادان)،	تەکان، گورز، زەربە، ڕاتڵەکان، لێدانی سەخت و توند،	ناوونیتکە، قسەی تاڵ،	مژۆڵ، برژانگ
"""),
// With short examples define "lash", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) لێدان لە کەسێک/شتێک بە هێزێکی زۆرەوە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: pound"),
                    SentencesRow(
                      englishText: """The rain lashed at the windows.""",
                      kurdishText: """بارانەکە دەیکێشا بە پەنجەرەکە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Branches lashed at my face.""",
                      kurdishText: """لقەکان کێشایان بە ڕووخسارمدا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Huge waves lashed the shore.""",
                      kurdishText: """شەپۆلی گەورە کێشایان بە کەناراوەکەدا.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) لێدان لە کەسێک یان ئاژەڵێک بە قامچی، حەبل، هتد"""),
                    const AlsoEnglishckb(word: "ھەروەھا: beat"),
                    SentencesRow(
                      englishText:
                          """The prisoners were regularly lashed with electric cable.""",
                      kurdishText:
                          """زیندانییەکان زووزوو فەلاقە دەکران بە کێبڵی کارەبایی.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) ڕەخنەگرتن لە کەسێک/شتێک بە توندی"""),
                    const AlsoEnglishckb(word: "ھەروەھا: attack"),
                    SentencesRow(
                      englishText:
                          """She lashed him for breaking his promise again.""",
                      kurdishText:
                          """سەرزەنشتی کرد بۆ دووبارە شکاندنی پەیمانەکەی.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) بەستنی شتێک بە توندی بە شتێکی دیکەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """During the storm everything on deck had to be lashed down.""",
                      kurdishText:
                          """لە کاتی زریانەکە هەموو شتێک لە بەندەرەکە دەبوو ببەسترێنەوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) ڕاوەشاندن بە توندی لەلایەک بۆ لایەکی دیکە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The crocodile's tail was lashing furiously from side to side.""",
                      kurdishText: """کلکی تیمساحەکە لەلاوە بۆ لا ڕادەوەشا.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٦. (ناو) برژانگی چاو"""),
                    const AlsoEnglishckb(word: "ھەروەھا: eyelash"),
                    SentencesRow(
                      englishText:
                          """She lowered her lashes in sudden embarrassment.""",
                      kurdishText:
                          """لە شەرمەزاربوونی لەناکاودا برژانگەکانیی داخست.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ناو) لێدان بە قامچی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They each received 20 lashes for stealing.""",
                      kurdishText:
                          """هەردووکیان یەکی ٢٠ قامچییان لێدرا بۆ دزیکردن.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) ئەو بەشەی قامچی کە دەکێشرێت بە کەسێک یان ئاژەڵێکدا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The lash struck him across the back.""",
                      kurdishText: """قامچییەکە کێشای بە پشتیدا.""",
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
// end lash