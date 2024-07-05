import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryemptiness extends StatefulWidget {
  const EnglishEntryemptiness({super.key});

  @override
  State<EnglishEntryemptiness> createState() => _EnglishEntryemptinessState();
}

class _EnglishEntryemptinessState extends State<EnglishEntryemptiness> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakemptiness(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("emptiness");
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
                      word: "emptiness",
                      // alsoEnglishWord: "also: emptiness",
                      britshText: "IpaUK: /ˈemptinəs/",
                      americanText: "IpaUS: /ˈemptinəs/",
                      onPressedBritish: () => speakemptiness("en-GB"),
                      onPressedAmerican: () => speakemptiness("en-US"),
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
  final String keyword = "emptiness";
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

  Future<void> speakemptinesss1(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There was an aching emptiness in her heart.");
  }

  Future<void> speakemptinesss2(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The silence and emptiness of the house did not scare her.");
  }

  Future<void> speakemptinesss3(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He stared out at the vast emptiness of the sea.");
  }

  Future<void> speakemptinesss4(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss400");
  }

  Future<void> speakemptinesss5(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss500");
  }

  Future<void> speakemptinesss6(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss600");
  }

  Future<void> speakemptinesss7(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss700");
  }

  Future<void> speakemptinesss8(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss800");
  }

  Future<void> speakemptinesss9(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss900");
  }

  Future<void> speakemptinesss10(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss_1000");
  }

  Future<void> speakemptinesss11(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss1100");
  }

  Future<void> speakemptinesss12(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss1200");
  }

  Future<void> speakemptinesss13(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss1300");
  }

  Future<void> speakemptinesss14(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss1400");
  }

  Future<void> speakemptinesss15(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss1500");
  }

  Future<void> speakemptinesss16(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss1600");
  }

  Future<void> speakemptinesss17(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss1700");
  }

  Future<void> speakemptinesss18(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss1800");
  }

  Future<void> speakemptinesss19(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss1900");
  }

  Future<void> speakemptinesss20(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss_2000");
  }

  Future<void> speakemptinesss21(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss2100");
  }

  Future<void> speakemptinesss22(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss2200");
  }

  Future<void> speakemptinesss23(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss2300");
  }

  Future<void> speakemptinesss24(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss2400");
  }

  Future<void> speakemptinesss25(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss2500");
  }

  Future<void> speakemptinesss26(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss2600");
  }

  Future<void> speakemptinesss27(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss2700");
  }

  Future<void> speakemptinesss28(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss2800");
  }

  Future<void> speakemptinesss29(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss2900");
  }

  Future<void> speakemptinesss30(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss_3000");
  }

  Future<void> speakemptinesss31(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss3100");
  }

  Future<void> speakemptinesss32(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss3200");
  }

  Future<void> speakemptinesss33(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss3300");
  }

  Future<void> speakemptinesss34(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss3400");
  }

  Future<void> speakemptinesss35(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss3500");
  }

  Future<void> speakemptinesss36(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss3600");
  }

  Future<void> speakemptinesss37(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss3700");
  }

  Future<void> speakemptinesss38(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss3800");
  }

  Future<void> speakemptinesss39(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss3900");
  }

  Future<void> speakemptinesss40(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss_4000");
  }

  Future<void> speakemptinesss41(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss4100");
  }

  Future<void> speakemptinesss42(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss4200");
  }

  Future<void> speakemptinesss43(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss4300");
  }

  Future<void> speakemptinesss44(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss4400");
  }

  Future<void> speakemptinesss45(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss4500");
  }

  Future<void> speakemptinesss46(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss4600");
  }

  Future<void> speakemptinesss47(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss4700");
  }

  Future<void> speakemptinesss48(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss4800");
  }

  Future<void> speakemptinesss49(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss4900");
  }

  Future<void> speakemptinesss50(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss_6000");
  }

  Future<void> speakemptinesss51(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss5100");
  }

  Future<void> speakemptinesss52(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss5200");
  }

  Future<void> speakemptinesss53(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss5300");
  }

  Future<void> speakemptinesss54(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss5400");
  }

  Future<void> speakemptinesss55(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss5500");
  }

  Future<void> speakemptinesss56(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss5600");
  }

  Future<void> speakemptinesss57(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss5700");
  }

  Future<void> speakemptinesss58(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss5800");
  }

  Future<void> speakemptinesss59(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss5900");
  }

  Future<void> speakemptinesss60(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss6000");
  }

  Future<void> speakemptinesss61(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss6100");
  }

  Future<void> speakemptinesss62(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss6200");
  }

  Future<void> speakemptinesss63(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss6300");
  }

  Future<void> speakemptinesss64(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss6400");
  }

  Future<void> speakemptinesss65(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss6500");
  }

  Future<void> speakemptinesss66(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss6600");
  }

  Future<void> speakemptinesss67(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss6700");
  }

  Future<void> speakemptinesss68(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss6800");
  }

  Future<void> speakemptinesss69(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss6900");
  }

  Future<void> speakemptinesss70(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss_7000");
  }

  Future<void> speakemptinesss71(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss7100");
  }

  Future<void> speakemptinesss72(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss7200");
  }

  Future<void> speakemptinesss73(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss7300");
  }

  Future<void> speakemptinesss74(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss7400");
  }

  Future<void> speakemptinesss75(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss7500");
  }

  Future<void> speakemptinesss76(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss7600");
  }

  Future<void> speakemptinesss77(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss7700");
  }

  Future<void> speakemptinesss78(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss7800");
  }

  Future<void> speakemptinesss79(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss7900");
  }

  Future<void> speakemptinesss80(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss8000");
  }

  Future<void> speakemptinesss81(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss8100");
  }

  Future<void> speakemptinesss82(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss8200");
  }

  Future<void> speakemptinesss83(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss8300");
  }

  Future<void> speakemptinesss84(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss8400");
  }

  Future<void> speakemptinesss85(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss8500");
  }

  Future<void> speakemptinesss86(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss8600");
  }

  Future<void> speakemptinesss87(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss8700");
  }

  Future<void> speakemptinesss88(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss8800");
  }

  Future<void> speakemptinesss89(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss8900");
  }

  Future<void> speakemptinesss90(String languageCode) async {
    // DOPSUM: CHANGE speakemptiness
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakemptinesss9000");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: بۆشایی، بۆشی، بەتاڵ، کلۆر، ڤالا، پووکی، بێھوودەیی، پووچەڵی، چۆڵی، بەتاڵ‌بوون، بەتاڵی، ھیچ‌تیانەبوویی
"""),
          const DefinitionKurdish(
              text:
                  """١. (ناو) ھەستکردن بە دڵتەنگی بەھۆی ئەوەی ھەموو شت بێ‌بەھا دیارە"""),
          SentencesRow(
            englishText: """There was an aching emptiness in her heart.""",
            kurdishText: """بێھوودەییەکی بەئازار لە دڵیدا بوو.""",
            onPressedBritish: () => speakemptinesss1("en-GB"),
            onPressedAmerican: () => speakemptinesss1("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٢. (ناو) بەتاڵی"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """The silence and emptiness of the house did not scare her.""",
            kurdishText: """کپی و بەتاڵی خانووەکە نەی ترساند.""",
            onPressedBritish: () => speakemptinesss2("en-GB"),
            onPressedAmerican: () => speakemptinesss2("en-US" ""),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٣. (ناو) شوێنێکی چۆڵ"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """He stared out at the vast emptiness of the sea.""",
            kurdishText: """ڕوانی بەسەر چۆڵی فراوانی دەریاکەدا.""",
            onPressedBritish: () => speakemptinesss3("en-GB"),
            onPressedAmerican: () => speakemptinesss3("en-US" ""),
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
- Noun: emptiness
1. The state of containing nothing
 
2. Having an empty stomach
 
3. An empty area or space (= void, vacancy, vacuum)
"the emptiness of outer space";
 
4. The quality of being valueless or futile (= vanity)
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

  final String _videoId = 'EFkyxzJtiv4';
  final double _startSeconds = 345;

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

  final String _videoId = 'Sbp_EeBk-As';
  final double _startSeconds = 1343;

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

  final String _videoId = 'yij2FpHYdwE';
  final double _startSeconds = 1445;

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

  final String _videoId = 'hUJpHUWKjiY';
  final double _startSeconds = 141;

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

  final String _videoId = 'aTMsfOcHiJg';
  final double _startSeconds = 435;

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

  final String _videoId = 'GsK5NaSCkho';
  final double _startSeconds = 427;

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

  final String _videoId = 'TdEyQiDDcH4';
  final double _startSeconds = 446;

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