import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfeel extends StatefulWidget {
  const EnglishEntryfeel({super.key});

  @override
  State<EnglishEntryfeel> createState() => _EnglishEntryfeelState();
}

class _EnglishEntryfeelState extends State<EnglishEntryfeel> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""feel""");
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
                      word: """feel""",
                      // alsoEnglishWord: "also: feel",
                      britshText: """IpaUK: /fiːl/""",
                      americanText: """IpaUS: /fiːl/""",
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
  final String keyword = "feel";
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
    await flutterTts.speak("""The bus ride made me feel sick.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Are you feeling comfortable?""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She sounded more confident than she felt.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I was feeling guilty.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""You'll feel better after a good night's sleep.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I feel sorry for him.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I feel bad about leaving you like this.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She felt betrayed.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""How are you feeling today?""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We all felt the same way.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I felt the need to explain.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I felt like a complete idiot.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I feel as if nobody cares.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I could feel the warm sun on my back.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She felt a sharp pain in her hand.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She could not feel her legs.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He felt a hand on his shoulder.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""You may feel a slight pressure in your chest.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He felt a hand touching his shoulder.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He felt the sweat running down his face.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""As soon as you get off the plane you feel the heat.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""They felt an impact as the bomb hit.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I felt him trembling.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""They all feel pressure from managers to make a sale.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""I definitely felt the importance of the occasion.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I felt their disapproval.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""This situation doesn't feel right.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""You need to go somewhere that feels safe.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""My mouth felt completely dry.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""It felt strange to be back in my old school.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The interview only took ten minutes, but it felt like hours.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""How does it feel to be alone all day?""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""It felt as though he had run a marathon.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The water feels warm.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Its skin feels really smooth.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""This wallet feels like leather.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Can you feel the bump on my head?""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Try to tell what this is just by feeling it.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Feel how rough this is.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We've always felt this was our home.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I felt (that) I had to apologize.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""This is something I feel strongly about.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""How do you feel about inviting the children too?""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I didn't know you felt like that about it.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She felt it her duty to tell the police.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I feel it a great honour to be chosen.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Why did you feel it necessary to do that?""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I felt it advisable to do nothing.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We all feel similarly about this issue.""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I still feel it was wrong to involve her.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I'm not sure how I feel about the new boss.""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """Many people think this is a good thing, but I feel differently.""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He feels the cold a lot.""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Cathy was really feeling the heat.""");
  }

  Future<void> speaksentence55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""We're all starting to feel the pressure at work.""");
  }

  Future<void> speaksentence56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""I was OK after my run, but I'll feel it tomorrow.""");
  }

  Future<void> speaksentence57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She felt her mother's death very deeply.""");
  }

  Future<void> speaksentence58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I felt their pain.""");
  }

  Future<void> speaksentence59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She felt in her bag and pulled out a pen.""");
  }

  Future<void> speaksentence60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""I had to feel about in the dark for the light switch.""");
  }

  Future<void> speaksentence61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He felt in his pockets for some money.""");
  }

  Future<void> speaksentence62(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""You can tell it's silk by the feel.""");
  }

  Future<void> speaksentence63(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She loved the feel of the sun on her skin.""");
  }

  Future<void> speaksentence64(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I had a feel of the material.""");
  }

  Future<void> speaksentence65(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""It's a big city but it has the feel of a small town.""");
  }

  Future<void> speaksentence66(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The film has a documentary feel to it.""");
  }

// With short examples define "feel", please follow LX instructions
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: بەرکەوتن، دەس‌لێدان،	ھەست، ھەست‌پێکردن، ئاگاکردن،	کەش
"""),
          const DefinitionKurdish(text: """١. (کردار) ھەبوونی ھەست و سۆز"""),
          SentencesRow(
            englishText: """The bus ride made me feel sick.""",
            kurdishText: """سواربوونی پاسەکە وایکرد ھەست بە ھێڵنج‌دان بکەم.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: """Are you feeling comfortable?""",
                    kurdishText: """ھەست بە ئاسوودەیی دەکەیت.""",
                    onPressedBritish: () => speaksentence2("en-GB"),
                    onPressedAmerican: () => speaksentence2("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """She sounded more confident than she felt.""",
                    kurdishText: """زیاتر لەوەی ھەستی دەکرد بەورە دیار بوو.""",
                    onPressedBritish: () => speaksentence3("en-GB"),
                    onPressedAmerican: () => speaksentence3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I was feeling guilty.""",
                    kurdishText: """ھەستم بە تاوان دەکرد.""",
                    onPressedBritish: () => speaksentence4("en-GB"),
                    onPressedAmerican: () => speaksentence4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """You'll feel better after a good night's sleep.""",
                    kurdishText:
                        """ھەست بە باشتر دەکەیت لە دوای خەوێکی باش بۆ شەوێک.""",
                    onPressedBritish: () => speaksentence5("en-GB"),
                    onPressedAmerican: () => speaksentence5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I feel sorry for him.""",
                    kurdishText: """ھەست بە داخ دەکەم بۆی.""",
                    onPressedBritish: () => speaksentence6("en-GB"),
                    onPressedAmerican: () => speaksentence6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I feel bad about leaving you like this.""",
                    kurdishText:
                        """ھەست بە خراپی دەکەن بەوەی بەم شێوەیە جێتدەھێڵم.""",
                    onPressedBritish: () => speaksentence7("en-GB"),
                    onPressedAmerican: () => speaksentence7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """She felt betrayed.""",
                    kurdishText: """ھەستی بە خیانەت‌لێکراوی دەکرد.""",
                    onPressedBritish: () => speaksentence8("en-GB"),
                    onPressedAmerican: () => speaksentence8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """How are you feeling today?""",
                    kurdishText: """ئەمڕۆ ھەست چۆنە؟""",
                    onPressedBritish: () => speaksentence9("en-GB"),
                    onPressedAmerican: () => speaksentence9("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """We all felt the same way.""",
                    kurdishText: """ھەموومان ھەستمان بە ھەمان شت دەکرد.""",
                    onPressedBritish: () => speaksentence10("en-GB"),
                    onPressedAmerican: () => speaksentence10("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I felt the need to explain.""",
                    kurdishText: """ھەستم بە پێویستی ڕوونکردنەوە کرد.""",
                    onPressedBritish: () => speaksentence11("en-GB"),
                    onPressedAmerican: () => speaksentence11("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I felt like a complete idiot.""",
                    kurdishText: """ھەستم بە شێتییەکی تەواو کرد.""",
                    onPressedBritish: () => speaksentence12("en-GB"),
                    onPressedAmerican: () => speaksentence12("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I feel as if nobody cares.""",
                    kurdishText: """وەھا ھەست دەکەم کەس گرنگ نییە لای.""",
                    onPressedBritish: () => speaksentence13("en-GB"),
                    onPressedAmerican: () => speaksentence13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٢. (کردار) ئاگاداربوون لە شتێک بەھۆی ئەوەی کە کاریگەری لەسەرت ھەیە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """I could feel the warm sun on my back.""",
            kurdishText: """ھەستم بۆ خۆرە گەرمەکە لەسەر پشتم دەکرد.""",
            onPressedBritish: () => speaksentence14("en-GB"),
            onPressedAmerican: () => speaksentence14("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: """She felt a sharp pain in her hand.""",
                    kurdishText: """ھەستی بە ئازارێکی زۆر دەکرد لە دەستیدا.""",
                    onPressedBritish: () => speaksentence15("en-GB"),
                    onPressedAmerican: () => speaksentence15("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """She could not feel her legs.""",
                    kurdishText: """نەیدەتوانی ھەست بە لاقەکانی بکات.""",
                    onPressedBritish: () => speaksentence16("en-GB"),
                    onPressedAmerican: () => speaksentence16("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """He felt a hand on his shoulder.""",
                    kurdishText: """ھەستی بە دەستێک لەسەر شانی کرد.""",
                    onPressedBritish: () => speaksentence17("en-GB"),
                    onPressedAmerican: () => speaksentence17("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """You may feel a slight pressure in your chest.""",
                    kurdishText:
                        """ڕەنگە ھەست بە کەمێک فشار لەسەر سنگت بکەیت.""",
                    onPressedBritish: () => speaksentence18("en-GB"),
                    onPressedAmerican: () => speaksentence18("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """He felt a hand touching his shoulder.""",
                    kurdishText: """ھەستی بە دەستێک کرد لە شانی دا.""",
                    onPressedBritish: () => speaksentence19("en-GB"),
                    onPressedAmerican: () => speaksentence19("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """He felt the sweat running down his face.""",
                    kurdishText:
                        """ھەستی بە ئارەقەکە کرد بە ڕووخساریدا دەھاتە خوارەوە.""",
                    onPressedBritish: () => speaksentence20("en-GB"),
                    onPressedAmerican: () => speaksentence20("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """As soon as you get off the plane you feel the heat.""",
                    kurdishText:
                        """ھەرکە لە فڕۆکەکە دێیتە خوارەوە ھەست بە گەرمییەکە دەکەیت.""",
                    onPressedBritish: () => speaksentence21("en-GB"),
                    onPressedAmerican: () => speaksentence21("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """They felt an impact as the bomb hit.""",
                    kurdishText:
                        """ھەستی بە کاریگەرییەکەی کرد کە بۆمبەکە کەوت.""",
                    onPressedBritish: () => speaksentence22("en-GB"),
                    onPressedAmerican: () => speaksentence22("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I felt him trembling.""",
                    kurdishText: """ھەستم بە لەرزینی کرد.""",
                    onPressedBritish: () => speaksentence23("en-GB"),
                    onPressedAmerican: () => speaksentence23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (کردار) ئاگاداربوون لە شتێک ئەگەرچی ناتوانیت بیبینیت، بیبیستیت، ھتد"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """They all feel pressure from managers to make a sale.""",
            kurdishText:
                """ھەموویان ھەست بە فشاری بەڕێوەبەران دەکەن بۆ فرۆشتن.""",
            onPressedBritish: () => speaksentence24("en-GB"),
            onPressedAmerican: () => speaksentence24("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I definitely felt the importance of the occasion.""",
            kurdishText: """بەدڵنیاییەوە ھەستم بە گرنگیی بۆنەکە کرد.""",
            onPressedBritish: () => speaksentence25("en-GB"),
            onPressedAmerican: () => speaksentence25("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I felt their disapproval.""",
            kurdishText: """ھەستم بە ناڕەزاییان کرد.""",
            onPressedBritish: () => speaksentence26("en-GB"),
            onPressedAmerican: () => speaksentence26("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (کردار) کە ھەست یان تێگەشتنێکی تایبەتت پێدەدات"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """This situation doesn't feel right.""",
            kurdishText: """ئەم دۆخە درووست دەرناکەوێت.""",
            onPressedBritish: () => speaksentence27("en-GB"),
            onPressedAmerican: () => speaksentence27("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        """You need to go somewhere that feels safe.""",
                    kurdishText: """دەبێت بچیتە شوێنێک کە سەلامەت دیارە.""",
                    onPressedBritish: () => speaksentence28("en-GB"),
                    onPressedAmerican: () => speaksentence28("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """My mouth felt completely dry.""",
                    kurdishText: """دەمم تەواو ھەستی بە وشکی دەکرد.""",
                    onPressedBritish: () => speaksentence29("en-GB"),
                    onPressedAmerican: () => speaksentence29("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """It felt strange to be back in my old school.""",
                    kurdishText:
                        """نامۆ دەردەکەوت کە گەڕابوومەوە قوتابخانە کۆنەکەم.""",
                    onPressedBritish: () => speaksentence30("en-GB"),
                    onPressedAmerican: () => speaksentence30("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The interview only took ten minutes, but it felt like hours.""",
                    kurdishText:
                        """چاوپێکەوتنەکە تەنھا دە خولەکی پێچوو، بەڵام وەک چەندین کاتژمێر دەرکەوت.""",
                    onPressedBritish: () => speaksentence31("en-GB"),
                    onPressedAmerican: () => speaksentence31("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """How does it feel to be alone all day?""",
                    kurdishText: """چۆنە کە ھەموو ڕۆژەکە تەنھا بیت؟""",
                    onPressedBritish: () => speaksentence32("en-GB"),
                    onPressedAmerican: () => speaksentence32("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """It felt as though he had run a marathon.""",
                    kurdishText:
                        """وەھا دەردەکەوت کە لە ماراسۆنێک ڕایکردبێت.""",
                    onPressedBritish: () => speaksentence33("en-GB"),
                    onPressedAmerican: () => speaksentence33("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٥. (کردار) ھەبوونی تایبەتمەندییەک کە پێی دەزانیت بە دەستلێدان"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """The water feels warm.""",
            kurdishText: """ئاوەکە گەرمە.""",
            onPressedBritish: () => speaksentence34("en-GB"),
            onPressedAmerican: () => speaksentence34("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Its skin feels really smooth.""",
            kurdishText: """پێستی زۆر نەرمە.""",
            onPressedBritish: () => speaksentence35("en-GB"),
            onPressedAmerican: () => speaksentence35("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """This wallet feels like leather.""",
            kurdishText: """ئەم جزدانە وادیارە چەرم بێت.""",
            onPressedBritish: () => speaksentence36("en-GB"),
            onPressedAmerican: () => speaksentence36("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٥. (کردار) دەستھێنان بەسەر شتێک بۆ ئەوەی بزانیت چۆنە"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """Can you feel the bump on my head?""",
            kurdishText: """دەتوانیت ھەست بە ھەڵئاوسانەکەی سەرم بکەیت؟""",
            onPressedBritish: () => speaksentence37("en-GB"),
            onPressedAmerican: () => speaksentence37("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Try to tell what this is just by feeling it.""",
            kurdishText: """ھەوڵ بدە بزانیت ئەمە چییە تەنھا بە دەستلێدانی.""",
            onPressedBritish: () => speaksentence38("en-GB"),
            onPressedAmerican: () => speaksentence38("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Feel how rough this is.""",
            kurdishText: """دەستی لێبدە بزانە ئەمە چەند زبرە.""",
            onPressedBritish: () => speaksentence39("en-GB"),
            onPressedAmerican: () => speaksentence39("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٧. (کردار) باوەڕکردن بە شتێک؛ ھەبوونی بۆچوونێکی دیاریکراو"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """We've always felt this was our home.""",
            kurdishText: """ھەمیشە وامان ھەستکردووە ئەمە نیشتیمانمانە.""",
            onPressedBritish: () => speaksentence40("en-GB"),
            onPressedAmerican: () => speaksentence40("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: """I felt (that) I had to apologize.""",
                    kurdishText:
                        """وام بیرکردەوە پێویست بوو داوای لێبوردن بکەم.""",
                    onPressedBritish: () => speaksentence41("en-GB"),
                    onPressedAmerican: () => speaksentence41("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """This is something I feel strongly about.""",
                    kurdishText: """ئەمە شتێکە بە بەھێزی باوەڕم پێیەتی.""",
                    onPressedBritish: () => speaksentence42("en-GB"),
                    onPressedAmerican: () => speaksentence42("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """How do you feel about inviting the children too?""",
                    kurdishText:
                        """بۆچوونت چییە سەبارەت بە بانگھێشتکردنی منداڵەکانیش.""",
                    onPressedBritish: () => speaksentence43("en-GB"),
                    onPressedAmerican: () => speaksentence43("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """I didn't know you felt like that about it.""",
                    kurdishText: """نەمدەزانی بەوشێوەیە بیرت لێ دەکردەوە.""",
                    onPressedBritish: () => speaksentence44("en-GB"),
                    onPressedAmerican: () => speaksentence44("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """She felt it her duty to tell the police.""",
                    kurdishText: """ھەستی دەکرد ئەرکییەتی بە پۆلیس بڵێت.""",
                    onPressedBritish: () => speaksentence45("en-GB"),
                    onPressedAmerican: () => speaksentence45("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I feel it a great honour to be chosen.""",
                    kurdishText:
                        """وەک شانازییەکی گەورە دەیبینم ھەڵبژێردرێم.""",
                    onPressedBritish: () => speaksentence46("en-GB"),
                    onPressedAmerican: () => speaksentence46("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Why did you feel it necessary to do that?""",
                    kurdishText: """بۆچی وەک پێویستت بیرت لێکردەوە بیکەیت؟""",
                    onPressedBritish: () => speaksentence47("en-GB"),
                    onPressedAmerican: () => speaksentence47("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I felt it advisable to do nothing.""",
                    kurdishText: """بە باشم زانی ھیچ نەکەم.""",
                    onPressedBritish: () => speaksentence48("en-GB"),
                    onPressedAmerican: () => speaksentence48("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """We all feel similarly about this issue.""",
                    kurdishText:
                        """ھەموومان وەک یەکدی بیردەکەینەوە لەسەر ئەم بابەتە.""",
                    onPressedBritish: () => speaksentence49("en-GB"),
                    onPressedAmerican: () => speaksentence49("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """I still feel it was wrong to involve her.""",
                    kurdishText: """ھێشتا پێموایە ھەڵە بوو ئەو تێوە بگلێنین.""",
                    onPressedBritish: () => speaksentence50("en-GB"),
                    onPressedAmerican: () => speaksentence50("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """I'm not sure how I feel about the new boss.""",
                    kurdishText:
                        """دڵنیا نیم چۆن سەرپەرشتیارە تازەکە دێتە بەرچاوم.""",
                    onPressedBritish: () => speaksentence51("en-GB"),
                    onPressedAmerican: () => speaksentence51("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Many people think this is a good thing, but I feel differently.""",
                    kurdishText:
                        """زۆر کەس وا بیردەکەنەوە ئەمە باشە، بەڵام من بۆچوونم جیاوازە.""",
                    onPressedBritish: () => speaksentence52("en-GB"),
                    onPressedAmerican: () => speaksentence52("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٨. (کردار) ئەزموونکردنی کاریگەری یان ئەنجامەکانی شتێک"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """He feels the cold a lot.""",
            kurdishText: """زۆر ھەست بە سەرماکە دەکات.""",
            onPressedBritish: () => speaksentence53("en-GB"),
            onPressedAmerican: () => speaksentence53("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Cathy was really feeling the heat.""",
            kurdishText: """کاسی بەڕاستی ھەستی بە گەرماکە دەگرت.""",
            onPressedBritish: () => speaksentence54("en-GB"),
            onPressedAmerican: () => speaksentence54("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """We're all starting to feel the pressure at work.""",
            kurdishText:
                """ھەموومان خەریکە دەست دەکەین بە کاریگەربوون بە فشاری سەر کار.""",
            onPressedBritish: () => speaksentence55("en-GB"),
            onPressedAmerican: () => speaksentence55("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I was OK after my run, but I'll feel it tomorrow.""",
            kurdishText:
                """کێشەم نەبوو لە دوای ڕاکردنەکەم، بەڵام سبەی ھەستی پێدەکەم.""",
            onPressedBritish: () => speaksentence56("en-GB"),
            onPressedAmerican: () => speaksentence56("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She felt her mother's death very deeply.""",
            kurdishText: """زۆر بە قووڵی کاریگەر بوو بە مەرگی دایکی.""",
            onPressedBritish: () => speaksentence57("en-GB"),
            onPressedAmerican: () => speaksentence57("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I felt their pain.""",
            kurdishText: """ھەست بە ئازاریان دەکەم.""",
            onPressedBritish: () => speaksentence58("en-GB"),
            onPressedAmerican: () => speaksentence58("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٩. (کردار) گەڕان بۆ شتیک بە دەستت، قاچت، ھتد"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """She felt in her bag and pulled out a pen.""",
            kurdishText: """لە جانتاکەی گەرا و پێنووسێکی دەرکرد.""",
            onPressedBritish: () => speaksentence59("en-GB"),
            onPressedAmerican: () => speaksentence59("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I had to feel about in the dark for the light switch.""",
            kurdishText: """پێویست بوو لە تاریکییەکەدا بۆ لایتەکە بگەڕێم.""",
            onPressedBritish: () => speaksentence60("en-GB"),
            onPressedAmerican: () => speaksentence60("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """He felt in his pockets for some money.""",
            kurdishText: """گیرفانەکانی گەڕا بۆ کەمێک پارە.""",
            onPressedBritish: () => speaksentence61("en-GB"),
            onPressedAmerican: () => speaksentence61("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """١٠. (ناو) ئەو ھەستەی ھەتە کاتێک دەست لە شتێک دەدەیت یان دەستت لێ دەدرێت"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """You can tell it's silk by the feel.""",
            kurdishText: """دەوانیت بڵێیت ئاوریشمە بە دەست لێدانی.""",
            onPressedBritish: () => speaksentence62("en-GB"),
            onPressedAmerican: () => speaksentence62("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She loved the feel of the sun on her skin.""",
            kurdishText: """حەزی بە بەرکەوتنی خۆرەکە بە پێستی دەکرد.""",
            onPressedBritish: () => speaksentence63("en-GB"),
            onPressedAmerican: () => speaksentence63("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """١١. (ناو) ھەستکردن یان دەستلێدان"""),
          const DividerSentences(),
          SentencesRow(
            englishText: """I had a feel of the material.""",
            kurdishText: """دەستم لە مادەکە دا.""",
            onPressedBritish: () => speaksentence64("en-GB"),
            onPressedAmerican: () => speaksentence64("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """١٢. (ناو) ئەو کەشەی کە شوێنێک، دۆخێک، ھتد درووستی دەکات"""),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """It's a big city but it has the feel of a small town.""",
            kurdishText: """شارێکی گەورەیە بەڵام کەشی شارۆچکەیەکی ھەیە.""",
            onPressedBritish: () => speaksentence65("en-GB"),
            onPressedAmerican: () => speaksentence65("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The film has a documentary feel to it.""",
            kurdishText: """فیلمەکە کەشێکی دۆکیومێنتاری ھەیە.""",
            onPressedBritish: () => speaksentence66("en-GB"),
            onPressedAmerican: () => speaksentence66("en-US"),
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
- Verb: feel (derived forms: felt, feels, feeling)
1. Undergo an emotional sensation or be in a particular state of mind (= experience)
"She felt resentful"; "He felt regret";
 
2. Come to believe on the basis of emotion, intuition, or indefinite grounds (= find)
"I feel that he doesn't like me";
 
3. Perceive by a physical sensation, e.g., coming from the skin or muscles (= sense)
"He felt the wind"; "She felt an object brushing her arm"; "He felt his flesh crawl"; "She felt the heat when she got out of the car";
 
4. Be conscious of a physical, mental, or emotional state
"My cold is gone--I feel fine today"; "She felt tired after the long hike"; "She felt sad after her loss"
 
5. Have a feeling or perception about oneself in reaction to someone's behaviour or attitude
"She felt small and insignificant"; "You make me feel naked"; "I made the students feel different about themselves"
 
6. Undergo passive experience of
"We felt the effects of inflation"; "her fingers felt their way through the string quartet"; "she felt his contempt of her"
 
7. Be felt or perceived in a certain way
"The ground feels shaky"; "The sheets feel soft"
 
8. Grope or feel in search of something
"He felt for his wallet"
 
9. Examine by touch (= finger)
"Feel this soft cloth!";
 
10. (medicine) examine (a body part) by palpation (= palpate)
"The runner felt her pulse";
 
11. Find by testing or cautious exploration
"He felt his way around the dark room"
 
12. Produce a certain impression
"It feels nice to be home again"
 
13. Pass one's hands over the sexual organs of
"He felt the girl in the movie theatre"

- Noun: feel (derived forms: feels)
1. An intuitive awareness
"he has a feel for animals"; "it's easy when you get the feel of it"
 
2. The general atmosphere of a place or situation and the effect that it has on people (= spirit, tone, feeling, flavor [US], flavour [Brit, Cdn], look, smell)
"the feel of the city excited him";
 
3. A property perceived by touch (= tactile property)
 
4. Manual stimulation of the genital area for sexual pleasure
"the girls hated it when he tried to sneak a feel"
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

const String _videoIdend = 'YkiR1KjIw7k';
const double _startSecondsend = 519;
const String _videoIdone = '_Z0ZQT0FttM';
const double _startSecondsone = 2142;
const String _videoIdtwo = 'XZVHmRvfDHM';
const double _startSecondstwo = 64;
const String _videoIdthree = 'zmEv7vTOQGE';
const double _startSecondsthree = 3447;
const String _videoIdfour = 'F-Z3qNeZyTU';
const double _startSecondsfour = 176;
const String _videoIdfive = 'hFZFjoX2cGg';
const double _startSecondsfive = 122;

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