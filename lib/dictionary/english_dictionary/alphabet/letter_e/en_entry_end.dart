import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryend extends StatefulWidget {
  const EnglishEntryend({super.key});

  @override
  State<EnglishEntryend> createState() => _EnglishEntryendState();
}

class _EnglishEntryendState extends State<EnglishEntryend> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("end");
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
                      word: "end",
                      // alsoEnglishWord: "also: end",
                      britshText: "IpaUK: /end/",
                      americanText: "IpaUS: /end/",
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
  final String keyword = "end";
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
    await flutterTts.speak("""It's the end of an era.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There’ll be a chance to ask questions at the end.");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He wants the reports by the end of the month.");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("She remained active as an artist to the end of her life.");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We didn't leave until the very end.");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm staying until the end of this week.");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He is nearing the end of his career.");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It was the end of all his dreams.");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("That was by no means the end of the matter.");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The war was finally at an end.");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The meeting came to an end.");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The coup brought his corrupt regime to an end.");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I joined the end of the queue.");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Go to the end of the line!");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Turn right at the end of the road.");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("That's his wife sitting at the far end of the table.");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You've got something on the end of your nose.");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Tie the ends of the string together.");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They live in the end house.");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Continue until you reach the end of the road.");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("They are prepared to use violence in pursuit of their ends.");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He joined the society for political ends.");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("With this end in view they employed 50 new staff.");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Are there any problems at your end?");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("We need somebody to handle the marketing end of the business.");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Jean is going to meet me at the other end.");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("I answered the phone but there was no one at the other end.");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The teams changed ends at half-time.");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The floor was covered in cigarette ends.");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She came to an untimely end.");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I was with him at the end.");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He met his end at the Battle of Waterloo.");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The road ends here.");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("How does the story end?");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("At last the war ended.");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The problems did not end there.");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They decided to end their relationship.");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They ended the play with a song.");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We thought they'd never end.");
  }

  Future<void> speaksentence90(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("That was by no means the end of the matter.0");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: کۆتایی، دوایی، ئەنجام، دووماھی، پەڕ، ئاخر، ئاکام، بن، کنگ(ە)، قنچک، بێخ،	سەر، نووک،	دوایی‌یەکان، کۆتایی‌یەکان،	لا، لایەن،	مەرگ، ئەجەل،	مەبەست، ئەنجام، ئامانج،	بەش، پارچە، پشک،	نیوەی یاریگە،	پاشماوە، بەرماوە
"""),
          const DefinitionKurdish(text: """١. (ناو) کۆتایی شتێک"""),
          SentencesRow(
            englishText: """It's the end of an era.""",
            kurdishText: """کۆتایی سەردەمێکە.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        """There’ll be a chance to ask questions at the end.""",
                    kurdishText:
                        """لە کۆتاییدا دەرفەتێک دەبێت بۆ پرسیارکردن.""",
                    onPressedBritish: () => speaksentence2("en-GB"),
                    onPressedAmerican: () => speaksentence2("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """He wants the reports by the end of the month.""",
                    kurdishText: """تاوەکو کۆتایی مانگەکە ڕاپۆرتەکەی دەوێت.""",
                    onPressedBritish: () => speaksentence3("en-GB"),
                    onPressedAmerican: () => speaksentence3("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """She remained active as an artist to the end of her life.""",
                    kurdishText:
                        """تاوەکو کۆتایی ژیانی بە چالاکی وەک ھونەرمەندێک مایەوە.""",
                    onPressedBritish: () => speaksentence4("en-GB"),
                    onPressedAmerican: () => speaksentence4("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """We didn't leave until the very end.""",
                    kurdishText: """تاوەکو کۆتایی نەچووین.""",
                    onPressedBritish: () => speaksentence5("en-GB"),
                    onPressedAmerican: () => speaksentence5("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I'm staying until the end of this week.""",
                    kurdishText: """تاوەکو کۆتایی ھەفتەکە دەمێنمەوە.""",
                    onPressedBritish: () => speaksentence6("en-GB"),
                    onPressedAmerican: () => speaksentence6("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """He is nearing the end of his career.""",
                    kurdishText: """لە کۆتایی کارکردنی نزیک دەبێتەوە.""",
                    onPressedBritish: () => speaksentence7("en-GB"),
                    onPressedAmerican: () => speaksentence7("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (ناو) دۆخێک کە تێیدا شتێک چی دیکە بوونی نییە"""),
          SentencesRow(
            englishText: """It was the end of all his dreams.""",
            kurdishText: """ئەوە کۆتایی خەونەکانی بوو.""",
            onPressedBritish: () => speaksentence8("en-GB"),
            onPressedAmerican: () => speaksentence8("en-US" ""),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        """That was by no means the end of the matter.""",
                    kurdishText: """ئەوە بە ھیچ شێوەیەک کۆتایی باسەکە نەبوو.""",
                    onPressedBritish: () => speaksentence9("en-GB"),
                    onPressedAmerican: () => speaksentence9("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """The war was finally at an end.""",
                    kurdishText: """جەنگەکە لەکۆتاییدا لە کۆتاییدا بوو.""",
                    onPressedBritish: () => speaksentence10("en-GB"),
                    onPressedAmerican: () => speaksentence10("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """The meeting came to an end (= finished).""",
                    kurdishText: """کۆبوونەوەکە گەشت بە کۆتایی.""",
                    onPressedBritish: () => speaksentence11("en-GB"),
                    onPressedAmerican: () => speaksentence11("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The coup brought his corrupt regime to an end.""",
                    kurdishText: """کودەتاکە ڕژێمە گەندەڵەکەی بە کۆتا ھێنا.""",
                    onPressedBritish: () => speaksentence12("en-GB"),
                    onPressedAmerican: () => speaksentence12("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (ناو) بەشێکی شتێک کە دوورترینە لە چەقەکەی یان سەرەتاکەی"""),
          SentencesRow(
            englishText: """I joined the end of the queue.""",
            kurdishText: """چوومە کۆتایی ڕیزەکە.""",
            onPressedBritish: () => speaksentence13("en-GB"),
            onPressedAmerican: () => speaksentence13("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Go to the end of the line!""",
            kurdishText: """بچۆ کۆتایی ڕیزەکە.""",
            onPressedBritish: () => speaksentence14("en-GB"),
            onPressedAmerican: () => speaksentence14("en-US" ""),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: """Turn right at the end of the road.""",
                    kurdishText: """لە کۆتایی شەقامەکە بە ڕاستدا پێچ بکەوە.""",
                    onPressedBritish: () => speaksentence15("en-GB"),
                    onPressedAmerican: () => speaksentence15("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """That's his wife sitting at the far end of the table.""",
                    kurdishText:
                        """ئەوە ژنەکەیەتی کە لە کۆتایی مێزەکە دانیشتووە.""",
                    onPressedBritish: () => speaksentence16("en-GB"),
                    onPressedAmerican: () => speaksentence16("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """You've got something on the end of your nose.""",
                    kurdishText: """شتێک لە خوارەوەی لووتتە.""",
                    onPressedBritish: () => speaksentence17("en-GB"),
                    onPressedAmerican: () => speaksentence17("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """Tie the ends of the string together.""",
                    kurdishText: """کۆتاییەکانی بەنەکە ببەستە بە یەکەوە.""",
                    onPressedBritish: () => speaksentence18("en-GB"),
                    onPressedAmerican: () => speaksentence18("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """They live in the end house.""",
                    kurdishText: """لە خانووەکەی کۆتایی دەژین.""",
                    onPressedBritish: () => speaksentence19("en-GB"),
                    onPressedAmerican: () => speaksentence19("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Continue until you reach the end of the road.""",
                    kurdishText:
                        """بەردەوام بە تاوەکو دەگەیت بە کۆتایی خانووەکە.""",
                    onPressedBritish: () => speaksentence20("en-GB"),
                    onPressedAmerican: () => speaksentence20("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٤. (ناو) ئامانج یان مەبەستێک"""),
          SentencesRow(
            englishText:
                """They are prepared to use violence in pursuit of their ends.""",
            kurdishText:
                """ئامادەن توندوتیژی بەکاربھێنن بۆ گەشتن بە ئامانجەکانیان.""",
            onPressedBritish: () => speaksentence21("en-GB"),
            onPressedAmerican: () => speaksentence21("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """He joined the society for political ends.""",
            kurdishText: """پەیوەندی بە دەستەکەوە کرد بۆ ئامانجی سیاسی.""",
            onPressedBritish: () => speaksentence22("en-GB"),
            onPressedAmerican: () => speaksentence22("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """With this end in view they employed 50 new staff.""",
            kurdishText:
                """بە ھەبوونی ئەم ئامانجە لە دیدگایاندا،  ٥٠ ستافی تازەیان گرت.""",
            onPressedBritish: () => speaksentence23("en-GB"),
            onPressedAmerican: () => speaksentence23("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٥. (ناو) بەشێکی چالاکییەک کە کەسێک بەشێکە لێی"""),
          SentencesRow(
            englishText: """Are there any problems at your end?""",
            kurdishText: """ھیچ کێشەیەک لای تۆ ھەیە؟""",
            onPressedBritish: () => speaksentence24("en-GB"),
            onPressedAmerican: () => speaksentence24("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """We need somebody to handle the marketing end of the business.""",
            kurdishText:
                """کەسێکمان پێویستە بەبازاڕکردنی بازرگانییەکە ئەنجام بدات.""",
            onPressedBritish: () => speaksentence25("en-GB"),
            onPressedAmerican: () => speaksentence25("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٦. (ناو) ھەر یەک لە دوو شوێنەی کە لە پەیوەندی تەلەفۆنیدان، لایەکانی گەشتێکن، ھتد"""),
          SentencesRow(
            englishText: """Jean is going to meet me at the other end.""",
            kurdishText: """جین لە سەرەکەی دیکە دەمبینێت.""",
            onPressedBritish: () => speaksentence26("en-GB"),
            onPressedAmerican: () => speaksentence26("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I answered the phone but there was no one at the other end.""",
            kurdishText:
                """وەڵامی تەلەفۆنەکەم دایەوە بەڵام کەس لەسەر ھێڵەکەی دیکە نەبوو.""",
            onPressedBritish: () => speaksentence27("en-GB"),
            onPressedAmerican: () => speaksentence27("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٧. (ناو) یەکێک لە لایەکانی یاریگای وەرزشی"""),
          SentencesRow(
            englishText: """The teams changed ends at half-time.""",
            kurdishText: """لە نیوەی گێمەکەدا تیمەکان سەریان گۆڕییەوە.""",
            onPressedBritish: () => speaksentence28("en-GB"),
            onPressedAmerican: () => speaksentence28("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٨. (ناو) بەشێکی بچووک کە ماوەتەوە لە دوای ئەوەی زۆرینەی شتێک بەکارھێندراوە"""),
          SentencesRow(
            englishText: """The floor was covered in cigarette ends.""",
            kurdishText: """زەوییەکە پڕ بوو لە کنگە جگەرە.""",
            onPressedBritish: () => speaksentence29("en-GB"),
            onPressedAmerican: () => speaksentence29("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٩. (ناو) مەرگ"""),
          SentencesRow(
            englishText: """She came to an untimely end (= died young).""",
            kurdishText: """گەشت بە مەرگێکی ناوادە.""",
            onPressedBritish: () => speaksentence30("en-GB"),
            onPressedAmerican: () => speaksentence30("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I was with him at the end (= when he died).""",
            kurdishText: """لە سەرەمەرگیدا لەگەڵیدا بووم.""",
            onPressedBritish: () => speaksentence31("en-GB"),
            onPressedAmerican: () => speaksentence31("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """He met his end (= died) at the Battle of Waterloo.""",
            kurdishText: """لە جەنگی واتەرلۆدا مرد.""",
            onPressedBritish: () => speaksentence32("en-GB"),
            onPressedAmerican: () => speaksentence32("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """١٠. (کردار) کۆتایی ھاتن؛ کۆتایی پێھێنان"""),
          SentencesRow(
            englishText: """The road ends here.""",
            kurdishText: """ڕێگاکە لێرەدا کۆتایی دێت.""",
            onPressedBritish: () => speaksentence33("en-GB"),
            onPressedAmerican: () => speaksentence33("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """How does the story end?""",
            kurdishText: """چیرۆکەکە چۆن کۆتایی دێت؟""",
            onPressedBritish: () => speaksentence34("en-GB"),
            onPressedAmerican: () => speaksentence34("en-US" ""),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: """At last the war ended.""",
                    kurdishText: """لە کۆتاییدا جەنگەکە کۆتایی ھات.""",
                    onPressedBritish: () => speaksentence35("en-GB"),
                    onPressedAmerican: () => speaksentence35("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """The problems did not end there.""",
                    kurdishText: """کێشەکان لەوێ کۆتاییان نەھات.""",
                    onPressedBritish: () => speaksentence36("en-GB"),
                    onPressedAmerican: () => speaksentence36("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """They decided to end their relationship.""",
                    kurdishText:
                        """بڕیاریان دا پەیوەندییەکەیان کۆتایی پێبھێنن.""",
                    onPressedBritish: () => speaksentence37("en-GB"),
                    onPressedAmerican: () => speaksentence37("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """They ended the play with a song.""",
                    kurdishText: """بە گۆرانییەک کۆتاییان بە شانۆییەکە ھێنا.""",
                    onPressedBritish: () => speaksentence38("en-GB"),
                    onPressedAmerican: () => speaksentence38("en-US" ""),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """We thought they'd never end.""",
                    kurdishText: """وامان دەفکری کە ھەرگیز کۆتاییان نایەت.""",
                    onPressedBritish: () => speaksentence39("en-GB"),
                    onPressedAmerican: () => speaksentence39("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence_4000""",
          //   onPressedBritish: () => speaksentence40("en-GB"),
          //   onPressedAmerican: () => speaksentence40sentence4100""",
          //   onPressedBritish: () => speaksentence41("en-GB"),
          //   onPressedAmerican: () => speaksentence41sentence4200""",
          //   onPressedBritish: () => speaksentence42("en-GB"),
          //   onPressedAmerican: () => speaksentence42sentence4300""",
          //   onPressedBritish: () => speaksentence43("en-GB"),
          //   onPressedAmerican: () => speaksentence43sentence4400""",
          //   onPressedBritish: () => speaksentence44("en-GB"),
          //   onPressedAmerican: () => speaksentence44sentence4500""",
          //   onPressedBritish: () => speaksentence45("en-GB"),
          //   onPressedAmerican: () => speaksentence45sentence4600""",
          //   onPressedBritish: () => speaksentence46("en-GB"),
          //   onPressedAmerican: () => speaksentence46sentence4700""",
          //   onPressedBritish: () => speaksentence47("en-GB"),
          //   onPressedAmerican: () => speaksentence47sentence4800""",
          //   onPressedBritish: () => speaksentence48("en-GB"),
          //   onPressedAmerican: () => speaksentence48sentence4900""",
          //   onPressedBritish: () => speaksentence49("en-GB"),
          //   onPressedAmerican: () => speaksentence49sentence_5000""",
          //   onPressedBritish: () => speaksentence50("en-GB"),
          //   onPressedAmerican: () => speaksentence50sentence5100""",
          //   onPressedBritish: () => speaksentence51("en-GB"),
          //   onPressedAmerican: () => speaksentence51sentence5200""",
          //   onPressedBritish: () => speaksentence52("en-GB"),
          //   onPressedAmerican: () => speaksentence52sentence5300""",
          //   onPressedBritish: () => speaksentence53("en-GB"),
          //   onPressedAmerican: () => speaksentence53sentence5400""",
          //   onPressedBritish: () => speaksentence54("en-GB"),
          //   onPressedAmerican: () => speaksentence54sentence5500""",
          //   onPressedBritish: () => speaksentence55("en-GB"),
          //   onPressedAmerican: () => speaksentence55sentence5600""",
          //   onPressedBritish: () => speaksentence56("en-GB"),
          //   onPressedAmerican: () => speaksentence56sentence5700""",
          //   onPressedBritish: () => speaksentence57("en-GB"),
          //   onPressedAmerican: () => speaksentence57sentence5800""",
          //   onPressedBritish: () => speaksentence58("en-GB"),
          //   onPressedAmerican: () => speaksentence58sentence5900""",
          //   onPressedBritish: () => speaksentence59("en-GB"),
          //   onPressedAmerican: () => speaksentence59sentence_6000""",
          //   onPressedBritish: () => speaksentence60("en-GB"),
          //   onPressedAmerican: () => speaksentence60sentence6100""",
          //   onPressedBritish: () => speaksentence61("en-GB"),
          //   onPressedAmerican: () => speaksentence61sentence6200""",
          //   onPressedBritish: () => speaksentence62("en-GB"),
          //   onPressedAmerican: () => speaksentence62sentence6300""",
          //   onPressedBritish: () => speaksentence63("en-GB"),
          //   onPressedAmerican: () => speaksentence63sentence6400""",
          //   onPressedBritish: () => speaksentence64("en-GB"),
          //   onPressedAmerican: () => speaksentence64sentence6500""",
          //   onPressedBritish: () => speaksentence65("en-GB"),
          //   onPressedAmerican: () => speaksentence65sentence6600""",
          //   onPressedBritish: () => speaksentence66("en-GB"),
          //   onPressedAmerican: () => speaksentence66sentence6700""",
          //   onPressedBritish: () => speaksentence67("en-GB"),
          //   onPressedAmerican: () => speaksentence67sentence6800""",
          //   onPressedBritish: () => speaksentence68("en-GB"),
          //   onPressedAmerican: () => speaksentence68sentence6900""",
          //   onPressedBritish: () => speaksentence69("en-GB"),
          //   onPressedAmerican: () => speaksentence69sentence_7000""",
          //   onPressedBritish: () => speaksentence70("en-GB"),
          //   onPressedAmerican: () => speaksentence70sentence7100""",
          //   onPressedBritish: () => speaksentence71("en-GB"),
          //   onPressedAmerican: () => speaksentence71sentence7200""",
          //   onPressedBritish: () => speaksentence72("en-GB"),
          //   onPressedAmerican: () => speaksentence72sentence7300""",
          //   onPressedBritish: () => speaksentence73("en-GB"),
          //   onPressedAmerican: () => speaksentence73sentence7400""",
          //   onPressedBritish: () => speaksentence74("en-GB"),
          //   onPressedAmerican: () => speaksentence74sentence7500""",
          //   onPressedBritish: () => speaksentence75("en-GB"),
          //   onPressedAmerican: () => speaksentence75sentence7600""",
          //   onPressedBritish: () => speaksentence76("en-GB"),
          //   onPressedAmerican: () => speaksentence76sentence7700""",
          //   onPressedBritish: () => speaksentence77("en-GB"),
          //   onPressedAmerican: () => speaksentence77sentence7800""",
          //   onPressedBritish: () => speaksentence78("en-GB"),
          //   onPressedAmerican: () => speaksentence78sentence7900""",
          //   onPressedBritish: () => speaksentence79("en-GB"),
          //   onPressedAmerican: () => speaksentence79sentence_8000""",
          //   onPressedBritish: () => speaksentence80("en-GB"),
          //   onPressedAmerican: () => speaksentence80sentence8100""",
          //   onPressedBritish: () => speaksentence81("en-GB"),
          //   onPressedAmerican: () => speaksentence81sentence8200""",
          //   onPressedBritish: () => speaksentence82("en-GB"),
          //   onPressedAmerican: () => speaksentence82sentence8300""",
          //   onPressedBritish: () => speaksentence83("en-GB"),
          //   onPressedAmerican: () => speaksentence83sentence8400""",
          //   onPressedBritish: () => speaksentence84("en-GB"),
          //   onPressedAmerican: () => speaksentence84("en-US" ""),
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
- Noun: end (derived forms: ends)
1. Either extremity of something that has length (= terminal)
"the end of the pier"; "she knotted the end of the thread"; "they rode to the end of the line";
 
2. The point in time at which something ends (= ending)
"the end of the year";
 
3. The final stage or concluding parts of an event or occurrence (= last)
"the end was exciting";
 
4. The state of affairs that a plan is intended to achieve and that (when achieved) terminates behaviour intended to achieve it (= goal)
"the ends justify the means";
 
5. A final part or section
"we have given it at the end of the section since it involves the calculus"; "Start at the beginning and go on until you come to the end"
 
6. A final state (= destruction, death)
"he came to a bad end"; "the so-called glorious experiment came to an inglorious end";
 
7. The surface at either extremity of a three-dimensional object
"one end of the box was marked 'This side up'"
 
8. (football) the person who plays at one end of the line of scrimmage
"the end managed to hold onto the pass"
 
9. A boundary marking the extremities of something
"the end of town"
 
10. One of two places from which people are communicating to each other
"the phone rang at the other end"; "both ends wrote at the same time"
 
11. The part you are expected to play
"he held up his end"
 
12. The last section of a communication (= conclusion, close, closing, ending)
 
13. A piece of cloth that is left over after the rest has been used or sold (= remainder, remnant, oddment)
 
14. (American football) a position on the line of scrimmage, designating players at each end of the defensive line
"no one wanted to play end"

- Verb: end (derived forms: ended, ending, ends)
1. Have an end, in a temporal, spatial, or quantitative sense; either spatial or metaphorical (= stop, finish, terminate, cease)
"My property ends by the bushes"; "The symphony ends in a pianissimo";
 
2. Bring to an end or halt (= terminate)
"She ended their friendship when she found out that he had once been convicted of a crime";
 
3. Be the end of; be the last or concluding part of (= terminate)
"This sad scene ended the movie";
 
4. Put an end to
"The terrible news ended our hopes that he had survived"
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

const String _videoIdend = 'n4_7qY0IEno';
const double _startSecondsend = 257;
const String _videoIdone = 'ozsgl_sLnHQ';
const double _startSecondsone = 1119;
const String _videoIdtwo = 'G4BxOhJOmUw';
const double _startSecondstwo = 231;
const String _videoIdthree = 'dfuPBC-v5NE';
const double _startSecondsthree = 847;
const String _videoIdfour = 'a_TSR_v07m0';
const double _startSecondsfour = 214;
const String _videoIdfive = 'khOUvmOQExc';
const double _startSecondsfive = 533;
const String _videoIdsix = '-HyHZsa79LU';
const double _startSecondssix = 46;

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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdsix,
      startSeconds: _startSecondssix,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdsix,
        startSeconds: _startSecondssix,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB