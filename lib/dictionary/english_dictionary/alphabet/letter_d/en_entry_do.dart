import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydo extends StatefulWidget {
  const EnglishEntrydo({super.key});

  @override
  State<EnglishEntrydo> createState() => _EnglishEntrydoState();
}

class _EnglishEntrydoState extends State<EnglishEntrydo> {
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
  final String keyword = "do";
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
    return const EntryTitle(word: "do");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: do");
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
    return const IPAofEnglish(text: "IpaUK: /duː/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdo(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("do");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdo("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /duː/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdo(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("do");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdo("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdos1(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What are you doing this evening?");
  }

  Future<void> speakdos2(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We will do what we can to help.");
  }

  Future<void> speakdos3(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Are you doing anything tomorrow evening?");
  }

  Future<void> speakdos4(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The company ought to do something about the poor service.");
  }

  Future<void> speakdos5(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What have you done to your hair?");
  }

  Future<void> speakdos6(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's nothing to do in this place.");
  }

  Future<void> speakdos7(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's nothing we can do about it.");
  }

  Future<void> speakdos8(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What can I do for you?");
  }

  Future<void> speakdos9(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do as you're told!");
  }

  Future<void> speakdos10(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They are free to do as they please.");
  }

  Future<void> speakdos11(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You would do well to consider all the options before buying.");
  }

  Future<void> speakdos12(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How is the business doing?");
  }

  Future<void> speakdos13(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She did well out of the deal.");
  }

  Future<void> speakdos14(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's doing very well at school.");
  }

  Future<void> speakdos15(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Both mother and baby are doing well.");
  }

  Future<void> speakdos16(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How are you doing?");
  }

  Future<void> speakdos17(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm doing some research on the subject.");
  }

  Future<void> speakdos18(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I have a number of things to do today.");
  }

  Future<void> speakdos19(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sorry. I don't do funny.");
  }

  Future<void> speakdos20(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I like listening to the radio when I'm doing the ironing.");
  }

  Future<void> speakdos21(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You could help me by doing the dishes.");
  }

  Future<void> speakdos22(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She did a lot of acting when she was at college.");
  }

  Future<void> speakdos23(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I like the way you've done your hair.");
  }

  Future<void> speakdos24(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was asked to do the flowers for the wedding ceremony.");
  }

  Future<void> speakdos25(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They take turns doing the dishes as part of their household chores.");
  }

  Future<void> speakdos26(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What do you do?");
  }

  Future<void> speakdos27(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What does she want to do when she leaves school?");
  }

  Future<void> speakdos28(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What did she do for a living?");
  }

  Future<void> speakdos29(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's Tom doing these days?");
  }

  Future<void> speakdos30(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm doing physics, biology and chemistry.");
  }

  Future<void> speakdos31(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Have you done any Keats?");
  }

  Future<void> speakdos32(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I can't do this sum.");
  }

  Future<void> speakdos33(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've never been able to do crosswords.");
  }

  Future<void> speakdos34(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Who's doing the food?");
  }

  Future<void> speakdos35(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Many hotels don't do single rooms at all.");
  }

  Future<void> speakdos36(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll do a copy for you.");
  }

  Future<void> speakdos37(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("‘Can you lend me some money?’ ‘Sure—will £20 do?’");
  }

  Future<void> speakdos38(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("These shoes won't do for the party.");
  }

  Future<void> speakdos39(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This room will do me nicely, thank you.");
  }

  Future<void> speakdos40(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The children are doing a play at the end of term.");
  }

  Future<void> speakdos41(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's done all the important Shakespearean roles except for Lady Macbeth.");
  }

  Future<void> speakdos42(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you do a Welsh accent?");
  }

  Future<void> speakdos43(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sit there and wait till I'm done.");
  }

  Future<void> speakdos44(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've done talking—let's get started.");
  }

  Future<void> speakdos45(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Did you get your article done in time?");
  }

  Future<void> speakdos46(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How many miles did you do during your tour?");
  }

  Future<void> speakdos47(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My car does 40 miles to the gallon.");
  }

  Future<void> speakdos48(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We did the round trip in two hours.");
  }

  Future<void> speakdos49(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The car was doing 90 miles an hour.");
  }

  Future<void> speakdos50(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We did Tokyo in three days.");
  }

  Future<void> speakdos51(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She did a year at college, but then dropped out.");
  }

  Future<void> speakdos52(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He did six years for armed robbery.");
  }

  Future<void> speakdos53(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The hairdresser said she could do me at three.");
  }

  Future<void> speakdos54(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How would you like your steak done?");
  }

  Future<void> speakdos55(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This isn't a genuine antique—you've been done.");
  }

  Future<void> speakdos56(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They did him for tax evasion.");
  }

  Future<void> speakdos57(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She got done for speeding.");
  }

  Future<void> speakdos58(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The gang did a warehouse and a supermarket.");
  }

  Future<void> speakdos59(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He doesn't smoke, drink or do drugs.");
  }

  Future<void> speakdos60(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He bragged to his friends about doing her after the party.");
  }

  Future<void> speakdos61(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I don't like fish.");
  }

  Future<void> speakdos62(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They didn't go to Paris.");
  }

  Future<void> speakdos63(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Does she speak French?");
  }

  Future<void> speakdos64(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You live in New York, don't you?");
  }

  Future<void> speakdos65(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You live in New York, don't you?");
  }

  Future<void> speakdos66(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She doesn't work here, does she?");
  }

  Future<void> speakdos67(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He plays better than he did a year ago.");
  }

  Future<void> speakdos68(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She works harder than he does.");
  }

  Future<void> speakdos69(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("‘I love peaches.’ ‘So do I.’");
  }

  Future<void> speakdos70(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He does look tired.");
  }

  Future<void> speakdos71(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do shut up!");
  }

  Future<void> speakdos72(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She did at least write to say thank you.");
  }

  Future<void> speakdos73(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Are you having a big do for your birthday?");
  }

  // Future<void> speakdos74(String languageCode) async {
  //   // DOPSUM: CHANGE speakdo
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("I suppose we should have a bit of a do.");
  // }

  Future<void> speakdos75(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I suppose we should have a bit of a do.");
  }

  Future<void> speakdos76(String languageCode) async {
    // DOPSUM: CHANGE speakdo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I like your new do, Alex.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
//           const KurdishVocabulary(text: """
// کوردی:
// """),
          const DefinitionKurdish(
              text:
                  "١. (کردار) بۆ باسکردنی ئەو شتانەی کە دەیکەیت بەڵام ناتەوێت بە ناو باسیان بکەیت یان لەسەریان نازانیت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "What are you doing this evening?"),
                    ExampleSentenceKurdish(text: "ئەم ئێوارەیە چی دەکەیت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "do", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "We will do what we can to help."),
                    ExampleSentenceKurdish(
                        text: "چی بتوانین دەیکەین بۆ یارمەتیدان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "Are you doing anything tomorrow evening?"),
                            ExampleSentenceKurdish(
                                text: "سبەی ئێوارە ھیچ دەکەیت؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdos3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdos3("en-US"),
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
                                    "The company ought to do something about the poor service."),
                            ExampleSentenceKurdish(
                                text:
                                    "کۆمپانیاکە دەبێت شتێک بکات سەبارەت بە خزمەتگوزارییە خراپەکە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdos4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdos4("en-US"),
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
                                text: "What have you done to your hair?"),
                            ExampleSentenceKurdish(text: "چیت کردووە بە قژت؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdos5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdos5("en-US"),
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
                                    "There's nothing to do (= no means of passing the time in an enjoyable way) in this place."),
                            ExampleSentenceKurdish(
                                text: "ھیچ نییە بکرێت لەم شوێنەدا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdos6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdos6("en-US"),
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
                                    "There's nothing we can do about it (= we can't change the situation)."),
                            ExampleSentenceKurdish(
                                text: "ھیچ نییە سەبارەت بەوە بیکەین."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdos7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdos7("en-US"),
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
                                    "What can I do for you (= how can I help)?"),
                            ExampleSentenceKurdish(
                                text: "دەتوانم چیت بۆ بکەم؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdos8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdos8("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) ڕەفتارکردن یان ھەنگاونان بەو شێوەیەی کە باسکراوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Do as you're told!"),
                    ExampleSentenceKurdish(text: "ئەوە بکە کە پێت گوتراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They are free to do as they please."),
                    ExampleSentenceKurdish(
                        text: "ئازادن کە ئەوە بکەن کە دڵیان پێی خۆشە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "You would do well to (= I advise you to) consider all the options before buying."),
                    ExampleSentenceKurdish(
                        text:
                            "کارێکی باش دەکەیت کە ھەموو ھەڵبژاردەکان لەبەرچاو بگریت پێش کڕین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) بەکاردێت بۆ قسەکردن یان پرسین لەسەر سەرکەوتن یان بەرەوپێشچوونی کەسێک/شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "How is the business doing?"),
                    ExampleSentenceKurdish(text: "بازرگانییەکە چۆن دەڕوات؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She did well out of (= made a big profit from) the deal."),
                    ExampleSentenceKurdish(
                        text: "قازانجی باشی لە ڕێککەوتنەکە کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He's doing very well at school (= his work is good)."),
                    ExampleSentenceKurdish(text: "لە قوتابخانە زۆر باشە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Both mother and baby are doing well (= after the birth of the baby)."),
                    ExampleSentenceKurdish(
                        text: "ھەریەکە لە دایک و منداڵەکە ڤاشب."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "How are you doing (= how are you)?"),
                    ExampleSentenceKurdish(text: "چی دەکەیت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) ئەنجامدانی چالاکییەک یان ئەرکێک، یان کارکردن تێیدا"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I'm doing some research on the subject."),
                    ExampleSentenceKurdish(
                        text: "ھەندێک توێژینەوە لەسەر بابەتەکە دەکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I have a number of things to do today."),
                    ExampleSentenceKurdish(
                        text: "ھەندێک شتم ھەیە ئەمڕۆ بیانکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Sorry. I don't do funny (= I can't be funny)."),
                    ExampleSentenceKurdish(
                        text: "ببوورە. ناتوانم پێکەنیناوی بم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) ئەنجامدانی ئەو چالاکی یان ئەرکەی باسکراوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I like listening to the radio when I'm doing the ironing."),
                    ExampleSentenceKurdish(
                        text: "حەزدەکەم گوێ لە ڕادیۆ بگرم کە ئوتوو دەکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "You could help me by doing the dishes."),
                    ExampleSentenceKurdish(
                        text:
                            "دەتوانیت یارمەتیم بدەیت بە ئەنجامدانی قاپشۆردن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She did a lot of acting when she was at college."),
                    ExampleSentenceKurdish(
                        text: "ژمارەیەکی زۆر نمایشی ئەنجامدا کە لە کۆلێژ بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) لەگەڵ ناو بەکاردێت قسەکردن لەسەر ئەرکەکانی وەک پاککردنەوە، شۆردن، ڕێکخستن، ھتد"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I like the way you've done your hair."),
                    ExampleSentenceKurdish(
                        text: "حەزم بەو شێوەیە کە قژت داھێناوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She was asked to do (= arrange) the flowers for the wedding ceremony."),
                    ExampleSentenceKurdish(
                        text:
                            "داوای لێکرا کە گوڵەکان بۆ ئاھەنگی ھاوسەرگیرییەکە ڕێکبخات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "They take turns doing (= washing) the dishes as part of their household chores."),
                    ExampleSentenceKurdish(
                        text:
                            "بە نۆرە قاپەکان دەشۆن وەک بەشێک لە کاری ماڵەوەیان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos25("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) کارکردن لە شتێکدا وەک پیشە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "What do you do (= what is your job)?"),
                    ExampleSentenceKurdish(text: "چی کارەیت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos26("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "What does she want to do when she leaves school?"),
                    ExampleSentenceKurdish(
                        text: "دەیەوێت چی بکات کە قوتابجانە تەواو دەکات؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos27("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "What did she do for a living?"),
                    ExampleSentenceKurdish(text: "پیشەی چی بوو؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos28("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos28("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "What's Tom doing these days?"),
                    ExampleSentenceKurdish(text: "تۆم ئەم ڕۆژانە چی کارەیە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos29("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos29("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (کردار) فێربوون یان خوێندنی شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I'm doing physics, biology and chemistry."),
                    ExampleSentenceKurdish(
                        text: "فیزیا، زیندەزانی، و کیمیا دەخوێنم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos30("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos30("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Have you done any (= studied anything by) Keats?"),
                    ExampleSentenceKurdish(
                        text: "ھیچت لەلایەن کیتسەوە خوێدووەتەوە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos31("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos31("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (کردار) دۆزینەوەی وەڵامی شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "I can't do this sum."),
                    ExampleSentenceKurdish(
                        text: "ناتوانم ئەم کۆکردنەوەیە بکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos32("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos32("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I've never been able to do crosswords."),
                    ExampleSentenceKurdish(
                        text: "ھەرگیز نەمتوانیوە خشتەی وشەکان شیکار بکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos33("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos33("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٠. (کردار) بەرھەمھێنان یان درووستکردنی شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Who's doing the food?"),
                    ExampleSentenceKurdish(text: "کێ خواردنەکە ئامادە دەکات؟."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos34("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos34("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Many hotels don't do single rooms at all."),
                    ExampleSentenceKurdish(
                        text: "زۆر ھوتێل بەھیچ جۆرێک ژووری تاکە کەسییان نییە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos35("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos35("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                      text: "I'll do a copy for you.",
                      note: "Also: I'll do you a copy.",
                    ),
                    ExampleSentenceKurdish(text: "کۆپییەکت بۆ دەکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos36("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos36("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (کردار) ئەوەی کە گونجاو یان بەس بێت بۆ کەسێک/شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "‘Can you lend me some money?’ ‘Sure—will £20 do?’"),
                    ExampleSentenceKurdish(
                        text:
                            "'دەتوانیت ھەندێک پارەم بە قەرز پێ بدەیت؟' 'بەدڵنیاییەوە ـ ٢٠ پاوەند باشە؟'"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos37("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos37("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "These shoes won't do for the party."),
                    ExampleSentenceKurdish(
                        text: "ئەم پێڵاوانە گونجاو نییە بۆ ئاھەنگەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos38("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos38("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "This room will do me nicely, thank you (= it has everything I need)."),
                    ExampleSentenceKurdish(
                        text: "ئەم ژوورە زۆر گونجاوە بۆم، سوپاس."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos39("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos39("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٢. (کردار) ئەنجامدانی شانۆیەک یان ئۆپێرایەک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The children are doing a play at the end of term."),
                    ExampleSentenceKurdish(
                        text:
                            "منداڵەکان لەکۆتایی وەرزەکە شانۆیەک ئەنجام دەدەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos40("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos40("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She's done all the important Shakespearean roles except for Lady Macbeth."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەموو ڕۆڵەکانی ئەوانەی شکسپیری بینیوە جگە لە لەیدی ماکبێس؟."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos41("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos41("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٣. (کردار) لاسایی کردنەوەی کەسێک، بەتایبەتی بۆ ئەوەی کەسانی دیکە بخەیتە پێکەنین"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Can you do a Welsh accent?"),
                    ExampleSentenceKurdish(
                        text: "دەتوانیت لاسایی ئەکسێنتی وێڵزی بکەیتەوە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos42("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos42("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٤. (کردار) کۆتایی پێھێنانی شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Sit there and wait till I'm done."),
                    ExampleSentenceKurdish(
                        text: "لەوێ دابنیشە و چاوەڕێ بە تاوەکو تەواو دەبم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos43("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos43("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I've done talking—let's get started."),
                    ExampleSentenceKurdish(
                        text: "لە قسەکردن تەواو بوومە ـ با دەست پێبکەین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos44("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos44("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Did you get your article done in time?"),
                    ExampleSentenceKurdish(
                        text: "وتارەکەت لە کاتی خۆیدا تەواو کرد؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos45("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos45("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٥. (کردار) گەشتکردن بە مەودایەکی دیاریکراودا"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "How many miles did you do during your tour?"),
                    ExampleSentenceKurdish(
                        text: "لە گەشتەکەتدا چەند میلت بڕی؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos46("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos46("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "My car does 40 miles to the gallon (= uses one gallon of petrol to travel 40 miles)."),
                    ExampleSentenceKurdish(
                        text: "ئۆۆتمبێلەکەم ٤٠ میل دەچێت بۆ ھەر گاڵۆنێک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos47("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos47("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٦. (کردار) کۆتایی ھێنان بە ھەشتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "We did the round trip in two hours."),
                    ExampleSentenceKurdish(
                        text: "تەواوی گەشتەکەمان لە دوو کاتژمێردا کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos48("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos48("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٧. (کردار) ڕۆشتن یان گەشتن بە خێراییەکی دیاریکراو"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The car was doing 90 miles an hour."),
                    ExampleSentenceKurdish(
                        text: "ئۆتۆمبێلەکە لە ٩٠ میل لە کاتژمێرێکدا دەچوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos49("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos49("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٨. (کردار) سەردانکردنی شوێنێک وەک گەشتیار"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "We did Tokyo in three days."),
                    ExampleSentenceKurdish(
                        text: "لە سێ ڕۆژدا گەشتی تۆکیۆمان کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos50("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos50("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٩. (کردار) بەسەربردنی ماوەیەک بە کردنی شتێکەوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She did a year at college, but then dropped out."),
                    ExampleSentenceKurdish(
                        text:
                            "ساڵێکی بە کلێژەوە بەسەربرد، بەڵام دواتر وازیھێان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos51("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos51("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He did six years (= in prison) for armed robbery."),
                    ExampleSentenceKurdish(
                        text:
                            "شەش ساڵی بەسەربرد لە زیندان بۆ دزی کردن بە چەکەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos52("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos52("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢٠. (کردار) مامەڵەکردن لەگەڵ یان چوونە دەمی کەسێک/شتێکەوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The hairdresser said she could do me (= cut my hair) at three."),
                    ExampleSentenceKurdish(
                        text: "دەلاکەکە گوتی لە کاتژمێر سێ کارم بۆ دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos53("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos53("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢١. (کردار) لێنانی خواردن"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "How would you like your steak done?"),
                    ExampleSentenceKurdish(
                        text: "حەز دەکەیت پارچە گۆشتەکەت چۆن لێبنرێت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos54("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos54("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢٢. (کردار) فێڵکردن لە کەسێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "This isn't a genuine antique—you've been done."),
                    ExampleSentenceKurdish(
                        text: "ئەمە ئەنتیکێکی ڕاستی نییە ـ خەڵەتێندراویت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos55("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos55("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢٣. (کردار) سزادانی کەسێک"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They did him for tax evasion."),
                    ExampleSentenceKurdish(
                        text: "سزایان دا بۆ خۆدزینەوە لە باج."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos56("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos56("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "She got done for speeding."),
                    ExampleSentenceKurdish(text: "سزادرا بۆ تیژڕەوی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos57("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos57("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢٤. (کردار) دزیکردن لە شوێنێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The gang did a warehouse and a supermarket."),
                    ExampleSentenceKurdish(
                        text: "گرووپەکە کۆگایەک و سوپەرمارکێتێکیان بڕی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos58("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos58("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٥. (کردار) بەکارھێنانی مادەیەکی ھۆشبەر"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He doesn't smoke, drink or do drugs."),
                    ExampleSentenceKurdish(
                        text:
                            "جگەرە ناکێشێت، ناخواتەوە، و مادەی ھۆشبەریش ناکێشێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos59("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos59("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢٦. (کردار) ھەبوونی سێکس لەگەڵ "),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He bragged to his friends about doing her after the party."),
                    ExampleSentenceKurdish(
                        text:
                            "خۆی لای ھاوڕێکانی ھەڵکێشا سەبارەت بەوەی دوای ئاھەنگەکە سێکسی لەگەڵی کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos60("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos60("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢٧. (کاری یاریدەدەر) لە پێش کردارێک بەکاردێت بۆ درووستکردنی ڕستەی نەرێ یان پرسیاری"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "I don't like fish."),
                    ExampleSentenceKurdish(text: "حەزم بە ماسی نییە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos61("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos61("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "They didn't go to Paris."),
                    ExampleSentenceKurdish(text: "نەچوون بۆ پاریس."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos62("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos62("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Does she speak French?"),
                    ExampleSentenceKurdish(text: "بە فەرەنسی قسە دەکات؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos63("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos63("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٨. (کاری یاریدەدەر) بەکاردێت بۆ درووستکردنی کلکە پرسیار"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "You live in New York, don't you?"),
                    ExampleSentenceKurdish(text: "لە نیویۆرک دەژیت، وانییە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos65("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos65("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She doesn't work here, does she?"),
                    ExampleSentenceKurdish(text: "لێرە کار ناکات، وایە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos66("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos66("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢٩. (کاری یاریدەدەر) بەکاردێت بۆ دوورکەوتنەوە لە بەکارھێنانەوەی کردارێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He plays better than he did a year ago."),
                    ExampleSentenceKurdish(
                        text:
                            "باشتر یاری دەکات وەک لەوەی ساڵێک پێش ئێستا دەیکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos67("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos67("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She works harder than he does."),
                    ExampleSentenceKurdish(
                        text: "زیاتر ھەوڵ دەدات وەک لەوەی ئەو دەیکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos68("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos68("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "‘I love peaches.’ ‘So do I.’"),
                    ExampleSentenceKurdish(text: "'حەزم لە قۆخە.' 'منیش.'"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos69("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos69("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣٠. (کاری یاریدەدەر) کە کاری یاریدەدەر لە ڕستەیەکدا نییە، بەکاردێت بۆ جەختکردنەوە لەوەی کە دەیڵێیت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "He does look tired."),
                    ExampleSentenceKurdish(text: "ماندوو دیارە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos70("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos70("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Do shut up!"),
                    ExampleSentenceKurdish(text: "دەمت دابخە!"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos71("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos71("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She did at least write to say thank you."),
                    ExampleSentenceKurdish(
                        text: "بە لایەنی کەمەوە نامەی نارد کە بڵێت سوپاس."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos72("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos72("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣٢. (ناو) ئاھەنگێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Are you having a big do for your birthday?"),
                    ExampleSentenceKurdish(
                        text: "ئاھەنگێکی گەورەت دەبێت بۆ ڕۆژی لەدایکبوونت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos73("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos73("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I suppose we should have a bit of a do."),
                    ExampleSentenceKurdish(
                        text: "پێموایە دەبێت تۆزە ئاھەنگێکمان ھەبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos75("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos75("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣٣. (ناو) شێوازی داھێنانی قژی کەسێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "I like your new do, Alex."),
                    ExampleSentenceKurdish(
                        text: "حەزم بە قژ داھێنانە تازەکەتە، ئەلێکس."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdos76("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdos76("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // "I like your new do, Alex."),
          // speakdos77
          // dos77
          // dos7800"),
          // speakdos79
          // dos79
          // dos8000"),
          // speakdos80
          // dos80
          // dos8100"),
          // speakdos81
          // dos81
          // dos8200"),
          // speakdos82
          // dos82
          // dos8300"),
          // speakdos83
          // dos83
          // dos8400"),
          // speakdos84
          // dos84("en-US"),
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
- Verb: do (derived forms: dos, doing)
1. Engage in (= make)
"do research"; "do nothing";
 
2. Carry out an action (= perform, execute)
"John did the painting, the weeding, and he cleaned out the gutters"; "she did a little dance";
 
3. Get (something) done (= perform)
"I did my job";
 
4. Perform, succeed or manage over a period of time (= fare, make out, come, get along)
"How is she doing in her new job?";
 
5. Give rise to; cause to happen or occur, not always intentionally (= cause, make, engender)
 
6. Carry out, engage in (as of jobs and professions) (= practice [N. Amer], practise [Brit, Cdn], exercise)
"do law";
 
7. Be sufficient; be adequate, either in quality or quantity (= suffice, answer, serve)
"Will £100 do?";
 
8. Create or design, often in a certain way (= make)
"Do my room in blue"; "I did this piece in wood to express my love for the forest";
 
9. Show a certain behaviour; conduct or comport oneself (= )
"What makes her do this way?";
 
10. Spend time in prison or in a labour camp (= serve)
"He did six years for embezzlement";
 
11. Carry on or function (= manage)
"We could do with a little more help around here";
 
12. Style or arrange hair attractively (= dress, arrange, set, coif, coiffe, coiffure)
"do my hair for the wedding";
 
13. Travel or traverse (a distance)
"This car does 150 miles per hour"; "We did 6 miles on our hike every day"

- Noun: do (derived forms: dos)
1. The syllable naming the first (tonic) note of any major scale in solmization (= doh, ut)
 
2. A party or social event (= bash [informal])
 
3. [informal] The arrangement of the hair (especially a woman's hair) (= hairdo [informal], hairstyle, hair style, coiffure, coif)

- Noun: DO
1. Doctor's degree in osteopathy (= Doctor of Osteopathy)
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
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = '_Z0ZQT0FttM';
  final double _startSeconds = 662;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'xkYved-ucGg';
  final double _startSeconds = 130;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'XZVHmRvfDHM';
  final double _startSeconds = 179;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'wizgxRBfVTY';
  final double _startSeconds = 88;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'iQGuqaqwVu8';
  final double _startSeconds = 72;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'W3JZ1j5R8SI';
  final double _startSeconds = 84;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'YV9Tb1GHSsE';
  final double _startSeconds = 493;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
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
    return const YouTubeScroller(
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
