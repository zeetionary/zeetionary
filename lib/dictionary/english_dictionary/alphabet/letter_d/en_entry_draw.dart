import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydraw extends StatefulWidget {
  const EnglishEntrydraw({super.key});

  @override
  State<EnglishEntrydraw> createState() => _EnglishEntrydrawState();
}

class _EnglishEntrydrawState extends State<EnglishEntrydraw> {
  @override
  void initState() {
    super.initState();
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
              const SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                automaticallyImplyLeading: false,
                bottom: TabBar(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    SentencesIconForTab(), // New tab for SentencesFromDatabase
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
              const SentencesFromDatabase(), // New SentencesFromDatabase tab
              const YoutubeVideos(),
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
  final String keyword = "draw";
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

class EntryAndIPA extends StatelessWidget {
  const EntryAndIPA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              // TitleOfEntryAlso(),
              IpaUK(),
              IpaUS(),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleOfEntry extends StatelessWidget {
  const TitleOfEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const EntryTitle(word: "draw");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: draw");
  }
}

class IpaUK extends StatelessWidget {
  const IpaUK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUK(),
        const IpaUKtext(),
      ],
    );
  }
}

class IpaUKtext extends StatelessWidget {
  const IpaUKtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUK: /drɔː/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdraw(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("draw"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdraw("en-GB"),
    );
  }
}

class IpaUS extends StatelessWidget {
  const IpaUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUS(),
        const IpaUStext(),
      ],
    );
  }
}

class IpaUStext extends StatelessWidget {
  const IpaUStext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUS: /drɔː/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdraw(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("draw"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdraw("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdraws1(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You draw beautifully."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws2(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She drew a house."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws3(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He drew a circle in the sand with a stick."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws4(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The report drew a grim picture of inefficiency and corruption."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws5(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Is it possible to draw inferences about the environment during the Bronze Age?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws6(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "What conclusions did you draw from the report?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws7(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We can draw some lessons for the future from this accident."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws8(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He attempted to draw a contrast between himself and the prime minister."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws9(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The site's boundaries were drawn by the Department of the Environment."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws10(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The plan has drawn a lot of criticism."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws11(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The announcement drew loud applause from the audience."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws12(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The reforms drew widespread support from voters."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws13(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Our aim is to draw attention to the plight of these children."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws14(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The exhibition drew great critical attention."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws15(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My eyes were drawn to the man in the corner."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws16(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The movie is drawing large audiences."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws17(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The events continue to draw huge crowds."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws18(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The course draws students from all over the country."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws19(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was increasingly drawn to the idea of making short films."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws20(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The train drew into the station."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws21(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Their car drew alongside ours."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws22(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her retirement is drawing near."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws23(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The meeting was drawing to a close."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws24(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He drew the cork out of the bottle."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws25(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I drew my chair up closer to the fire."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws26(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She drew me onto the balcony."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws27(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I tried to draw him aside."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws28(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The blinds were drawn."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws29(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was getting dark so I switched on the light and drew the curtains."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws30(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She drew back the curtains and let the sunlight in."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws31(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She drew a revolver on me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws32(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He came towards them with his sword drawn."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws33(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Spielberg refused to be drawn on his next movie."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws34(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We drew for partners."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws35(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He drew the winning ticket."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws36(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Names were drawn from a hat for the last few places."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws37(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Italy has been drawn against Spain in the first round."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws38(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("England and France drew 3–3."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws39(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("England drew with/against France."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws40(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I drew out £200."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws41(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Can I draw £80 out of my account?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws42(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The cheque was drawn on his personal account."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws43(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The device draws gas along the pipe."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws44(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She breathed deeply, drawing in the fresh mountain air."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws45(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The draw for the raffle takes place on Saturday."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws46(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I’m now going to call on the President to make the draw."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws47(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The match ended in a two-all draw."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws48(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He managed to hold Smith to a draw."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws49(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Liverpool have an away draw against Manchester United."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws50(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is currently one of the biggest draws on the Irish music scene."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws51(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She took one last draw from the cigarette."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws52(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws53(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws54(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws55(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws56(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws57(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws58(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws59(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws60(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws61(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws62(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws63(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws64(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws65(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws66(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws67(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws6700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws68(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws6800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws69(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws6900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws70(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws_7000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws71(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws7100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws72(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws7200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws73(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws7300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws74(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws7400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws75(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws7500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws76(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws7600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws77(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws7700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws78(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws7800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws79(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws7900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws80(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws8000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws81(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws8100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws82(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws8200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws83(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws8300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws84(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws8400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws85(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws8500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws86(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws8600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws87(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws8700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws88(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws8800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws89(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws8900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdraws90(String languageCode) async {
    // DOPSUM: CHANGE speakdraw
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdraws9000"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: کێشان، ڕاکێشان،	نێوکێشی، پشک‌هەڵخستن، پشک، بەخت‌تاقی‌کردنەوە،	(یاری یان پێشبڕکێ) بەرامبەر، بەقەدیەک، یەکسان، ئەنجامی بەرامبەر،	جێی‌سەرنج،	مژ(لێدان)،	بڕەپارەی وەرگیراو بە چەک
"""),
          const DefinitionKurdish(
              text: "١. (کردار) کێشانی وێنەیەکی شتێک بە پێنووس یان تەباشیر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "You draw beautifully."),
                    ExampleSentenceKurdish(text: "جوان وێنە دەکێشیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "draw", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "She drew a house."),
                    ExampleSentenceKurdish(text: "وێنەی خانوویەکی کێشا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He drew a circle in the sand with a stick."),
                    ExampleSentenceKurdish(
                        text: "بە چیلکەیەک بازنەیەکی لە خۆڵەکەدا کێشا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) باسکردنی شتێک بە وشە بە شێوەیەک کە وێنایەک درووست بکات"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The report drew a grim picture of inefficiency and corruption."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕاپۆرتەکە وێنەیەکی خەمناکی  لێنەهاتوویی و گەندەڵی پیشان دەدات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) هەبوونی بیرکردنەوەیەکی دیاریکراو لە دوای ئەوەی کە لێکۆڵینەوەت لە شتێک کردووە یان بیرت لێکردووەتەوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Is it possible to draw inferences about the environment during the Bronze Age?"),
                    ExampleSentenceKurdish(
                        text:
                            "دەکرێت ئەنجام‌گیری بکرێت سەبارەت بە ژینگە لە سەردەمی برۆنزدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "What conclusions did you draw from the report?"),
                    ExampleSentenceKurdish(
                        text: "چی ئەنجامێکت وەرگرت لە ڕاپۆرتەکەوە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "We can draw some lessons for the future from this accident."),
                    ExampleSentenceKurdish(
                        text:
                            "لەم وانەیەوە دەکرێت ژمارەیەک وانە بۆ داهاتوو وەربگرین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) پیشاندانی بەرواردی نێوان دوو شت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He attempted to draw a contrast between himself and the prime minister."),
                    ExampleSentenceKurdish(
                        text:
                            "هەوڵیدا بەراوردکارییەک لە نێوان خۆی و سەرۆک وەزیراندا بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The site's boundaries were drawn by the Department of the Environment."),
                    ExampleSentenceKurdish(
                        text:
                            "سنوورەکانی ناوچەکە لەلایەن وەزارەتی ژینگەوە کێشران."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) درووستکردنی/هێنانە بوونی کاردانەوەیەک یان وەڵامێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The plan has drawn a lot of criticism."),
                    ExampleSentenceKurdish(
                        text: "پلانەکە زۆر ڕەخنەی تووش بووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The announcement drew loud applause from the audience."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕاگەیاندنەکە چەپڵەڕێزانی بەرزی گوێگرانی لێکەوتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The reforms drew widespread support from voters."),
                    ExampleSentenceKurdish(
                        text:
                            "چاکسازییەکان پشتیوانی بەرفروانی دەنگدەرانی هەبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) ئاراستەکردنی سەرنجی کەسێک بۆ شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Our aim is to draw attention to the plight of these children."),
                    ExampleSentenceKurdish(
                        text:
                            "ئامانجمان ئەوەیە سەرنج بهێنینە سەر دۆخی خراپی ئەم منداڵانە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The exhibition drew great critical attention."),
                    ExampleSentenceKurdish(
                        text: "پێشانگاکە سەرنجی زۆری ڕەخنەگری ڕاکێشا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "My eyes were drawn to the man in the corner."),
                    ExampleSentenceKurdish(
                        text: "چاوم کەوتە سەر پیاوی سووچەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) سەرنجڕاکێشانی کەسێک یان حەزی لا درووست بکەیت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The movie is drawing large audiences."),
                    ExampleSentenceKurdish(
                        text: "فیلمەکە گوێگری زۆری کۆکردووەتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The events continue to draw huge crowds."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەم بۆنانە بەردەوامن لەوەی جەماوەری زۆر کۆبکەنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The course draws students from all over the country."),
                    ExampleSentenceKurdish(
                        text:
                            "کۆرسەکە خوێندکاری لە هەموو وڵاتەکەوە کۆکردووەتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He was increasingly drawn to the idea of making short films."),
                    ExampleSentenceKurdish(
                        text:
                            "زیاتر و زیاتر حەزی کرد بە بیرۆکەی بەرهەمهێنانی کورتە فیلم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) ڕۆشتن بەو ئاراستەیەی کە باسکراوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The train drew into the station."),
                    ExampleSentenceKurdish(
                        text: "شەمەندەفەرەکە هاتە ناو وێستگەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Their car drew alongside ours."),
                    ExampleSentenceKurdish(
                        text: "ئۆتۆمبێلەکەیان هاتە تەنیشت ئەوەی ئێمە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Her retirement is drawing near."),
                    ExampleSentenceKurdish(
                        text:
                            "(خوازراوی) خانەنشینبوونەکەی وادەردەکەوت نزیکتر ببێتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The meeting was drawing to a close."),
                    ExampleSentenceKurdish(
                        text: "(خوازراوی) چاوپێکەوتنەکە بەرەو کۆتایی دەچوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (کردار) جوڵاندنی شتێک/کەسێک بە ڕاکێشانی بە هێواشی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He drew the cork out of the bottle."),
                    ExampleSentenceKurdish(
                        text: "تۆپەوانەکەی لە بوتڵەکە دەرکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I drew my chair up closer to the fire."),
                    ExampleSentenceKurdish(
                        text: "کورسیەکەمم لە ئاگرەکە نزیکتر کردەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws25("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She drew me onto the balcony."),
                    ExampleSentenceKurdish(text: "ڕایکێشامە باڵکۆنەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws26("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I tried to draw him aside (= for example where I could talk to him privately)."),
                    ExampleSentenceKurdish(
                        text: "هەوڵمدا ڕایکێشمەوە کەنارەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws27("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (کردار) بەستن یان کردنەوەی پەردە، هتد"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The blinds were drawn."),
                    ExampleSentenceKurdish(text: "پەردەکان کرابوونەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws28("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws28("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "It was getting dark so I switched on the light and drew the curtains."),
                    ExampleSentenceKurdish(
                        text:
                            "تاریکی دەکرد بۆیە لایتەکەم کردەوە و پەردەکانم لادا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws29("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws29("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She drew back the curtains and let the sunlight in."),
                    ExampleSentenceKurdish(
                        text:
                            "پەردەکانی کردەوە و هێشتی هەتاوەکە بێتە ژوورەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws30("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws30("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (کردار) دەرهێنانی چەک یان شمشیر بۆ هێرشکردنە سەر کەسێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "She drew a revolver on me."),
                    ExampleSentenceKurdish(text: "شەشتیرێکی لێم ڕاکێشا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws31("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws31("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He came towards them with his sword drawn."),
                    ExampleSentenceKurdish(
                        text: "بەرەو ڕوویان هات بە شمشێر ڕاکێشراوی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws32("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws32("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٣. (کردار) وا لە کەسێک بکەیت زیاتر لەسەر شتێک بڵێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Spielberg refused to be drawn on his next movie."),
                    ExampleSentenceKurdish(
                        text:
                            "سپیڵبێرگ ڕەتیکردەوە بدركیندرێت لەسەر فیلمی داهاتووی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws33("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws33("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٤. (کردار) بڕیاردان لەسەر شتێک بە ڕاکێشانی کارد، بلیت، ژمارە بە شانس"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "We drew for partners."),
                    ExampleSentenceKurdish(text: "ڕاکێشانیان بۆ هاوبەش کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws34("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws34("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "He drew the winning ticket."),
                    ExampleSentenceKurdish(text: "کاردی بردنەوەی ڕاکێشا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws35("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws35("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Names were drawn from a hat for the last few places."),
                    ExampleSentenceKurdish(
                        text:
                            "ناوەکان لە کڵاوێک ڕاکێشران بۆ چەند شوێنی کەمی کۆتایی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws36("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws36("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                      text:
                          "Italy has been drawn against Spain in the first round.",
                      note: "Similar: Italy has been drawn to play Spain.",
                    ),
                    ExampleSentenceKurdish(
                        text:
                            "لە یەکەم قۆناغدا ئیتالیا دژ بە ئیسپانیا ڕاکێشراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws37("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws37("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٥. (کردار) تەواوبوونی یارییەک بەبێ بردنەوەی هیچ لایەک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "England and France drew 3–3."),
                    ExampleSentenceKurdish(
                        text: "ئینگلتەرە و فەرەنسا ٣-٣ یەکسان بوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws38("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws38("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                      text: "England drew with/against France.",
                      note: "Similar: England drew their game against France.",
                    ),
                    ExampleSentenceKurdish(
                        text: "ئینگلتەرە دژ بە فەرەنسا یەکسان بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws39("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws39("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٦. (کردار) ڕاکێشانی پارە لە بانکێک یان هەژمارێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "I drew out £200."),
                    ExampleSentenceKurdish(text: "٢٠٠ پاوەندم ڕاکێشا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws40("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws40("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Can I draw £80 out of my account?"),
                    ExampleSentenceKurdish(
                        text: "دەکرێت ٨٠ پاوەند لە هەژمارەکەم ڕابکێشم؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws41("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws41("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The cheque was drawn on his personal account."),
                    ExampleSentenceKurdish(
                        text: "چەکەکە لە هەژماری کەسیی ڕاکێشرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws42("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws42("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٧. (کردار) دەرهێنانی گاس یان شلە لە شوێنێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The device draws gas along the pipe."),
                    ExampleSentenceKurdish(
                        text: "ئامێرەکە گاس بە بۆرییەکەدا ڕادەکێشێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws43("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws43("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٨. (کردار) هەڵمژینی دووکەڵ یان هەوا"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She breathed deeply, drawing in the fresh mountain air."),
                    ExampleSentenceKurdish(
                        text:
                            "بە قووڵی هەناسەی دا و هەوا پاکەکەی چیاکانی هەڵمژی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws44("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws44("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٩. (ناو) ئەوەی کە شتێک هەڵبژێریت، بۆ نموونە براوی خەڵاتێک یان ئەو تیمانەی کە دژ بە یەکدی یاری دەکەن لە پاڵەوانێتییەکدا؛ پاڵەوانێتییەک کە بەژداربووەکانی بەم شێوەیە هەڵدەبژێردرێت"),
          // const DividerSentences(),
          const AlsoEnglishckb(word: "ھەروەھا: drawing"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The draw for the raffle takes place on Saturday."),
                    ExampleSentenceKurdish(
                        text: "هەڵبژاردنی تیروپشکەکە ڕۆژی یەکشەممە دەبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws45("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws45("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I’m now going to call on the President to make the draw."),
                    ExampleSentenceKurdish(
                        text: "ئێستاش داوا لە سەرۆک دەکەم هەڵبژاردنەکە بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws46("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws46("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٠. (ناو) یارییەک کە بە یەکسانی تەواو دەبێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The match ended in a two-all draw."),
                    ExampleSentenceKurdish(
                        text:
                            "یارییەکە کۆتایی هات بە دوو (خاڵ/گۆڵ) بۆ هەر لایەک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws47("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws47("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He managed to hold Smith to a draw (= to stop him from winning when he seemed likely to do so)."),
                    ExampleSentenceKurdish(
                        text: "توانی یەکسان بێت لەگەڵ سمیس."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws48("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws48("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢١. (ناو) یارییەکی وەرزشی یان ژمارەیەک یاری کە تیمەکان یان یاریزانەکان بە ڕاکێشان هەڵدەبژێردرێن"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Liverpool have an away draw against Manchester United."),
                    ExampleSentenceKurdish(
                        text:
                            "لیڤەرپوول یارییەکی دەرەوەی یاریگای خۆی لەگەڵ مانچیستەر یونایتید هەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws49("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws49("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٢. (ناو) شتێک یان کەسێک کە سەرنجی زۆر کەس ڕادەکێشێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She is currently one of the biggest draws on the Irish music scene."),
                    ExampleSentenceKurdish(
                        text:
                            "لە ئێستادا یەکێک لە گەورەترین ناوەکانی میوزیکی ئێرلەندی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws50("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws50("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢٣. (ناو) قومدان لە جگەرە"),
          // const DividerSentences(),
          const AlsoEnglishckb(word: "ھەروەھا: drag"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She took one last draw from the cigarette."),
                    ExampleSentenceKurdish(
                        text: "یەک قومی کۆتایی لە جگەرەکە دا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdraws51("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdraws51("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws5200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws52("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws52("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws5300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws53("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws53("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws5400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws54("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws54("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws5500"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws55("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws55("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws5600"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws56("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws56("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws5700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws57("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws57("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws5800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws58("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws58("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws5900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws59("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws59("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws6000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws60("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws60("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws6100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws61("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws61("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws6200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws62("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws62("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws6300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws63("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws63("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws6400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws65("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws65("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws6600"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws66("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws66("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws6700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws67("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws67("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws6800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws68("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws68("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws6900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws69("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws69("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws7000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws70("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws70("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws7100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws71("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws71("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws7200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws72("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws72("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws7300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws73("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws73("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws7400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws75("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws75("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws7700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws76("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws76("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws7700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws77("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws77("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws7800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws79("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws79("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws8000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws80("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws80("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws8100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws81("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws81("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws8200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws82("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws82("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws8300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws83("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws83("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdraws8400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdraws84("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdraws84("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

// DOPSUM: ENGLISH MEANING

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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    // Update the state to reflect that TTS is in progress
    setState(() {
      isSpeaking = true;
    });
  }

// Function to stop TTS
  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: draw (Derived forms: drawing, drew, draws, drawn)
1. Make a mark or lines on a surface (= trace, line, describe, delineate)
"draw a line";
 
2. Cause to move by pulling (= pull)
"draw a wagon";
 
3. Get or derive (= reap)
"He drew great benefits from his membership in the association";
 
4. Make, formulate, or derive in the mind (= make)
"I draw a line here"; "draw a conclusion"; "draw parallels";
 
5. Bring, take, or pull out of a container or from under a cover (= pull, pull out, get out, take out)
"draw a weapon";
 
6. (art) represent by making a drawing of, as with a pencil, chalk, etc. on a surface
"She drew an elephant"; "Draw me a horse"
 
7. Take liquid out of a container or well (= take out)
"She drew water from the barrel";
 
8. Give a description of (= describe, depict)
"He drew an elaborate plan of attack";
 
9. Select or take in from a given group or region
 
10. Elicit responses, such as objections, criticism, applause, etc.
"The President's comments drew sharp criticism from the Republicans"; "The comedian drew a lot of laughter"
 
11. Suck in or take (air) (= puff, drag)
"draw a deep breath"; "draw on a cigarette";
 
12. Move or go steadily or gradually
"The ship drew near the shore"
 
13. Remove (a commodity) from (a supply source) (= withdraw, take out, draw off)
"She drew £2,000 from the account"; "The doctors drew medical supplies from the hospital's emergency bank";
 
14. Choose at random (= cast)
"draw a card";
 
15. (baseball) earn or achieve a base by being walked by the pitcher (= get)
"He drew a base on balls";
 
16. Bring or lead someone to a certain action or condition
 
17. To obtain a liquid from somewhere
"The nurse drew blood"
 
18. Write a legal document or paper
 
19. Engage in drawing
"He spent the day drawing in the garden"
 
20. Move or pull so as to cover or uncover something
"draw the shades"; "draw the curtains"
 
21. Allow a draft
"This chimney draws very well"
 
22. Require a specified depth for floating
"This boat draws 70 inches"
 
23. Pull (a person) apart with four horses tied to his extremities, so as to execute him (= quarter, draw and quarter)
 
24. Cause to move in a certain direction by exerting a force upon, either physically or in an abstract sense (= pull)
"A declining dollar drew down the export figures for the last quarter";
 
25. Take in, also metaphorically (= absorb, suck, imbibe, soak up, sop up, suck up, take in, take up)
"She drew strength from the minister's words";
 
26. Direct toward itself or oneself by means of some psychological power or physical attributes (= attract, pull, pull in, draw in)
"The store owner was happy that the ad drew in many new customers";
 
27. Thread on or as if on a string (= string, thread)
"the child drew glass beads on a string";
 
28. Stretch back a bowstring (on an archer's bow) (= pull back)
"The archers were drawing their bows";
 
29. Pass over, across, or through (= guide, run, pass)
"He drew her hair through his fingers";
 
30. Finish a game with an equal number of points, goals, etc. (= tie)
"The teams drew a tie";
 
31. Shrink
"The material drew after it was washed in hot water"
 
32. Reduce the diameter of (a wire or metal rod) by pulling it through a die
"draw wire"
 
33. Steep; pass through a strainer
"draw pulp from the fruit"
 
34. Remove the entrails of (= disembowel, eviscerate, embowel [archaic])
"draw a chicken";
 
35. Flatten, stretch, or mould metal or glass, by rolling or by pulling it through a die or by stretching
"draw steel"
 
36. Cause to localize at one point
"Draw blood and pus"

- Noun: draw (Derived forms: draws)
1. A gully that is shallower than a ravine
 
2. An entertainer who attracts large audiences (= drawing card, attraction, attractor, attracter)
"he was the biggest draw they had";
 
3. The finish of a contest in which the score is tied and the winner is undecided (= standoff, tie)
"the game ended in a draw";
 
4. Anything (straws or pebbles etc.) taken or chosen at random (= lot)
"the luck of the draw";
 
5. A playing card or cards dealt or taken from the pack
"he got a pair of kings in the draw"
 
6. A golf shot that curves to the left for a right-handed golfer (= hook, hooking)
"he took lessons to cure his draw";
 
7. (American football) the quarterback moves back as if to pass and then hands the ball to the fullback who is running toward the line of scrimmage (= draw play)
 
8. Poker in which a player can discard cards and receive substitutes from the dealer (= draw poker)
"he played only draw and stud";
 
9. The act of drawing or hauling something (= haul, haulage)
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/_spuxXnul0U?t=',
    startSeconds: 289,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/ozsgl_sLnHQ?t=',
    startSeconds: 1998,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/EdQxtsTwHHs?t=',
    startSeconds: 10,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/omcNGrnt7Sg?t=',
    startSeconds: 1274,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/62opaXeyWZY?t=',
    startSeconds: 1411,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/QLq6GEiHqR8?t=',
    startSeconds: 152,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/7j5ul4XBjAI?t=',
    startSeconds: 116,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return YouTubeScroller(
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
    );
  }
}

// end WORD_WEB