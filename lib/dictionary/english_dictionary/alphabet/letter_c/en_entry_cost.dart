import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycost extends StatefulWidget {
  const EnglishEntrycost({super.key});

  @override
  State<EnglishEntrycost> createState() => _EnglishEntrycostState();
}

class _EnglishEntrycostState extends State<EnglishEntrycost> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
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
    return const EntryTitle(word: "cost");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cost");
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
    return const IPAofEnglish(text: "IpaUK: /kɒst/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcost(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cost");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcost("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kɔːst/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcost(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cost");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcost("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcosts1(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A new computer system has been installed at a cost of £80 000.");
  }

  Future<void> speakcosts2(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You could buy a used car at a fraction of the cost of a new one.");
  }

  Future<void> speakcosts3(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We did not even make enough money to cover the cost of the food.");
  }

  Future<void> speakcosts4(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The plan had to be abandoned on grounds of cost.");
  }

  Future<void> speakcosts5(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The total cost to you is £3 000.");
  }

  Future<void> speakcosts6(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Energy is a major cost for businesses.");
  }

  Future<void> speakcosts7(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She estimates the cost for this project at £150 000.");
  }

  Future<void> speakcosts8(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I would put the cost of a new employee at £80 000 a year.");
  }

  Future<void> speakcosts9(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Now people can access the internet at minimal cost.");
  }

  Future<void> speakcosts10(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The use of cheap labour helped to keep costs down.");
  }

  Future<void> speakcosts11(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Reducing costs means we can keep prices as low as possible.");
  }

  Future<void> speakcosts12(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We have to find new ways of cutting costs.");
  }

  Future<void> speakcosts13(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She saved him from the fire at the cost of her own life.");
  }

  Future<void> speakcosts14(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Victory came at a high cost.");
  }

  Future<void> speakcosts15(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They advanced a few hundred metres, but at a heavy cost in life.");
  }

  Future<void> speakcosts16(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He worked non-stop for three months, at considerable cost to his health.");
  }

  Future<void> speakcosts17(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The victory was achieved at great cost to the country's infrastructure.");
  }

  Future<void> speakcosts18(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do the benefits outweigh the costs?");
  }

  Future<void> speakcosts19(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Both sides incurred costs of over £50 000.");
  }

  Future<void> speakcosts20(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was ordered to pay £2 000 costs.");
  }

  Future<void> speakcosts21(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How much did it cost?");
  }

  Future<void> speakcosts22(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I didn't get it because it cost too much.");
  }

  Future<void> speakcosts23(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Tickets cost ten dollars each.");
  }

  Future<void> speakcosts24(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't use too much of it—it cost a lot of money.");
  }

  Future<void> speakcosts25(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("All these reforms will cost money.");
  }

  Future<void> speakcosts26(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Good food need not cost a fortune.");
  }

  Future<void> speakcosts27(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The meal cost us about £40.");
  }

  Future<void> speakcosts28(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This is costing the taxpayer £10 billion a year.");
  }

  Future<void> speakcosts29(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That one mistake almost cost him his life.");
  }

  Future<void> speakcosts30(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The allegations cost me my job.");
  }

  Future<void> speakcosts31(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A penalty cost United the game.");
  }

  Future<void> speakcosts32(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Such behaviour could cost you your place in the team.");
  }

  Future<void> speakcosts33(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The closure of the factory is likely to cost 1 000 jobs.");
  }

  Future<void> speakcosts34(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The war has cost the lives of countless civilians.");
  }

  Future<void> speakcosts35(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The accident cost me a visit to the doctor.");
  }

  Future<void> speakcosts36(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Financial worries cost her many sleepless nights.");
  }

  Future<void> speakcosts37(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She would never know how much it cost him to tell her.");
  }

  Future<void> speakcosts38(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The project needs to be costed in detail.");
  }

  Future<void> speakcosts39(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Have you costed out these proposals yet?");
  }

  Future<void> speakcosts40(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A penalty cost United the game.0");
  }

  Future<void> speakcosts41(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts4100");
  }

  Future<void> speakcosts42(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts4200");
  }

  Future<void> speakcosts43(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts4300");
  }

  Future<void> speakcosts44(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts4400");
  }

  Future<void> speakcosts45(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts4500");
  }

  Future<void> speakcosts46(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts4600");
  }

  Future<void> speakcosts47(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts4700");
  }

  Future<void> speakcosts48(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts4800");
  }

  Future<void> speakcosts49(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts4900");
  }

  Future<void> speakcosts50(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts5000");
  }

  Future<void> speakcosts51(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts5100");
  }

  Future<void> speakcosts52(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts5200");
  }

  Future<void> speakcosts53(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts5300");
  }

  Future<void> speakcosts54(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts5400");
  }

  Future<void> speakcosts55(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts5500");
  }

  Future<void> speakcosts56(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts5600");
  }

  Future<void> speakcosts57(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts5700");
  }

  Future<void> speakcosts58(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts5800");
  }

  Future<void> speakcosts59(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts5900");
  }

  Future<void> speakcosts60(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts6000");
  }

  Future<void> speakcosts61(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts6100");
  }

  Future<void> speakcosts62(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts6200");
  }

  Future<void> speakcosts63(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts6300");
  }

  Future<void> speakcosts64(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts6400");
  }

  Future<void> speakcosts65(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts6500");
  }

  Future<void> speakcosts66(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts6600");
  }

  Future<void> speakcosts67(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts6700");
  }

  Future<void> speakcosts68(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts6800");
  }

  Future<void> speakcosts69(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts6900");
  }

  Future<void> speakcosts70(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts7000");
  }

  Future<void> speakcosts71(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts7100");
  }

  Future<void> speakcosts72(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts7200");
  }

  Future<void> speakcosts73(String languageCode) async {
    // DOPSUM: CHANGE speakcost
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcosts7300");
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
کوردی: خەرج، خەرج‌وبار، تێچوون، بەخت، مەزاخ،	بەھا، نرخ، بایی
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) بڕی پارەی پێویست بۆ کڕین، درووستکردن، یان کردنی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "A new computer system has been installed at a cost of £80 000."),
                    ExampleSentenceKurdish(
                        text:
                            "سیستەمێکی تازەی کۆمپیوتەر بە خەرجی ٨٠٠٠٠ پاوەند دامەزراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "cost", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts1("en-US"),
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
                            "You could buy a used car at a fraction of the cost of a new one."),
                    ExampleSentenceKurdish(
                        text:
                            "دەتوانیت ئۆتۆمبێلێکی بەکارھێنراو بە تێچوویەکی کەمی یەکێکی تازە بکڕیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts2("en-US"),
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
                                    "We did not even make enough money to cover the cost of the food."),
                            ExampleSentenceKurdish(
                                text:
                                    "تەنانەت ھێندە پارەی پێویستمان پەیدا نەکرد کە تێچووی خۆراک بکەین."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts3("en-US"),
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
                                    "The plan had to be abandoned on grounds of cost."),
                            ExampleSentenceKurdish(
                                text:
                                    "پلانەکە دەبوو وازی لێبھێنرێت بە ھۆکای تێچووەکەی."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts4("en-US"),
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
                                    "The total cost to you (= the amount you have to pay) is £3 000."),
                            ExampleSentenceKurdish(
                                text: "خەرجی گشتیت ٣٠٠٠ پاوەندە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts5("en-US"),
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
                                text: "Energy is a major cost for businesses."),
                            ExampleSentenceKurdish(
                                text: "وزە خەرجییەکی گەورەی بازرگانییەکانە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts6("en-US"),
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
                                    "She estimates the cost for this project at £150 000."),
                            ExampleSentenceKurdish(
                                text:
                                    "تێچووی ئەم پڕۆژەیە بە ١٥٠٠٠٠ پاوەند دەخەمڵێنێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts7("en-US"),
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
                                    "I would put the cost of a new employee at £80 000 a year."),
                            ExampleSentenceKurdish(
                                text:
                                    "خەرجی کارمەندێکی تازە بە ٨٠٠٠٠ پاوەند لە ساڵێکدا دادەنێم."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts8("en-US"),
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
                                    "Now people can access the internet at minimal cost."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئێستا خەڵکی دەتوانن ئینتەرنێت بەکاربێنن بە خەرجییەکی کەم."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts9("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts9("en-US"),
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
          const DefinitionKurdish(text: "٢. (ناو) تەواوی تێچووی بازرگانییەک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The use of cheap labour helped to keep costs down."),
                    ExampleSentenceKurdish(
                        text:
                            "بەکارھێنانی دەستی کاری ھەرزان یارمەتیدەر بوو لە ھێشتنەوەی نرخەکان بە کەمی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts10("en-US"),
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
                            "Reducing costs means we can keep prices as low as possible."),
                    ExampleSentenceKurdish(
                        text:
                            "کەمکردنەوەی خەرجییەکان واتا دەتوانین نرخەکان تا بکرێت بە نزمی بھێڵینەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts11("en-US"),
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
                        text: "We have to find new ways of cutting costs."),
                    ExampleSentenceKurdish(
                        text: "دەبێت ڕێگای تازەی کەمکردنەوەی خەرجی بدۆزینەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) ھەوڵدان، لەدەستدان، یان زیان کە پێویستە بۆ بەدەستھێنانی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She saved him from the fire at the cost of her own life (= she died)."),
                    ExampleSentenceKurdish(
                        text: "بە ژیانی خۆی لە ئاگرەکە ڕزگاری کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts13("en-US"),
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
                        text: "Victory came at a high cost."),
                    ExampleSentenceKurdish(
                        text: "سەرکەوتن بە قوربانییەکی زۆر بەدەستھات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts14("en-US"),
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
                                    "They advanced a few hundred metres, but at a heavy cost in life."),
                            ExampleSentenceKurdish(
                              text:
                                  "چەند سەد ماترێک پێشڕەوییان کرد بەڵام بە تێچوویەکی زۆری ژیان.",
                              note: "سەربازی زۆریان لەدەستدا",
                            ),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts15("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts15("en-US"),
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
                                    "He worked non-stop for three months, at considerable cost to his health."),
                            ExampleSentenceKurdish(
                                text:
                                    "بێ وەستان بۆ سێ مانگ کاری کرد، بە زیانێکی زۆر بۆ تەندرووستیی."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts16("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts16("en-US"),
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
                                    "The victory was achieved at great cost to the country's infrastructure."),
                            ExampleSentenceKurdish(
                                text:
                                    "سەرکەوتن بەدەستھێنرا بە تێچوویەکی زۆری ژێرخانی وڵاتەکە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts17("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts17("en-US"),
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
                                text: "Do the benefits outweigh the costs?"),
                            ExampleSentenceKurdish(
                                text: "سوودەکان لە زیانەکان زیاتر دەبن؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts18("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts18("en-US"),
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
                  "٤. (ناو) بڕە پارەیەی کە کەسێک فەرمانی پێدەکرێت بیدات لە کەیسێکی یاساییدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Both sides incurred costs of over £50 000."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەردوو لایان تێچووی سەروو ٥٠٠٠٠ پاوەندیان کەوتە ئەستۆ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts19("en-US"),
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
                        text: "He was ordered to pay £2 000 costs."),
                    ExampleSentenceKurdish(
                        text: "فەرمانی پێکرا خەرجی ٢٠٠٠ پاوەند بدات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) تێچوون"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "How much did it cost?"),
                    ExampleSentenceKurdish(text: "چەندی تێچوو؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts21("en-US"),
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
                        text: "I didn't get it because it cost too much."),
                    ExampleSentenceKurdish(
                        text: "نەمکڕی چونکە تێچووی زۆر بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts22("en-US"),
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
                                text: "Tickets cost ten dollars each."),
                            ExampleSentenceKurdish(
                                text: "بلیت ١٠ دۆلاری تێدەچێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts23("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts23("en-US"),
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
                                    "Don't use too much of it—it cost a lot of money."),
                            ExampleSentenceKurdish(
                                text:
                                    "زۆری لێ بەکارمەھێنە، پارەی زۆری تێدەچێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts24("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts24("en-US"),
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
                                    "All these reforms will cost money (= be expensive)."),
                            ExampleSentenceKurdish(
                                text: "ھەموو چاکسازییانە پارەی تێدەچێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts25("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts25("en-US"),
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
                                    "Good food need not cost a fortune (= cost a lot of money)."),
                            ExampleSentenceKurdish(
                                text: "خواردنی باش نابێت سەروەتێکی تێبچێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts26("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts26("en-US"),
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
                                text: "The meal cost us about £40."),
                            ExampleSentenceKurdish(
                                text:
                                    "خواردنەکە نزیکەی ٤٠ پاوەند دەکەوێت لەسەرمان."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts27("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts27("en-US"),
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
                                    "This is costing the taxpayer £10 billion a year."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئەمە ١٠ ملیار دۆلار لە ساڵێکدا لەسەر باجدەران دەکەوێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts28("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts28("en-US"),
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
              text: "٦. (کردار) بوون بە ھۆکاری لەدەستدانی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "That one mistake almost cost him his life."),
                    ExampleSentenceKurdish(
                        text: "ئەو تاکە ھەڵە بەنزیکەیی ژیانی بسەنێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts29("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts29("en-US"),
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
                        text: "The allegations cost me my job."),
                    ExampleSentenceKurdish(text: "تۆمەتەکان کارەکەمی سەند."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts30("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts30("en-US"),
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
                                    "A penalty cost United the game (= meant that they did not win the game)."),
                            ExampleSentenceKurdish(
                                text: "رستە_رستە_رستە_رستە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts31("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts31("en-US"),
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
                                    "Such behaviour could cost you your place in the team."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئەو ھەڵسوکەوتە دەکرێت پێگەت لە تیمەکە کۆتایی پێبھێنێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts32("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts32("en-US"),
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
                                    "The closure of the factory is likely to cost 1 000 jobs."),
                            ExampleSentenceKurdish(
                                text:
                                    "داخرانی کارگەکە ئەگەری ھەیە ١٠٠٠ ھەلی کار لەدەستبدات."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts33("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts33("en-US"),
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
                                    "The war has cost the lives of countless civilians."),
                            ExampleSentenceKurdish(
                                text: "جەنگەکە ژیانی ھاوڵاتییانی زۆری تێچووە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcosts34("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcosts34("en-US"),
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
              text: "٧. (کردار) بوون بەھۆی ھەوڵدانێک یان کردنی شتێکی ناخۆش"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The accident cost me a visit to the doctor."),
                    ExampleSentenceKurdish(
                        text: "ڕووداوەکە بوو بەھۆی سەردانێکم بۆ لای دکتۆر."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts35("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts35("en-US"),
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
                            "Financial worries cost her many sleepless nights."),
                    ExampleSentenceKurdish(
                        text: "نیگەرانی دارایی بوو بەھۆی زۆر شەوی بێداریی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts36("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts36("en-US"),
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
                            "She would never know how much it cost him to tell her."),
                    ExampleSentenceKurdish(
                        text: "ھەرگیز نازانێت چەندی تێدەچێت کە پێی بڵێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts37("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts37("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) خەمڵاندنی تێچوون یان نرخی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The project needs to be costed in detail."),
                    ExampleSentenceKurdish(
                        text:
                            "پڕۆژەکە دەبێت بە وردەکارییەوە تێچوونەکەی لێکبدرێتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts38("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts38("en-US"),
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
                        text: "Have you costed out these proposals yet?"),
                    ExampleSentenceKurdish(
                        text: "تێچووی ئەم پێشنیارانەت خەمڵاندووە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcosts39("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcosts39("en-US"),
                  ),
                ],
              ),
            ],
          ),
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
- Noun: cost (derived forms: cost, costs)
1. The total spent for goods or services including money and time and labour
 
2. The property of having material worth (often indicated by the amount of money something would bring if sold) (= monetary value, price)
"he couldn't calculate the cost of the collection";
 
3. Value measured by what must be given, done or undergone to obtain something (= price, toll)
"the cost in human life was enormous";

- Verb: cost (derived forms: cost, costs, costed, costing)
1. Be priced at (= be)
"These shoes cost £100";
 
2. Require to lose, suffer, or sacrifice
"This mistake cost him his job"

3. Calculate the expense or expenses
"the new building is not yet fully costed"
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

class YoutubeEmbeddedend extends StatefulWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  State<YoutubeEmbeddedend> createState() => _YoutubeEmbeddedendState();
}

class _YoutubeEmbeddedendState extends State<YoutubeEmbeddedend> {
  late YoutubePlayerController _controller;
  final String _videoId = 't6fIp7mMJ90';
  final double _startSeconds = 116;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainerEnd(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatefulWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  State<YoutubeEmbeddedone> createState() => _YoutubeEmbeddedoneState();
}

class _YoutubeEmbeddedoneState extends State<YoutubeEmbeddedone> {
  late YoutubePlayerController _controller;
  final String _videoId = 'lYu1ysDULwA';
  final double _startSeconds = 348;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatefulWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  State<YoutubeEmbeddedtwo> createState() => _YoutubeEmbeddedtwoState();
}

class _YoutubeEmbeddedtwoState extends State<YoutubeEmbeddedtwo> {
  late YoutubePlayerController _controller;
  final String _videoId = 'UuGpm01SPcA';
  final double _startSeconds = 121;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatefulWidget {
  const YoutubeEmbeddedthree({super.key});

  @override
  State<YoutubeEmbeddedthree> createState() => _YoutubeEmbeddedthreeState();
}

class _YoutubeEmbeddedthreeState extends State<YoutubeEmbeddedthree> {
  late YoutubePlayerController _controller;
  final String _videoId = '043CQXHfx10';
  final double _startSeconds = 583;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatefulWidget {
  const YoutubeEmbeddedfour({super.key});

  @override
  State<YoutubeEmbeddedfour> createState() => _YoutubeEmbeddedfourState();
}

class _YoutubeEmbeddedfourState extends State<YoutubeEmbeddedfour> {
  late YoutubePlayerController _controller;
  final String _videoId = 'BZbChKzedEk';
  final double _startSeconds = 629;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatefulWidget {
  const YoutubeEmbeddedfive({super.key});

  @override
  State<YoutubeEmbeddedfive> createState() => _YoutubeEmbeddedfiveState();
}

class _YoutubeEmbeddedfiveState extends State<YoutubeEmbeddedfive> {
  late YoutubePlayerController _controller;
  final String _videoId = 'SrDEtSlqJC4';
  final double _startSeconds = 859;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatefulWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  State<YoutubeEmbeddedsix> createState() => _YoutubeEmbeddedsixState();
}

class _YoutubeEmbeddedsixState extends State<YoutubeEmbeddedsix> {
  late YoutubePlayerController _controller;
  final String _videoId = '-cPdImejxEQ';
  final double _startSeconds = 158;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatefulWidget {
  const YoutubeEmbeddedseven({super.key});

  @override
  State<YoutubeEmbeddedseven> createState() => _YoutubeEmbeddedsevenState();
}

class _YoutubeEmbeddedsevenState extends State<YoutubeEmbeddedseven> {
  late YoutubePlayerController _controller;
  final String _videoId = 'FD5tIIkccHY';
  final double _startSeconds = 89;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedeight extends StatefulWidget {
  const YoutubeEmbeddedeight({super.key});

  @override
  State<YoutubeEmbeddedeight> createState() => _YoutubeEmbeddedeightState();
}

class _YoutubeEmbeddedeightState extends State<YoutubeEmbeddedeight> {
  late YoutubePlayerController _controller;
  final String _videoId = 'QCdqHswGS5A';
  final double _startSeconds = 22;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddednine extends StatefulWidget {
  const YoutubeEmbeddednine({super.key});

  @override
  State<YoutubeEmbeddednine> createState() => _YoutubeEmbeddednineState();
}

class _YoutubeEmbeddednineState extends State<YoutubeEmbeddednine> {
  late YoutubePlayerController _controller;
  final String _videoId = 'j-zCKl_eda4';
  final double _startSeconds = 53;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedten extends StatefulWidget {
  const YoutubeEmbeddedten({super.key});

  @override
  State<YoutubeEmbeddedten> createState() => _YoutubeEmbeddedtenState();
}

class _YoutubeEmbeddedtenState extends State<YoutubeEmbeddedten> {
  late YoutubePlayerController _controller;
  final String _videoId = 'nOOZ5FEA-o0';
  final double _startSeconds = 102;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedeleven extends StatefulWidget {
  const YoutubeEmbeddedeleven({super.key});

  @override
  State<YoutubeEmbeddedeleven> createState() => _YoutubeEmbeddedelevenState();
}

class _YoutubeEmbeddedelevenState extends State<YoutubeEmbeddedeleven> {
  late YoutubePlayerController _controller;
  final String _videoId = 'lLBmElR0Luw';
  final double _startSeconds = 213;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatefulWidget {
  const YoutubeEmbeddedtwelve({super.key});

  @override
  State<YoutubeEmbeddedtwelve> createState() => _YoutubeEmbeddedtwelveState();
}

class _YoutubeEmbeddedtwelveState extends State<YoutubeEmbeddedtwelve> {
  late YoutubePlayerController _controller;
  final String _videoId = 'smgwK6I57PI';
  final double _startSeconds = 298;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedthirteen extends StatefulWidget {
  const YoutubeEmbeddedthirteen({super.key});

  @override
  State<YoutubeEmbeddedthirteen> createState() =>
      _YoutubeEmbeddedthirteenState();
}

class _YoutubeEmbeddedthirteenState extends State<YoutubeEmbeddedthirteen> {
  late YoutubePlayerController _controller;
  final String _videoId = 'TWg8KL2AXmc';
  final double _startSeconds = 86;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
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
        YoutubeEmbeddedseven(),
        YoutubeEmbeddedeight(),
        YoutubeEmbeddednine(),
        YoutubeEmbeddedten(),
        YoutubeEmbeddedeleven(),
        YoutubeEmbeddedtwelve(),
        YoutubeEmbeddedthirteen(),
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