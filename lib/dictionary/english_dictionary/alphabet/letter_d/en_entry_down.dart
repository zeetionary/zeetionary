import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/dictionary/database_sentences.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydown extends StatefulWidget {
  const EnglishEntrydown({super.key});

  @override
  State<EnglishEntrydown> createState() => _EnglishEntrydownState();
}

class _EnglishEntrydownState extends State<EnglishEntrydown> {
  @override
  void initState() {
    super.initState();
    _initDatabase();
  }

  Future<void> _initDatabase() async {
    await SentenceDatabase.instance.initialize();
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
  final String keyword = "down";
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
                                    child: DatabaseUtils.instance.highlightText(
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
    return const EntryTitle(word: "down");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: down");
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
    return const IPAofEnglish(text: "IpaUK: /daʊn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdown(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("down"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdown("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /daʊn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdown(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("down"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdown("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdowns1(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She jumped down off the chair."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns2(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He looked down at her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns3(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We watched as the sun went down."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns4(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She bent down to pick up her glove."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns5(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Mary's not down yet."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns6(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He had to go and lie down for a while."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns7(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Prices have gone down recently."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns8(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We're already two goals down."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns9(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Turn the music down!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns10(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The class settled down and she began the lesson."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns11(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Did you get that down?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns12(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I always write everything down."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns13(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Have you got me down for the trip?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns14(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I can't do 3 down."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns15(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They flew down to Texas."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns16(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Houses are more expensive down south."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns17(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We've got people from the head office coming down."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns18(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her daughter's down from Oxford for the holidays."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns19(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Everyone will be there, from the Principal down."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns20(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "At the end of the day we were £20 down."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns21(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I gave him £1,000 down, and paid the rest in instalments."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns22(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Well, I've seen six apartments so far. That's six down and four to go!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns23(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I saw him down at the shops."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns24(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The stone rolled down the hill."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns25(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Tears ran down her face."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns26(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her hair hung down her back to her waist."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns27(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He lives just down the street."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns28(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Go down the road till you reach the traffic lights."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns29(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There's a bridge a mile down the river from here."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns30(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These myths have come down to us from prehistoric times."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns31(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We downed our coffees and left."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns32(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Storms downed trees and power lines."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns33(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The down escalator isn't working."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns34(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Click the down arrow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns35(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I feel a bit down today."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns36(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You look a bit down. Is something the matter?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns37(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Don't let the weather get you down."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns38(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The system was down all morning."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns39(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She bought a down jacket to stay warm in winter."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns40(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We all have our downs from time to time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns41(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her career has had a few downs this year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns42(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns43(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns44(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns45(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns46(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns47(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns48(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns49(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns50(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns_6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns51(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns52(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns53(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns54(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns55(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns56(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns57(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns58(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns59(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns60(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns61(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns62(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns63(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns64(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns65(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns66(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns67(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns6700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns68(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns6800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns69(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns6900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns70(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns_7000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns71(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns7100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns72(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns7200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns73(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns7300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns74(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns7400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns75(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns7500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns76(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns7600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns77(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns7700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns78(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns7800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns79(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns7900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns80(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns8000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns81(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns8100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns82(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns8200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns83(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns8300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns84(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns8400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns85(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns8500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns86(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns8600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns87(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns8700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns88(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns8800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns89(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns8900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdowns90(String languageCode) async {
    // DOPSUM: CHANGE speakdown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdowns9000"); // DOPSUM: CHANGE TEXT
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
کوردی: خوارەوە، بۆ خوارەوە، بەرەو خوارەوە، دەمەوژێر، دەمەوخوار، ڕوولە خوارەوە، داـ، ڕۆ(وەکوو ڕۆچوون و…)، لەژێر، ژێر، لەسەر عەرز، بەرەو عەرز،	پەنچەر، کەم‌با،	دواوە، پشتەوە،	خواروو، خوارەوە، لای خوار،	تەواوکراو، جێبەجێ‌کراو، کراو،	ناڕەحەت، خەمبار، دڵتەنگ، مات،	نەخۆش، ناساز، نەرمەپەڕ، وردەپەڕ، پەڕی نەرم، کوڵکە، گەندەموو، تووکی نەرم،	هاتنەخوارێ، داکەوتن، کڵۆڵی، ڕۆژەڕەشی، نەهاتی، مەینەتی، نەگبەتی
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵکار) لە خوارەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She jumped down off the chair."),
                    ExampleSentenceKurdish(
                        text: "لە کورسییەکە بازی دایە خوارەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "down", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns1("en-US"),
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
                    ExampleSentenceEnglish(text: "He looked down at her."),
                    ExampleSentenceKurdish(text: "سەیری خوارەوەی کرد بۆ لای."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns2("en-US"),
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
                        text: "We watched as the sun went down."),
                    ExampleSentenceKurdish(text: "سەیرمان کرد کە خۆرئاوا بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns3("en-US"),
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
                        text: "She bent down to pick up her glove."),
                    ExampleSentenceKurdish(
                        text: "چەمایەوە بۆ هەڵگرتنەوەی دەستکێشەکەی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns4("en-US"),
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
                        text: "Mary's not down yet (= she is still upstairs)."),
                    ExampleSentenceKurdish(
                        text: "ماری هێشتا نەهاتووەتە خوارەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵکار) لە هەستانەوە بۆ دابەزین"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He had to go and lie down for a while."),
                    ExampleSentenceKurdish(
                        text: "پێویست بوو بچێت و کەمێک ڕابکشێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ھاوەڵکار) بۆ ئاستێکی کەمتر"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Prices have gone down recently."),
                    ExampleSentenceKurdish(text: "نرخەکان تازەگی دابەزیون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns7("en-US"),
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
                            "We're already two goals down (= the other team has two goals more)."),
                    ExampleSentenceKurdish(
                        text: "پێشوەختە دوو گۆڵ لە دواوە بووین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ھاوەڵکار) بۆ وتنی ئەوەی بڕ یان هێزی شتێک کەمترە، یان ئەوەی چالاکی کەمتر هەیە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Turn the music down!"),
                    ExampleSentenceKurdish(text: "میوزیکەکە کز بکە!"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns9("en-US"),
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
                            "The class settled down and she began the lesson."),
                    ExampleSentenceKurdish(
                        text: "پۆلەکە دانیشتن و دەستی بە وانەکە کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ھاوەڵکار) لەسەر کاغەز؛ لە لیستێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Did you get that down?"),
                    ExampleSentenceKurdish(text: "ئەوەت نووسی؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns11("en-US"),
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
                        text: "I always write everything down."),
                    ExampleSentenceKurdish(text: "هەمیشە هەموو شتێک دەنووسم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns12("en-US"),
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
                        text: "Have you got me down for the trip?"),
                    ExampleSentenceKurdish(text: "بۆ گەشتەکە ناومت نووسیوە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ھاوەڵکار) خوێندنەوە لە سەرەوە بۆ خوارەوە، نەک لە لایەک بۆ لایەکەی دیکە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "I can't do 3 down."),
                    ExampleSentenceKurdish(
                        text: "ناتوانم سێیەم بۆ خوارەوە شیکار بکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ھاوەڵکار) بەرەو باشوور یان لە باشووری وڵاتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "They flew down to Texas."),
                    ExampleSentenceKurdish(
                        text: "بەرەو باشوور بۆ تێکساس فڕین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns15("en-US"),
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
                        text: "Houses are more expensive down south."),
                    ExampleSentenceKurdish(text: "خانوو گرانترە لە باشوور."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (ھاوەڵکار) لە شوێنێک گرنگەوە بۆ یەکێک کە بچووکترە یان کەمتر گرنگە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "We've got people from the head office coming down."),
                    ExampleSentenceKurdish(
                        text:
                            "کەسانی ئۆفیسی سەرەکی سەردانمان دەکەن (لە لقێکی لاوەکی)."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns17("en-US"),
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
                            "Her daughter's down from Oxford (= Oxford University) for the holidays."),
                    ExampleSentenceKurdish(
                        text: "کچەکەی لە ئۆکسفۆردەوە گەڕاوەتەوە بۆ پشووەکان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٩. (ھاوەڵکار) بۆ پیشاندانی سنووری مەودایەک یان ڕیزبەندییەک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Everyone will be there, from the Principal down."),
                    ExampleSentenceKurdish(
                        text:
                            "هەمووان لەوێ دەبن، لە بەڕێوەبەرەکەوە بۆ ئەوانی دیکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٠. (ھاوەڵکار) لەدەستدانی بڕە پارەیەک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "At the end of the day we were £20 down."),
                    ExampleSentenceKurdish(
                        text: "لە کۆتایی ڕۆژەکەدا ٢٠ پاوەندمان لەدەستدابوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (ھاوەڵکار) پێدانی بڕە پارەیەک وەک پێشەکی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I gave him £1,000 down, and paid the rest in instalments."),
                    ExampleSentenceKurdish(
                        text:
                            "١٠٠٠ پاوەندم وەک پێشەکی دا و ئەوەی دیکەم دواتر لە کاتی دانانی دا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (ھاوەڵکار) بۆ گوتنی ئەوەی چەندی ئەو شتانەت کردووە کە لە لیستێک داتناون"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Well, I've seen six apartments so far. That's six down and four to go!"),
                    ExampleSentenceKurdish(
                        text:
                            "باشە، تا ئێستا شەش دەستەژوورم دیوە. واتە شەش تەواو بووە و چوار ماوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٣. (ھاوەڵکار) لە شوێنێکی ناوخۆیی یان چوون بۆی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I saw him down at the shops."),
                    ExampleSentenceKurdish(text: "لە دووکانەکان بینیم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٤. (ئامراز) بۆ خوارەوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The stone rolled down the hill."),
                    ExampleSentenceKurdish(
                        text: "بەردەکە بە گردەکەدا غلۆربوویەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns24("en-US"),
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
                    ExampleSentenceEnglish(text: "Tears ran down her face."),
                    ExampleSentenceKurdish(
                        text: "فرمێسک بە چاویدا هاتە خوارەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns25("en-US"),
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
                        text: "Her hair hung down her back to her waist."),
                    ExampleSentenceKurdish(
                        text: "قژی شۆڕبووبوویەوە بە پشتیدا تا کەمەری."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns26("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٥. (ئامراز) بۆ ئەو ئاراستەیەی کە سەیری دەکەیت"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He lives just down the street."),
                    ExampleSentenceKurdish(
                        text: "کەمێک لە خوارەوەی شەقامەکەی دەژی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns27("en-US"),
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
                            "Go down the road till you reach the traffic lights."),
                    ExampleSentenceKurdish(
                        text:
                            "بە ڕێگاکاندا بچۆرە خوارەوە تاوەکو دەگەیت بە ترافیک لایتەکان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns28("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns28("en-US"),
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
                            "There's a bridge a mile down the river from here."),
                    ExampleSentenceKurdish(
                        text:
                            "پردێک هەیە یەک میل لێرەوە لە خوارەوەی ڕووبارەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns29("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns29("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٦. (ئامراز) تەواوی ماوەیەک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "These myths have come down to us from prehistoric times."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەم ئەفسانانە بۆمان مونەتەوە لە سەردەمانی پێش مێژووەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns30("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns30("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٧. (کردار) تەواوکردنی خواردنەوەیەک یان خواردنی شتێک بە خێرایی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "We downed our coffees and left."),
                    ExampleSentenceKurdish(
                        text: "قاوەکانمان هەڵقوڕاند و ڕۆشتین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns31("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns31("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٨. (کردار) خستنی کەسێک/شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Storms downed trees and power lines."),
                    ExampleSentenceKurdish(
                        text: "زریانەکان دارەکان و هێڵەکانی کارەبایان کەواند."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns32("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns32("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٩. (هاوەڵناو) بەرەو خوارەوە یان دوور لە شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The down escalator isn't working."),
                    ExampleSentenceKurdish(
                        text: "پلیکانە کارەباییەکانی دابەزین کار ناکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns33("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns33("en-US"),
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
                    ExampleSentenceEnglish(text: "Click the down arrow."),
                    ExampleSentenceKurdish(text: "گرتە لە تیرەی خوارەوە بکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns34("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns34("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢٠. (هاوەڵناو) دەڵتەنگ و خەمبار"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "I feel a bit down today."),
                    ExampleSentenceKurdish(
                        text: "ئەمڕۆ کەمێک هەست بە خەمباری دەکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns35("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns35("en-US"),
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
                        text: "You look a bit down. Is something the matter?"),
                    ExampleSentenceKurdish(
                        text: "کەساس دیاریت. هیچ شت کێشەیە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns36("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns36("en-US"),
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
                        text: "Don't let the weather get you down."),
                    ExampleSentenceKurdish(
                        text: "مەهێڵە کەشوهەوا دڵتەنگت بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns37("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns37("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢١. (هاوەڵناو) کە کارناکات"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The system was down all morning."),
                    ExampleSentenceKurdish(
                        text: "سیستەمەکە تەواوی بەیانییەکە کاری نەدەکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns38("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns38("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٢. (ناو) پەڕی نەرمی باڵندە؛ مووی نەرم"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She bought a down jacket to stay warm in winter."),
                    ExampleSentenceKurdish(
                        text:
                            "چاکەتێکی نەرمەپەڕی کڕی بۆ مانەوە بە گەرمی لە زستاندا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns39("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns39("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢٣. (ناو) ماوەیەک لە هەستکردن بە نیگەرانی یان کە شتەکان باش نین"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "We all have our downs from time to time."),
                    ExampleSentenceKurdish(
                        text: "هەموومان ڕۆژەڕەشی خۆمان هەیە ماوە ماوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns40("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns40("en-US"),
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
                        text: "Her career has had a few downs this year."),
                    ExampleSentenceKurdish(
                        text: "کارەکەی ژمارەیەک نەهاتی هەبوو ئەمساڵ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdowns41("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdowns41("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns4200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns42("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns42("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns4300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns43("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns43("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns4400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns44("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns44("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns4500"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns45("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns45("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns4600"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns46("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns46("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns4700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns47("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns47("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns4800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns48("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns48("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns4900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns49("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns49("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns_6000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns50("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns50("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns5100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns51("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns51("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns5200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns52("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns52("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns5300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns53("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns53("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns5400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns54("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns54("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns5500"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns55("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns55("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns5600"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns56("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns56("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns5700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns57("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns57("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns5800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns58("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns58("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns5900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns59("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns59("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns6000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns60("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns60("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns6100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns61("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns61("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns6200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns62("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns62("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns6300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns63("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns63("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns6400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns65("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns65("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns6600"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns66("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns66("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns6700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns67("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns67("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns6800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns68("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns68("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns6900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns69("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns69("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns7000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns70("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns70("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns7100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns71("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns71("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns7200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns72("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns72("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns7300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns73("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns73("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns7400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns75("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns75("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns7700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns76("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns76("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns7700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns77("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns77("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns7800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns79("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns79("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns8000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns80("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns80("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns8100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns81("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns81("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns8200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns82("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns82("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns8300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns83("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns83("en-US"),
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
          //           ExampleSentenceEnglish(text: "speakdowns8400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdowns84("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdowns84("en-US"),
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
- Adverb: down
1. Spatially or metaphorically from a higher to a lower level or position (= downwards, downward, downwardly)
"don't fall down"; "rode the lift up and skied down";

2. Away from a more central or a more northerly place
"was sent down to work at the regional office"; "worked down on the farm"; "came down for the wedding"; "flew down to Florida"
 
3. Paid in cash at time of purchase
"put ten dollars down on the necklace"
 
4. From an earlier time
"the story was passed down from father to son"
 
5. To a lower intensity
"he slowly phased down the light until the stage was completely black"
 
6. In an inactive or inoperative state
"the factory went down during the strike"; "the computer went down again"

- Adjective: down 
1. Being or moving lower in position or less in some value
"lay face down"; "the moon is down"; "our team is down by a run"; "down by a pawn"; "the stock market is down today"
 
2. Extending or moving from a higher to a lower place (= downward)
"the down staircase";
 
3. Becoming progressively lower
"the down trend in the real estate market"
 
4. (baseball) being put out in a game of baseball
"two down in the bottom of the ninth"
 
5. Understood perfectly (= down pat, mastered)
"had his algebra problems down";
 
6. Lower than previously (= depressed)
"prices are down";
 
7. Shut
"the shades were down"
 
8. Not functioning (temporarily or permanently)
"we can't work because the computer is down"
 
9. Filled with melancholy and despondency (= gloomy, grim, blue [informal], depressed, dispirited, downcast, downhearted, down in the mouth, low, low-spirited)

- Verb: down (Derived forms: downed, downing, downs)
Usage: informal
1. Drink down entirely (= toss off [informal], pop [informal], bolt down [informal], belt down [informal], pour down, drink down, kill [informal])
"He downed three martinis before dinner"; "They belted down a few beers after work"; "They poured down a few beers after work"; "They drank down a few beers after work"; "They bolted down a few beers after work";
 
2. Eat up completely, as with great appetite (= devour, demolish, consume, go through)
"Some people can down a pound of meat in the course of one meal";
 
3. (sport) bring down or defeat (an opponent)
 
4. Shoot at and force to come down (= shoot down, land)
"the enemy downed several of our aircraft";
 
5. Cause to come or go down (= knock down, cut down, push down, pull down)
"The policeman downed the heavily armed suspect"; "The mugger knocked down the old lady after she refused to hand over her wallet"; "The policeman cut down the heavily armed suspect";
 
6. Improve or perfect by pruning or polishing (= polish, refine, fine-tune)

- Noun: down (Derived forms: downs)
1. Soft fine feathers (= down feather)
 
2. (American football) a complete play to advance the football
"you have four downs to gain ten yards"
 
3. (usually plural) a rolling treeless highland with little soil
 
4. Fine soft dense hair (as the fine short hair of cattle or deer or the wool of sheep or the undercoat of certain dogs) (= pile)

- Noun: Down (Derived forms: Downs)
1. English physician who first described Down's syndrome (1828-1896) (= John Langdon Down, John L. H. Down)
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
    videoId: 'https://youtu.be/e_04ZrNroTo?t=',
    startSeconds: 117,
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
    videoId: 'https://youtu.be/_spuxXnul0U?t=',
    startSeconds: 1021,
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
    videoId: 'https://youtu.be/1roy4o4tqQM?t=',
    startSeconds: 45,
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
    videoId: 'https://youtu.be/_spuxXnul0U?t=',
    startSeconds: 1021,
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
    videoId: 'https://youtu.be/e09xig209cQ?t=',
    startSeconds: 408,
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
    videoId: 'https://youtu.be/HDntl7yzzVI?t=',
    startSeconds: 506,
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
    videoId: 'https://youtu.be/-HyHZsa79LU?t=',
    startSeconds: 466,
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