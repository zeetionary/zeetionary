import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryempty extends StatefulWidget {
  const EnglishEntryempty({super.key});

  @override
  State<EnglishEntryempty> createState() => _EnglishEntryemptyState();
}

class _EnglishEntryemptyState extends State<EnglishEntryempty> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakempty(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("empty");
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
                      word: "empty",
                      // alsoEnglishWord: "also: empty",
                      britshText: "IpaUK: /ˈempti/",
                      americanText: "IpaUS: /ˈempti/",
                      onPressedBritish: () => speakempty("en-GB"),
                      onPressedAmerican: () => speakempty("en-US"),
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
                  YoutubeEmbeddedsix(),
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
  final String keyword = "empty";
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

  Future<void> speakemptys1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I noticed an empty space on the bookshelf.");
  }

  Future<void> speakemptys2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I couldn't see any empty seats.");
  }

  Future<void> speakemptys3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The theatre was half empty.");
  }

  Future<void> speakemptys4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("As it got later, the streets became empty.");
  }

  Future<void> speakemptys5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The house had been standing empty for some time.");
  }

  Future<void> speakemptys6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The room was empty of furniture.");
  }

  Future<void> speakemptys7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("The house felt curiously empty without the children.");
  }

  Future<void> speakemptys8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("The politician's promises were just empty rhetoric.");
  }

  Future<void> speakemptys9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Too many empty threats and your child will soon learn to ignore you.");
  }

  Future<void> speakemptys10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They're just empty promises.");
  }

  Future<void> speakemptys11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My life seems empty without you.");
  }

  Future<void> speakemptys12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We all feel very empty now she's gone.");
  }

  Future<void> speakemptys13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("Three months after his death, she still felt empty.");
  }

  Future<void> speakemptys14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("She emptied the bins, washed the glasses and went to bed.");
  }

  Future<void> speakemptys15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He emptied his glass and asked for a refill.");
  }

  Future<void> speakemptys16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("I emptied out my pockets but could not find my keys.");
  }

  Future<void> speakemptys17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She emptied her mind of all thoughts of home.");
  }

  Future<void> speakemptys18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The beach gradually emptied of people.");
  }

  Future<void> speakemptys19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The streets soon emptied of shoppers.");
  }

  Future<void> speakemptys20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The room gradually emptied out.");
  }

  Future<void> speakemptys21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He stepped outside to empty the trash.");
  }

  Future<void> speakemptys22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("She emptied the contents of her bag onto the table.");
  }

  Future<void> speakemptys23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("Many factories emptied their waste into the river.");
  }

  Future<void> speakemptys24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She emptied the water out of the vase.");
  }

  Future<void> speakemptys25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Police had instructions to empty the building because of a bomb threat.");
  }

  Future<void> speakemptys26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The Rhine empties into the North Sea.");
  }

  Future<void> speakemptys27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("Fans emptied out onto the streets after the concert.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: بەتاڵ، بۆش، پووچەڵ، پووچ، پووچەک، پووک، نێوبەتاڵ، ھیچ‌تیانەبوو،	بێ‌نێوەرۆک، بێ‌واتا، بێ‌مەبەست،	چۆڵ، چۆڵ‌وھۆڵ،	بێ، بەتاڵ لە،	نافەرمی برسی، تینوو،	وەڕەز، عاجز، جاڕز
"""),
          const DefinitionKurdish(text: """١. (ھاوەڵناو) بەتاڵ"""),
          SentencesRow(
            englishText: """I noticed an empty space on the bookshelf.""",
            kurdishText: """لەسەر ڕەفەی کتێبەکە جێگایەکی بەتاڵم بەدیکرد.""",
            onPressedBritish: () => speakemptys1("en-GB"),
            onPressedAmerican: () => speakemptys1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I couldn't see any empty seats (= with nobody sitting in them).""",
            kurdishText: """ھیچ جێگایەکی بەتاڵم نەدەبینی.""",
            onPressedBritish: () => speakemptys2("en-GB"),
            onPressedAmerican: () => speakemptys2("en-US" ""),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: """The theatre was half empty.""",
                    kurdishText: """ھۆڵی شانۆکە نیوەی بەتاڵ بوو.""",
                    onPressedBritish: () => speakemptys3("en-GB"),
                    onPressedAmerican: () => speakemptys3("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """As it got later, the streets became empty.""",
                    kurdishText: """کە درەنگی کرد، شەقامەکان بەتاڵ بوون.""",
                    onPressedBritish: () => speakemptys4("en-GB"),
                    onPressedAmerican: () => speakemptys4("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The house had been standing empty (= without people living in it) for some time.""",
                    kurdishText:
                        """خانووەکە بۆ ماوەیەک بوو بە بەتاڵی مابوویەوە.""",
                    onPressedBritish: () => speakemptys5("en-GB"),
                    onPressedAmerican: () => speakemptys5("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """The room was empty of furniture.""",
                    kurdishText: """ژوورەکە ھیچ کەلوپەلی تێدا نەبوو.""",
                    onPressedBritish: () => speakemptys6("en-GB"),
                    onPressedAmerican: () => speakemptys6("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The house felt curiously empty without the children.""",
                    kurdishText: """خانووەکە بەبێ منداڵەکان بەتاڵ دەردەکەوت.""",
                    onPressedBritish: () => speakemptys7("en-GB"),
                    onPressedAmerican: () => speakemptys7("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٢. (ھاوەڵناو) شتێک کە کەسێک دەیڵێیت یان دەیکات بەڵام واتای نییە"""),
          SentencesRow(
            englishText:
                """The politician's promises were just empty rhetoric.""",
            kurdishText: """بەڵێنەکانی سیاسییەکە تەنھا قسەی بەتاڵ بوون.""",
            onPressedBritish: () => speakemptys8("en-GB"),
            onPressedAmerican: () => speakemptys8("en-US" ""),
          ),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """Too many empty threats and your child will soon learn to ignore you.""",
            kurdishText:
                """ھێندە ھەڕەشەی بێ‌کردار بکەیت منداڵەکەت فێر دەبێت پشتگوێت بخات.""",
            onPressedBritish: () => speakemptys9("en-GB"),
            onPressedAmerican: () => speakemptys9("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """They're just empty promises.""",
            kurdishText: """تەنھا بەڵێنی درۆینەن.""",
            onPressedBritish: () => speakemptys10("en-GB"),
            onPressedAmerican: () => speakemptys10("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٣. (ھاوەڵناو) کە کەسێک ژیان بە بێ مەبەست دەبینێت و """),
          SentencesRow(
            englishText: """My life seems empty without you.""",
            kurdishText: """ژیانم بێ‌نرخ دیارە بەبێ تۆ.""",
            onPressedBritish: () => speakemptys11("en-GB"),
            onPressedAmerican: () => speakemptys11("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """We all feel very empty now she's gone.""",
            kurdishText: """ئێستا زۆر ھەست بە کەساسی دەکەین کە چووە.""",
            onPressedBritish: () => speakemptys12("en-GB"),
            onPressedAmerican: () => speakemptys12("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Three months after his death, she still felt empty.""",
            kurdishText: """سێ مانگ دوای مەرگی ھێشتا ھەستی بە کەساسی دەکرد.""",
            kurdishNote: "کەساس: حاڵ پەرێشان، بێ سەرەوبەرە",
            onPressedBritish: () => speakemptys13("en-GB"),
            onPressedAmerican: () => speakemptys13("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٤. (کردار) بەتاڵکردن"""),
          SentencesRow(
            englishText:
                """She emptied the bins, washed the glasses and went to bed.""",
            kurdishText:
                """زباڵەکانی بەتاڵ کرد، گڵاسەکانی ششت و چووە جێخەوەکەی.""",
            onPressedBritish: () => speakemptys14("en-GB"),
            onPressedAmerican: () => speakemptys14("en-US" ""),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        """He emptied his glass and asked for a refill.""",
                    kurdishText:
                        """گڵاسەکەی بەتاڵ کرد و داوای دووبارە پڕکردنی کرد.""",
                    onPressedBritish: () => speakemptys15("en-GB"),
                    onPressedAmerican: () => speakemptys15("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """I emptied out my pockets but could not find my keys.""",
                    kurdishText:
                        """گیرفانەکانم بەتاڵ کرد بەڵام نەمدەتوانی کلیلەکانم بدۆزمەوە.""",
                    onPressedBritish: () => speakemptys16("en-GB"),
                    onPressedAmerican: () => speakemptys16("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """She emptied her mind of all thoughts of home.""",
                    kurdishText:
                        """(خوازراوی) مێشكی پاککردەوە لە ھەموو بیرکردنەوەیەک لە ماڵەوە.""",
                    onPressedBritish: () => speakemptys17("en-GB"),
                    onPressedAmerican: () => speakemptys17("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٥. (کردار) بەتاڵ بوون"""),
          SentencesRow(
            englishText: """The beach gradually emptied of people.""",
            kurdishText: """کەناراوەکە کەم‌کەم بەتاڵ بوو لە خەڵکی.""",
            onPressedBritish: () => speakemptys18("en-GB"),
            onPressedAmerican: () => speakemptys18("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The streets soon emptied of shoppers.""",
            kurdishText: """شەقامەکان زوو خاڵی بوون لە کڕیاران.""",
            onPressedBritish: () => speakemptys19("en-GB"),
            onPressedAmerican: () => speakemptys19("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The room gradually emptied out.""",
            kurdishText: """ژوورەکە کەم‌کەم بەتاڵ بوو.""",
            onPressedBritish: () => speakemptys20("en-GB"),
            onPressedAmerican: () => speakemptys20("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٦. (کردار) دەرکردنی شتەکانی ناو شتێک و دانانیان لە شوێنێکی دیکە"""),
          SentencesRow(
            englishText: """He stepped outside to empty the trash.""",
            kurdishText: """چووە دەرەوە بۆ بەتاڵردنی زباڵەکە.""",
            onPressedBritish: () => speakemptys21("en-GB"),
            onPressedAmerican: () => speakemptys21("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """She emptied the contents of her bag onto the table.""",
            kurdishText: """شتەکانی جانتەکەی بەتاڵ کردە سەر مێزەکە.""",
            onPressedBritish: () => speakemptys22("en-GB"),
            onPressedAmerican: () => speakemptys22("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Many factories emptied their waste into the river.""",
            kurdishText:
                """زۆر کارگە پاشماوەکەیان بەتاڵ دەکردەوە ڕووبارەکەوە.""",
            onPressedBritish: () => speakemptys23("en-GB"),
            onPressedAmerican: () => speakemptys23("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She emptied the water out of the vase.""",
            kurdishText: """ئاوی گوڵدانەکەی دەرکرد.""",
            onPressedBritish: () => speakemptys24("en-GB"),
            onPressedAmerican: () => speakemptys24("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٧. (کردار) دڵنیایی کردنەوە لەوەی کە ھەموان شوێنێک جێدەھێڵن"""),
          SentencesRow(
            englishText:
                """Police had instructions to empty the building because of a bomb threat.""",
            kurdishText:
                """پۆلیس ڕێنمایی پێدرابوو کە بیناکە چۆڵ بکات بەھۆی ھەڕەشەی بۆمبێکەوە.""",
            onPressedBritish: () => speakemptys25("en-GB"),
            onPressedAmerican: () => speakemptys25("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٨. (کردار) ڕژان یان جوڵان بۆ شوێنێک"""),
          SentencesRow(
            englishText: """The Rhine empties into the North Sea.""",
            kurdishText: """ڕووباری ڕاین بەتاڵ دەبێتە ناو دەریای باکوورەوە.""",
            onPressedBritish: () => speakemptys26("en-GB"),
            onPressedAmerican: () => speakemptys26("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Fans emptied out onto the streets after the concert.""",
            kurdishText:
                """لە دوای کۆنسێرتەکە ھەواداران ڕژانە سەر شەقامەکان.""",
            onPressedBritish: () => speakemptys27("en-GB"),
            onPressedAmerican: () => speakemptys27("en-US" ""),
          ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys2800""",
          //   onPressedBritish: () => speakemptys28("en-GB"),
          //   onPressedAmerican: () => speakemptys28emptys2900""",
          //   onPressedBritish: () => speakemptys29("en-GB"),
          //   onPressedAmerican: () => speakemptys29emptys_3000""",
          //   onPressedBritish: () => speakemptys30("en-GB"),
          //   onPressedAmerican: () => speakemptys30emptys3100""",
          //   onPressedBritish: () => speakemptys31("en-GB"),
          //   onPressedAmerican: () => speakemptys31emptys3200""",
          //   onPressedBritish: () => speakemptys32("en-GB"),
          //   onPressedAmerican: () => speakemptys32emptys3300""",
          //   onPressedBritish: () => speakemptys33("en-GB"),
          //   onPressedAmerican: () => speakemptys33emptys3400""",
          //   onPressedBritish: () => speakemptys34("en-GB"),
          //   onPressedAmerican: () => speakemptys34emptys3500""",
          //   onPressedBritish: () => speakemptys35("en-GB"),
          //   onPressedAmerican: () => speakemptys35emptys3600""",
          //   onPressedBritish: () => speakemptys36("en-GB"),
          //   onPressedAmerican: () => speakemptys36emptys3700""",
          //   onPressedBritish: () => speakemptys37("en-GB"),
          //   onPressedAmerican: () => speakemptys37emptys3800""",
          //   onPressedBritish: () => speakemptys38("en-GB"),
          //   onPressedAmerican: () => speakemptys38emptys3900""",
          //   onPressedBritish: () => speakemptys39("en-GB"),
          //   onPressedAmerican: () => speakemptys39emptys_4000""",
          //   onPressedBritish: () => speakemptys40("en-GB"),
          //   onPressedAmerican: () => speakemptys40emptys4100""",
          //   onPressedBritish: () => speakemptys41("en-GB"),
          //   onPressedAmerican: () => speakemptys41emptys4200""",
          //   onPressedBritish: () => speakemptys42("en-GB"),
          //   onPressedAmerican: () => speakemptys42emptys4300""",
          //   onPressedBritish: () => speakemptys43("en-GB"),
          //   onPressedAmerican: () => speakemptys43emptys4400""",
          //   onPressedBritish: () => speakemptys44("en-GB"),
          //   onPressedAmerican: () => speakemptys44emptys4500""",
          //   onPressedBritish: () => speakemptys45("en-GB"),
          //   onPressedAmerican: () => speakemptys45emptys4600""",
          //   onPressedBritish: () => speakemptys46("en-GB"),
          //   onPressedAmerican: () => speakemptys46emptys4700""",
          //   onPressedBritish: () => speakemptys47("en-GB"),
          //   onPressedAmerican: () => speakemptys47emptys4800""",
          //   onPressedBritish: () => speakemptys48("en-GB"),
          //   onPressedAmerican: () => speakemptys48emptys4900""",
          //   onPressedBritish: () => speakemptys49("en-GB"),
          //   onPressedAmerican: () => speakemptys49emptys_6000""",
          //   onPressedBritish: () => speakemptys50("en-GB"),
          //   onPressedAmerican: () => speakemptys50emptys5100""",
          //   onPressedBritish: () => speakemptys51("en-GB"),
          //   onPressedAmerican: () => speakemptys51emptys5200""",
          //   onPressedBritish: () => speakemptys52("en-GB"),
          //   onPressedAmerican: () => speakemptys52emptys5300""",
          //   onPressedBritish: () => speakemptys53("en-GB"),
          //   onPressedAmerican: () => speakemptys53emptys5400""",
          //   onPressedBritish: () => speakemptys54("en-GB"),
          //   onPressedAmerican: () => speakemptys54emptys5500""",
          //   onPressedBritish: () => speakemptys55("en-GB"),
          //   onPressedAmerican: () => speakemptys55emptys5600""",
          //   onPressedBritish: () => speakemptys56("en-GB"),
          //   onPressedAmerican: () => speakemptys56emptys5700""",
          //   onPressedBritish: () => speakemptys57("en-GB"),
          //   onPressedAmerican: () => speakemptys57emptys5800""",
          //   onPressedBritish: () => speakemptys58("en-GB"),
          //   onPressedAmerican: () => speakemptys58emptys5900""",
          //   onPressedBritish: () => speakemptys59("en-GB"),
          //   onPressedAmerican: () => speakemptys59emptys6000""",
          //   onPressedBritish: () => speakemptys60("en-GB"),
          //   onPressedAmerican: () => speakemptys60emptys6100""",
          //   onPressedBritish: () => speakemptys61("en-GB"),
          //   onPressedAmerican: () => speakemptys61emptys6200""",
          //   onPressedBritish: () => speakemptys62("en-GB"),
          //   onPressedAmerican: () => speakemptys62emptys6300""",
          //   onPressedBritish: () => speakemptys63("en-GB"),
          //   onPressedAmerican: () => speakemptys63emptys6400""",
          //   onPressedBritish: () => speakemptys64("en-GB"),
          //   onPressedAmerican: () => speakemptys64emptys6500""",
          //   onPressedBritish: () => speakemptys65("en-GB"),
          //   onPressedAmerican: () => speakemptys65emptys6600""",
          //   onPressedBritish: () => speakemptys66("en-GB"),
          //   onPressedAmerican: () => speakemptys66emptys6700""",
          //   onPressedBritish: () => speakemptys67("en-GB"),
          //   onPressedAmerican: () => speakemptys67emptys6800""",
          //   onPressedBritish: () => speakemptys68("en-GB"),
          //   onPressedAmerican: () => speakemptys68emptys6900""",
          //   onPressedBritish: () => speakemptys69("en-GB"),
          //   onPressedAmerican: () => speakemptys69emptys_7000""",
          //   onPressedBritish: () => speakemptys70("en-GB"),
          //   onPressedAmerican: () => speakemptys70emptys7100""",
          //   onPressedBritish: () => speakemptys71("en-GB"),
          //   onPressedAmerican: () => speakemptys71emptys7200""",
          //   onPressedBritish: () => speakemptys72("en-GB"),
          //   onPressedAmerican: () => speakemptys72emptys7300""",
          //   onPressedBritish: () => speakemptys73("en-GB"),
          //   onPressedAmerican: () => speakemptys73emptys7400""",
          //   onPressedBritish: () => speakemptys74("en-GB"),
          //   onPressedAmerican: () => speakemptys74emptys7500""",
          //   onPressedBritish: () => speakemptys75("en-GB"),
          //   onPressedAmerican: () => speakemptys75emptys7600""",
          //   onPressedBritish: () => speakemptys76("en-GB"),
          //   onPressedAmerican: () => speakemptys76emptys7700""",
          //   onPressedBritish: () => speakemptys77("en-GB"),
          //   onPressedAmerican: () => speakemptys77emptys7800""",
          //   onPressedBritish: () => speakemptys78("en-GB"),
          //   onPressedAmerican: () => speakemptys78emptys7900""",
          //   onPressedBritish: () => speakemptys79("en-GB"),
          //   onPressedAmerican: () => speakemptys79emptys8000""",
          //   onPressedBritish: () => speakemptys80("en-GB"),
          //   onPressedAmerican: () => speakemptys80emptys8100""",
          //   onPressedBritish: () => speakemptys81("en-GB"),
          //   onPressedAmerican: () => speakemptys81emptys8200""",
          //   onPressedBritish: () => speakemptys82("en-GB"),
          //   onPressedAmerican: () => speakemptys82emptys8300""",
          //   onPressedBritish: () => speakemptys83("en-GB"),
          //   onPressedAmerican: () => speakemptys83emptys8400""",
          //   onPressedBritish: () => speakemptys84("en-GB"),
          //   onPressedAmerican: () => speakemptys84("en-US" ""),
          // ),
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
- Adjective: empty (derived forms: emptiest, emptier)
1. Holding or containing nothing
"an empty glass"; "an empty room"; "full of empty seats"; "empty hours"
 
2. Devoid of significance or force (= hollow, vacuous)
"empty promises";
 
3. Needing nourishment (= empty-bellied)
"after skipped lunch the men were empty by suppertime"; "empty-bellied children";
 
4. Emptied of emotion
"after the violent argument he felt empty"
 
5. Completely wanting or lacking (= barren, destitute, devoid, free, innocent)
"writing empty of insight";

- Verb: empty (derived forms: empties, emptying, emptied)
1. Make void or empty of contents
"Empty the box"; "The alarm emptied the building"
 
2. Become empty or void of its content (= discharge)
"The room emptied";
 
3. Leave behind empty; move out of (= vacate, abandon)
"You must empty your office by tonight";
 
4. Remove the contents of a container
"Empty the water"
 
5. Excrete or discharge from the body (= evacuate, void)

- Noun: empty (derived forms: empties)
1. A container that has been emptied
"return all empties to the store"
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'Kou7ur5xt_4';
  final double _startSeconds = 220;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 349;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = '9TugA_z5vQE';
  final double _startSeconds = 1234;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'EHJNGdFll4o';
  final double _startSeconds = 425;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = '_Z0ZQT0FttM';
  final double _startSeconds = 899;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'iYfQFsilPn8';
  final double _startSeconds = 31;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '8pEcvteQo9g';
  final double _startSeconds = 35;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB