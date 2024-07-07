import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryface extends StatefulWidget {
  const EnglishEntryface({super.key});

  @override
  State<EnglishEntryface> createState() => _EnglishEntryfaceState();
}

class _EnglishEntryfaceState extends State<EnglishEntryface> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""face""");
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
                      word: """face""",
                      // alsoEnglishWord: "also: face",
                      britshText: """IpaUK: /feɪs/""",
                      americanText: """IpaUS: /feɪs/""",
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
  final String keyword = "face";
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
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He buried his face in his hands.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """You should have seen the look on her face when I told her!""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The expression on his face never changed.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She was red in the face with embarrassment.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """At that time, her face was on the covers of all the magazines.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""From the stage, he looked down at a sea of faces.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The ball hit him in the face.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She slapped him in the face.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I like to feel the wind in my face.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She turned her face away.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He covered his face with his hands.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Go and wash your face.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""What's that mark on your face?""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She has a beautiful, oval face.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She had a big smile on her face.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Her short hair suited her elfin face.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I could tell by his face it hadn't gone well.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Her face lit up when she spoke of the past.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""His face looked a little confused.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He just stood there with a confused face.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Her face broke into a wide smile.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Her face brightened when she saw me.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Her face suddenly grew serious.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She looked around for a familiar face.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He's a fresh face at the company.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""It's nice to see some new faces here this evening.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The movie is full of famous faces.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The sad-faced woman held a photograph.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""A steep path zigzags down the cliff face.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""A banner hung across the face of the building.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""How many faces does a cube have?""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We slowly climbed the steep face of the crag.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""She preferred a watch face with Roman numerals.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""This discovery changed the whole face of science.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He has become the public face of the company.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She turned and faced him.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Most of the rooms face the sea.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Lie with your palms facing upwards.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Which direction are you facing?""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""They pray facing the east.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Babies may prefer to be carried facing outwards.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We are facing a financial crisis.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Farmers face serious challenges in these conditions.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The project faces numerous difficulties.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We look at the issues facing schools today.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""It's time to face reality—we failed.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""It's not always easy to face the truth.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""I did something wrong and I will face the consequences.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Face facts—she isn't coming back.""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I just can't face work today.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I can't face seeing them.""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She could never face arguing with him.""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I'd go, but I can't face getting up so early.""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""How can I face Tom? He'll be so disappointed.""");
  }

// With short examples define "face", please follow LX instructions
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: ڕوو، ڕوخسار، ماژە، دەم‌وچاو، سەروسەکوت، سەروسیما، دیمە، چارە،	کەسایەتی،	ڕواڵەت، بەر،	ڕووکار، پێش‌خانوو،	(کات‌ژمێر) ڕوو، مینا،	لا، ڕوو، بەر، لایەن، ئالی،	ئابڕوو، ئابوور، بڕەو، باوەڕ، بایەخ،	ڕوو، ڕووداری،	(ئەندازە) هەریەک لە ڕووەکانی تەنێ،	(کێو یان هەڵدێرێ) داوێن، قەدپاڵ، بنار
"""),
          const DefinitionKurdish(text: """١. (ناو) ڕووخسار"""),
          SentencesRow(
            englishText: """He buried his face in his hands.""",
            kurdishText: """ڕووخساری لە دەستەکانیدا شاردەوە.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """You should have seen the look on her face when I told her!""",
            kurdishText: """دەبوو شێوەی ڕووخساری ببینایە کە پێم گوت.""",
            onPressedBritish: () => speaksentence2("en-GB"),
            onPressedAmerican: () => speaksentence2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        """The expression on his face never changed.""",
                    kurdishText: """دەربڕینی ڕووخساری هەرگیز نەگۆڕا.""",
                    onPressedBritish: () => speaksentence3("en-GB"),
                    onPressedAmerican: () => speaksentence3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """She was red in the face with embarrassment.""",
                    kurdishText: """ڕووخساری سووربوو بوو لە شەرماندا.""",
                    onPressedBritish: () => speaksentence4("en-GB"),
                    onPressedAmerican: () => speaksentence4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """At that time, her face was on the covers of all the magazines.""",
                    kurdishText:
                        """لەو کاتەدا ڕيخساری لەسەر بەرگی هەموو گۆڤارەکان بوو.""",
                    onPressedBritish: () => speaksentence5("en-GB"),
                    onPressedAmerican: () => speaksentence5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """From the stage, he looked down at a sea of faces.""",
                    kurdishText:
                        """لە سەکۆکەوە، ڕووانی لە ژمارەیەکی زۆر ڕووخسار.""",
                    onPressedBritish: () => speaksentence6("en-GB"),
                    onPressedAmerican: () => speaksentence6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """The ball hit him in the face.""",
                    kurdishText: """تۆپەکە کێشای بە ڕووخساریدا.""",
                    onPressedBritish: () => speaksentence7("en-GB"),
                    onPressedAmerican: () => speaksentence7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """She slapped him in the face.""",
                    kurdishText: """کێشای بە ڕووخساریدا.""",
                    onPressedBritish: () => speaksentence8("en-GB"),
                    onPressedAmerican: () => speaksentence8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I like to feel the wind in my face.""",
                    kurdishText: """حەزدەکەم بایەکە بدات بە ڕووخسارمدا.""",
                    onPressedBritish: () => speaksentence9("en-GB"),
                    onPressedAmerican: () => speaksentence9("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """She turned her face away.""",
                    kurdishText: """ڕووی وەرگێڕا.""",
                    onPressedBritish: () => speaksentence10("en-GB"),
                    onPressedAmerican: () => speaksentence10("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """He covered his face with his hands.""",
                    kurdishText: """بە دەستەکانی ڕووخساری داپۆشی.""",
                    onPressedBritish: () => speaksentence11("en-GB"),
                    onPressedAmerican: () => speaksentence11("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """Go and wash your face.""",
                    kurdishText: """بچۆ و ڕووخسارت بشۆ.""",
                    onPressedBritish: () => speaksentence12("en-GB"),
                    onPressedAmerican: () => speaksentence12("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """What's that mark on your face?""",
                    kurdishText: """ئەو خاڵە لەسەر ڕووخسارت چییە؟""",
                    onPressedBritish: () => speaksentence13("en-GB"),
                    onPressedAmerican: () => speaksentence13("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """She has a beautiful, oval face.""",
                    kurdishText: """ڕووخسارێکی جوانی هێلکەیی هەیە.""",
                    onPressedBritish: () => speaksentence14("en-GB"),
                    onPressedAmerican: () => speaksentence14("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """She had a big smile on her face.""",
                    kurdishText: """پێکەنینێکی گەورە لەسەر ڕووخساریەتی.""",
                    onPressedBritish: () => speaksentence15("en-GB"),
                    onPressedAmerican: () => speaksentence15("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """Her short hair suited her elfin face.""",
                    kurdishText:
                        """قژە کورتەکەی لە ڕووخسارە بچووکەکەی دەهات.""",
                    onPressedBritish: () => speaksentence16("en-GB"),
                    onPressedAmerican: () => speaksentence16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٢. (ناو) دەربڕینی ڕووخساری کەسێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """I could tell by his face it hadn't gone well.""",
            kurdishText:
                """دەمتوانی بە ڕووخساریدا بڵێم کە باش بەڕێوە نەچووبوو.""",
            onPressedBritish: () => speaksentence17("en-GB"),
            onPressedAmerican: () => speaksentence17("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        """Her face lit up (= showed happiness) when she spoke of the past.""",
                    kurdishText: """ڕووخساری گەشایەوە کە باسی ڕابردووی کرد.""",
                    onPressedBritish: () => speaksentence18("en-GB"),
                    onPressedAmerican: () => speaksentence18("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """His face looked a little confused.""",
                    kurdishText: """ڕووخساری کەمێک شڵەژاو دیاربوو.""",
                    onPressedBritish: () => speaksentence19("en-GB"),
                    onPressedAmerican: () => speaksentence19("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """He just stood there with a confused face.""",
                    kurdishText:
                        """تەنها لەوێدا وەستا بە ڕووخسارێکی شڵەژاوەوە.""",
                    onPressedBritish: () => speaksentence20("en-GB"),
                    onPressedAmerican: () => speaksentence20("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """Her face broke into a wide smile.""",
                    kurdishText: """ڕووخساری کەوتە پێکەنینێکی گەورە.""",
                    onPressedBritish: () => speaksentence21("en-GB"),
                    onPressedAmerican: () => speaksentence21("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """Her face brightened when she saw me.""",
                    kurdishText: """ڕووخساری درەوشایەوە کە بینیمی.""",
                    onPressedBritish: () => speaksentence22("en-GB"),
                    onPressedAmerican: () => speaksentence22("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """Her face suddenly grew serious.""",
                    kurdishText: """ڕووخساری لەناکاو جدی بوو.""",
                    onPressedBritish: () => speaksentence23("en-GB"),
                    onPressedAmerican: () => speaksentence23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٣. (ناو) کەسێک لەو جۆرەی کە باسکراوە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """She looked around for a familiar face.""",
            kurdishText: """سەیری دەرووبەری کرد بۆ کەسێکی ناسیاو.""",
            onPressedBritish: () => speaksentence24("en-GB"),
            onPressedAmerican: () => speaksentence24("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """He's a fresh face (= somebody new) at the company.""",
            kurdishText: """کەسێکی تازەیە لە کۆمپانیاکە.""",
            onPressedBritish: () => speaksentence25("en-GB"),
            onPressedAmerican: () => speaksentence25("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """It's nice to see some new faces here this evening.""",
            kurdishText: """خۆشە کە ئەم ئێوارەیە ژمارەیەک کەسی تازە لێرەن.""",
            onPressedBritish: () => speaksentence26("en-GB"),
            onPressedAmerican: () => speaksentence26("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The movie is full of famous faces.""",
            kurdishText: """فیلمەکە پڕ لە کەسانی بەناوبانگە.""",
            onPressedBritish: () => speaksentence27("en-GB"),
            onPressedAmerican: () => speaksentence27("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (ناو) هەبوونی ئەو جۆرە ڕووخسارەی کە باسکراوە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The sad-faced woman held a photograph.""",
            kurdishText: """ژنە ڕوو خەمگینەکە وێنەیەکی هەڵگرتبوو.""",
            onPressedBritish: () => speaksentence28("en-GB"),
            onPressedAmerican: () => speaksentence28("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٥. (ناو) لا یان ڕووی شتێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """A steep path zigzags down the cliff face.""",
            kurdishText:
                """ڕێگایەکی لێژ بە ڕووی قەپاڵەکەدا پێچەڵاوپێچ دەکات.""",
            onPressedBritish: () => speaksentence29("en-GB"),
            onPressedAmerican: () => speaksentence29("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """A banner hung across the face of the building.""",
            kurdishText: """درووشمێک بە ڕووی بیناکەدا هەڵواسرابوو.""",
            onPressedBritish: () => speaksentence30("en-GB"),
            onPressedAmerican: () => speaksentence30("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """How many faces does a cube have?""",
            kurdishText: """خشتەیەک (= شەش‌پاڵوو) چەند ڕووی هەیە؟""",
            onPressedBritish: () => speaksentence31("en-GB"),
            onPressedAmerican: () => speaksentence31("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """We slowly climbed the steep face of the crag.""",
            kurdishText: """بەهێواشی سەرکەوتین بە ڕووی هەڵدێرەکەدا.""",
            onPressedBritish: () => speaksentence32("en-GB"),
            onPressedAmerican: () => speaksentence32("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٦. (ناو) ڕووی پێشەوەی کاتژمێرێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """She preferred a watch face with Roman numerals.""",
            kurdishText:
                """حەزی بە ڕووی کاتژمێرێک بوو کە ژمارەی ڕۆمانی هەبێت.""",
            onPressedBritish: () => speaksentence33("en-GB"),
            onPressedAmerican: () => speaksentence33("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٧. (ناو) خاسیەتی تایبەتی شتێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """This discovery changed the whole face of science.""",
            kurdishText: """ئەم دۆزینەوەیە بە تەواوی ڕووی زانستی گۆڕی.""",
            englishNote:
                "This means this discovery completely transformed and influenced the field of science in a significant way.",
            onPressedBritish: () => speaksentence34("en-GB"),
            onPressedAmerican: () => speaksentence34("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٨. (ناو) لایەنێکی دیاریکراوی شتێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """He has become the public face of the company.""",
            kurdishText: """بووە بە ڕووخساری گشتی کۆمپانیاکە.""",
            kurdishNote:
                "واتا بەردەوام وەک نوێنەر یان گوتەبێژی گشتی کۆمپانیاکە دەردەکەوێت",
            onPressedBritish: () => speaksentence35("en-GB"),
            onPressedAmerican: () => speaksentence35("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٩. (کردار) پێچەوانەبوونی کەسێک/شتێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """She turned and faced him.""",
            kurdishText: """سووڕایەوە و ڕووی تێکرد.""",
            onPressedBritish: () => speaksentence36("en-GB"),
            onPressedAmerican: () => speaksentence36("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: """Most of the rooms face the sea.""",
                    kurdishText: """زۆرینەی ژوورەکان ڕوویان لە دەریاکەیە.""",
                    onPressedBritish: () => speaksentence37("en-GB"),
                    onPressedAmerican: () => speaksentence37("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """Lie with your palms facing upwards.""",
                    kurdishText:
                        """پاڵکەوە بەوەی لەپی دەستەکانت ڕووی لەسەرە بێت.""",
                    onPressedBritish: () => speaksentence38("en-GB"),
                    onPressedAmerican: () => speaksentence38("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """Which direction are you facing?""",
                    kurdishText: """ڕووت لە چی ئاراستەیەکە؟""",
                    onPressedBritish: () => speaksentence39("en-GB"),
                    onPressedAmerican: () => speaksentence39("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """They pray facing the east.""",
                    kurdishText: """نزا دەکەن بە ڕووکردن لە ڕۆژهەڵات.""",
                    onPressedBritish: () => speaksentence40("en-GB"),
                    onPressedAmerican: () => speaksentence40("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Babies may prefer to be carried facing outwards.""",
                    kurdishText:
                        """منداڵان ڕەنگە پێیان خۆش بێت هەڵبگیردرێن ڕوویان لە سەرەوە بێت.""",
                    onPressedBritish: () => speaksentence41("en-GB"),
                    onPressedAmerican: () => speaksentence41("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """١٠. (کردار) ڕووبەڕووبوونەوەی دۆخێک و مامەڵەکردن لەگەڵی"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """We are facing a financial crisis.""",
            kurdishText: """ڕووبەڕووێ قەیرانی دارایی دەبینەوە.""",
            onPressedBritish: () => speaksentence42("en-GB"),
            onPressedAmerican: () => speaksentence42("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Farmers face serious challenges in these conditions.""",
            kurdishText:
                """جوتیاران ڕووبەڕووی سەختی زۆر دەبنەوە لەم دۆخانەدا.""",
            onPressedBritish: () => speaksentence43("en-GB"),
            onPressedAmerican: () => speaksentence43("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The project faces numerous difficulties.""",
            kurdishText: """پڕۆژەکە ڕووبەڕووی ژمارەیەک سەختی بووەتەوە.""",
            onPressedBritish: () => speaksentence44("en-GB"),
            onPressedAmerican: () => speaksentence44("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """We look at the issues facing schools today.""",
            kurdishText:
                """چاو لەو کێشانە دەکەین کە ئەم ڕۆژانە ڕووبەڕووی قوتابخانەکان بوونەتەوە.""",
            onPressedBritish: () => speaksentence45("en-GB"),
            onPressedAmerican: () => speaksentence45("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """١١. (کردار) پەسەندکردنی ئەوەی دۆخێکی دیاریکراو بوونی هەیە، ئەگەرچی پێت خۆش نییە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """It's time to face reality—we failed.""",
            kurdishText:
                """کاتی ئەوەیە ڕووبەڕووی ڕاستی ببینەوە ـ شکستمان هێنا.""",
            onPressedBritish: () => speaksentence46("en-GB"),
            onPressedAmerican: () => speaksentence46("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """It's not always easy to face the truth.""",
            kurdishText: """هەمیشە ئاسان نییە ڕووبەڕووی ڕاستی ببینەوە.""",
            onPressedBritish: () => speaksentence47("en-GB"),
            onPressedAmerican: () => speaksentence47("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I did something wrong and I will face the consequences.""",
            kurdishText:
                """شتێکی هەڵەم کرد و ڕووبەڕووی دەرئەنجامەکانی دەبمەوە.""",
            onPressedBritish: () => speaksentence48("en-GB"),
            onPressedAmerican: () => speaksentence48("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Face facts—she isn't coming back.""",
            kurdishText: """ڕووبەڕووی ڕاستییەکان ببەوە ـ کچەکە ناگەڕێتەوە.""",
            onPressedBritish: () => speaksentence49("en-GB"),
            onPressedAmerican: () => speaksentence49("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """١٢. (کردار) نەبوونی ئامادەیی مامەڵەکردن لەگەڵ شتێک یان کردنی شتێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """I just can't face work today.""",
            kurdishText: """ئەمڕۆ ناتوانم بچمە کار.""",
            onPressedBritish: () => speaksentence50("en-GB"),
            onPressedAmerican: () => speaksentence50("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I can't face seeing them.""",
            kurdishText: """ناتوانم بەرگەی بینینی بگرم.""",
            onPressedBritish: () => speaksentence51("en-GB"),
            onPressedAmerican: () => speaksentence51("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She could never face arguing with him.""",
            kurdishText: """هەرگیز نەیدەتوانی بەرگەی مشتومڕ لەگەڵی بگرێت.""",
            onPressedBritish: () => speaksentence52("en-GB"),
            onPressedAmerican: () => speaksentence52("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I'd go, but I can't face getting up so early.""",
            kurdishText: """دەچم، بەڵام ناتوانم هێندە زوو هەڵبستم.""",
            onPressedBritish: () => speaksentence53("en-GB"),
            onPressedAmerican: () => speaksentence53("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """١٣. (کردار) قسەکردن یان مامەڵە لەگەڵ کەسێک ئەگەرچی ناخۆشە یان  سەختە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """How can I face Tom? He'll be so disappointed.""",
            kurdishText:
                """چۆن دەتوانم ڕووبەڕووی تۆم ببمەوە؟ زۆر نائومێد دەبێت.""",
            onPressedBritish: () => speaksentence54("en-GB"),
            onPressedAmerican: () => speaksentence54("en-US"),
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
- Noun: face (Derived forms: faces)
1. The front of the human head from the forehead to the chin and ear to ear (= human face)
"I wish I had seen the look on his face when he got the news"; "he washed his face";
 
2. The feelings expressed on a person's face (= expression, look, aspect, facial expression)
"an angry face";
 
3. The general outward appearance of something
"the face of the city is changing"
 
4. The striking or working surface of an implement
 
5. A part of a person that is used to refer to a person
"he looked out at a roomful of faces"; "when he returned to work he met many new faces"
 
6. A surface forming part of the outside of an object (= side)
"dew dripped from the face of the leaf"; "they travelled across the face of the continent";
 
7. The part of an animal corresponding to the human face
 
8. The side upon which the use of a thing depends (usually the most prominent surface of an object)
"he dealt the cards face down"
 
9. A contorted facial expression (= grimace)
"she made a face at the prospect";
 
10. A specific size and style of type within a type family (= font, fount [Brit], typeface, case)
 
11. Status in the eyes of others
"he lost face"
 
12. Impudent aggressiveness (= boldness, nerve, brass, cheek, brass neck [Brit, informal])
"I couldn't believe her face";
 
13. A vertical surface of a building or cliff

- Verb: face (Derived forms: faced, faces, facing)
1. Deal with (something unpleasant) head on (= confront, face up)
"He faced the terrible consequences of his mistakes";
 
2. Oppose, as in hostility or a competition (= confront)
"Jackson faced Smith in the boxing ring";
 
3. Be oriented in a certain direction, often with respect to another reference point; be opposite to (= front, look)
"The building faces the park";
 
4. Be opposite
"the facing page"; "the two sofas face each other"
 
5. Turn so as to face; turn the face in a certain direction
"Turn and face your partner now"
 
6. Show something to somebody, usually to accuse or criticize (= confront, present)
"He was faced with all the evidence and could no longer deny his actions"; "An enormous dilemma faces us";
 
7. Turn so as to expose the face
"face a playing card"
 
8. Line the edge (of a garment) with a different material
"face the lapels of the jacket"
 
9. Cover the front or surface of
"The building was faced with beautiful stones"
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

const String _videoIdend = 'https://youtu.be/L94M4xQcPYk?t=';
const double _startSecondsend = 000000000000000000000000000205;
const String _videoIdone = 'https://youtu.be/N7hlIbJkvUQ?t=';
const double _startSecondsone = 000000000000000000000000000211;
const String _videoIdtwo = 'https://youtu.be/zmEv7vTOQGE?t=';
const double _startSecondstwo = 0000000000000000000000000002004;
const String _videoIdthree = 'https://youtu.be/NWE3vyCaK44?t=';
const double _startSecondsthree = 00000000000000000000000000099;
const String _videoIdfour = 'https://youtu.be/E6LpBIwGyA4?t=';
const double _startSecondsfour = 000000000000000000000000000124;
const String _videoIdfive = 'https://youtu.be/xfVJZS7LuJ4?t=';
const double _startSecondsfive = 00000000000000000000000000022;

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