import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryendless extends StatefulWidget {
  const EnglishEntryendless({super.key});

  @override
  State<EnglishEntryendless> createState() => _EnglishEntryendlessState();
}

class _EnglishEntryendlessState extends State<EnglishEntryendless> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""endless""");
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
                      word: """endless""",
                      // alsoEnglishWord: "also: endless",
                      britshText: """IpaUK: /ˈendləs/""",
                      americanText: """IpaUS: /ˈendləs/""",
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
  final String keyword = "endless";
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
    await flutterTts.speak("""The possibilities are endless.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""We don't have an endless supply of money, you know.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""There were endless meetings to attend.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The journey seemed endless.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """It was a seemingly endless eight weeks before the letter arrived.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence600""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence700""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence800""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence900""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence_1000""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence1100""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence1200""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence1300""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence1400""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence1500""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence1600""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence1700""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence1800""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence1900""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence_2000""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence2100""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence2200""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence2300""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence2400""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence2500""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence2600""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence2700""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence2800""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence2900""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence_3000""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence3100""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence3200""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence3300""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence3400""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence3500""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence3600""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence3700""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence3800""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence3900""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence_4000""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence4100""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence4200""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence4300""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence4400""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence4500""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence4600""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence4700""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence4800""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence4900""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence_5000""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence5100""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence5200""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence5300""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence5400""");
  }

  Future<void> speaksentence55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence5500""");
  }

  Future<void> speaksentence56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence5600""");
  }

  Future<void> speaksentence57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence5700""");
  }

  Future<void> speaksentence58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence5800""");
  }

  Future<void> speaksentence59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence5900""");
  }

  Future<void> speaksentence60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence_6000""");
  }

  Future<void> speaksentence61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence6100""");
  }

  Future<void> speaksentence62(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence6200""");
  }

  Future<void> speaksentence63(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence6300""");
  }

  Future<void> speaksentence64(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence6400""");
  }

  Future<void> speaksentence65(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence6500""");
  }

  Future<void> speaksentence66(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence6600""");
  }

  Future<void> speaksentence67(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence6700""");
  }

  Future<void> speaksentence68(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence6800""");
  }

  Future<void> speaksentence69(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence6900""");
  }

  Future<void> speaksentence70(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence_7000""");
  }

  Future<void> speaksentence71(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence7100""");
  }

  Future<void> speaksentence72(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence7200""");
  }

  Future<void> speaksentence73(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence7300""");
  }

  Future<void> speaksentence74(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence7400""");
  }

  Future<void> speaksentence75(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence7500""");
  }

  Future<void> speaksentence76(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence7600""");
  }

  Future<void> speaksentence77(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence7700""");
  }

  Future<void> speaksentence78(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence7800""");
  }

  Future<void> speaksentence79(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence7900""");
  }

  Future<void> speaksentence80(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence_8000""");
  }

  Future<void> speaksentence81(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence8100""");
  }

  Future<void> speaksentence82(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence8200""");
  }

  Future<void> speaksentence83(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence8300""");
  }

  Future<void> speaksentence84(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence8400""");
  }

  Future<void> speaksentence85(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence8500""");
  }

  Future<void> speaksentence86(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence8600""");
  }

  Future<void> speaksentence87(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence8700""");
  }

  Future<void> speaksentence88(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence8800""");
  }

  Future<void> speaksentence89(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence8900""");
  }

  Future<void> speaksentence90(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""speaksentence9000""");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: بێ‌کۆتایی، بێ‌دوایی، کۆتایی‌نەهاتوو، بێ‌ئەندازە، بێ‌سەروبن، لەرادەبەدەر
"""),
          const DefinitionKurdish(
              text:
                  """١. (ھاوەڵناو) کە بڕ یان قەبارەیەکی زۆری هەیە وا دەردەکەوێت کە کۆتایی نەبێت"""),
          SentencesRow(
            englishText: """The possibilities are endless.""",
            kurdishText: """ئەگەرەکان بێ‌کۆتان.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """We don't have an endless supply of money, you know.""",
            kurdishText: """دەزانیت کە سەرچاوەی بێ‌کۆتای پارەمان نییە.""",
            onPressedBritish: () => speaksentence2("en-GB" ""),
            onPressedAmerican: () => speaksentence2("en-US" ""),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """There were endless meetings to attend.""",
            kurdishText:
                """ژمارەیەکی زۆر لە کۆبوونەوە هەبوون بۆ بەژداری تێیاندا.""",
            onPressedBritish: () => speaksentence3("en-GB" ""),
            onPressedAmerican: () => speaksentence3("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٢. (ھاوەڵناو) کە بۆ ماوەیەکی زۆر بەردەوامە و وەها دەردەکەوێت کە کۆتایی نەبێت"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The journey seemed endless.""",
            kurdishText: """گەشتەکە بێ‌کۆتا دیاربوو.""",
            onPressedBritish: () => speaksentence4("en-GB" ""),
            onPressedAmerican: () => speaksentence4("en-US" ""),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """It was a seemingly endless eight weeks before the letter arrived.""",
            kurdishText:
                """هەشت هەفتەی درێژخایەن دەرکەوتوو بوو پێش ئەوەی نامەکە گەشت.""",
            onPressedBritish: () => speaksentence5("en-GB" ""),
            onPressedAmerican: () => speaksentence5("en-US" ""),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence6("en-GB" ""),
          //   onPressedAmerican: () => speaksentence6("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence7("en-GB" ""),
          //   onPressedAmerican: () => speaksentence7("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence8("en-GB" ""),
          //   onPressedAmerican: () => speaksentence8("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence9("en-GB" ""),
          //   onPressedAmerican: () => speaksentence9("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence_1000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence10("en-GB" ""),
          //   onPressedAmerican: () => speaksentence10("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence1100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence11("en-GB" ""),
          //   onPressedAmerican: () => speaksentence11("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence1200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence12("en-GB" ""),
          //   onPressedAmerican: () => speaksentence12("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence1300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence13("en-GB" ""),
          //   onPressedAmerican: () => speaksentence13("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence1400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence14("en-GB" ""),
          //   onPressedAmerican: () => speaksentence14("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence1500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence15("en-GB" ""),
          //   onPressedAmerican: () => speaksentence15("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence1600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence16("en-GB" ""),
          //   onPressedAmerican: () => speaksentence16("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence1700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence17("en-GB" ""),
          //   onPressedAmerican: () => speaksentence17("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence1800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence18("en-GB" ""),
          //   onPressedAmerican: () => speaksentence18("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence1900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence19("en-GB" ""),
          //   onPressedAmerican: () => speaksentence19("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence_2000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence20("en-GB" ""),
          //   onPressedAmerican: () => speaksentence20("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence2100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence21("en-GB" ""),
          //   onPressedAmerican: () => speaksentence21("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence2200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence22("en-GB" ""),
          //   onPressedAmerican: () => speaksentence22("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence2300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence23("en-GB" ""),
          //   onPressedAmerican: () => speaksentence23("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence2400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence24("en-GB" ""),
          //   onPressedAmerican: () => speaksentence24("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence2500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence25("en-GB" ""),
          //   onPressedAmerican: () => speaksentence25("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence2600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence26("en-GB" ""),
          //   onPressedAmerican: () => speaksentence26("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence2700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence27("en-GB" ""),
          //   onPressedAmerican: () => speaksentence27("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence2800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence28("en-GB" ""),
          //   onPressedAmerican: () => speaksentence28("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence2900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence29("en-GB" ""),
          //   onPressedAmerican: () => speaksentence29("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence_3000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence30("en-GB" ""),
          //   onPressedAmerican: () => speaksentence30("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence3100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence31("en-GB" ""),
          //   onPressedAmerican: () => speaksentence31("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence3200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence32("en-GB" ""),
          //   onPressedAmerican: () => speaksentence32("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence3300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence33("en-GB" ""),
          //   onPressedAmerican: () => speaksentence33("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence3400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence34("en-GB" ""),
          //   onPressedAmerican: () => speaksentence34("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence3500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence35("en-GB" ""),
          //   onPressedAmerican: () => speaksentence35("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence3600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence36("en-GB" ""),
          //   onPressedAmerican: () => speaksentence36("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence3700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence37("en-GB" ""),
          //   onPressedAmerican: () => speaksentence37("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence3800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence38("en-GB" ""),
          //   onPressedAmerican: () => speaksentence38("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence3900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence39("en-GB" ""),
          //   onPressedAmerican: () => speaksentence39("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence_4000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence40("en-GB" ""),
          //   onPressedAmerican: () => speaksentence40("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence4100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence41("en-GB" ""),
          //   onPressedAmerican: () => speaksentence41("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence4200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence42("en-GB" ""),
          //   onPressedAmerican: () => speaksentence42("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence4300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence43("en-GB" ""),
          //   onPressedAmerican: () => speaksentence43("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence4400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence44("en-GB" ""),
          //   onPressedAmerican: () => speaksentence44("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence4500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence45("en-GB" ""),
          //   onPressedAmerican: () => speaksentence45("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence4600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence46("en-GB" ""),
          //   onPressedAmerican: () => speaksentence46("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence4700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence47("en-GB" ""),
          //   onPressedAmerican: () => speaksentence47("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence4800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence48("en-GB" ""),
          //   onPressedAmerican: () => speaksentence48("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence4900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence49("en-GB" ""),
          //   onPressedAmerican: () => speaksentence49("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence_5000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence50("en-GB" ""),
          //   onPressedAmerican: () => speaksentence50("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence5100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence51("en-GB" ""),
          //   onPressedAmerican: () => speaksentence51("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence5200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence52("en-GB" ""),
          //   onPressedAmerican: () => speaksentence52("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence5300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence53("en-GB" ""),
          //   onPressedAmerican: () => speaksentence53("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence5400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence54("en-GB" ""),
          //   onPressedAmerican: () => speaksentence54("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence5500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence55("en-GB" ""),
          //   onPressedAmerican: () => speaksentence55("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence5600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence56("en-GB" ""),
          //   onPressedAmerican: () => speaksentence56("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence5700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence57("en-GB" ""),
          //   onPressedAmerican: () => speaksentence57("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence5800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence58("en-GB" ""),
          //   onPressedAmerican: () => speaksentence58("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence5900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence59("en-GB" ""),
          //   onPressedAmerican: () => speaksentence59("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence_6000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence60("en-GB" ""),
          //   onPressedAmerican: () => speaksentence60("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence6100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence61("en-GB" ""),
          //   onPressedAmerican: () => speaksentence61("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence6200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence62("en-GB" ""),
          //   onPressedAmerican: () => speaksentence62("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence6300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence63("en-GB" ""),
          //   onPressedAmerican: () => speaksentence63("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence6400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence64("en-GB" ""),
          //   onPressedAmerican: () => speaksentence64("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence6500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence65("en-GB" ""),
          //   onPressedAmerican: () => speaksentence65("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence6600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence66("en-GB" ""),
          //   onPressedAmerican: () => speaksentence66("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence6700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence67("en-GB" ""),
          //   onPressedAmerican: () => speaksentence67("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence6800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence68("en-GB" ""),
          //   onPressedAmerican: () => speaksentence68("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence6900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence69("en-GB" ""),
          //   onPressedAmerican: () => speaksentence69("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence_7000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence70("en-GB" ""),
          //   onPressedAmerican: () => speaksentence70("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence7100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence71("en-GB" ""),
          //   onPressedAmerican: () => speaksentence71("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence7200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence72("en-GB" ""),
          //   onPressedAmerican: () => speaksentence72("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence7300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence73("en-GB" ""),
          //   onPressedAmerican: () => speaksentence73("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence7400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence74("en-GB" ""),
          //   onPressedAmerican: () => speaksentence74("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence7500""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence75("en-GB" ""),
          //   onPressedAmerican: () => speaksentence75("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence7600""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence76("en-GB" ""),
          //   onPressedAmerican: () => speaksentence76("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence7700""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence77("en-GB" ""),
          //   onPressedAmerican: () => speaksentence77("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence7800""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence78("en-GB" ""),
          //   onPressedAmerican: () => speaksentence78("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence7900""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence79("en-GB" ""),
          //   onPressedAmerican: () => speaksentence79("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence_8000""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence80("en-GB" ""),
          //   onPressedAmerican: () => speaksentence80("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence8100""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence81("en-GB" ""),
          //   onPressedAmerican: () => speaksentence81("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence8200""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence82("en-GB" ""),
          //   onPressedAmerican: () => speaksentence82("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence8300""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence83("en-GB" ""),
          //   onPressedAmerican: () => speaksentence83("en-US" ""),
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence8400""",
          //   kurdishText: """رستە_رستە_رستە_رستە.""",
          //   onPressedBritish: () => speaksentence84("en-GB" ""),
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
- Adjective: endless
1. Tiresomely long; seemingly without end (= eternal, interminable, unending)
"endless debates"; "an endless conversation";
 
2. Infinitely great in number
"endless waves"
 
3. Having no known beginning and presumably no end (= dateless, sempiternal)
"time is endless";
 
4. Having the ends united so as to form a continuous whole
"an endless chain"
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

const String _videoIdend = 'https://youtu.be/tXjHb5QmDV0?t=';
const double _startSecondsend = 298;
const String _videoIdone = 'https://youtu.be/HDntl7yzzVI?t=';
const double _startSecondsone = 1779;
const String _videoIdtwo = 'https://youtu.be/544DTGHIBM0?t=';
const double _startSecondstwo = 196;
const String _videoIdthree = 'https://youtu.be/mY3SEMTROas?t=';
const double _startSecondsthree = 510;
const String _videoIdfour = 'https://youtu.be/uKgaVlMN7IY?t=';
const double _startSecondsfour = 421;
const String _videoIdfive = 'https://youtu.be/yRmOWcWdQAo?t=';
const double _startSecondsfive = 987;
const String _videoIdsix = 'https://youtu.be/3RkhZgRNC1k?t=';
const double _startSecondssix = 1108;

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