import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryknot extends StatefulWidget {
  const EnglishEntryknot({super.key});

  @override
  State<EnglishEntryknot> createState() => _EnglishEntryknotState();
}

class _EnglishEntryknotState extends State<EnglishEntryknot> {
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
- Noun: knot (Derived forms: knots)
1. Any of various fastenings formed by looping and tying a rope (or cord) upon itself or to another rope or to another object
 
2. A tight cluster of people or things
"a small knot of women listened to his sermon"; "the bird had a knot of feathers forming a crest"
 
3. A hard cross-grained round piece of wood in a board where a branch emerged
"the saw buckled when it hit a knot"
 
4. (of ships and wind) a unit of speed equal to one nautical mile per hour or about 1.15 statute miles per hour
 
5. Something twisted and tight and swollen (- gnarl)
"their muscles stood out in knots"; "his stomach was in knots";
 
6. Soft lump or unevenness in a yarn; either an imperfection or created by design (- slub, burl)
 
7. A sandpiper that breeds in the Arctic and winters in the Southern Hemisphere (- greyback [Brit, Cdn], grayback [US], Calidris canutus)
 
8. A unit of speed equal to one nautical mile per hour

- Verb: knot (Derived forms: knotting, knotted, knots)
1. Make into knots; make knots out of
"She knotted her fingers"
 
2. Tie or fasten into a knot
"knot the shoelaces"
 
3. Make more complicated or confused (- ravel, tangle)
""",
  );

  final String keyword = "knot";
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
    await flutterTts.speak("""knot""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Tie the two ropes together with a knot.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Tie a knot in the rope.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Sailors had to know lots of different knots.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She had her hair in a knot.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """After the windy day, his hair was full of knots and tangles.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The knot in the tree trunk made it harder to cut smoothly.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Little knots of people had gathered at the entrance.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I could feel a knot of fear in my throat.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He carefully knotted his tie.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She wore a scarf loosely knotted around her neck.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I knotted the ropes together securely.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her shoelaces began to knot as she walked.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She wore her hair loosely knotted on top of her head.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She felt her stomach knot with fear.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/jxk259Eqnks?t=17';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/-CJ4eUhE3Lw?t=565';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/VyEf4EBXe8o?t=533';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/Am1lDj2mUVY?t=1576';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/FSHITL5oedk?t=281';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/mcZdTvOqmvI?t=930';
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
                      word: """knot""",
                      // alsoEnglishWord: "also: knot",
                      britshText: """IpaUK: /nɒt/""",
                      americanText: """IpaUS: /nɑːt/""",
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
کوردی: گرێ،	گرێ، قۆرت، قوتایی، گرچک، گۆپکە، دەرپەڕیوی، لوو، دوگمە،	تێک‌ئاڵان، ئاڵۆسکان، تێک‌گیران،	یەک‌گرتن، یەک‌بەستن، پێوەست‌بوون، پێوەندی،	دەستە، کۆمەڵ،	کێشە، ئاستەنگ، گیروگرفت، گرفت، مەسەلە،	(ماسوولکە) گیران، داگیران
"""),
// With short examples define "knot", please follow LX instructions
                    const DefinitionKurdish(text: """١. (ناو) گرێ"""),
                    SentencesRow(
                      englishText:
                          """Tie the two ropes together with a knot.""",
                      kurdishText: """دوو حەبلەکە پێکەوە ببەستەوە بە گرێیەک.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Tie a knot in the rope.""",
                      kurdishText: """گرێیەک بکە حەبلەکە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Sailors had to know lots of different knots.""",
                      kurdishText: """دەریاوانان دەبێت زۆر جۆری گرێ بزانن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئەوەی کە قژت لە پشتەوە ببەستیتەوە لە تۆپەڵێکی بچووکدا لە پشتەوەی سەر"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She had her hair in a knot.""",
                      kurdishText: """قژی کردبوو بە پەلکە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئەوەی کە شتێک بە توندی چووە بەیەکدا، بۆ نموونە قژ یان خوری"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """After the windy day, his hair was full of knots and tangles.""",
                      kurdishText:
                          """لە دوای ڕۆژە باییەکە، قژی پڕ لە گرێ و ئازڵکاوی بوو.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) خاڵێکی سەختی خڕ کە پێشووتر شوێنی دەرچوونی لقێک بووە لە دارێکدا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The knot in the tree trunk made it harder to cut smoothly.""",
                      kurdishText:
                          """گرێی قەدی دارەکە وایکرد سەخت بێت بە ئاسانی ببڕدرێت.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) گرووپێکی کەم لە خەڵک کە پێکەوە وەستاون"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Little knots of people had gathered at the entrance.""",
                      kurdishText:
                          """کۆمەڵێکی کەم لە خەڵک لە دەروازەکە کۆببوونەوە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    // const DividerDefinition(),
                    // const DefinitionKurdish(text: """٦. (ناو) هەستێکی توند لە گەدە، قوڕگ، هتد کە بەهۆی دەمارەکان، تووڕەیی، هتد درووست دەبێت"""),
                    // const DividerSentences(),
                    // SentencesRow(
                    //   englishText: """I could feel a knot of fear in my throat.""",
                    //   kurdishText: """هەستم بە کزەیەک لە ترس دەکرد لە قوڕگمدا.""",
                    //   onPressedBritish: () => speaksentence8("en-GB"),
                    //   onPressedAmerican: () => speaksentence8("en-US"),
                    // ),
                    // skipped_meaning
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٦. (کردار) گرێدان"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He carefully knotted his tie.""",
                      kurdishText: """بە وریاییەوە بۆینباخەکەی بەست.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She wore a scarf loosely knotted around her neck.""",
                      kurdishText:
                          """لەچکێکی بەستبوو کە بە هێواشی بە ملیدا گرێدرابوو.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I knotted the ropes together securely.""",
                      kurdishText: """حەبلەکانم توند پێکەوە بەست.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (کردار) ئەوەی شتێک ببێت بە گرێ"""),
                    const AlsoEnglishckb(word: "ھەروەھا: tangle"),
                    SentencesRow(
                      englishText:
                          """Her shoelaces began to knot as she walked.""",
                      kurdishText:
                          """قەیتانی پێڵاوەکانی دەستیان کرد بە ئازڵکان بە یەکدا کە ڕۆشت.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) ئەوەی قژ ببەستیت بە شێوەیەکی دیاریکراو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She wore her hair loosely knotted on top of her head.""",
                      kurdishText:
                          """قژی بە هێواشی دانابوو بەوەی لەسەر سەری بەستبووی.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) ئەوەی کە ماسوولکە توند و بەئازار بێت بەهۆی ترس، جۆشوخرۆشی، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She felt her stomach knot with fear.""",
                      kurdishText: """هەستی کرد گەدەی لە ترساندا توندببوو.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
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
// end knot