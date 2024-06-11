import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydrive extends StatefulWidget {
  const EnglishEntrydrive({super.key});

  @override
  State<EnglishEntrydrive> createState() => _EnglishEntrydriveState();
}

class _EnglishEntrydriveState extends State<EnglishEntrydrive> {
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
  final String keyword = "drive";
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
    return const EntryTitle(word: "drive");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: drive");
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
    return const IPAofEnglish(text: "IpaUK: /draɪv/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrive(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("drive"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdrive("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /draɪv/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrive(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("drive"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdrive("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrives1(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't drive so fast!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives2(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you drive?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives3(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Shall we drive or go by train?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives4(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He drives a taxi."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives5(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was arrested for driving recklessly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives6(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Could you drive me home?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives7(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My mother drove us to the airport."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives8(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They were driven to an unknown place in the hills."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives9(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I don't want to take the bus. Will you drive me?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives10(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A stream of black cars drove by us."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives11(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A car drove up to us and a man got out."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives12(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What car do you drive?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives13(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You need a special licence to drive a heavy goods vehicle."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives14(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Hunger drove her to steal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives15(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Those kids are driving me crazy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives16(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The situation has become so desperate that many are driven to suicide."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives17(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The urge to survive drove them on."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives18(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You're driving yourself too hard."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives19(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The work is driven by the need for information sharing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives20(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The engine drives the wheels."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives21(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Water drives the turbines that produce electricity."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives22(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The enemy was driven back."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives23(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This is the main factor driving investment in the area."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives24(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A key factor driving growth was the launch of convenient products."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives25(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The knife had been driven through his heart."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives26(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He took a wooden peg and drove it into the ground."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives27(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They drove a tunnel through the solid rock."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives28(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "From the free kick, Owen drove the ball straight at the keeper."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives29(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Huge waves drove the yacht onto the rocks."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives30(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The waves drove against the shore."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives31(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's go for a drive."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives32(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's a three-hour drive to London."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives33(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was tired after the long drive home."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives34(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He uses a car with left-hand drive (= in which the driver sits in the seat on the left)."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives35(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He jumped in, put the car in drive and set off."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives36(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There were two cars parked in the drive."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives37(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The party spearheaded the drive for independence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives38(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The treatment should not affect your sex drive or fertility."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives39(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He'll do very well—he has tremendous drive."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives40(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Cole scored with a thunderous left-foot drive."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives41(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The computer has a built-in DVD drive."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives42(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives43(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives44(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives45(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives46(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives47(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives48(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives49(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives50(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives_6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives51(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives52(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives53(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives54(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives55(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives56(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives57(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives58(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives59(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives60(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrives61(String languageCode) async {
    // DOPSUM: CHANGE speakdrive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrives6100"); // DOPSUM: CHANGE TEXT
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
کوردی: گەڕان، سواری، سووڕانەوە (بە ماشێن و هتد)،	لێخوڕین، ئاژۆتن، ڕاندن، ڕانین،	لێخوڕین، ڕاپێچ‌دان، قوڵەپێچ (کردن، وڵاغ و هتد)،	ڕێگای نێوان ماڵ و شەقام،	لێهاتوویی، لێوەشاوەیی،	لێدان، پیاکێشان،	گوڕوتین، تاووتین، تامەزرۆیی،	(دەروون‌ناسی) هاندەر، پاڵنەر، ئاژۆک،	هێرش، پەلامار (توندوتیژ)،	حەولی ڕێکخراو یان تەواو، تێکۆشانی ڕێک‌وپێک،	ڕاگوێستنی هێز (بۆ دەزگاکان)، هێزی لێخوڕین، ڕادان، ڕاماڵین،	(کامپیوتێر) دڕایڤ
"""),
          const DefinitionKurdish(text: "١. (کردار) لێخوڕینی ئۆتۆمبێلێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Don't drive so fast!"),
                    ExampleSentenceKurdish(text: "‌هێندە خێرا لێمەخوڕە!"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "drive", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives1("en-US"),
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
                    ExampleSentenceEnglish(text: "Can you drive?"),
                    ExampleSentenceKurdish(text: "دەتوانیت شۆفێری بکەیت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives2("en-US"),
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
                            "Shall we drive (= go there by car) or go by train?"),
                    ExampleSentenceKurdish(
                        text: "شۆفێری بکەین یان بە ئۆتۆمبێل بچین؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives3("en-US"),
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
                        text: "He drives a taxi (= that is his job)."),
                    ExampleSentenceKurdish(text: "شۆفێری تاکسییە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives4("en-US"),
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
                        text: "He was arrested for driving recklessly."),
                    ExampleSentenceKurdish(
                        text: "دەستگیرکرا بۆ شۆفێری کردن بە هەڵەشانەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) بردنی کەسێک بۆ شوێنێک بە ئۆتۆمبێل، تەکسی، هتد"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Could you drive me home?"),
                    ExampleSentenceKurdish(text: "دەتوانیت بمگەیەنیتە ماڵەوە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives6("en-US"),
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
                        text: "My mother drove us to the airport."),
                    ExampleSentenceKurdish(
                        text: "دایکم گەیاندمانی بە فڕۆکەخانەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives7("en-US"),
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
                            "They were driven to an unknown place in the hills."),
                    ExampleSentenceKurdish(
                        text: "بردران بۆ شوێنێکی نەزانراو لە گردەکان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives8("en-US"),
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
                            "I don't want to take the bus. Will you drive me?"),
                    ExampleSentenceKurdish(
                        text: "نامەوێت بە پاسەکە بچم. دەتوانیت بمبەیت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) کە ئۆتۆمبێل بکەری ڕستەیە واتا کەسێک شۆفێری دەکات و ئۆتۆمبێلەکە بە ڕێگادا دەچێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "A stream of black cars drove by us."),
                    ExampleSentenceKurdish(
                        text: "زنجیرە ئۆتۆمبێلێک تێپەڕین بە لاماندا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives10("en-US"),
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
                        text: "A car drove up to us and a man got out."),
                    ExampleSentenceKurdish(
                        text: "ئۆتۆمبێلێک گەشتەوە پێمان و پیاوێک هاتە دەرەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) هەبوون یان بەکارهێنانی جۆرێکی تایبەتی ئۆتۆمبێل"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "What car do you drive?"),
                    ExampleSentenceKurdish(text: "چی ئۆتۆمبێلێکت هەیە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives12("en-US"),
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
                            "You need a special licence to drive a heavy goods vehicle."),
                    ExampleSentenceKurdish(
                        text:
                            "پێویستیت بە مۆڵەتی تایبەتە بۆ لێخوڕینی ئۆتۆمبێلی بارهەڵگری گەورە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) وا لە کەسێک بکەیت تووڕە، بێ‌ئۆقرە، هتد بێت، یان وا بکەیت شتێکی توندوتیژ بکەن"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Hunger drove her to steal."),
                    ExampleSentenceKurdish(text: "برسێتی وایلێکرد دزی بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives14("en-US"),
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
                        text: "Those kids are driving me crazy."),
                    ExampleSentenceKurdish(
                        text: "ئەو منداڵە خەریکە شێتم دەکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives15("en-US"),
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
                            "The situation has become so desperate that many are driven to suicide."),
                    ExampleSentenceKurdish(
                        text:
                            "دۆخەکە هێندە خراپ بووە کە زۆر کەس پەنا دەبەنە بەر خۆکوشتن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) واکردنی ئەوەی کەسێک بە شێوەیەکی دیاریکراو مامەڵە بکات"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The urge to survive drove them on."),
                    ExampleSentenceKurdish(
                        text: "ویستی مانەوە بەردەوامی پێدان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives17("en-US"),
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
                        text: "You're driving yourself too hard."),
                    ExampleSentenceKurdish(text: "زۆر پەستان دەخەیتە سەر خۆت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives18("en-US"),
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
                            "The work is driven by the need for information sharing."),
                    ExampleSentenceKurdish(
                        text:
                            "کارەکە بە پێویستی بەشکردنی زانیاری بەڕێوە دەچێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (کردار) دابینکردنی ئەو هێزەی کە وا دەکات ئامێرێک کاربکات"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The engine drives the wheels."),
                    ExampleSentenceKurdish(
                        text: "بزوێنەرەکە کار بە ویلەکان دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives20("en-US"),
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
                            "Water drives the turbines that produce electricity."),
                    ExampleSentenceKurdish(
                        text:
                            "ئاو تۆڕبینەکان دەخاتەکار کە کارەبا بەرهەمدەهێنن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (کردار) واکردنی ئەوەی کەسێک/شتێک بە ئاراستەیەکی دیاریکراودا بچێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The enemy was driven back."),
                    ExampleSentenceKurdish(text: "دووژمن پاشەکشەی پێکرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٩. (کردار) هەبوونی کاریگەری لەسەر شتێک یان وا بکەیت کە بەرەوپێش بچێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "This is the main factor driving investment in the area."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەمە هۆکاری سەرەکییە کە وەبەرهێنان لە ناوچەکە بەرەوپێش دەبات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives23("en-US"),
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
                            "A key factor driving growth was the launch of convenient products."),
                    ExampleSentenceKurdish(
                        text:
                            "هۆکارێکی سەرەکی کە گەشەکردن بەڕێوە دەبات پەرەپێدانی بەرهەمە کارخۆشەکان بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (کردار) زۆرکردن لە شتێک کە بە ئاراستەیەک یان شوێنێکی دیاریکراودا بچێت بە پاڵنانی، لێدانی، هتد"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The knife had been driven through his heart."),
                    ExampleSentenceKurdish(text: "چەقۆیەکە کرابوو بە دڵیدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives25("en-US"),
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
                            "He took a wooden peg and drove it into the ground."),
                    ExampleSentenceKurdish(
                        text: "مێخێکی دارینی برد و کوتای بە زەوییەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives26("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (کردار) کونکردنە شتێک بە بەکارهێنانی هیز"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They drove a tunnel through the solid rock."),
                    ExampleSentenceKurdish(
                        text: "تونێلێکیان لێدا بە گابەردە سەختەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives27("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٢. (کردار) لێدان لە تۆپێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "From the free kick, Owen drove the ball straight at the keeper."),
                    ExampleSentenceKurdish(
                        text:
                            "لە لێدانە ئازادەکەوە، ئۆون تۆپەکەی ڕێک بەرەو گۆڵپارێزەکە ئاراستە کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives28("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives28("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٣. (کردار) هەڵگرتنی شتێک لەگەڵ خۆت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Huge waves drove the yacht onto the rocks."),
                    ExampleSentenceKurdish(
                        text: "شەپۆلی گەورە یەختەکەیان کێشا بە بەردەکاندا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives29("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives29("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٤. (کردار) کەوتن یان جوڵانی بە خێرایی و هێزی زۆرەوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The waves drove against the shore."),
                    ExampleSentenceKurdish(
                        text: "شەپۆلەکان کێشایان بە کەنارەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives30("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives30("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٥. (ناو) گەشتێک لە ئۆتۆمبێلێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Let's go for a drive."),
                    ExampleSentenceKurdish(text: "با بچین بۆ فڕەیەک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives31("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives31("en-US"),
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
                        text: "It's a three-hour drive to London."),
                    ExampleSentenceKurdish(
                        text: "بۆ لەندەن سێ کاتژمێر شۆفێری کردنە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives32("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives32("en-US"),
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
                        text: "He was tired after the long drive home."),
                    ExampleSentenceKurdish(
                        text:
                            "ماندوو بوو لە دوای شۆفێریکردنی درێژخایەنی بۆ ماڵەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives33("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives33("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٧. (ناو) ئەو ئامێرانەی کە وزە لە بزوێنەرەو بۆ ویلەکان دەگوازنەوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He uses a car with left-hand drive (= in which the driver sits in the seat on the left)."),
                    ExampleSentenceKurdish(
                        text: "ئۆتۆمبێلێکی سوکان چەپ بەکاردێنێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives34("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives34("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٨. (ناو) لە ئۆتۆمبێلی گێڕ ئۆتۆماتیکدا ئەو کاتەیە کە گێڕەکە لەسەر پیتی D دەبێت و تێیدا گێڕەکان لەکاردان و بزوێنەرەکە دەکرێت هێز بنێرێت بۆ ویلەکان"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He jumped in, put the car in drive and set off."),
                    ExampleSentenceKurdish(
                        text:
                            "هەڵیکوتایە ناو، ئۆتۆمبێلەکەی خستە سەر و D و بۆی دەرچوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives35("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives35("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٩. (ناو) ڕێگایەک کە لەسەر ڕێگای گشتییەوە دێت بەرەو خانوویەک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "There were two cars parked in the drive."),
                    ExampleSentenceKurdish(
                        text: "دوو ئۆتۆمبێل لە درایڤەکە وەستابوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives36("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives36("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢٠. (ناو) هەوڵێکی ڕێکخراو لەلایەن گرووپێک کەسەوە بۆ کردنی شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The party spearheaded the drive for independence."),
                    ExampleSentenceKurdish(
                        text: "پارتەکە سەرمەشقی هەوڵەکانی سەربەخۆیی بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives37("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives37("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢١. (ناو) وزە و ورەی کەسێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The treatment should not affect your sex drive or fertility."),
                    ExampleSentenceKurdish(
                        text:
                            "چارەسەرەکە نابێت کاریگەری لەسەر حەزی سێکسی و توانای وەچەخستنەوەت هەبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives38("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives38("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٢. (ناو) حەزێکی زۆر بۆ کردنی شتێک یان بەدەستهێنانی شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He'll do very well—he has tremendous drive."),
                    ExampleSentenceKurdish(
                        text: "زۆر باش دەبێت ـ گوڕوتین مەزنی هەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives39("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives39("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢٣. (ناو) لێدانێکی بەهێز"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Cole scored with a thunderous left-foot drive."),
                    ExampleSentenceKurdish(
                        text:
                            "کۆوڵ بە لێدانێکی برووسکەئاسای قاچی چەپ گۆڵی تۆمارکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives40("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives40("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٤. (ناو) بەشێکی کۆمپیوتەر کە زانیاری هەڵدەگرێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The computer has a built-in DVD drive."),
                    ExampleSentenceKurdish(
                        text: "کۆمپیوتەرەکە درایڤێکی دی‌ڤی‌دی ناوەکی هەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrives41("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrives41("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives4200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives42("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives42("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives4300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives43("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives43("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives4400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives44("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives44("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives4500"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives45("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives45("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives4600"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives46("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives46("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives4700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives47("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives47("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives4800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives48("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives48("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives4900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives49("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives49("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives_6000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives50("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives50("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives5100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives51("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives51("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives5200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives52("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives52("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives5300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives53("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives53("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives5400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives54("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives54("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives5500"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives55("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives55("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives5600"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives56("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives56("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives5700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives57("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives57("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives5800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives58("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives58("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives5900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives59("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives59("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives6000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives60("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives60("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdrives6100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrives61("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrives61("en-US"),
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
- Verb: drive (Derived forms: driving, drives, driven, drove)
1. (driving) operate or control a vehicle
"drive a car or bus"; "Can you drive this four-wheel truck?"
 
2. (driving) travel or be transported in a vehicle (= motor)
"We drove to the university every morning";
 
3. Cause someone or something to move by driving
"She drove me to school every day"; "We drove the car to the garage"
 
4. Force into or from an action or state, either physically or metaphorically (= force, ram)
"He drives me mad";
 
5. To compel or force or urge relentlessly or exert coercive pressure on, or motivate strongly
 
6. Cause to move back by force or influence (= repel, repulse, force back, push back, beat back)
"drive the enemy";
 
7. Compel somebody to do something, often against his own will or judgment
"She finally drove him to change jobs"
 
8. Push, propel, or press with force
"Drive a nail into the wall"
 
9. Cause to move rapidly by striking or throwing with force
"drive the ball far out into the field"
 
10. Strive and make an effort to reach a goal (= tug, labor [US], labour [Brit, Cdn], push, plow [US], plough on [Brit], plow on [US], plough [Brit], sweat)
"She is driving away at her doctoral thesis";
 
11. Move into a desired direction of discourse (= get, aim)
"What are you driving at?";
 
12. Have certain properties when driven (= ride)
"My new truck drives well";
 
13. Work as a driver
"He drives a bread truck"; "She drives for the taxi company in Newark"
 
14. Move by being propelled by a force
"The car drove around the corner"
 
15. Urge forward
"drive the cows into the barn"
 
16. (driving) proceed along in a vehicle (= take)
"We drive the turnpike to work";
 
17. (golf) strike with a driver, as in teeing off
"drive a golf ball"
 
18. (sport) hit very hard, as by swinging a bat horizontally
"drive a ball"
 
19. (mining) excavate horizontally
"drive a tunnel"
 
20. Cause to function by supplying the force or power for or by controlling
"The amplifier drives the tube"; "steam drives the engines"; "this device drives the disks for the computer"
 
21. (hunting) search for game
"drive the forest"
 
22. (hunting) chase from cover into more open ground
"drive the game"

- Noun: drive (Derived forms: drives)
1. The act of applying force to propel something (= thrust, driving force)
"after reaching the desired velocity the drive is cut off";
 
2. A mechanism by which force or power is transmitted in a machine
"a variable speed drive permitted operation through a range of speeds"
 
3. A series of actions advancing a principle or tending toward a particular end (= campaign, cause, crusade, movement, effort)
"the team was ready for a drive toward the pennant";
 
4. A road leading up to a private house (= driveway, private road)
"they parked in the drive";
 
5. The trait of being highly motivated
"his drive and energy exhausted his co-workers"
 
6. Hitting a golf ball off of a tee with a driver (= driving)
"he sliced his drive out of bounds";
 
7. The act of driving a herd of animals overland
 
8. A journey in a vehicle (usually an automobile) (= ride)
"he took the family for a drive in his new car";
 
9. A physiological state corresponding to a strong need or desire
 
10. (computing) a device that writes data onto or reads data from a storage medium
 
11. A wide scenic road planted with trees (= parkway [N. Amer])
"the riverside drive offers many exciting scenic views";
 
12. (sport) a hard straight return (as in tennis or squash)
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
    videoId: 'https://youtu.be/ipQ1c6jTjIc?t=',
    startSeconds: 146,
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
    videoId: 'https://youtu.be/gFuEoxh5hd4?t=',
    startSeconds: 856,
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
    videoId: 'https://youtu.be/DkSMrI86NWk?t=',
    startSeconds: 12,
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
    videoId: 'https://youtu.be/DgAoy7XaFgk?t=',
    startSeconds: 72,
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
    videoId: 'https://youtu.be/dqcSk-EDrRo?t=',
    startSeconds: 486,
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
    videoId: 'https://youtu.be/aAByKcPJ5NQ?t=',
    startSeconds: 58,
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
    videoId: 'https://youtu.be/PgeLL3baD_Y?t=',
    startSeconds: 90,
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