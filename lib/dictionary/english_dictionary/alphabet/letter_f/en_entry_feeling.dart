import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfeeling extends StatefulWidget {
  const EnglishEntryfeeling({super.key});

  @override
  State<EnglishEntryfeeling> createState() => _EnglishEntryfeelingState();
}

class _EnglishEntryfeelingState extends State<EnglishEntryfeeling> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""feeling""");
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
                      word: """feeling""",
                      // alsoEnglishWord: "also: feeling",
                      britshText: """IpaUK: /ˈfiːlɪŋ/""",
                      americanText: """IpaUS: /ˈfiːlɪŋ/""",
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
  final String keyword = "feeling";
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
        .speak("""He struggled with feelings of isolation and loneliness.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""You might experience feelings of dizziness and nausea.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""You need to stop having these guilty feelings.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He hates talking about his feelings.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""People's words often hide their true feelings.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Talk to someone about your thoughts and feelings.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I didn't mean to hurt your feelings.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Feeling runs deep on this issue.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She spoke with feeling about the plight of homeless people.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The general feeling was against the decision.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""My own feeling is that we should buy the cheaper one.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Public feeling is being ignored by the government.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I don't have any strong feelings about it one way or the other.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She had mixed feelings about giving up her job.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Our feeling tells us that this will work.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I had this feeling that I had forgotten something.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He suddenly had the feeling of being followed.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I have a bad feeling about this.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He never told her his feelings.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""You have no feeling for the sufferings of others.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I still have feelings for her.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He never told her his true feelings.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Feelings don't always last.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I've lost all feeling in my legs.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Feeling gradually began to return to my frozen feet.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Will she ever get the feeling back in her fingers?""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I had no feeling in my toes.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He played the piano with great feeling.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She has a wonderful feeling for colour.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The house had a feeling of neglect about it.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There was a feeling of sadness in the room.""");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: ھەست، ھۆش، ئاگا، ھەست‌پێکردن، لێکەوتن، بەرکەوتن،	باوەڕ، بۆچوون، ڕا،	تێگەیشتن، پێزانین،	دڵنەرمی، ھاوسۆزی، سۆز،	کەش، ئەتمۆسفێر، ھەست‌وسۆز، کڵ‌وکۆ، ڕەگی دڵ
"""),
          const DefinitionKurdish(text: """١. (ناو) شتێک کە ھەستی پێ دەکەیت"""),
          SentencesRow(
            englishText:
                """He struggled with feelings of isolation and loneliness.""",
            kurdishText: """تەقەڵای بوو لەگەڵ ھەستی گۆشەگیری و تەنھایی.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """You might experience feelings of dizziness and nausea.""",
            kurdishText: """ڕەنگە تووشی ھەستی سەرەگێژە و دڵ‌تێکھەڵاتن ببیت.""",
            onPressedBritish: () => speaksentence2("en-GB"),
            onPressedAmerican: () => speaksentence2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """You need to stop having these guilty feelings.""",
            kurdishText: """دەبێت بوەستیت لە ھەبوونی ئەم ھەستی تاوانبارییە.""",
            onPressedBritish: () => speaksentence3("en-GB"),
            onPressedAmerican: () => speaksentence3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٢. (ناو) ھەستەکانی کەسێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """He hates talking about his feelings.""",
            kurdishText: """ڕقی لێیە قسە لەسەر ھەستەکانی بکات.""",
            onPressedBritish: () => speaksentence4("en-GB"),
            onPressedAmerican: () => speaksentence4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """People's words often hide their true feelings.""",
            kurdishText:
                """قسەکانی خەڵکی زۆرجار ھەستی ڕاستەقینەیان دەشارنەوە.""",
            onPressedBritish: () => speaksentence5("en-GB"),
            onPressedAmerican: () => speaksentence5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Talk to someone about your thoughts and feelings.""",
            kurdishText:
                """قسە لەگەڵ کەسێک بکە سەبارەت بە بیرکردنەوە و ھەستەکانت.""",
            onPressedBritish: () => speaksentence6("en-GB"),
            onPressedAmerican: () => speaksentence6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I didn't mean to hurt your feelings (= offend you).""",
            kurdishText: """نەمدەویست ھازاری ھەستەکانت بدەم.""",
            onPressedBritish: () => speaksentence7("en-GB"),
            onPressedAmerican: () => speaksentence7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٣. (ناو) ھەست و سۆزی بەھێز"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Feeling runs deep (= people feel strongly) on this issue.""",
            kurdishText: """ھەستی قووڵ ھەیە لەسەر ئەم بابەتە.""",
            onPressedBritish: () => speaksentence8("en-GB"),
            onPressedAmerican: () => speaksentence8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """She spoke with feeling about the plight of homeless people.""",
            kurdishText:
                """بە سۆزەوە قسەی دەکرد سەبارەت بە دۆخی چەرمەسەریی کەسانی بێ‌لانە.""",
            onPressedBritish: () => speaksentence9("en-GB"),
            onPressedAmerican: () => speaksentence9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (ناو) ھەڵوێست یان بۆچوون لەسەر شتێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The general feeling was against the decision.""",
            kurdishText: """بۆچوونی گشتی دژ بە بڕیارەکە بوو.""",
            onPressedBritish: () => speaksentence10("en-GB"),
            onPressedAmerican: () => speaksentence10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """My own feeling is that we should buy the cheaper one.""",
            kurdishText: """بۆچوونی خۆم ئەوەیە دەبێت ھەرزانەکە بکڕین.""",
            onPressedBritish: () => speaksentence11("en-GB"),
            onPressedAmerican: () => speaksentence11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Public feeling is being ignored by the government.""",
            kurdishText: """بۆچوونی خەڵکی پشتگوێ دەخرێت لەلایەن حکومەتەوە.""",
            onPressedBritish: () => speaksentence12("en-GB"),
            onPressedAmerican: () => speaksentence12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I don't have any strong feelings about it one way or the other.""",
            kurdishText:
                """ھیچ بۆچوونێکی بەھێزم لەسەری نییە بەھەر لایەکدا بێت.""",
            onPressedBritish: () => speaksentence13("en-GB"),
            onPressedAmerican: () => speaksentence13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She had mixed feelings about giving up her job.""",
            kurdishText:
                """بۆچوونی دژبەیەکی ھەبوو لەسەر وازھێنان لە کارەکەی.""",
            onPressedBritish: () => speaksentence14("en-GB"),
            onPressedAmerican: () => speaksentence14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٥. (ناو) ئەو تێگەشتن یان باوەڕەی کە شتێکی دیاریکراو ڕاستە یان دۆخێکی دیاریکراو ئەگەری ھەیە ڕووبدات"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Our feeling tells us that this will work.""",
            kurdishText: """ھەستم پێم دەڵێت کە ئەمە سەردەگرێت.""",
            onPressedBritish: () => speaksentence15("en-GB"),
            onPressedAmerican: () => speaksentence15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I had this feeling that I had forgotten something.""",
            kurdishText: """ئەم ھەستە ھەبوو کە شتێکم بیرچووە.""",
            onPressedBritish: () => speaksentence16("en-GB"),
            onPressedAmerican: () => speaksentence16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """He suddenly had the feeling of being followed.""",
            kurdishText: """لەناکاو ئەو ھەستەی ھەبوو کە شوێنی کەوتوون.""",
            onPressedBritish: () => speaksentence17("en-GB"),
            onPressedAmerican: () => speaksentence17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I have a bad feeling about this (= I have the impression it is not going to go well).""",
            kurdishText: """ھەستێکی خراپم سەبارەت بەمە ھەیە.""",
            onPressedBritish: () => speaksentence18("en-GB"),
            onPressedAmerican: () => speaksentence18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٦. (ناو) بەزەیی یان خۆشەویستی بۆ کەسێک/شتێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """He never told her his feelings.""",
            kurdishText: """ھەرگیز ھەستەکانی دەرنەبڕی.""",
            onPressedBritish: () => speaksentence19("en-GB"),
            onPressedAmerican: () => speaksentence19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """You have no feeling for the sufferings of others.""",
            kurdishText: """ھیچ ھەستت بۆ ئازاری کەسانی دیکە نییە.""",
            onPressedBritish: () => speaksentence20("en-GB"),
            onPressedAmerican: () => speaksentence20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I still have feelings for her (= feel attracted to her in a romantic way).""",
            kurdishText: """ھێشتا خۆشەویستیم بۆی ھەبوو.""",
            onPressedBritish: () => speaksentence21("en-GB"),
            onPressedAmerican: () => speaksentence21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """He never told her his true feelings.""",
            kurdishText: """ھەرگیز ھەستە ڕاستەقینەکانی پێ نەگوت.""",
            onPressedBritish: () => speaksentence22("en-GB"),
            onPressedAmerican: () => speaksentence22("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Feelings don't always last.""",
            kurdishText: """ھەستەکان ھەمیشە بەردەوام نابن.""",
            onPressedBritish: () => speaksentence23("en-GB"),
            onPressedAmerican: () => speaksentence23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٧. (ناو) توانای ھەستکردنی جەستەیی"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """I've lost all feeling in my legs.""",
            kurdishText: """ھەموو ھەستکردنێکم لە لاقەکانمدا لەدەست داوە.""",
            onPressedBritish: () => speaksentence24("en-GB"),
            onPressedAmerican: () => speaksentence24("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Feeling gradually began to return to my frozen feet.""",
            kurdishText:
                """ھەستکردن کەم‌کەم دەستی کرد بە گەڕانەوە بۆ پێیە تەزیوەکەم.""",
            onPressedBritish: () => speaksentence25("en-GB"),
            onPressedAmerican: () => speaksentence25("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Will she ever get the feeling back in her fingers?""",
            kurdishText: """ھەرگیز ھەست بە ھەستکردن لە پەنجەکانیدا دەکاتەوە؟""",
            onPressedBritish: () => speaksentence26("en-GB"),
            onPressedAmerican: () => speaksentence26("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I had no feeling in my toes.""",
            kurdishText: """لە پەنجەکانمدا ھیچ توانای ھەستکردنم نەبوو.""",
            onPressedBritish: () => speaksentence27("en-GB"),
            onPressedAmerican: () => speaksentence27("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٨. (ناو) توانای تێگەشتن لە شتێک یان کردنی شتێک بەشێوەیەکی ئاقڵانە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """He played the piano with great feeling.""",
            kurdishText: """بە تێگەشتنی زۆرەوە پیانۆکەی ژەند.""",
            onPressedBritish: () => speaksentence28("en-GB"),
            onPressedAmerican: () => speaksentence28("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She has a wonderful feeling for colour.""",
            kurdishText: """تێگەشتنی ناوازەی بۆ ڕەنگ ھەیە.""",
            onPressedBritish: () => speaksentence29("en-GB"),
            onPressedAmerican: () => speaksentence29("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٩. (ناو) کەشی شوێنێک، دۆخێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The house had a feeling of neglect about it.""",
            kurdishText: """خانووەکە کەشی پشتگوێخراوی پێوە دیاربوو.""",
            onPressedBritish: () => speaksentence30("en-GB"),
            onPressedAmerican: () => speaksentence30("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """There was a feeling of sadness in the room.""",
            kurdishText: """کەشی دكتەنگی لە ژوورەکەدا ھەبوو.""",
            onPressedBritish: () => speaksentence31("en-GB"),
            onPressedAmerican: () => speaksentence31("en-US"),
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
- Noun: feeling
1. The experiencing of affective and emotional states
"she had a feeling of euphoria"; "he had terrible feelings of guilt"; "I disliked him and the feeling was mutual"
 
2. A vague idea in which some confidence is placed (= impression, belief, notion, opinion)
"what are your feelings about the crisis?"; "I had a feeling that she was lying";
 
3. The general atmosphere of a place or situation and the effect that it has on people (= spirit, tone, feel, flavor [US], flavour [Brit, Cdn], look, smell)
 
4. A physical sensation that you experience
"he had a queasy feeling"; "I had a strange feeling in my leg"; "he lost all feeling in his arm"
 
5. The sensation produced by pressure receptors in the skin (= touch, touch sensation, tactual sensation, tactile sensation)
"the surface had a greasy feeling";
 
6. An intuitive understanding of something (= intuitive feeling)
"he had a great feeling for music";
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

const String _videoIdend = 'MnExgQ81fhU';
const double _startSecondsend = 920;
const String _videoIdone = 'tLD-OUkYtk4';
const double _startSecondsone = 118;
const String _videoIdtwo = '0zwNZJbM-Gw';
const double _startSecondstwo = 94;
const String _videoIdthree = '55XJ1ObZKaM';
const double _startSecondsthree = 273;
const String _videoIdfour = 'tsxmyL7TUJg';
const double _startSecondsfour = 259;
const String _videoIdfive = '9TugA_z5vQE';
const double _startSecondsfive = 1213;

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