import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfancy extends StatefulWidget {
  const EnglishEntryfancy({super.key});

  @override
  State<EnglishEntryfancy> createState() => _EnglishEntryfancyState();
}

class _EnglishEntryfancyState extends State<EnglishEntryfancy> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""fancy""");
  }

  @override
  Widget build(BuildContext context) {
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
                      word: """fancy""",
                      // alsoEnglishWord: "also: fancy",
                      britshText: """IpaUK: /ˈfænsi/""",
                      americanText: """IpaUS: /ˈfænsi/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const TabBar(
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
              const EnglishMeaning(),
              KurdishMeaning(),
              const SentencesFromDatabase(),
              const YouTubeScroller(
                children: [
                  YoutubeEmbeddedone(),
                  YoutubeEmbeddedtwo(),
                  YoutubeEmbeddedthree(),
                  YoutubeEmbeddedfour(),
                  YoutubeEmbeddedfive(),
                  // YoutubeEmbeddedsix(),
                  // YoutubeEmbeddedseven(),
                  // YoutubeEmbeddedeight(),
                  // YoutubeEmbeddednine(),
                  // YoutubeEmbeddedten(),
                  // YoutubeEmbeddedeleven(),
                  // YoutubeEmbeddedtwelve(),
                  // YoutubeEmbeddedthirteen(),
                  // YoutubeEmbeddeddfourteen(),
                  // YoutubeEmbeddedfifteen(),
                  // YoutubeEmbeddeddsixteen(),
                  // YoutubeEmbeddeddseventeen(),
                  // YoutubeEmbeddeddeighteen(),
                  // YoutubeEmbeddeddnineteen(),
                  // YoutubeEmbeddedtwenty(),
                  // YoutubeEmbeddedmulti(),
                  YoutubeEmbeddedend(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SentencesFromDatabase extends StatefulWidget {
  const SentencesFromDatabase({super.key});

  @override
  State<SentencesFromDatabase> createState() => _SentencesFromDatabaseState();
}

class _SentencesFromDatabaseState extends State<SentencesFromDatabase> {
  final String keyword = "fancy";
  late FlutterTts flutterTts;
  List<Map<String, dynamic>> filteredSentences = [];

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    fetchSentences();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          if (filteredSentences.isEmpty) {
            return const NoSentencesFromDatabase();
          } else {
            return ListView.builder(
              itemCount: filteredSentences.length,
              itemBuilder: (context, index) {
                final sentence = filteredSentences[index];
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: DatabaseUtils.instance.highlightText(
                                      sentence['english'].toString(),
                                      keyword,
                                      ref,
                                      context,
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child:
                                          DatabaseUtils.instance.highlightText(
                                        sentence['french'].toString(),
                                        keyword,
                                        ref,
                                        context,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(),
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-GB",
                                  ),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-US",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1)
                          const DividerSentences(),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Fancy a drink?""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I fancied a change of scene.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She didn't fancy the idea of going home in the dark.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do you fancy going out this evening?""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I think she fancies me.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He started to chat to me and I could tell that he really fancied himself.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She fancies herself (as) a serious actress.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He fancied himself in love with me, the silly boy.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Fancy! She's never been in a plane before.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Fancy meeting you here!""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Which horse do you fancy in the next race?""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They added a lot of fancy footwork to the dance.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's always using fancy legal words.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I wanted a simple black dress, nothing fancy.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Don't come back with any fancy ideas.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He laughed at his night-time fancies in the morning.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She said she wanted a dog but it was only a passing fancy.""");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: خەیاڵ‌کردنەوە، خەیاڵ‌بردنەوە، ھێنانەبەرچاو، وێناکردن، خەیاڵ‌پڵاو(کردن)،	ھێز یان توانایی خەیاڵ‌کردنەوە،	خەیاڵی پڕوپووچ،	گومان، مەزندە، مەیل، کەڵکەڵە، خولیا، نگە، ئیشتیا، ئارەزوو، ھەوا،	ھۆگری، دڵبەستەیی، کەیک یان تۆشەی فانتزی، کەیکی جوانی چکۆلانە، فانسیز،	خەیاڵی، ئەندێشەیی، پڕوپووچ، لەراستی بەدوور،	بۆ جوانی،	سەیر، نائاسایی، سەیروسەمەرە،	بە زریقەوبریقە، پڕنەخش‌ونیگار، ڕەنگاوڕەنگ،	یەکجار زۆر، یەکجار گران، یەکجار لەسەرێ (نرخ)
"""),
          const DefinitionKurdish(
              text: """١. (کردار) ئەوەی شتێکت بوێت یان بتەوێت شتێک بکەیت"""),
          SentencesRow(
            englishText: """Fancy a drink?""",
            kurdishText: """حەزت بە خواردنەوەیەکە؟""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I fancied a change of scene.""",
            kurdishText: """حەزم بە گۆڕینی دیمەنەکە بوو.""",
            onPressedBritish: () => speaksentence2("en-GB"),
            onPressedAmerican: () => speaksentence2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """She didn't fancy (= did not like) the idea of going home in the dark.""",
            kurdishText: """حەزی بەوە نەبوو لە تاریکیدا بچێتە ماڵەوە.""",
            onPressedBritish: () => speaksentence3("en-GB"),
            onPressedAmerican: () => speaksentence3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Do you fancy going out this evening?""",
            kurdishText: """حەزت بەوەیە ئەم ئێوارەیە بچیتە دەرەوە؟""",
            onPressedBritish: () => speaksentence4("en-GB"),
            onPressedAmerican: () => speaksentence4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (کردار) ئەوەی حەزت بە کەسێک بێت لە ڕووی سێکسییەوە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """I think she fancies me.""",
            kurdishText: """پێموایە دڵی پێمەوەیە.""",
            onPressedBritish: () => speaksentence5("en-GB"),
            onPressedAmerican: () => speaksentence5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (کردار) بیرکردنەوەی ئەوەی کە زۆر سەرنجڕاکێش، زیرەک، یان ناسراوی"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """He started to chat to me and I could tell that he really fancied himself.""",
            kurdishText:
                """دەستی کرد بە قسەکردن لەگەڵم و دەمتوانی بڵێم کە خۆی بە شت دەزانی.""",
            onPressedBritish: () => speaksentence6("en-GB"),
            onPressedAmerican: () => speaksentence6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٤. (کردار) ئەوەی کە خۆت بە شتێکی دیاریکراو بزانیت کە زۆرجار وا نییە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """She fancies herself (as) a serious actress.""",
            kurdishText: """خۆی وەک خانمە ئەکتەرێکی گرنگ دەبینی.""",
            onPressedBritish: () => speaksentence7("en-GB"),
            onPressedAmerican: () => speaksentence7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """He fancied himself in love with me, the silly boy.""",
            kurdishText:
                """خۆی وەھا دەبینی لە خۆشەویستیدا بێت لەگەڵم، کوڕی گەمژە.""",
            onPressedBritish: () => speaksentence8("en-GB"),
            onPressedAmerican: () => speaksentence8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٥. (کردار) بۆ پیشاندانی ئەوەی کە سەرسام یان شۆکیت بە شتێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Fancy! She's never been in a plane before.""",
            kurdishText: """جوانە! پێشووتر ھەرگیز لە فڕۆکە نەبووە.""",
            onPressedBritish: () => speaksentence9("en-GB"),
            onPressedAmerican: () => speaksentence9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Fancy meeting you here!""",
            kurdishText: """جوانە کە لێرە دەتبینم!""",
            onPressedBritish: () => speaksentence10("en-GB"),
            onPressedAmerican: () => speaksentence10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٦. (کردار) بیرکردنەوەی ئەوەی کە شتێک دەباتەوە یان سەرکەوتوو دەبێت لە شتێکدا"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Which horse do you fancy in the next race?""",
            kurdishText: """مەرج لەسەر کام ئەسپ دەکەیت لە پێشبڕکێی داھاتوو؟""",
            onPressedBritish: () => speaksentence11("en-GB"),
            onPressedAmerican: () => speaksentence11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٧. (ھاوەڵناو) کە تەواو ئاڵۆزە، بەتایبەتی کە پێویست نییە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """They added a lot of fancy footwork to the dance.""",
            kurdishText: """زۆر جوڵەی ئاڵۆزی پێیان بۆ سەماکە زیاد کرد.""",
            onPressedBritish: () => speaksentence12("en-GB"),
            onPressedAmerican: () => speaksentence12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """He's always using fancy legal words.""",
            kurdishText: """ھەمیشە وشەی ئاڵۆزی یاسایی بەکاردەھێنێت.""",
            onPressedBritish: () => speaksentence13("en-GB"),
            onPressedAmerican: () => speaksentence13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٨. (ھاوەڵناو) بە ڕێژەیەکی زۆر لە ڕازاندنەوە و ڕەنگی درەوشاوە، بەتایبەتی بۆ شتی بچووک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """I wanted a simple black dress, nothing fancy.""",
            kurdishText: """جلێکی سادەی ڕەشم دەویست، ھیچی بە زریقەوبریقە نا.""",
            onPressedBritish: () => speaksentence14("en-GB"),
            onPressedAmerican: () => speaksentence14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٩. (ھاوەڵناو) گران‌بەھا یان پەیوەندیدار بە شێوازێکی گران‌بەھای ژیان‌کردن"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Don't come back with any fancy ideas.""",
            kurdishText: """بە بیرکردنەوەی دەوڵەمەندانەوە مەیەرەوە.""",
            onPressedBritish: () => speaksentence15("en-GB"),
            onPressedAmerican: () => speaksentence15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """١٠. (ناو) شتێک کە خەیاڵی دەکەیت"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """He laughed at his night-time fancies in the morning.""",
            kurdishText: """لە بەیانیدا بە خەیاڵەکانی نیوە شەوی پێدەکەنی.""",
            onPressedBritish: () => speaksentence16("en-GB"),
            onPressedAmerican: () => speaksentence16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """١١. (ناو) ھەستی ئەوەی کە شتێکت دەوێت یان دەتەوێت بیکەیت"""),
          const AlsoEnglishckb(word: "ھەروەھا: whim"),
          SentencesRow(
            englishText:
                """She said she wanted a dog but it was only a passing fancy.""",
            kurdishText:
                """گوتی سەگێکی دەوێت، بەڵام ئەوە تەنھا خەیاڵی پڕوپووچ بوو.""",
            onPressedBritish: () => speaksentence17("en-GB"),
            onPressedAmerican: () => speaksentence17("en-US"),
          ),
        ],
      ),
    );
  }
}

class EnglishMeaning extends StatefulWidget {
  const EnglishMeaning({super.key});

  @override
  State<EnglishMeaning> createState() => _EnglishMeaningState();
}

class _EnglishMeaningState extends State<EnglishMeaning> {
  FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
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
- Verb: fancy (derived forms: fancying, fancied, fancies)
1. Imagine; conceive of; see in one's mind (= visualize, visualise [Brit], envision, project, see, figure, picture, image)
"I can't fancy him on horseback!";
 
2. Have a fancy or particular liking or desire for (= go for, take to)
"She fancied a necklace that she had seen in the jeweller's window";
 
3. [Brit, informal] Find sexually attractive
"he definitely fancies her"

- Adjective: fancy (derived forms: fanciest, fancier)
1. Not plain; decorative or ornamented
"fancy handwriting"; "fancy clothes"

- Noun: fancy (derived forms: fancies)
1. Something that many people believe but is false (= illusion, fantasy, phantasy [archaic])
"He fancies himself to be a local celebrity.";
 
2. Imagination or fantasy; held by Coleridge to be more casual and superficial than true imagination
"never had the wildest flights of fancy imagined such magnificence"
 
3. A predisposition to like something (= fondness, partiality)
"she had dismissed him quite brutally, relegating him to the status of a passing fancy, or less";

- Interjection: fancy
Usage: Brit, informal
1. Used to express surprise (= Christ [informal], Christmas [informal], crikey [Brit, informal], cripes [informal], cor [Brit, informal], crumbs [Brit, informal], gosh [informal], golly [informal], by George [informal], by Jove [informal], blimey [Brit, informal], gorblimey [Brit, informal], cor blimey [Brit, informal], my [informal], holy cow [informal], holy mackerel [informal], holy smoke [informal], holy moley [informal], holy moly [informal], good grief [informal], goodness [informal], goodness me [informal], Gordon Bennett [informal], gracious [informal], gracious me [informal], fancy that [informal], gawd [informal], god, my word, oh, O, ah, oh boy [informal], jeez [informal], geez [informal], strewth [Brit, informal], struth [Brit, informal], yikes [informal], I'll be blowed [Brit, informal], blow me [Brit, informal], Holy-dooly [Austral, informal], heck [informal], blooming heck [Brit, informal], jeepers [informal], jeepers creepers [informal], Lord [informal], Lordy [informal], marry [archaic], well I never [informal], heavens [informal], good heavens [informal], my goodness [informal], Jesus [informal], bejesus [N. Amer, informal], od [archaic])
"Strewth! Didn't fancy stopping with those chaps"; "fancy that, it was only a dollar last time I was here!";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
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
    );
  }
}

const String _videoIdend = 'BxWw8AO4ZmI';
const double _startSecondsend = 306;
const String _videoIdone = 'P10p7ALXkcU';
const double _startSecondsone = 164;
const String _videoIdtwo = 'rEdl2Uetpvo';
const double _startSecondstwo = 324;
const String _videoIdthree = '3cxHwQl9pNM';
const double _startSecondsthree = 322;
const String _videoIdfour = 'J4hQFL5ICxY';
const double _startSecondsfour = 26;
const String _videoIdfive = 'TWg8KL2AXmc';
const double _startSecondsfive = 10;

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdend,
      startSeconds: _startSecondsend,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdend,
        startSeconds: _startSecondsend,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdone,
      startSeconds: _startSecondsone,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdone,
        startSeconds: _startSecondsone,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdtwo,
      startSeconds: _startSecondstwo,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdtwo,
        startSeconds: _startSecondstwo,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdthree,
      startSeconds: _startSecondsthree,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdthree,
        startSeconds: _startSecondsthree,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfour,
      startSeconds: _startSecondsfour,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfour,
        startSeconds: _startSecondsfour,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfive,
      startSeconds: _startSecondsfive,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfive,
        startSeconds: _startSecondsfive,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB