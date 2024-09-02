import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryexercise extends StatefulWidget {
  const EnglishEntryexercise({super.key});

  @override
  State<EnglishEntryexercise> createState() => _EnglishEntryexerciseState();
}

class _EnglishEntryexerciseState extends State<EnglishEntryexercise> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""exercise""");
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
                      word: """exercise""",
                      // alsoEnglishWord: "also: exercise",
                      britshText: """IpaUK: /ˈeksəsaɪz/""",
                      americanText: """IpaUS: /ˈeksərsaɪz/""",
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
  final String keyword = "exercise";
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
    await flutterTts.speak("""Swimming is good exercise.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I don't get much exercise sitting in the office all day.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Diet and exercise are equally important.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The mind needs exercise as well as the body.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The doctor recommended regular exercise.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Remember to do your breathing exercises every day.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Perform these exercises carefully to avoid injury.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Repeat the exercise ten times on each leg.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I want you to do the next exercise in the book in pairs.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do exercise one for homework.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """One of these powers is the exercise of discretion by police officers.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""In the end it proved a pointless exercise.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """As a public relations exercise the festival was clearly a success.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The company has just carried out a major cost-cutting exercise.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The seminar was a valuable exercise in information exchange.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was injured in a training exercise.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""How often do you exercise?""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Horses need to be exercised regularly.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""These movements will exercise your arms and shoulders.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He was a man who exercised considerable influence over people.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Judges can exercise discretion in sentencing.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The roads are very slippery, so drivers should exercise caution.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The public are less exercised about this matter than the media.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """This very problem has exercised the minds of some of our most eminent scientists.""");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const KurdishVocabulary(text: """
کوردی: وەرزش، وەرزشت،	مەشق، تەمرین،	کارکردن، بەکارھێنان، کەڵک‌لێ‌وەرگرتن، خستنەکار، لەکارکردن، کارپێکردن،	مەشقی سەربازی، ڕاھێنان، مانۆڤر، (سەربازی) مەشق، ڕاھێنان، مانۆڤر،	ڕێ‌وڕەسم، ئاھەنگ
"""),
          const DefinitionKurdish(
              text:
                  """١. (ناو) ڕاھێنانی وەرزشی کە بۆ مانەوە بە تەندرووستی یان بەھێزبوون باشە"""),
          SentencesRow(
            englishText: """Swimming is good exercise.""",
            kurdishText: """مەلەکردن ڕاھێنانی باشە .""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        """I don't get much exercise sitting in the office all day.""",
                    kurdishText:
                        """زۆر ڕاھێنان ناکەم بەوەی کە تەواوی ڕۆژ لە ئۆفیسدا دادەنیشم.""",
                    onPressedBritish: () => speaksentence2("en-GB"),
                    onPressedAmerican: () => speaksentence2("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """Diet and exercise are equally important.""",
                    kurdishText: """خواردن و ڕاھێنان وەک یەک گرنگن.""",
                    onPressedBritish: () => speaksentence3("en-GB"),
                    onPressedAmerican: () => speaksentence3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The mind needs exercise as well as the body.""",
                    kurdishText:
                        """مێشک و ھەروەھا جەستە پێویستییان بە ڕاھێنانە.""",
                    onPressedBritish: () => speaksentence4("en-GB"),
                    onPressedAmerican: () => speaksentence4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """The doctor recommended regular exercise.""",
                    kurdishText:
                        """پزیشکەکە پێشنیاری ڕاھێنانی بەردەوامی کرد.""",
                    onPressedBritish: () => speaksentence5("en-GB"),
                    onPressedAmerican: () => speaksentence5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٢. (ناو) کۆمەڵە جوڵەیەک یان چالاکییەک کە دەیانکەیت بۆ مانەوە بە تەندرووستی"""),
          SentencesRow(
            englishText:
                """Remember to do your breathing exercises every day.""",
            kurdishText:
                """بیرت نەچێت جوڵەکانی ھەناسەدانت ھەموو ڕۆژێک بکەیت.""",
            onPressedBritish: () => speaksentence6("en-GB"),
            onPressedAmerican: () => speaksentence6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Perform these exercises carefully to avoid injury.""",
            kurdishText:
                """ئەم چالاکییانە بەوریاییەوە بکە بۆ دووربوون لە برین.""",
            onPressedBritish: () => speaksentence7("en-GB"),
            onPressedAmerican: () => speaksentence7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Repeat the exercise ten times on each leg.""",
            kurdishText: """جووڵەکان دە جار لەسەر ھەر لاقێک دووبارە بکەوە.""",
            onPressedBritish: () => speaksentence8("en-GB"),
            onPressedAmerican: () => speaksentence8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (ناو) ژمارەیەک پرسیار لە کتێبێک کە زانیاریت تاقیدەکاتەوە یان شارەزاییت زیاد دەکات"""),
          SentencesRow(
            englishText:
                """I want you to do the next exercise in the book in pairs.""",
            kurdishText:
                """دەمەوێت بە دوو کەسی ڕاھێنانی دواتر لە کتێبەکە ئەنجام بدەن.""",
            onPressedBritish: () => speaksentence9("en-GB"),
            onPressedAmerican: () => speaksentence9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Do exercise one for homework.""",
            kurdishText: """ڕاھێنانی یەکەم بۆ ئەرکی ماڵەوەیە.""",
            onPressedBritish: () => speaksentence10("en-GB"),
            onPressedAmerican: () => speaksentence10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (ناو) بەکارھێنانی دەسەڵات، شارەزایی، ھتد بۆ کردنی شتێک"""),
          SentencesRow(
            englishText:
                """One of these powers is the exercise of discretion by police officers.""",
            kurdishText:
                """یەکێک لەم دەسەڵاتە بەکارھێنانی توانایی بڕیاردانە لەلایەن ئەفسەرانی پۆلیسەوە.""",
            englishNote:
                "This means that among the various authorities or abilities granted, one significant power is the ability of police officers to make decisions based on their own judgment and choice in different situations.",
            onPressedBritish: () => speaksentence11("en-GB"),
            onPressedAmerican: () => speaksentence11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٥. (ناو) چالاکییەک کە ئامانج لێی بەدەستھێنانی ئەنجامێکی دیاریکراوە"""),
          SentencesRow(
            englishText: """In the end it proved a pointless exercise.""",
            kurdishText: """لە کۆتاییدا چالاکییەکی بێسوود دەرچوو.""",
            onPressedBritish: () => speaksentence12("en-GB"),
            onPressedAmerican: () => speaksentence12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """As a public relations exercise the festival was clearly a success.""",
            kurdishText:
                """وەک چالاکییەکی پەیوەندییە گشتییەکان فیستیڤاڵەکە سەرکەوتنێک بوو.""",
            englishNote:
                "This means that the festival was organized to improve or manage the public image and relations of an entity, and it achieved its goal effectively.",
            onPressedBritish: () => speaksentence13("en-GB"),
            onPressedAmerican: () => speaksentence13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The company has just carried out a major cost-cutting exercise.""",
            kurdishText:
                """کۆمپانیاکە تازەگی کاری کەمکردنەوەی زۆری خەرجی ئەنجام داوە.""",
            onPressedBritish: () => speaksentence14("en-GB"),
            onPressedAmerican: () => speaksentence14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The seminar was a valuable exercise in information exchange.""",
            kurdishText:
                """سیمینارەکە چالاکییەکی بەبەھا بوو لە گۆڕینەوەی زانیاری.""",
            onPressedBritish: () => speaksentence15("en-GB"),
            onPressedAmerican: () => speaksentence15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٦. (ناو) ژمارەیەک چالاک بۆ مەشقی سەربازان"""),
          SentencesRow(
            englishText: """He was injured in a training exercise.""",
            kurdishText: """لە مەشقێکی ڕاھێنانکردندا برینداربوو.""",
            onPressedBritish: () => speaksentence16("en-GB"),
            onPressedAmerican: () => speaksentence16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٧. (کردار) ڕاھێنان کردن بۆ مانەوە بە تەندرووستی یان بەھێزبوون"""),
          SentencesRow(
            englishText: """How often do you exercise?""",
            kurdishText: """چەند زوو ڕاھێنان دەکەیت؟""",
            onPressedBritish: () => speaksentence17("en-GB"),
            onPressedAmerican: () => speaksentence17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Horses need to be exercised regularly.""",
            kurdishText: """ئەسپ دەبێت زوو زوو ڕاھێنانی پێ بکرێت.""",
            onPressedBritish: () => speaksentence18("en-GB"),
            onPressedAmerican: () => speaksentence18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٨. (کردار) پێدانی جووڵە و چالاکی بە بەشێکی جەستە کە پێویستی پێیەتی بۆ مانەوە بە بەھێزی و تەندرووست"""),
          SentencesRow(
            englishText:
                """These movements will exercise your arms and shoulders.""",
            kurdishText: """ئەم جووڵانە مەشق بە باڵ و شانەکانت دەکەن.""",
            onPressedBritish: () => speaksentence19("en-GB"),
            onPressedAmerican: () => speaksentence19("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٩. (کردار) بەکارھێنانی دەسەڵات، شارەزایی، ھتد بۆ کردنی شتێک"""),
          SentencesRow(
            englishText:
                """He was a man who exercised considerable influence over people.""",
            kurdishText: """پیاوێک بوو کە کاریگەری زۆری لەسەر خەڵکی دەبوو.""",
            onPressedBritish: () => speaksentence20("en-GB"),
            onPressedAmerican: () => speaksentence20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Judges can exercise discretion in sentencing.""",
            kurdishText:
                """دادوەران دەتوانن توانای بڕیاردانی خۆیان لە سزادان بەکاربھێنن.""",
            kurdishNote:
                "واتا بڕیاری ئەوە بدەن کە خۆیان بە گونجاوی دەزانن لە دۆخی تایبەتدا کە یاسا ڕوون نییە",
            onPressedBritish: () => speaksentence21("en-GB"),
            onPressedAmerican: () => speaksentence21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The roads are very slippery, so drivers should exercise caution.""",
            kurdishText:
                """ڕێگاکان زۆر لووسن، بۆیە شۆفێران دەبێت وریایی بەکاربھێنن.""",
            onPressedBritish: () => speaksentence22("en-GB"),
            onPressedAmerican: () => speaksentence22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """١٠. (کردار) شڵەژاو سەبارەت بە شتێک"""),
          SentencesRow(
            englishText:
                """The public are less exercised about this matter than the media.""",
            kurdishText: """خەڵکی کەمتر لە میدیا شڵەژاون سەبارەت بەم باسە.""",
            onPressedBritish: () => speaksentence23("en-GB"),
            onPressedAmerican: () => speaksentence23("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """This very problem has exercised the minds of some of our most eminent scientists.""",
            kurdishText:
                """ئەم کێشەیە ھزری زۆرینەی زانا دیارەکانمانی شڵەژاندووە.""",
            onPressedBritish: () => speaksentence24("en-GB"),
            onPressedAmerican: () => speaksentence24("en-US"),
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
- Noun: exercise (derived forms: exercises)
1. The activity of exerting your muscles in various ways to keep fit (= exercising, physical exercise, physical exertion, workout)
"the doctor recommended regular exercise";
 
2. The act of using (= use, usage, utilization, utilisation [Brit], employment)
 
3. Systematic training by multiple repetitions (= practice, drill, practice session, recitation)
"exercise makes perfect";
 
4. A task performed or problem solved in order to develop skill or understanding (= example)
 
5. (usually plural) a ceremony that involves processions and speeches
"academic exercises"
 
6. An action, often used negatively and without consequences
"an exercise in futility"; "an exercise in cheap talk"

- Verb: exercise (derived forms: exercises, exercising, exercised)
1. Put to use (= exert)
"exercise one's power or influence";
 
2. Carry out, engage in (as of jobs and professions) (= practice [N. Amer], practise [Brit, Cdn], do)
"exercise law";
 
3. Give a workout to (= work, work out)
"Some parents exercise their infants"; "this puzzle will exercise your mind";
 
4. Do physical exercise (= work out)
"She exercises in the gym every day";
 
5. Learn by repetition (= drill, practice [N. Amer], practise [Brit, Cdn])
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}

const String _videoIdend = 'VrKW58MS12g';
const double _startSecondsend = 1300;
const String _videoIdone = '_GFkHA5EZdE';
const double _startSecondsone = 136;
const String _videoIdtwo = 'o9zCgPtsups';
const double _startSecondstwo = 111;
const String _videoIdthree = 'DWmGArQBtFI';
const double _startSecondsthree = 195;
const String _videoIdfour = 'pTysrwci0pU';
const double _startSecondsfour = 485;
const String _videoIdfive = 'F8_ME4VwTiw';
const double _startSecondsfive = 149;

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