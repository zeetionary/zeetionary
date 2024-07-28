import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfall extends StatefulWidget {
  const EnglishEntryfall({super.key});

  @override
  State<EnglishEntryfall> createState() => _EnglishEntryfallState();
}

class _EnglishEntryfallState extends State<EnglishEntryfall> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""fall""");
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
                      word: """fall""",
                      // alsoEnglishWord: "also: fall",
                      britshText: """IpaUK: /fɔːl/""",
                      americanText: """IpaUS: /fɔːl/""",
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
  final String keyword = "fall";
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
    await flutterTts.speak("""They were injured by falling rocks.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Several of the books had fallen onto the floor.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The label must have fallen off.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The leaves were falling from the trees.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The seeds fall to the ground and germinate.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""One of the kids fell into the river.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""A tile fell off the roof.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Snow had fallen during the night.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""I've lost my necklace—it must have fallen off.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""A cup fell off the shelf and broke.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""A leaf fell into my drink.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The plate fell to the floor.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Part of a satellite fell to earth.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He fell from the fourth floor.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She slipped on the ice and fell.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I fell over and cut my knee.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The house looked as if it was about to fall down.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""One of the children fell over.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He stumbled and almost fell.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""She fell forward and hit her head on the table.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Prices continued to fall on the stock market today.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The temperature fell sharply in the night.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Their profits have fallen by 30 per cent.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Share prices fell 30p.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Unemployment fell to its lowest level in 30 years.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Winter temperatures never fall below 10°C.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He had fallen asleep on the sofa.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The room had fallen silent.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She fell ill soon after and did not recover.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""When the rent fell due, she couldn't pay.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""I had fallen into conversation with a man on the train.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The house had fallen into disrepair.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""His mouth fell open in astonishment.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""When the post fell vacant, she applied.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""At last the house fell quiet and everyone slept.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""He fell into a coma from which he never recovered.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Her hair fell over her shoulders in a mass of curls.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The land falls away sharply towards the river.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The coup failed but the government fell shortly afterwards.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Troy finally fell to the Greeks.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The town built a memorial to those who fell in the two world wars.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""A sudden silence fell.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Darkness falls quickly in the tropics.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""My birthday falls on a Monday this year.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Which syllable does the stress fall on?""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""My eye fell on a curious object.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""This case falls outside my jurisdiction.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """Out of over 400 staff there are just seven that fall into this category.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I had a bad fall and broke my arm.""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She was killed in a fall from a horse.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She took a bad fall while out riding.""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Roads were blocked due to a heavy fall of snow.""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The city was blanketed by a fall of volcanic ash.""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Share prices suffered a slight fall yesterday.""");
  }

  Future<void> speaksentence55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The fall in age at first marriage occurred during the second half of the eighteenth century.""");
  }

  Future<void> speaksentence56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """This figure represents a fall of 21 per cent on the same period last year.""");
  }

  Future<void> speaksentence57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The scandal undoubtedly contributed to his fall from power.""");
  }

  Future<void> speaksentence58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The economic crisis worsened, bringing about the fall of the government.""");
  }

  Future<void> speaksentence59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """He remained determined to prevent the fall of South Vietnam to the Communists.""");
  }

  Future<void> speaksentence60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""His diary charts his fall from grace.""");
  }

  Future<void> speaksentence61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The falls upstream are full of salmon.""");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: کەوتنەخوارێ، بەربوونەوە، کەوتن، گلان، بەعەرزاکەوتن، کەتن،	کەم‌بوونەوە، دابەزین، شکان، داشکان، ھاتنەخوارێ، نزم‌بوونەوە،	بارین، بارشت، بڕی باریو، بارستەی بارشت،	ھەرەس‌ھێنان، ڕووخان، ھەڕەمین، داتەپین، وەرگەڕان، گەرگەسان،	لێژایی، لێژی توند، تەلان،	پاییز، گەڵاڕێزان، گڕەژۆ، خەزەڵوەر، وەرین، وەرینان،	(گیانەوەر) زایین، بوون، ترەکین، ڕێژاو، ھەڵدێر، تاڤگە، سۆلاڤ، سوولاڤ
"""),
          const DefinitionKurdish(
              text: """١. (کردار) کەوتن لە ئاستێکی بەرزەوە بۆ نزم"""),
          SentencesRow(
            englishText: """They were injured by falling rocks.""",
            kurdishText: """بە بەردی باریو بریندار بوو.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        """Several of the books had fallen onto the floor.""",
                    kurdishText:
                        """ژمارەیەک لە کتێبەکان کەوتبوونە سەر زەوییەکە.""",
                    onPressedBritish: () => speaksentence2("en-GB"),
                    onPressedAmerican: () => speaksentence2("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """The label must have fallen off.""",
                    kurdishText: """نووسراوەکە دەبێت کەوتبێتە خوارەوە.""",
                    onPressedBritish: () => speaksentence3("en-GB"),
                    onPressedAmerican: () => speaksentence3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """The leaves were falling from the trees.""",
                    kurdishText: """گەڵاکان لە دارەکان دەوەرین.""",
                    onPressedBritish: () => speaksentence4("en-GB"),
                    onPressedAmerican: () => speaksentence4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The seeds fall to the ground and germinate.""",
                    kurdishText: """تۆوەکان دەکەونە سەر زەوییەکە و دەپیتێن.""",
                    onPressedBritish: () => speaksentence5("en-GB"),
                    onPressedAmerican: () => speaksentence5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """One of the kids fell into the river.""",
                    kurdishText: """یەکێک لە منداڵەکان کەوتە ڕووبارەکەوە.""",
                    onPressedBritish: () => speaksentence6("en-GB"),
                    onPressedAmerican: () => speaksentence6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """A tile fell off the roof.""",
                    kurdishText: """خشتێک لە سەربانەکە کەوتە خوارەوە.""",
                    onPressedBritish: () => speaksentence7("en-GB"),
                    onPressedAmerican: () => speaksentence7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """Snow had fallen during the night.""",
                    kurdishText: """بەفر لە شەودا باری بوو.""",
                    onPressedBritish: () => speaksentence8("en-GB"),
                    onPressedAmerican: () => speaksentence8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """I've lost my necklace—it must have fallen off.""",
                    kurdishText:
                        """ملوانکەکەمم ونکردووە ـ دەبێت کەوتبێتە خوارەوە.""",
                    onPressedBritish: () => speaksentence9("en-GB"),
                    onPressedAmerican: () => speaksentence9("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """A cup fell off the shelf and broke.""",
                    kurdishText: """کوپێک لە ڕەفەکە کەوتە خوارەوە و شکا.""",
                    onPressedBritish: () => speaksentence10("en-GB"),
                    onPressedAmerican: () => speaksentence10("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """A leaf fell into my drink.""",
                    kurdishText: """گەڵایەکە کەوتە ناو خواردنەوەکەمەوە.""",
                    onPressedBritish: () => speaksentence11("en-GB"),
                    onPressedAmerican: () => speaksentence11("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """The plate fell to the floor.""",
                    kurdishText: """دەورییەکە کەوتە سەر زەوییەکە.""",
                    onPressedBritish: () => speaksentence12("en-GB"),
                    onPressedAmerican: () => speaksentence12("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """Part of a satellite fell to earth.""",
                    kurdishText: """بەشێکی سەتەلایتێک کەوتە سەر زەوی.""",
                    onPressedBritish: () => speaksentence13("en-GB"),
                    onPressedAmerican: () => speaksentence13("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """He fell from the fourth floor.""",
                    kurdishText: """لە نھۆمی چوارەم کەوتە خوارەوە.""",
                    onPressedBritish: () => speaksentence14("en-GB"),
                    onPressedAmerican: () => speaksentence14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (کردار) لەناکاو کەوتن بە زەویدا"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """She slipped on the ice and fell.""",
            kurdishText: """لەسەر سەھۆڵەکە خلیسکا و کەوت.""",
            onPressedBritish: () => speaksentence15("en-GB"),
            onPressedAmerican: () => speaksentence15("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: """I fell over and cut my knee.""",
                    kurdishText: """کەوتم بە زەویدا و لاقم ئازار دا.""",
                    onPressedBritish: () => speaksentence16("en-GB"),
                    onPressedAmerican: () => speaksentence16("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The house looked as if it was about to fall down.""",
                    kurdishText:
                        """خانووەکە وەھا دەردەکەوت وەک ئەوەی بکەوێت.""",
                    onPressedBritish: () => speaksentence17("en-GB"),
                    onPressedAmerican: () => speaksentence17("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """One of the children fell over.""",
                    kurdishText: """یەکێک لە منداڵەکان کەوت.""",
                    onPressedBritish: () => speaksentence18("en-GB"),
                    onPressedAmerican: () => speaksentence18("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """He stumbled and almost fell.""",
                    kurdishText: """پێی ھەڵکەوت و خەریک بوو بکەوێت.""",
                    onPressedBritish: () => speaksentence19("en-GB"),
                    onPressedAmerican: () => speaksentence19("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """She fell forward and hit her head on the table.""",
                    kurdishText: """بە پێشدا کەوت و سەری کێشای بە مێزەکەدا.""",
                    onPressedBritish: () => speaksentence20("en-GB"),
                    onPressedAmerican: () => speaksentence20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٣. (کردار) کەمبوون لە بڕ، ژمارە، یان ھێز"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Prices continued to fall on the stock market today.""",
            kurdishText:
                """نرخەکان لە بازاڕی بۆرسە ئەمڕۆ بەردەوام بوون لە دابەزین.""",
            onPressedBritish: () => speaksentence21("en-GB"),
            onPressedAmerican: () => speaksentence21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The temperature fell sharply in the night.""",
            kurdishText: """پلەی گەرمی زۆر دابەزی لە شەودا.""",
            onPressedBritish: () => speaksentence22("en-GB"),
            onPressedAmerican: () => speaksentence22("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Their profits have fallen by 30 per cent.""",
            kurdishText: """قازانجەکانیان بە ڕێژی ٣٠ لە سەد دابەزین.""",
            onPressedBritish: () => speaksentence23("en-GB"),
            onPressedAmerican: () => speaksentence23("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Share prices fell 30p.""",
            kurdishText: """نرخی پشکەکان بە ٣٠ پێنس دابەزین.""",
            onPressedBritish: () => speaksentence24("en-GB"),
            onPressedAmerican: () => speaksentence24("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Unemployment fell to its lowest level in 30 years.""",
            kurdishText:
                """بێکاری بۆ کەمترین ئاستی لە ٣٠ ساڵی ڕابردوودا دابەزی.""",
            onPressedBritish: () => speaksentence25("en-GB"),
            onPressedAmerican: () => speaksentence25("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Winter temperatures never fall below 10°C.""",
            kurdishText:
                """پلەی گەرمی زستانان ھەرگیز بۆ خوار ١٠ پلەی سیلیزی دانابەزێت.""",
            onPressedBritish: () => speaksentence26("en-GB"),
            onPressedAmerican: () => speaksentence26("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (کردار) بوون بە شتێک یان چوونە دۆخێکەوە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """He had fallen asleep on the sofa.""",
            kurdishText: """لەسەر قەنەفەکە خەوی لێ‌کەوتبوو.""",
            onPressedBritish: () => speaksentence27("en-GB"),
            onPressedAmerican: () => speaksentence27("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: """The room had fallen silent.""",
                    kurdishText: """ژوورەکە بێ‌دەنگ بووبوو.""",
                    onPressedBritish: () => speaksentence28("en-GB"),
                    onPressedAmerican: () => speaksentence28("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """She fell ill soon after and did not recover.""",
                    kurdishText:
                        """ھەرزوو دواتر نەخۆش کەوت و ھەرگیز چاک نەبوویەوە.""",
                    onPressedBritish: () => speaksentence29("en-GB"),
                    onPressedAmerican: () => speaksentence29("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """When the rent fell due, she couldn't pay.""",
                    kurdishText:
                        """کە کرێیەکە گەشتە کاتی خۆی، نەیتوانی بیداتەوە.""",
                    onPressedBritish: () => speaksentence30("en-GB"),
                    onPressedAmerican: () => speaksentence30("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """I had fallen into conversation with a man on the train.""",
                    kurdishText:
                        """کەوتمە گفتوگۆ لەگەڵ پیاوێک لەسەر شەمەندەفەرەکە.""",
                    onPressedBritish: () => speaksentence31("en-GB"),
                    onPressedAmerican: () => speaksentence31("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """The house had fallen into disrepair.""",
                    kurdishText: """خانووەکە کەوتبووە شپرزەییەوە.""",
                    onPressedBritish: () => speaksentence32("en-GB"),
                    onPressedAmerican: () => speaksentence32("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """His mouth fell open in astonishment.""",
                    kurdishText: """دەمی لە سەرسامیدا داچەقا.""",
                    onPressedBritish: () => speaksentence33("en-GB"),
                    onPressedAmerican: () => speaksentence33("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """When the post fell vacant, she applied.""",
                    kurdishText: """کە پێگەکە بەتاڵ بوو، داخوازی نارد بۆی.""",
                    onPressedBritish: () => speaksentence34("en-GB"),
                    onPressedAmerican: () => speaksentence34("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """At last the house fell quiet and everyone slept.""",
                    kurdishText:
                        """لە کۆتاییدا خانووەکە بێدەنگ بوو و ھەموان خەوتن.""",
                    onPressedBritish: () => speaksentence35("en-GB"),
                    onPressedAmerican: () => speaksentence35("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """He fell into a coma from which he never recovered.""",
                    kurdishText:
                        """کەوتە کۆمایەکەوە کە ھەرگیز لێی چاک نەبوویەوە.""",
                    onPressedBritish: () => speaksentence36("en-GB"),
                    onPressedAmerican: () => speaksentence36("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٥. (کردار) شۆڕبوونەوە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Her hair fell over her shoulders in a mass of curls.""",
            kurdishText: """قژی شۆڕبووبوویەوە بە تۆپەڵی لوولەوە.""",
            onPressedBritish: () => speaksentence37("en-GB"),
            onPressedAmerican: () => speaksentence37("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٦. (کردار) لێژبوونەوە بەرەوخوارەوە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The land falls away sharply towards the river.""",
            kurdishText: """زەوییەکە بە توندی لێژ دەبێتەوە بەرەو ڕووبارەکە.""",
            onPressedBritish: () => speaksentence38("en-GB"),
            onPressedAmerican: () => speaksentence38("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٧. (کردار) شکستھێنان یان دەستگیرکران"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The coup failed but the government fell shortly afterwards.""",
            kurdishText:
                """کودەتاکە شکستی ھێنا بەڵام حکومەت ھەرزوو دواتر کەوت.""",
            onPressedBritish: () => speaksentence39("en-GB"),
            onPressedAmerican: () => speaksentence39("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Troy finally fell to the Greeks.""",
            kurdishText: """ترۆی لەکۆتاییدا کەوتە دەستی یۆنانییەکان.""",
            onPressedBritish: () => speaksentence40("en-GB"),
            onPressedAmerican: () => speaksentence40("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٨. (کردار) مردن لە جەنگدا"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The town built a memorial to those who fell in the two world wars.""",
            kurdishText:
                """شارۆچکەکە مۆنۆمێنتێکی درووستکرد بۆ ئەوانەی کە لە دوو جەنگە جیھانییەکەدا کوژران.""",
            onPressedBritish: () => speaksentence41("en-GB"),
            onPressedAmerican: () => speaksentence41("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٩. (کردار) ھاتن بەخێرایی و لەناکاو"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """A sudden silence fell.""",
            kurdishText: """بێ‌دەنگییەکی لەناکاو درووست بوو.""",
            onPressedBritish: () => speaksentence42("en-GB"),
            onPressedAmerican: () => speaksentence42("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Darkness falls quickly in the tropics.""",
            kurdishText:
                """لە خولگەکان (ـی باکوور و باشوور) تاریکی زوو دادێت.""",
            onPressedBritish: () => speaksentence43("en-GB"),
            onPressedAmerican: () => speaksentence43("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """١٠. (کردار) ڕوودان"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """My birthday falls on a Monday this year.""",
            kurdishText: """ڕۆژی لەدایکبوونم ئەمساڵ دووشەممە دەبێت.""",
            onPressedBritish: () => speaksentence44("en-GB"),
            onPressedAmerican: () => speaksentence44("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """١١. (کردار) جوڵان یان ھاتن لە ئاراستە یان شوێنێکی دیاریکراو"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Which syllable does the stress fall on?""",
            kurdishText: """زەبرەکە دەکەوێتە سەر کام بڕگە؟""",
            onPressedBritish: () => speaksentence45("en-GB"),
            onPressedAmerican: () => speaksentence45("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """My eye fell on (= I suddenly saw) a curious object.""",
            kurdishText: """چاوەکانم کەوتنە سەر شتێکی نامۆ.""",
            onPressedBritish: () => speaksentence46("en-GB"),
            onPressedAmerican: () => speaksentence46("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """١٢. (کردار) ئەوەی سەر بە گرووپێک، چینێک، یان ناوچەیەکی بەرپرسیاریەتی بیت"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """This case falls outside my jurisdiction.""",
            kurdishText: """ئەمە لە دەرەوەی دەسەڵاتی منە.""",
            onPressedBritish: () => speaksentence47("en-GB"),
            onPressedAmerican: () => speaksentence47("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Out of over 400 staff there are just seven that fall into this category.""",
            kurdishText:
                """لە کۆی ٤٠٠ ستافەوە تەنھا حەوت دەکەونە ناو ئەم پۆلەوە.""",
            onPressedBritish: () => speaksentence48("en-GB"),
            onPressedAmerican: () => speaksentence48("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """١٣. (ناو) کەوتن"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """I had a bad fall and broke my arm.""",
            kurdishText: """کەوتنێکی خراپم کرد و باڵمم شکاند.""",
            onPressedBritish: () => speaksentence49("en-GB"),
            onPressedAmerican: () => speaksentence49("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She was killed in a fall from a horse.""",
            kurdishText: """لە کەوتنێکیدا بەسەر ئەسپەوە گیانی لەدەست دا.""",
            onPressedBritish: () => speaksentence50("en-GB"),
            onPressedAmerican: () => speaksentence50("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She took a bad fall while out riding.""",
            kurdishText:
                """تووشی کەوتنێکی خراپ بوو لەکاتێکدا لە دەرەوە سواری دەکرد.""",
            onPressedBritish: () => speaksentence51("en-GB"),
            onPressedAmerican: () => speaksentence51("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """١٤. (ناو) بڕێک لە بەفر، باران، بەرد، ھتد کە باریوە یان کەوتووە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Roads were blocked due to a heavy fall of snow.""",
            kurdishText:
                """ڕێگاکان داخرابوون بەھۆی ڕێژەی بارینی سەختی بەفرەوە.""",
            onPressedBritish: () => speaksentence52("en-GB"),
            onPressedAmerican: () => speaksentence52("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The city was blanketed by a fall of volcanic ash.""",
            kurdishText: """شارەکە بە دابارینی خۆڵەمێشی گڕکان داپۆشرا.""",
            onPressedBritish: () => speaksentence53("en-GB"),
            onPressedAmerican: () => speaksentence53("en-US"),
          ),
          const DividerDefinition(),
          CustomRichText(
            textBeforeLink: "١٥. بڕوانە لە ",
            linkText: "autumn",
            textAfterLink: "",
            onTap: () {
              Routemaster.of(context).push("/english-fall/autumn");
            },
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """١٦. (ناو) کەمبوون لە ژمارە، ئەندازە، ئاست، یان ڕێژە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Share prices suffered a slight fall yesterday.""",
            kurdishText: """نرخی پشکەکان دوێنێ تووشی کەمێک دابەزین بوون.""",
            onPressedBritish: () => speaksentence54("en-GB"),
            onPressedAmerican: () => speaksentence54("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The fall in age at first marriage occurred during the second half of the eighteenth century.""",
            kurdishText:
                """دابەزینی تەمەن لەکاتی یەکەم ھاوسەرگیریدا لە نیوەی دووەمی سەدەی ھەژدەیەم ڕوویدا.""",
            onPressedBritish: () => speaksentence55("en-GB"),
            onPressedAmerican: () => speaksentence55("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """This figure represents a fall of 21 per cent on the same period last year.""",
            kurdishText:
                """ئەم ئامارە دابەزینی ٢١ لە سەد لە ھەمان ماوەی ساڵی پێشوودا پیشان دەدات.""",
            onPressedBritish: () => speaksentence56("en-GB"),
            onPressedAmerican: () => speaksentence56("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """١٧. (ناو) لەدەستدانی ھێز یان سەرکەوتنی سیاسی، ئابووری، ھتد"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The scandal undoubtedly contributed to his fall from power.""",
            kurdishText:
                """ئابڕووچوونەکە بەدڵنیاییەوە کاریگەری ھەبوو لەسەر کەوتنی لە دەسەڵات.""",
            onPressedBritish: () => speaksentence57("en-GB"),
            onPressedAmerican: () => speaksentence57("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The economic crisis worsened, bringing about the fall of the government.""",
            kurdishText:
                """قەیرانە ئابوورییەکە خراپتر بوو و کەوتنی حکومەتی درووست کرد.""",
            onPressedBritish: () => speaksentence58("en-GB"),
            onPressedAmerican: () => speaksentence58("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """He remained determined to prevent the fall of South Vietnam to the Communists.""",
            kurdishText:
                """بە شێلگیری مایەوە لەوەی ڕێگری لە کەوتنی ڤێتنامی باشوور بکات بۆ کۆمونیستەکان.""",
            onPressedBritish: () => speaksentence59("en-GB"),
            onPressedAmerican: () => speaksentence59("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """١٨. (ناو) دۆخێک کە کەسێک، دامەزراوەیەک، ھتد ڕێزی دەدۆڕێنێت بەھۆی ئەوەی کارێکی خراپی کردووە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """His diary charts his fall from grace.""",
            kurdishText: """یادنامەکەی نەمانی ڕێزی تۆمار دەکات.""",
            onPressedBritish: () => speaksentence60("en-GB"),
            onPressedAmerican: () => speaksentence60("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """١٩. (ناو) تاڤگە"""),
          const AlsoEnglishckb(word: "ھەروەھا: waterfall"),
          SentencesRow(
            englishText: """The falls upstream are full of salmon.""",
            kurdishText: """تاڤگەکانی سەرەوە پڕن لە ماسی سەلەموون.""",
            onPressedBritish: () => speaksentence61("en-GB"),
            onPressedAmerican: () => speaksentence61("en-US"),
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
- Verb: fall (derived forms: falling, fallen, falls, fell)
1. Descend in free fall under the influence of gravity
"The branch fell from the tree"; "The unfortunate hiker fell into a crevasse"
 
2. Move downward and lower, but not necessarily all the way (= descend, go down, come down, sink)
"The barometer is falling"; "The curtain fell on the diva"; "Her hand went up and then fell again";
 
3. Pass suddenly and passively into a state of body or mind
"fall into a trap"; "She fell ill"; "They fell out of favour"; "Fall in love"; "fall asleep"; "fall prey to an imposter"; "fall into a strange way of thinking"; "she fell to pieces after she lost her work"
 
4. Come under, be classified or included (= come)
"fall into a category";
 
5. (of rain, snow, etc.) landing after falling from the clouds (= precipitate, come down)
"rain, snow and sleet were falling";
 
6. Suffer defeat, failure, or ruin
"We must stand or fall"; "fall by the wayside"
 
7. Die, as in battle or in a hunt
"Many soldiers fell at Verdun"; "The shooting victim fell dead"
 
8. Touch or seem as if touching visually or audibly (= shine, strike)
"Light fell on her face";
 
9. Be captured
"The cities fell to the enemy"
 
10. Occur at a specified time or place
"Christmas falls on a Monday this year"; "The accent falls on the first syllable"
 
11. Become smaller or less in size, extent, or range (= decrease, diminish, lessen)
"The cabin pressure fell dramatically"; "her weight fell to under a hundred pounds"; "his voice fell to a whisper";
 
12. Yield to temptation or sin
"Adam and Eve fell"
 
13. Lose office or power
"The government fell overnight"; "The Qing Dynasty fell with Sun Yat-sen"
 
14. To be given by assignment or distribution
"The most difficult task fell on the youngest member of the team"; "The onus fell on us"; "The pressure to succeed fell on the youngest student"
 
15. Move in a specified direction
"The line of men fall forward"
 
16. Be due
"payments fall on the 1st of the month"
 
17. Lose one's chastity
 
18. To be given by right or inheritance
"The estate fell to the oldest daughter"
 
19. Come into the possession of (= accrue)
"The house fell to the oldest son";
 
20. Be allotted to somebody by assignment or as part of their role (= light)
"The task fell to me"; "It fell to me to notify the parents of the victims";
 
21. Be inherited by (= return, pass, devolve)
"The estate fell to my sister";
 
22. Slope downward
"The hills around here fall towards the ocean"
 
23. Lose an upright position suddenly (= fall down)
"The vase fell over and the water spilled onto the table"; "Her hair fell across her forehead";
 
24. Drop oneself to a lower or less erect position
"She fell back in her chair"; "He fell to his knees"
 
25. Fall or flow in a certain way (= hang, flow)
"This dress falls well";
 
26. Assume a disappointed or sad expression
"Her face fell when she heard that she would be laid off"; "his crest fell"
 
27. Be cast down
"his eyes fell"
 
28. Come out; issue
"silly phrases fell from her mouth"
 
29. Be born, used chiefly of lambs
"The lambs fell in the afternoon"
 
30. Begin vigorously
"The prisoners fell to work right away"
 
21. Go as if by falling
"Grief fell from our hearts"
 
32. Come as if by falling (= descend, settle)
"Night fell"; "Silence fell";

- Noun: fall (derived forms: falls)
1. [N. Amer] The season when the leaves fall from the trees (= autumn)
"in the fall of 1973";
 
2. A sudden drop from an upright position (= spill, tumble)
"he had a nasty fall on the ice";
 
3. A downward slope or bend (= descent, declivity, decline, declination, declension, downslope)
 
4. A lapse into sin; a loss of innocence or of chastity
"a fall from virtue"
 
5. A sudden decline in strength, number or importance (= downfall, slide)
"the fall of the House of Hapsburg";
 
6. A movement downward
"the rise and fall of the tides"
 
7. The act of surrendering (usually under agreed conditions) (= capitulation, surrender)
"they were protected until the fall of the fort";
 
8. The time of day immediately following sunset (= twilight, dusk, gloaming, gloam [archaic], nightfall, evenfall, crepuscule, crepuscle)
"they finished before the fall of night";
 
9. When a wrestler's shoulders are forced to the mat (= pin)
 
10. A free and rapid descent by the force of gravity (= drop)
"it was a miracle that he survived the fall from that height";
 
11. A sudden sharp decrease in some quantity (= drop, dip, free fall)
"when that became known the price of their stock went into free fall";

- Noun: Fall (derived forms: Falls)
1. The lapse of mankind into sinfulness because of the sin of Adam and Eve (= Fall of man)
"women have been blamed ever since the Fall";
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

const String _videoIdend = 'hFZFjoX2cGg';
const double _startSecondsend = 705;
const String _videoIdone = '47MNn4bsmSw';
const double _startSecondsone = 6532;
const String _videoIdtwo = 'MnExgQ81fhU';
const double _startSecondstwo = 499;
const String _videoIdthree = 'tLD-OUkYtk4';
const double _startSecondsthree = 1037;
const String _videoIdfour = 'tMKXbLBgkEc';
const double _startSecondsfour = 658;
const String _videoIdfive = 'wizgxRBfVTY';
const double _startSecondsfive = 179;

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