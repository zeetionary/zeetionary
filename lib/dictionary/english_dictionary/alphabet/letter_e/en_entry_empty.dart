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
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
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
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
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
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I noticed an empty space on the bookshelf.");
  }

  Future<void> speakemptys2(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I couldn't see any empty seats.");
  }

  Future<void> speakemptys3(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The theatre was half empty.");
  }

  Future<void> speakemptys4(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("As it got later, the streets became empty.");
  }

  Future<void> speakemptys5(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The house had been standing empty for some time.");
  }

  Future<void> speakemptys6(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The room was empty of furniture.");
  }

  Future<void> speakemptys7(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The house felt curiously empty without the children.");
  }

  Future<void> speakemptys8(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The politician's promises were just empty rhetoric.");
  }

  Future<void> speakemptys9(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Too many empty threats and your child will soon learn to ignore you.");
  }

  Future<void> speakemptys10(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They're just empty promises.");
  }

  Future<void> speakemptys11(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My life seems empty without you.");
  }

  Future<void> speakemptys12(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We all feel very empty now she's gone.");
  }

  Future<void> speakemptys13(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Three months after his death, she still felt empty.");
  }

  Future<void> speakemptys14(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She emptied the bins, washed the glasses and went to bed.");
  }

  Future<void> speakemptys15(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He emptied his glass and asked for a refill.");
  }

  Future<void> speakemptys16(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I emptied out my pockets but could not find my keys.");
  }

  Future<void> speakemptys17(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She emptied her mind of all thoughts of home.");
  }

  Future<void> speakemptys18(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The beach gradually emptied of people.");
  }

  Future<void> speakemptys19(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The streets soon emptied of shoppers.");
  }

  Future<void> speakemptys20(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The room gradually emptied out.");
  }

  Future<void> speakemptys21(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He stepped outside to empty the trash.");
  }

  Future<void> speakemptys22(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She emptied the contents of her bag onto the table.");
  }

  Future<void> speakemptys23(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Many factories emptied their waste into the river.");
  }

  Future<void> speakemptys24(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She emptied the water out of the vase.");
  }

  Future<void> speakemptys25(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Police had instructions to empty the building because of a bomb threat.");
  }

  Future<void> speakemptys26(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The Rhine empties into the North Sea.");
  }

  Future<void> speakemptys27(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Fans emptied out onto the streets after the concert.");
  }

  Future<void> speakemptys28(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys2800");
  }

  Future<void> speakemptys29(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys2900");
  }

  Future<void> speakemptys30(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys_3000");
  }

  Future<void> speakemptys31(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys3100");
  }

  Future<void> speakemptys32(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys3200");
  }

  Future<void> speakemptys33(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys3300");
  }

  Future<void> speakemptys34(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys3400");
  }

  Future<void> speakemptys35(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys3500");
  }

  Future<void> speakemptys36(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys3600");
  }

  Future<void> speakemptys37(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys3700");
  }

  Future<void> speakemptys38(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys3800");
  }

  Future<void> speakemptys39(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys3900");
  }

  Future<void> speakemptys40(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys_4000");
  }

  Future<void> speakemptys41(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys4100");
  }

  Future<void> speakemptys42(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys4200");
  }

  Future<void> speakemptys43(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys4300");
  }

  Future<void> speakemptys44(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys4400");
  }

  Future<void> speakemptys45(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys4500");
  }

  Future<void> speakemptys46(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys4600");
  }

  Future<void> speakemptys47(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys4700");
  }

  Future<void> speakemptys48(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys4800");
  }

  Future<void> speakemptys49(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys4900");
  }

  Future<void> speakemptys50(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys_6000");
  }

  Future<void> speakemptys51(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys5100");
  }

  Future<void> speakemptys52(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys5200");
  }

  Future<void> speakemptys53(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys5300");
  }

  Future<void> speakemptys54(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys5400");
  }

  Future<void> speakemptys55(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys5500");
  }

  Future<void> speakemptys56(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys5600");
  }

  Future<void> speakemptys57(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys5700");
  }

  Future<void> speakemptys58(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys5800");
  }

  Future<void> speakemptys59(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys5900");
  }

  Future<void> speakemptys60(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys6000");
  }

  Future<void> speakemptys61(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys6100");
  }

  Future<void> speakemptys62(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys6200");
  }

  Future<void> speakemptys63(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys6300");
  }

  Future<void> speakemptys64(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys6400");
  }

  Future<void> speakemptys65(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys6500");
  }

  Future<void> speakemptys66(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys6600");
  }

  Future<void> speakemptys67(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys6700");
  }

  Future<void> speakemptys68(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys6800");
  }

  Future<void> speakemptys69(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys6900");
  }

  Future<void> speakemptys70(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys_7000");
  }

  Future<void> speakemptys71(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys7100");
  }

  Future<void> speakemptys72(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys7200");
  }

  Future<void> speakemptys73(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys7300");
  }

  Future<void> speakemptys74(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys7400");
  }

  Future<void> speakemptys75(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys7500");
  }

  Future<void> speakemptys76(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys7600");
  }

  Future<void> speakemptys77(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys7700");
  }

  Future<void> speakemptys78(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys7800");
  }

  Future<void> speakemptys79(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys7900");
  }

  Future<void> speakemptys80(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys8000");
  }

  Future<void> speakemptys81(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys8100");
  }

  Future<void> speakemptys82(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys8200");
  }

  Future<void> speakemptys83(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys8300");
  }

  Future<void> speakemptys84(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys8400");
  }

  Future<void> speakemptys85(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys8500");
  }

  Future<void> speakemptys86(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys8600");
  }

  Future<void> speakemptys87(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys8700");
  }

  Future<void> speakemptys88(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys8800");
  }

  Future<void> speakemptys89(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys8900");
  }

  Future<void> speakemptys90(String languageCode) async {
    // DOPSUM: CHANGE speakempty
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptys9000");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: بەتاڵ، بۆش، پووچەڵ، پووچ، پووچەک، پووک، نێوبەتاڵ، هیچ‌تیانەبوو،	بێ‌نێوەرۆک، بێ‌واتا، بێ‌مەبەست،	چۆڵ، چۆڵ‌وهۆڵ،	بێ، بەتاڵ لە،	نافەرمی برسی، تینوو،	وەڕەز، عاجز، جاڕز
"""),
          const DefinitionKurdish(text: """١. (ھاوەڵناو) بەتاڵ"""),
          SentencesRow(
            englishText: """I noticed an empty space on the bookshelf.""",
            kurdishText: """لەسەر ڕەفەی کتێبەکە جێگایەکی بەتاڵم بەدیکرد.""",
// With short examples define "empty", please follow LX instructions
            onPressedBritish: () => speakemptys1("en-GB"),
            onPressedAmerican: () => speakemptys1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I couldn't see any empty seats (= with nobody sitting in them).""",
            kurdishText: """هیچ جێگایەکی بەتاڵم نەدەبینی.""",
            onPressedBritish: () => speakemptys2("en-GB" ""),
            onPressedAmerican: () => speakemptys2("en-US" ""),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: """The theatre was half empty.""",
                    kurdishText: """هۆڵی شانۆکە نیوەی بەتاڵ بوو.""",
                    onPressedBritish: () => speakemptys3("en-GB" ""),
                    onPressedAmerican: () => speakemptys3("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """As it got later, the streets became empty.""",
                    kurdishText: """کە درەنگی کرد، شەقامەکان بەتاڵ بوون.""",
                    onPressedBritish: () => speakemptys4("en-GB" ""),
                    onPressedAmerican: () => speakemptys4("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The house had been standing empty (= without people living in it) for some time.""",
                    kurdishText:
                        """خانووەکە بۆ ماوەیەک بوو بە بەتاڵی مابوویەوە.""",
                    onPressedBritish: () => speakemptys5("en-GB" ""),
                    onPressedAmerican: () => speakemptys5("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """The room was empty of furniture.""",
                    kurdishText: """ژوورەکە هیچ کەلوپەلی تێدا نەبوو.""",
                    onPressedBritish: () => speakemptys6("en-GB" ""),
                    onPressedAmerican: () => speakemptys6("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The house felt curiously empty without the children.""",
                    kurdishText: """خانووەکە بەبێ منداڵەکان بەتاڵ دەردەکەوت.""",
                    onPressedBritish: () => speakemptys7("en-GB" ""),
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
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """The politician's promises were just empty rhetoric.""",
            kurdishText: """بەڵێنەکانی سیاسییەکە تەنها قسەی بەتاڵ بوون.""",
            onPressedBritish: () => speakemptys8("en-GB" ""),
            onPressedAmerican: () => speakemptys8("en-US" ""),
          ),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """Too many empty threats and your child will soon learn to ignore you.""",
            kurdishText:
                """هێندە هەڕەشەی بێ‌کردار بکەیت منداڵەکەت فێر دەبێت پشتگوێت بخات.""",
            onPressedBritish: () => speakemptys9("en-GB" ""),
            onPressedAmerican: () => speakemptys9("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """They're just empty promises.""",
            kurdishText: """تەنها بەڵێنی درۆینەن.""",
            onPressedBritish: () => speakemptys10("en-GB" ""),
            onPressedAmerican: () => speakemptys10("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٣. (ھاوەڵناو) کە کەسێک ژیان بە بێ مەبەست دەبینێت و """),
          // const DividerSentences(),
          SentencesRow(
            englishText: """My life seems empty without you.""",
            kurdishText: """ژیانم بێ‌نرخ دیارە بەبێ تۆ.""",
            onPressedBritish: () => speakemptys11("en-GB" ""),
            onPressedAmerican: () => speakemptys11("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """We all feel very empty now she's gone.""",
            kurdishText: """ئێستا زۆر هەست بە کەساسی دەکەین کە چووە.""",
            onPressedBritish: () => speakemptys12("en-GB" ""),
            onPressedAmerican: () => speakemptys12("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Three months after his death, she still felt empty.""",
            kurdishText: """سێ مانگ دوای مەرگی هێشتا هەستی بە کەساسی دەکرد.""",
            kurdishNote: "کەساس: حاڵ پەرێشان، بێ سەرەوبەرە",
            onPressedBritish: () => speakemptys13("en-GB" ""),
            onPressedAmerican: () => speakemptys13("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٤. (کردار) بەتاڵکردن"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """She emptied the bins, washed the glasses and went to bed.""",
            kurdishText:
                """زباڵەکانی بەتاڵ کرد، گڵاسەکانی ششت و چووە جێخەوەکەی.""",
            onPressedBritish: () => speakemptys14("en-GB" ""),
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
                    onPressedBritish: () => speakemptys15("en-GB" ""),
                    onPressedAmerican: () => speakemptys15("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """I emptied out my pockets but could not find my keys.""",
                    kurdishText:
                        """گیرفانەکانم بەتاڵ کرد بەڵام نەمدەتوانی کلیلەکانم بدۆزمەوە.""",
                    onPressedBritish: () => speakemptys16("en-GB" ""),
                    onPressedAmerican: () => speakemptys16("en-US" ""),
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: """ژممارە. (کردار) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """She emptied her mind of all thoughts of home.""",
                    kurdishText:
                        """(خوازراوی) مێشكی پاککردەوە لە هەموو بیرکردنەوەیەک لە ماڵەوە.""",
                    onPressedBritish: () => speakemptys17("en-GB" ""),
                    onPressedAmerican: () => speakemptys17("en-US" ""),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٥. (کردار) بەتاڵ بوون"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """The beach gradually emptied of people.""",
            kurdishText: """کەناراوەکە کەم‌کەم بەتاڵ بوو لە خەڵکی.""",
            onPressedBritish: () => speakemptys18("en-GB" ""),
            onPressedAmerican: () => speakemptys18("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The streets soon emptied of shoppers.""",
            kurdishText: """شەقامەکان زوو خاڵی بوون لە کڕیاران.""",
            onPressedBritish: () => speakemptys19("en-GB" ""),
            onPressedAmerican: () => speakemptys19("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The room gradually emptied out.""",
            kurdishText: """ژوورەکە کەم‌کەم بەتاڵ بوو.""",
            onPressedBritish: () => speakemptys20("en-GB" ""),
            onPressedAmerican: () => speakemptys20("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٦. (کردار) دەرکردنی شتەکانی ناو شتێک و دانانیان لە شوێنێکی دیکە"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """He stepped outside to empty the trash.""",
            kurdishText: """چووە دەرەوە بۆ بەتاڵردنی زباڵەکە.""",
            onPressedBritish: () => speakemptys21("en-GB" ""),
            onPressedAmerican: () => speakemptys21("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """She emptied the contents of her bag onto the table.""",
            kurdishText: """شتەکانی جانتەکەی بەتاڵ کردە سەر مێزەکە.""",
            onPressedBritish: () => speakemptys22("en-GB" ""),
            onPressedAmerican: () => speakemptys22("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Many factories emptied their waste into the river.""",
            kurdishText:
                """زۆر کارگە پاشماوەکەیان بەتاڵ دەکردەوە ڕووبارەکەوە.""",
            onPressedBritish: () => speakemptys23("en-GB" ""),
            onPressedAmerican: () => speakemptys23("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She emptied the water out of the vase.""",
            kurdishText: """ئاوی گوڵدانەکەی دەرکرد.""",
            onPressedBritish: () => speakemptys24("en-GB" ""),
            onPressedAmerican: () => speakemptys24("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٧. (کردار) دڵنیایی کردنەوە لەوەی کە هەموان شوێنێک جێدەهێڵن"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """Police had instructions to empty the building because of a bomb threat.""",
            kurdishText:
                """پۆلیس ڕێنمایی پێدرابوو کە بیناکە چۆڵ بکات بەهۆی هەڕەشەی بۆمبێکەوە.""",
            onPressedBritish: () => speakemptys25("en-GB" ""),
            onPressedAmerican: () => speakemptys25("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٨. (کردار) ڕژان یان جوڵان بۆ شوێنێک"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """The Rhine empties into the North Sea.""",
            kurdishText: """ڕووباری ڕاین بەتاڵ دەبێتە ناو دەریای باکوورەوە.""",
            onPressedBritish: () => speakemptys26("en-GB" ""),
            onPressedAmerican: () => speakemptys26("en-US" ""),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Fans emptied out onto the streets after the concert.""",
            kurdishText:
                """لە دوای کۆنسێرتەکە هەواداران ڕژانە سەر شەقامەکان.""",
            onPressedBritish: () => speakemptys27("en-GB" ""),
            onPressedAmerican: () => speakemptys27("en-US" ""),
          ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys2800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys28("en-GB" ""),
          //   onPressedAmerican: () => speakemptys28("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys2900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys29("en-GB" ""),
          //   onPressedAmerican: () => speakemptys29("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys_3000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys30("en-GB" ""),
          //   onPressedAmerican: () => speakemptys30("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys3100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys31("en-GB" ""),
          //   onPressedAmerican: () => speakemptys31("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys3200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys32("en-GB" ""),
          //   onPressedAmerican: () => speakemptys32("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys3300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys33("en-GB" ""),
          //   onPressedAmerican: () => speakemptys33("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys3400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys34("en-GB" ""),
          //   onPressedAmerican: () => speakemptys34("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys3500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys35("en-GB" ""),
          //   onPressedAmerican: () => speakemptys35("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys3600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys36("en-GB" ""),
          //   onPressedAmerican: () => speakemptys36("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys3700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys37("en-GB" ""),
          //   onPressedAmerican: () => speakemptys37("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys3800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys38("en-GB" ""),
          //   onPressedAmerican: () => speakemptys38("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys3900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys39("en-GB" ""),
          //   onPressedAmerican: () => speakemptys39("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys_4000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys40("en-GB" ""),
          //   onPressedAmerican: () => speakemptys40("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys4100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys41("en-GB" ""),
          //   onPressedAmerican: () => speakemptys41("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys4200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys42("en-GB" ""),
          //   onPressedAmerican: () => speakemptys42("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys4300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys43("en-GB" ""),
          //   onPressedAmerican: () => speakemptys43("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys4400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys44("en-GB" ""),
          //   onPressedAmerican: () => speakemptys44("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys4500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys45("en-GB" ""),
          //   onPressedAmerican: () => speakemptys45("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys4600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys46("en-GB" ""),
          //   onPressedAmerican: () => speakemptys46("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys4700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys47("en-GB" ""),
          //   onPressedAmerican: () => speakemptys47("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys4800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys48("en-GB" ""),
          //   onPressedAmerican: () => speakemptys48("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys4900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys49("en-GB" ""),
          //   onPressedAmerican: () => speakemptys49("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys_6000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys50("en-GB" ""),
          //   onPressedAmerican: () => speakemptys50("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys5100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys51("en-GB" ""),
          //   onPressedAmerican: () => speakemptys51("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys5200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys52("en-GB" ""),
          //   onPressedAmerican: () => speakemptys52("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys5300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys53("en-GB" ""),
          //   onPressedAmerican: () => speakemptys53("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys5400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys54("en-GB" ""),
          //   onPressedAmerican: () => speakemptys54("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys5500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys55("en-GB" ""),
          //   onPressedAmerican: () => speakemptys55("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys5600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys56("en-GB" ""),
          //   onPressedAmerican: () => speakemptys56("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys5700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys57("en-GB" ""),
          //   onPressedAmerican: () => speakemptys57("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys5800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys58("en-GB" ""),
          //   onPressedAmerican: () => speakemptys58("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys5900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys59("en-GB" ""),
          //   onPressedAmerican: () => speakemptys59("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys6000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys60("en-GB" ""),
          //   onPressedAmerican: () => speakemptys60("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys6100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys61("en-GB" ""),
          //   onPressedAmerican: () => speakemptys61("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys6200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys62("en-GB" ""),
          //   onPressedAmerican: () => speakemptys62("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys6300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys63("en-GB" ""),
          //   onPressedAmerican: () => speakemptys63("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys6400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys64("en-GB" ""),
          //   onPressedAmerican: () => speakemptys64("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys6500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys65("en-GB" ""),
          //   onPressedAmerican: () => speakemptys65("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys6600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys66("en-GB" ""),
          //   onPressedAmerican: () => speakemptys66("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys6700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys67("en-GB" ""),
          //   onPressedAmerican: () => speakemptys67("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys6800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys68("en-GB" ""),
          //   onPressedAmerican: () => speakemptys68("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys6900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys69("en-GB" ""),
          //   onPressedAmerican: () => speakemptys69("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys_7000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys70("en-GB" ""),
          //   onPressedAmerican: () => speakemptys70("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys7100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys71("en-GB" ""),
          //   onPressedAmerican: () => speakemptys71("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys7200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys72("en-GB" ""),
          //   onPressedAmerican: () => speakemptys72("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys7300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys73("en-GB" ""),
          //   onPressedAmerican: () => speakemptys73("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys7400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys74("en-GB" ""),
          //   onPressedAmerican: () => speakemptys74("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys7500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys75("en-GB" ""),
          //   onPressedAmerican: () => speakemptys75("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys7600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys76("en-GB" ""),
          //   onPressedAmerican: () => speakemptys76("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys7700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys77("en-GB" ""),
          //   onPressedAmerican: () => speakemptys77("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys7800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys78("en-GB" ""),
          //   onPressedAmerican: () => speakemptys78("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys7900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys79("en-GB" ""),
          //   onPressedAmerican: () => speakemptys79("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys8000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys80("en-GB" ""),
          //   onPressedAmerican: () => speakemptys80("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys8100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys81("en-GB" ""),
          //   onPressedAmerican: () => speakemptys81("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys8200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys82("en-GB" ""),
          //   onPressedAmerican: () => speakemptys82("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys8300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys83("en-GB" ""),
          //   onPressedAmerican: () => speakemptys83("en-US" ""),
          // ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speakemptys8400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speakemptys84("en-GB" ""),
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
- Adjective: empty (Derived forms: emptiest, emptier)
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

- Verb: empty (Derived forms: empties, emptying, emptied)
1. Make void or empty of contents
"Empty the box"; "The alarm emptied the building"
 
2. Become empty or void of its content (= discharge)
"The room emptied";
 
3. Leave behind empty; move out of (= vacate, abandon)
"You must empty your office by tonight";
 
4. Remove the contents of a container
"Empty the water"
 
5. Excrete or discharge from the body (= evacuate, void)

- Noun: empty (Derived forms: empties)
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

  final String _videoId = 'https://youtu.be/Kou7ur5xt_4?t=';
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

  final String _videoId = 'https://youtu.be/AF8d72mA41M?t=';
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

  final String _videoId = 'https://youtu.be/9TugA_z5vQE?t=';
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

  final String _videoId = 'https://youtu.be/EHJNGdFll4o?t=';
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

  final String _videoId = 'https://youtu.be/_Z0ZQT0FttM?t=';
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

  final String _videoId = 'https://youtu.be/iYfQFsilPn8?t=';
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

  final String _videoId = 'https://youtu.be/8pEcvteQo9g?t=';
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