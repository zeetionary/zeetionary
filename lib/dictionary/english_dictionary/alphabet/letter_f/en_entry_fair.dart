import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfair extends StatefulWidget {
  const EnglishEntryfair({super.key});

  @override
  State<EnglishEntryfair> createState() => _EnglishEntryfairState();
}

class _EnglishEntryfairState extends State<EnglishEntryfair> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""fair""");
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
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """fair""",
                      // alsoEnglishWord: "also: fair",
                      britshText: """IpaUK: /feə(r)/""",
                      americanText: """IpaUS: /fer/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                automaticallyImplyLeading: false,
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
  final String keyword = "fair";
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

    await flutterTts.speak("""The punishment was very fair.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""In the end, a draw was a fair result.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """We wanted to resolve this matter in a way that would be fair to her.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Was it really fair to him to ask him to do all the work?""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Moving to a new city wouldn't have been fair on the kids.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """It's not fair on the students to keep changing the timetable.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""They are fair and decent employers.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The new tax is fairer than the old system.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""We have to be fair to both players.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""For the first time, free and fair elections will be held.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """They are demanding a fairer distribution of the earth's resources.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Everyone has the right to a fair trial.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Kate had dark hair and fair skin.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She has long fair hair.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""All her children are fair.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""A fair number of people came along.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""There's been a fair amount of research on this topic.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""We've still got a fair bit to do.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""There's a fair chance that we might win this time.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""It's a fair bet that they won't turn up.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I have a fair idea of what happened.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Scoring twenty points was a fair achievement.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The day was set fair with the spring sun shining down.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""They set sail with the first fair wind.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Come on, you two, fight fair!""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""They'll respect you as long as you play fair.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""We all went south for the state fair.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I bought it at a local craft fair.""");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: بەداد، دادپەروەر، دادمەند، دروست،	دادوەرانە، دادگەرانە، خودایی، لە ڕووی ئینسافەوە،	بێ‌غەرەز، بێ‌لایەن، لانەگر، بێ‌شێلەوبێلە، بێ‌فروفێڵ،	بەرحەق، ڕەوا، قانوونی،	مام‌ناوەندی، ئەندازە، دەستە، تا ئەندازەیێ باش،	جێی ھیوا،	زۆر، زەبەند، بەرچاو، جێی سەرنج،	بێ‌عەیب، بێ‌گەرد، بێ‌خەوش، بێ‌لکە،	(ھەوا) خۆش، سازگار، ساو، بێ‌ھەور،	کاڵ (قژ)،	خاوێن، تەمیز
"""),
          const DefinitionKurdish(
              text:
                  """١. (ھاوەڵناو) کە لە دۆخێکی دیاریکراودا پەسەندکراو یان گونجاوە"""),
          SentencesRow(
            englishText: """The punishment was very fair.""",
            kurdishText: """سزاکە زۆر دادپەروەرانە بوو.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """In the end, a draw was a fair result.""",
            kurdishText:
                """لە کۆتاییدا، یەکسان بوون ئەنجامێکی دادپەروەرانە بوو.""",
            onPressedBritish: () => speaksentence2("en-GB"),
            onPressedAmerican: () => speaksentence2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """We wanted to resolve this matter in a way that would be fair to her.""",
            kurdishText:
                """ویستمان ئەم بابەتە چارەسەر بکەین بەشێوەیەک کە دادپەروەرانە بێت بۆی.""",
            onPressedBritish: () => speaksentence3("en-GB"),
            onPressedAmerican: () => speaksentence3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Was it really fair to him to ask him to do all the work?""",
            kurdishText:
                """ئەوە دادپەروەرانە بوو بەرامەبری لە داوا بکرێت ھەموو کارەکە بکات.""",
            onPressedBritish: () => speaksentence4("en-GB"),
            onPressedAmerican: () => speaksentence4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Moving to a new city wouldn't have been fair on the kids.""",
            kurdishText: """ڕۆشتن بۆ شارێکی تازە باش نەدەبوو بۆ منداڵەکان.""",
            onPressedBritish: () => speaksentence5("en-GB"),
            onPressedAmerican: () => speaksentence5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """It's not fair on the students to keep changing the timetable.""",
            kurdishText:
                """گونجاو نییە بۆ منداڵەکان کە خشتەی وانەکان بەردەوام بگۆڕین.""",
            onPressedBritish: () => speaksentence6("en-GB"),
            onPressedAmerican: () => speaksentence6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٢. (ھاوەڵناو) مامەڵەکردن لەگەڵ ھەموان بە یەکسانی و بەپێی یاساکان"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """They are fair and decent employers.""",
            kurdishText: """خاوەن‌کاری دادپەروەر و باشن.""",
            onPressedBritish: () => speaksentence7("en-GB"),
            onPressedAmerican: () => speaksentence7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The new tax is fairer than the old system.""",
            kurdishText: """باجە تازەکە دادپەروەرانەترە لە سیستەمە کۆنەکە.""",
            onPressedBritish: () => speaksentence8("en-GB"),
            onPressedAmerican: () => speaksentence8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """We have to be fair to both players.""",
            kurdishText: """دەبێت دادپەروەر بین لەگەڵ ھەردوو یاریزانەکە.""",
            onPressedBritish: () => speaksentence9("en-GB"),
            onPressedAmerican: () => speaksentence9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """For the first time, free and fair elections will be held.""",
            kurdishText:
                """بۆ یەکەمین جار، ھەڵبژاردنی ئازاد و دادپەروەرانە ڕێکدەخرێت.""",
            onPressedBritish: () => speaksentence10("en-GB"),
            onPressedAmerican: () => speaksentence10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """They are demanding a fairer distribution of the earth's resources.""",
            kurdishText:
                """داوای دابەشکردنێکی دادپەروەرانەتری سەرچاوەکانی زەوییان دەکرد.""",
            onPressedBritish: () => speaksentence11("en-GB"),
            onPressedAmerican: () => speaksentence11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Everyone has the right to a fair trial.""",
            kurdishText:
                """ھەموو کەسێک مافی ھەبوونی دادگاییەکی دادپەروەرانەی ھەیە.""",
            onPressedBritish: () => speaksentence12("en-GB"),
            onPressedAmerican: () => speaksentence12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٣. (ھاوەڵناو) ڕەنگی کاڵ"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Kate had dark hair and fair skin.""",
            kurdishText: """کەیت قژی ڕەش و پێستی کاڵی ھەبوو.""",
            onPressedBritish: () => speaksentence13("en-GB"),
            onPressedAmerican: () => speaksentence13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She has long fair hair.""",
            kurdishText: """قژی کاڵی درێژی ھەیە.""",
            onPressedBritish: () => speaksentence14("en-GB"),
            onPressedAmerican: () => speaksentence14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """All her children are fair (= they all have fair hair).""",
            kurdishText: """ھەموو منداڵەکانی قژ کاڵن.""",
            onPressedBritish: () => speaksentence15("en-GB"),
            onPressedAmerican: () => speaksentence15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٤. (ھاوەڵناو) کە لە بڕ، قەبارە، یان ژمارەدا تەواو زۆرە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """A fair number of people came along.""",
            kurdishText: """ژمارەیەکی زۆر خەڵک ھاتن.""",
            onPressedBritish: () => speaksentence16("en-GB"),
            onPressedAmerican: () => speaksentence16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """There's been a fair amount of research on this topic.""",
            kurdishText: """ژمارەیەکی زۆر توێژینەوە لەسەر ئەم بابەتە کراوە.""",
            onPressedBritish: () => speaksentence17("en-GB"),
            onPressedAmerican: () => speaksentence17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """We've still got a fair bit (= quite a lot) to do.""",
            kurdishText: """ھێشتا زۆرمان ماوە بیکەین.""",
            onPressedBritish: () => speaksentence18("en-GB"),
            onPressedAmerican: () => speaksentence18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٥. (ھاوەڵناو) تەواو باش"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """There's a fair chance that we might win this time.""",
            kurdishText:
                """شانسێکی باش ھەیە کە لەوانەیە ئەم یارییە ببەینەوە.""",
            onPressedBritish: () => speaksentence19("en-GB"),
            onPressedAmerican: () => speaksentence19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """It's a fair bet that they won't turn up.""",
            kurdishText: """ئەگەرێکی زۆرە کە ئامادە نابن.""",
            onPressedBritish: () => speaksentence20("en-GB"),
            onPressedAmerican: () => speaksentence20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I have a fair idea of what happened.""",
            kurdishText: """تێگەشتنێکی باشم ھەیە لەوەی چی ڕوویدا.""",
            onPressedBritish: () => speaksentence21("en-GB"),
            onPressedAmerican: () => speaksentence21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Scoring twenty points was a fair achievement.""",
            kurdishText: """بەدەستھێنانی ٢٠ خاڵ بەدەستھێنانێکی باش بوو.""",
            onPressedBritish: () => speaksentence22("en-GB"),
            onPressedAmerican: () => speaksentence22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٦. (ھاوەڵناو) کە ڕۆشنایە و باران نییە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The day was set fair with the spring sun shining down.""",
            kurdishText:
                """ڕۆژەکە بە ڕۆشنایی دەستی پێکرد بە خۆری بەھارانەوە کە دەدرەوشایەوە.""",
            onPressedBritish: () => speaksentence23("en-GB"),
            onPressedAmerican: () => speaksentence23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٧. (ھاوەڵناو) بایەک کە زۆر بەھێز نییە و بە ئاراستەی درووستدا دەچێت"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """They set sail with the first fair wind.""",
            kurdishText: """دەستیان بە گەشت کرد لەگەڵ یەکەم بای درووستدا.""",
            onPressedBritish: () => speaksentence24("en-GB"),
            onPressedAmerican: () => speaksentence24("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٨. (ھاوەڵکار) بەپێی یاسا؛ کە بە درووست و پەسەندکراو دادەنرێت"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Come on, you two, fight fair!""",
            kurdishText: """ھێی، ئەو دووانەتان، دادپەروەرانە بجەنگن.""",
            onPressedBritish: () => speaksentence25("en-GB"),
            onPressedAmerican: () => speaksentence25("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """They'll respect you as long as you play fair (= behave honestly).""",
            kurdishText: """ڕێزت دەگرن بەو مەرجەی دادپەروەرانە ڕەفتار بکەیت.""",
            onPressedBritish: () => speaksentence26("en-GB"),
            onPressedAmerican: () => speaksentence26("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٩. (ھاوەڵناو) جۆرە چێژبینینێک لە کێڵگەیەک یان پارکێک کە تێیدا ئاژەڵی کێڵگە و بەرھەمەکانیان بەژداری دەکەن و ڕکابەری دەکەن"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """We all went south for the state fair.""",
            kurdishText: """ھەموومان چووین بۆ باشوور بۆ نمایشی ویلایەتەکە.""",
            onPressedBritish: () => speaksentence27("en-GB"),
            onPressedAmerican: () => speaksentence27("en-US"),
          ),
          const DividerDefinition(),
          CustomRichText(
            textBeforeLink: "١٠. بڕوانە لە ",
            linkText: "fete",
            textAfterLink: "",
            onTap: () {
              Routemaster.of(context).push("/english-fair/fete");
            },
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """١١. (ناو) بۆنەیەک تێیدا خەڵکی کاڵاکانیان نمایش دەکەن و دەیان فرۆشن"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """I bought it at a local craft fair.""",
            kurdishText: """لە مەزادێکی کاری دەستی کڕیم.""",
            onPressedBritish: () => speaksentence28("en-GB"),
            onPressedAmerican: () => speaksentence28("en-US"),
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
- Adjective: fair (derived forms: fairer, fairest)
1. Free from favouritism or self-interest or bias or deception; conforming with established standards or rules (= just)
"fair deal"; "on a fair footing"; "a fair fight"; "by fair means or foul"; "a fair referee";
 
2. Not excessive or extreme (= fairish, reasonable)
"a fair income";
 
3. Very pleasing to the eye (= bonny [UK, dialect], bonnie [UK, dialect], comely [archaic], sightly, pretty)
"young fair maidens";
 
4. Lacking exceptional quality or ability (= average, mediocre, middling)
"only a fair performance of the sonata"; "in fair health";
 
5. Attractively feminine
"the fair sex"
 
6. (of a manuscript) having few alterations or corrections (= clean)
"fair copy";
 
7. Gained or earned without cheating or stealing (= honest)
"a fair penny";
 
8. Free of clouds or rain
"today will be fair and warm"
 
9. (used of hair or skin) pale or light-coloured (= fairish)
"a fair complexion";
 
10. (of a baseball) hit between the foul lines
"he hit a fair ball over the third base bag"

- Noun: fair (derived forms: fairs)
1. A travelling show; having sideshows and rides and games of skill etc. (= carnival [N. Amer], funfair [Brit], carnie [N. Amer, informal], carny [N. Amer, informal])
 
2. Gathering of producers to promote business
"world fair"; "trade fair"; "book fair"
 
3. A competitive exhibition of farm products
"she won a blue ribbon for her baking at the county fair"
 
4. A sale of miscellany; often for charity (= bazaar)
"the church fair";
 
5. Quite good (= not bad [informal], not so bad [informal])
"a fair chance of winning";

- Verb: fair (derived forms: faired, fairs, fairing)
1. Join so that the external surfaces blend smoothly

- Adverb: fair
1. In conformity with the rules or laws and without fraud or cheating (= fairly, clean)
"they played fair";
 
2. Without favouring one party, in a fair evenhanded manner (= fairly, evenhandedly)
"deal fair with one another";
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

const String _videoIdend = '_spuxXnul0U';
const double _startSecondsend = 762;
const String _videoIdone = 'HDntl7yzzVI';
const double _startSecondsone = 457;
const String _videoIdtwo = '-HyHZsa79LU';
const double _startSecondstwo = 1185;
const String _videoIdthree = '7TavVZMewpY';
const double _startSecondsthree = 1;
const String _videoIdfour = 'o-NuXSWtL2s';
const double _startSecondsfour = 93;
const String _videoIdfive = 'zl0IhCr8Ya4';
const double _startSecondsfive = 150;

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