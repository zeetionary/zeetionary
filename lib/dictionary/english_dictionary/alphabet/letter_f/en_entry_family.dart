import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfamily extends StatefulWidget {
  const EnglishEntryfamily({super.key});

  @override
  State<EnglishEntryfamily> createState() => _EnglishEntryfamilyState();
}

class _EnglishEntryfamilyState extends State<EnglishEntryfamily> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""family""");
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
                      word: """family""",
                      // alsoEnglishWord: "also: family",
                      britshText: """IpaUK: /ˈfæməli/""",
                      americanText: """IpaUS: /ˈfæməli/""",
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
  final String keyword = "family";
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

    await flutterTts
        .speak("""I introduced Neil to the other members of my family.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This is a summer movie for the whole family.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Every family has its own story to tell.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Taking a family of four to the cinema is expensive.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's a friend of the family.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """From early childhood he was a mystery to the rest of his family.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She works tirelessly to provide for her family.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Many of our students come from poor families.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """All our family came to Grandad's eightieth birthday party.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The support of family and friends is vital.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We've only told the immediate family.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I always think of you as one of the family.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There are a lot of girls in our family.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Nobody outside his family knew that he had a daughter.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Some families have farmed in this area for hundreds of years.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""This painting has been in our family for generations.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He belonged to an aristocratic family.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She is of Muslim heritage on her father's side of the family.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They have a large family.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do they plan to start a family?""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This is a wonderful place to raise a family.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She brought up a family of six children on her own.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She chose to stop work to have a family.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Lions belong to the cat family.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This bird is a member of the crow family.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""English belongs to the Germanic family of languages.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The job was starting to affect his family life.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Only close family members called her ‘Sally’.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She has become interested in her family history.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He has a family history of heart disease.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They had to sell the family home.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She had to sell the family jewels in order to pay off her gambling debts.""");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: خاو و خێزان، ژن‌ومناڵ، خێزان، وەجاخ، بنەماڵە، مالبات، ئەندامانی ماڵەوە، خێزانی مەڵەوە، نان‌خۆر، مناڵان، عەولاد،	خێزان، مالبات،	تایەفە، تیرە، خێڵ، ھۆزم	بەرە، دوودمان، ڕەچەڵەک، بن‌وبنەچەک، بنەچەک، خانەدان،	خزم، کەس‌وکار، قەوم
"""),
          const DefinitionKurdish(
              text: """١. (ناو) خێزان؛ یەک یان ھەردوو دایباب و منداڵەکانیان"""),
          SentencesRow(
            englishText:
                """I introduced Neil to the other members of my family.""",
            kurdishText: """نیڵم ناساند بە ئەندامانی دیکەی خێزانەکەم.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        """This is a summer movie for the whole family.""",
                    kurdishText:
                        """ئەمە فیلمێکی ھاوینانە بۆ تەواوی خێزانەکە.""",
                    onPressedBritish: () => speaksentence2("en-GB"),
                    onPressedAmerican: () => speaksentence2("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """Every family has its own story to tell.""",
                    kurdishText: """ھەر خێزانێک چیرۆکی خۆی ھەیە بۆ گوتن.""",
                    onPressedBritish: () => speaksentence3("en-GB"),
                    onPressedAmerican: () => speaksentence3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Taking a family of four to the cinema is expensive.""",
                    kurdishText:
                        """بردنی خێزانێکی چوار کەسی بۆ سینەما گران‌بەھایە.""",
                    onPressedBritish: () => speaksentence4("en-GB"),
                    onPressedAmerican: () => speaksentence4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """He's a friend of the family (= he is known and liked by the parents and the children).""",
                    kurdishText: """دۆستێکی خێزانەکەیە.""",
                    onPressedBritish: () => speaksentence5("en-GB"),
                    onPressedAmerican: () => speaksentence5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """From early childhood he was a mystery to the rest of his family.""",
                    kurdishText:
                        """لە سەرەتای منداڵیەوە نھێنییەک بوو بۆ ئەوانی دیکەی خێزانەکە.""",
                    onPressedBritish: () => speaksentence6("en-GB"),
                    onPressedAmerican: () => speaksentence6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """She works tirelessly to provide for her family.""",
                    kurdishText:
                        """ماندوونەناسانە کار دەکات بۆ ژیاندنی خێزانەکە.""",
                    onPressedBritish: () => speaksentence7("en-GB"),
                    onPressedAmerican: () => speaksentence7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Many of our students come from poor families.""",
                    kurdishText:
                        """زۆرێک لە خوێندکارەکانمان سەر بە خێزانی ھەژارن.""",
                    onPressedBritish: () => speaksentence8("en-GB"),
                    onPressedAmerican: () => speaksentence8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٢. (ناو) یەک یان ھەردوو دایباب، منداڵەکانیان، و خزمەکانیان"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """All our family came to Grandad's eightieth birthday party.""",
            kurdishText:
                """تەواوی خێزانەکەمان ھاتن بۆ ئاھەنگی لەدایکبوونی ھەشتا ساڵەی داپیرە.""",
            onPressedBritish: () => speaksentence9("en-GB"),
            onPressedAmerican: () => speaksentence9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The support of family and friends is vital.""",
            kurdishText: """پشتگیریی خێزان و ھاوڕێ گرنگە.""",
            onPressedBritish: () => speaksentence10("en-GB"),
            onPressedAmerican: () => speaksentence10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """We've only told the immediate family (= the closest relations).""",
            kurdishText: """تەنھا بە نزیکترینەکانی خێزانەکەمان گوتووە.""",
            onPressedBritish: () => speaksentence11("en-GB"),
            onPressedAmerican: () => speaksentence11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I always think of you as one of the family.""",
            kurdishText: """ھەمیشە وەک ھەمان خێزان سەیرتان دەکەم.""",
            onPressedBritish: () => speaksentence12("en-GB"),
            onPressedAmerican: () => speaksentence12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """There are a lot of girls in our family.""",
            kurdishText: """زۆر کچ ھەیە لە خێزانەکەمان.""",
            onPressedBritish: () => speaksentence13("en-GB"),
            onPressedAmerican: () => speaksentence13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Nobody outside his family knew that he had a daughter.""",
            kurdishText:
                """ھیچ کەس لە دەرەوەی خێزانەکەی نەیدەزانی کە کچێکی ھەیە.""",
            onPressedBritish: () => speaksentence14("en-GB"),
            onPressedAmerican: () => speaksentence14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (ناو) تەواوی خزمانی یەکدی، لە نێوانیاندا ئەوانەشی ئێستا مردوون"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Some families have farmed in this area for hundreds of years.""",
            kurdishText:
                """ژمارەیەک خێزان لەم ناوچەیە بۆ سەدان ساڵە درووست بوونە.""",
            onPressedBritish: () => speaksentence15("en-GB"),
            onPressedAmerican: () => speaksentence15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """This painting has been in our family for generations.""",
            kurdishText: """بۆ چەندین نەوەیە تابلۆکە لە خێزانەکەماندا بووە.""",
            onPressedBritish: () => speaksentence16("en-GB"),
            onPressedAmerican: () => speaksentence16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """He belonged to an aristocratic family.""",
            kurdishText: """سەر بە خێزانێکی چینی باڵا بوو.""",
            onPressedBritish: () => speaksentence17("en-GB"),
            onPressedAmerican: () => speaksentence17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """She is of Muslim heritage on her father's side of the family.""",
            kurdishText:
                """سەر بە بنەچەی موسڵمانە لە لایەنی خێزانی باوکییەوە.""",
            onPressedBritish: () => speaksentence18("en-GB"),
            onPressedAmerican: () => speaksentence18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٤. (ناو) منداڵەکانی کەسێک یان دوو کەس، بەتایبەتی گەنجەکانیان"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """They have a large family.""",
            kurdishText: """خێزانێکی گەورەیان ھەیە.""",
            onPressedBritish: () => speaksentence19("en-GB"),
            onPressedAmerican: () => speaksentence19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Do they plan to start a family (= have children)?""",
            kurdishText: """پلانیان ھەیە خێزان درووست بکەن؟""",
            onPressedBritish: () => speaksentence20("en-GB"),
            onPressedAmerican: () => speaksentence20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """This is a wonderful place to raise a family.""",
            kurdishText: """ئەمە شوێنێکی نایابە بۆ بنیاتنانی خێزانێک.""",
            onPressedBritish: () => speaksentence21("en-GB"),
            onPressedAmerican: () => speaksentence21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """She brought up a family of six children on her own.""",
            kurdishText: """بە تەنھا خۆی خێزانێکی شەش منداڵی گەورە کرد.""",
            onPressedBritish: () => speaksentence22("en-GB"),
            onPressedAmerican: () => speaksentence22("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She chose to stop work to have a family.""",
            kurdishText:
                """بڕیاریدا لە کارکردن بوەستێت بۆ درووستکردنی خێزانێک.""",
            onPressedBritish: () => speaksentence23("en-GB"),
            onPressedAmerican: () => speaksentence23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٥. (ناو) گرووپێک کە ئاژەڵ، ڕووەک، ھتد ـی بەسەردا دابەش دەکرێت"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Lions belong to the cat family.""",
            kurdishText: """شێر سەر بە خێزانی پشیلەیە.""",
            onPressedBritish: () => speaksentence24("en-GB"),
            onPressedAmerican: () => speaksentence24("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """This bird is a member of the crow family.""",
            kurdishText: """ئەم باڵندەیە سەر بە خێزانی قەلەڕەشە.""",
            onPressedBritish: () => speaksentence25("en-GB"),
            onPressedAmerican: () => speaksentence25("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٥. (ناو) ژمارەیەک زمانی پەیوەندیدار بە یەکدی"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """English belongs to the Germanic family of languages.""",
            kurdishText: """ئینگلیزی سەر بە خێزانی ئەڵمانی زمانەکانە.""",
            onPressedBritish: () => speaksentence26("en-GB"),
            onPressedAmerican: () => speaksentence26("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٦. (ھاوەڵناو) پەیوەندیدار بە خێزان، یان خێزانێکی تایبەت"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The job was starting to affect his family life.""",
            kurdishText:
                """کارەکە خەریک بوو دەستی دەکرد بە کاریگەری لە ژیانی خێزانیی.""",
            onPressedBritish: () => speaksentence27("en-GB"),
            onPressedAmerican: () => speaksentence27("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Only close family members called her ‘Sally’.""",
            kurdishText: """تەنھا ئەندامانی خێزانی نزیکی پێیان دەگوت سالی.""",
            onPressedBritish: () => speaksentence28("en-GB"),
            onPressedAmerican: () => speaksentence28("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She has become interested in her family history.""",
            kurdishText: """حەزی درووست بووە بۆ مێژووی خێزانیی.""",
            onPressedBritish: () => speaksentence29("en-GB"),
            onPressedAmerican: () => speaksentence29("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """He has a family history of heart disease.""",
            kurdishText: """مێژوویەکی خێزانی لە نەخۆشی دڵ ھەیە.""",
            onPressedBritish: () => speaksentence30("en-GB"),
            onPressedAmerican: () => speaksentence30("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٧. (ھاوەڵناو) کە ھی خێزانێکە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """They had to sell the family home.""",
            kurdishText: """پێویست بوو خانووی خێزانەکە بفرۆشن.""",
            onPressedBritish: () => speaksentence31("en-GB"),
            onPressedAmerican: () => speaksentence31("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """She had to sell the family jewels in order to pay off her gambling debts.""",
            kurdishText:
                """پێویست بوو زێڕەکانی خێزانەکە بفرۆشێت بۆ دانەوەی قەرزەکانی قومارکردنی.""",
            onPressedBritish: () => speaksentence32("en-GB"),
            onPressedAmerican: () => speaksentence32("en-US"),
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
- Noun: family (derived forms: families)
1. A social unit living together (= household, house, home, ménage)
"he moved his family to Virginia"; "the family refused to accept his will";
 
2. Primary social group; parents and children (= family unit)
"he wanted to have a good job before starting a family";
 
3. A collection of things sharing a common attribute (= class, category)
"there are two families of detergents";
 
4. People descended from a common ancestor; blood relations (= family line, folk, kinfolk, kinsfolk, phratry, kith and kin)
"his family has lived in Massachusetts since the Mayflower";
 
5. A person having kinship with another or others (= kin, kinsperson)
"he's family";
 
6. (biology) a taxonomic group containing one or more genera
"sharks belong to the fish family"
 
7. A loose affiliation of gangsters in charge of organized criminal activities (= syndicate, crime syndicate, mob)
 
8. An association of people who share common beliefs or activities (= fellowship)
"the message was addressed not just to employees but to every member of the company family";
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

const String _videoIdend = 'DPZzrlFCD_I';
const double _startSecondsend = 505;
const String _videoIdone = 'hS2x1zl4rn0';
const double _startSecondsone = 290;
const String _videoIdtwo = 'SrDTSB5bVS4';
const double _startSecondstwo = 117;
const String _videoIdthree = 'xkYved-ucGg';
const double _startSecondsthree = 1625;
const String _videoIdfour = 'ozsgl_sLnHQ';
const double _startSecondsfour = 1992;
const String _videoIdfive = '8AGNsvNFUGw';
const double _startSecondsfive = 69;

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