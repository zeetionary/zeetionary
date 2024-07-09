import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfar extends StatefulWidget {
  const EnglishEntryfar({super.key});

  @override
  State<EnglishEntryfar> createState() => _EnglishEntryfarState();
}

class _EnglishEntryfarState extends State<EnglishEntryfar> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""far""");
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
                      word: """far""",
                      // alsoEnglishWord: "also: far",
                      britshText: """IpaUK: /fɑː(r)/""",
                      americanText: """IpaUS: /fɑːr/""",
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
  final String keyword = "far";
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
    await flutterTts.speak("""We didn't go far.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Have you come far?""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""It's not far to the beach.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""There's not far to go now.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""It's too far to walk.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The restaurant is not far from here.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Far away in the distance, a train whistled.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The farther north they went, the colder it became.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""How far is it to your house from here?""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""How far is Boston from New York?""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""How much further is it?""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I'm not sure I can walk so far.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We didn't go as far as the others.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """To answer that question we need to go further back in time.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Let's try to plan further ahead.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We worked far into the night.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The film takes place in a future not too far distant.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""That's a far better idea.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The damage was far worse than I'd expected.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """There are far more opportunities for young people than there used to be.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She always gives us far too much homework.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The results far exceeded my expectations.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The benefits far outweigh the cost.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""How far can we trust him?""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""His parents supported him as far as they could.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """Plan your route in advance, using main roads as far as possible.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""How far have you got with that report?""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I read as far as the third chapter.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """We’ve got as far as collecting our data but we haven’t analysed it yet.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I saw her on the far side of the road.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""They made for an empty table in the far corner.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Who is that on the far left of the photograph?""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She is on the far right of the party.""");
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
    await flutterTts.speak("""speaksentence_9000""");
  }

// With short examples define "far", please follow LX instructions
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: دوور، دوورەدەس، دەس‌پێڕانەگەیشتوو، ئەوبەری، ئەولای، لەوبەری،	دوور،	زۆر، گەلێ، یەکجار،	تا دەرنگانی، درەنگان، درەنگ
"""),
          const DefinitionKurdish(text: """١. (ھاوەڵکار) دوور"""),
          SentencesRow(
            englishText: """We didn't go far.""",
            kurdishText: """دوور نەچووین.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: """Have you come far?""",
                    kurdishText: """لە دوورەوە هاتوویت؟""",
                    onPressedBritish: () => speaksentence2("en-GB"),
                    onPressedAmerican: () => speaksentence2("en-US"),
                  ),
                  const DividerDefinition(),
                  const DefinitionKurdish(
                      text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """It's not far to the beach.""",
                    kurdishText: """لە کەنارەکەوە زۆر دوور نییە.""",
                    onPressedBritish: () => speaksentence3("en-GB"),
                    onPressedAmerican: () => speaksentence3("en-US"),
                  ),
                  const DividerDefinition(),
                  const DefinitionKurdish(
                      text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """There's not far to go now.""",
                    kurdishText: """ئێستا زۆری نەماوە بۆ ڕێکردن.""",
                    onPressedBritish: () => speaksentence4("en-GB"),
                    onPressedAmerican: () => speaksentence4("en-US"),
                  ),
                  const DividerDefinition(),
                  const DefinitionKurdish(
                      text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """It's too far to walk.""",
                    kurdishText: """زۆر دوورە بۆ ڕێکردن.""",
                    kurdishNote: "واتا باشترە بە پی نەچین",
                    onPressedBritish: () => speaksentence5("en-GB"),
                    onPressedAmerican: () => speaksentence5("en-US"),
                  ),
                  const DividerDefinition(),
                  const DefinitionKurdish(
                      text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """The restaurant is not far from here.""",
                    kurdishText: """چێشتخانەکە لێرەوە دوور نییە.""",
                    onPressedBritish: () => speaksentence6("en-GB"),
                    onPressedAmerican: () => speaksentence6("en-US"),
                  ),
                  const DividerDefinition(),
                  const DefinitionKurdish(
                      text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Far away in the distance, a train whistled.""",
                    kurdishText:
                        """لە مەودایەکی دوورەوە، شەمەندەفەرێک هۆرنی لێ‌دەدا.""",
                    onPressedBritish: () => speaksentence7("en-GB"),
                    onPressedAmerican: () => speaksentence7("en-US"),
                  ),
                  const DividerDefinition(),
                  const DefinitionKurdish(
                      text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The farther north they went, the colder it became.""",
                    kurdishText:
                        """چەندە دوورتر بۆ ڕۆژئاوا دەچوون، هێندە ساردتر دەبوو.""",
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
                  """٢. (ھاوەڵکار) بۆ باسکردنی دووری دوو شوێن لە یەکەوە، یان مەودایەک کە گەشتی پێدا کراوە یان گەشتی بۆ دەکرێت"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """How far is it to your house from here?""",
            kurdishText: """لێرەوە بۆ ماڵەکەت چەندە دوورە؟""",
            onPressedBritish: () => speaksentence9("en-GB"),
            onPressedAmerican: () => speaksentence9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """How far is Boston from New York?""",
            kurdishText: """بۆستن چەندە لە نیویۆرک دوورە؟""",
            onPressedBritish: () => speaksentence10("en-GB"),
            onPressedAmerican: () => speaksentence10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """How much further is it?""",
            kurdishText: """چەندی دیکە دوورە؟""",
            onPressedBritish: () => speaksentence11("en-GB"),
            onPressedAmerican: () => speaksentence11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """I'm not sure I can walk so far.""",
            kurdishText: """دڵنیا نیم کە بتوانم هێندە دوور ڕێ بکەم.""",
            onPressedBritish: () => speaksentence12("en-GB"),
            onPressedAmerican: () => speaksentence12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """We didn't go as far as the others.""",
            kurdishText: """هێندەی ئەوانی دیکە نەچووین.""",
            onPressedBritish: () => speaksentence13("en-GB"),
            onPressedAmerican: () => speaksentence13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (ھاوەڵکار) کاتێکی دووڕی ئێستا؛ بۆ باسکردنی بەشی زۆری کاتێکی دیاریکراو"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """To answer that question we need to go further back in time.""",
            kurdishText:
                """بۆ وەڵامدانەوەی ئەو پرسیارە دەبێت زیاتر بگەڕێینەوە بە کاتدا.""",
            onPressedBritish: () => speaksentence14("en-GB"),
            onPressedAmerican: () => speaksentence14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Let's try to plan further ahead.""",
            kurdishText: """با هەوڵ بدەین پلانی زیاتری داهاتوو دابنێین.""",
            onPressedBritish: () => speaksentence15("en-GB"),
            onPressedAmerican: () => speaksentence15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """We worked far into the night.""",
            kurdishText: """کارمان بۆ بەشی زۆری شەوەکە.""",
            // add_comment
            onPressedBritish: () => speaksentence16("en-GB"),
            onPressedAmerican: () => speaksentence16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The film takes place in a future not too far distant.""",
            kurdishText:
                """فیلمەکە لە ڕابردوویەکدا ڕوودەدات کە هێندە دوور نییە.""",
            onPressedBritish: () => speaksentence17("en-GB"),
            onPressedAmerican: () => speaksentence17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٤. (ھاوەڵکار) بە ئاستێکی زۆر"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """That's a far better idea.""",
            kurdishText: """ئەوە بیرۆکەیەکی زۆر باشترە.""",
            onPressedBritish: () => speaksentence18("en-GB"),
            onPressedAmerican: () => speaksentence18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The damage was far worse than I'd expected.""",
            kurdishText: """زیانەکە زۆر خراپتر بوو لەوەی پێشبینیم کرد.""",
            onPressedBritish: () => speaksentence19("en-GB"),
            onPressedAmerican: () => speaksentence19("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """There are far more opportunities for young people than there used to be.""",
            kurdishText: """هەلی زۆر زیاتر بۆ گەنجاو لەچاو جاراندا.""",
            onPressedBritish: () => speaksentence20("en-GB"),
            onPressedAmerican: () => speaksentence20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """She always gives us far too much homework.""",
            kurdishText: """هەمیشە ئەرکی ماڵەوە ئێجگار زۆرمان پێدەدات.""",
            onPressedBritish: () => speaksentence21("en-GB"),
            onPressedAmerican: () => speaksentence21("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The results far exceeded my expectations.""",
            kurdishText: """ئەنجامەکان ئێجگار زۆر پێشبینییەکانمیان تێپەڕاند.""",
            onPressedBritish: () => speaksentence22("en-GB"),
            onPressedAmerican: () => speaksentence22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The benefits far outweigh the cost.""",
            kurdishText: """سوودەکان زۆر زیاترن لە تێچووەکە.""",
            onPressedBritish: () => speaksentence23("en-GB"),
            onPressedAmerican: () => speaksentence23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٥. (ھاوەڵکار) بۆ باسکردنی ئاستی ئەوەی شتێک ڕاستە یان دەکرێت بکرێت"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """How far can we trust him?""",
            kurdishText: """چەند دەتوانین متمانەی پێ‌بکەین؟""",
            onPressedBritish: () => speaksentence24("en-GB"),
            onPressedAmerican: () => speaksentence24("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """His parents supported him as far as they could.""",
            kurdishText: """دایبابی چەندە توانیان پاڵپشتییان کرد.""",
            onPressedBritish: () => speaksentence25("en-GB"),
            onPressedAmerican: () => speaksentence25("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Plan your route in advance, using main roads as far as possible.""",
            kurdishText:
                """پلانی ڕێگاکەدا لە پێشدا دابنێت، چەندە دەکرێت ڕێگای سەرەکی بەکاربهێنە.""",
            onPressedBritish: () => speaksentence26("en-GB"),
            onPressedAmerican: () => speaksentence26("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٦. (ھاوەڵکار) بۆ گوتنی ئەوەی چەندە کار کراوە لە کردن یان بەدەستهێنانی شتێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """How far have you got with that report?""",
            kurdishText: """چەندت لەو ڕاپۆرتە تەواو کردووە؟""",
            onPressedBritish: () => speaksentence27("en-GB"),
            onPressedAmerican: () => speaksentence27("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """I read as far as the third chapter.""",
            kurdishText: """تاوەکو بەشی سێیەمم خوێندەوە.""",
            onPressedBritish: () => speaksentence28("en-GB"),
            onPressedAmerican: () => speaksentence28("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """We’ve got as far as collecting our data but we haven’t analysed it yet.""",
            kurdishText:
                """تاوەکو کۆکردنەوەی داتا چووینە، بەڵام هێشتا شیکردنەوەمان بۆ نەکردوون.""",
            onPressedBritish: () => speaksentence29("en-GB"),
            onPressedAmerican: () => speaksentence29("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٧. (ھاوەڵناو) بە دووریەکی زیاتر لە تۆ"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """I saw her on the far side of the road.""",
            kurdishText: """لەسەر لا دوورەکەی ڕێگاکە دیم.""",
            onPressedBritish: () => speaksentence30("en-GB"),
            onPressedAmerican: () => speaksentence30("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """They made for an empty table in the far corner.""",
            kurdishText: """چوونە مێزێکی بەتاڵ لە سووچە دوورەکە.""",
            onPressedBritish: () => speaksentence31("en-GB"),
            onPressedAmerican: () => speaksentence31("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٨. (ھاوەڵناو) لە دوورترین خاڵەوە لە ئاراستەیەکی دیاریکراوەوە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Who is that on the far left of the photograph?""",
            kurdishText: """ئەوە کێیە لە ئەوپەڕی چەپی وێنەکەوە؟""",
            onPressedBritish: () => speaksentence32("en-GB"),
            onPressedAmerican: () => speaksentence32("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """She is on the far right of the party (= holds extreme right-wing political views).""",
            kurdishText: """لە ئەوپەڕی ڕاستڕەوی پارتەکەیە.""",
            onPressedBritish: () => speaksentence33("en-GB"),
            onPressedAmerican: () => speaksentence33("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence3400""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence34("en-GB"),
            onPressedAmerican: () => speaksentence34("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence3500""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence35("en-GB"),
            onPressedAmerican: () => speaksentence35("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence3600""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence36("en-GB"),
            onPressedAmerican: () => speaksentence36("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence3700""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence37("en-GB"),
            onPressedAmerican: () => speaksentence37("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence3800""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence38("en-GB"),
            onPressedAmerican: () => speaksentence38("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence3900""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence39("en-GB"),
            onPressedAmerican: () => speaksentence39("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence_4000""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence40("en-GB"),
            onPressedAmerican: () => speaksentence40("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence4100""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence41("en-GB"),
            onPressedAmerican: () => speaksentence41("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence4200""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence42("en-GB"),
            onPressedAmerican: () => speaksentence42("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence4300""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence43("en-GB"),
            onPressedAmerican: () => speaksentence43("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence4400""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence44("en-GB"),
            onPressedAmerican: () => speaksentence44("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence4500""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence45("en-GB"),
            onPressedAmerican: () => speaksentence45("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence4600""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence46("en-GB"),
            onPressedAmerican: () => speaksentence46("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence4700""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence47("en-GB"),
            onPressedAmerican: () => speaksentence47("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence4800""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence48("en-GB"),
            onPressedAmerican: () => speaksentence48("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence4900""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence49("en-GB"),
            onPressedAmerican: () => speaksentence49("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence_5000""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence50("en-GB"),
            onPressedAmerican: () => speaksentence50("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence5100""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence51("en-GB"),
            onPressedAmerican: () => speaksentence51("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence5200""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence52("en-GB"),
            onPressedAmerican: () => speaksentence52("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence5300""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence53("en-GB"),
            onPressedAmerican: () => speaksentence53("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence5400""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence54("en-GB"),
            onPressedAmerican: () => speaksentence54("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence5500""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence55("en-GB"),
            onPressedAmerican: () => speaksentence55("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence5600""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence56("en-GB"),
            onPressedAmerican: () => speaksentence56("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence5700""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence57("en-GB"),
            onPressedAmerican: () => speaksentence57("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence5800""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence58("en-GB"),
            onPressedAmerican: () => speaksentence58("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence5900""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence59("en-GB"),
            onPressedAmerican: () => speaksentence59("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence_6000""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence60("en-GB"),
            onPressedAmerican: () => speaksentence60("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence6100""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence61("en-GB"),
            onPressedAmerican: () => speaksentence61("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence6200""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence62("en-GB"),
            onPressedAmerican: () => speaksentence62("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence6300""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence63("en-GB"),
            onPressedAmerican: () => speaksentence63("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence6400""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence64("en-GB"),
            onPressedAmerican: () => speaksentence64("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence6500""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence65("en-GB"),
            onPressedAmerican: () => speaksentence65("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence6600""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence66("en-GB"),
            onPressedAmerican: () => speaksentence66("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence6700""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence67("en-GB"),
            onPressedAmerican: () => speaksentence67("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence6800""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence68("en-GB"),
            onPressedAmerican: () => speaksentence68("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence6900""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence69("en-GB"),
            onPressedAmerican: () => speaksentence69("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence_7000""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence70("en-GB"),
            onPressedAmerican: () => speaksentence70("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence7100""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence71("en-GB"),
            onPressedAmerican: () => speaksentence71("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence7200""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence72("en-GB"),
            onPressedAmerican: () => speaksentence72("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence7300""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence73("en-GB"),
            onPressedAmerican: () => speaksentence73("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence7400""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence74("en-GB"),
            onPressedAmerican: () => speaksentence74("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence7500""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence75("en-GB"),
            onPressedAmerican: () => speaksentence75("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence7600""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence76("en-GB"),
            onPressedAmerican: () => speaksentence76("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence7700""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence77("en-GB"),
            onPressedAmerican: () => speaksentence77("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence7800""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence78("en-GB"),
            onPressedAmerican: () => speaksentence78("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence7900""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence79("en-GB"),
            onPressedAmerican: () => speaksentence79("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence_8000""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence80("en-GB"),
            onPressedAmerican: () => speaksentence80("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence8100""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence81("en-GB"),
            onPressedAmerican: () => speaksentence81("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence8200""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence82("en-GB"),
            onPressedAmerican: () => speaksentence82("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence8300""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence83("en-GB"),
            onPressedAmerican: () => speaksentence83("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """ژممارە. (ھاوەڵناو) پێنناسە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """speaksentence8400""",
            kurdishText: """رستە_رستە_رستە_رستە.""",
            onPressedBritish: () => speaksentence84("en-GB"),
            onPressedAmerican: () => speaksentence84("en-US"),
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
- Adverb: far
1. To a considerable degree; very much
"felt far worse than yesterday"; "eyes far too close together"; "a far far better thing that I do"
 
2. At, to or from a great distance in space
"he travelled far"; "strayed far from home"; "sat far away from each other"
 
3. At or to a certain point or degree
"I can only go so far before I have to give up"; "how far can we get with this kind of argument?"
 
4. Remote in time
"if we could see far into the future"; "all that happened far in the past"
 
5. To an advanced stage or point
"a young man who will go very far"

- Adjective: far
1. Located at a great distance in time, space or degree
"we come from a far country"; "far corners of the earth"; "the far future"; "a far journey"; "the far side of the road"; "far from the truth"; "far in the future"
 
2. Being of a considerable distance or length
"a far trek"
 
3. Being the animal or vehicle on the right or being on the right side of an animal or vehicle
"the horse on the right is the far horse"; "the right side is the far side of the horse"
 
4. Beyond a norm in opinion or actions
"the far right"
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

const String _videoIdend = 'https://youtu.be/hFZFjoX2cGg?t=';
const double _startSecondsend = 000000000000000000000000000363;
const String _videoIdone = 'https://youtu.be/hS2x1zl4rn0?t=';
const double _startSecondsone = 0000000000000000000000000001139;
const String _videoIdtwo = 'https://youtu.be/hTqtGJwsJVE?t=';
const double _startSecondstwo = 0000000000000000000000000002400;
const String _videoIdthree = 'https://youtu.be/gngPQ771Ahk?t=';
const double _startSecondsthree = 0000000000000000000000000002819;
const String _videoIdfour = 'https://youtu.be/8AGNsvNFUGw?t=';
const double _startSecondsfour = 00000000000000000000000000024;
const String _videoIdfive = 'https://youtu.be/AFS6saV981Q?t=';
const double _startSecondsfive = 000000000000000000000000000499;

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