import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycross extends StatefulWidget {
  const EnglishEntrycross({super.key});

  @override
  State<EnglishEntrycross> createState() => _EnglishEntrycrossState();
}

class _EnglishEntrycrossState extends State<EnglishEntrycross> {
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
              // const TitleOfEntryAlso(),
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
    return const EntryTitle(word: "cross");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cross");
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
    return const IPAofEnglish(text: "IpaUK: /krɒs/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcross(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cross"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcross("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /krɔːs/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcross(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cross"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcross("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrosss1(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As soon as traffic slowed down enough to safely cross, I started walking."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss2(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I waved and she crossed over."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss3(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He crossed over from the other side of the road."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss4(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She crossed to the other side of the room."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss5(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The bridge crosses the River Dee."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss6(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was caught trying to cross the border illegally."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss7(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "More than 150 000 people crossed the bridge that day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss8(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They crossed the finishing line together."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss9(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He crossed over the road and joined me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss10(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Let's cross over now while the road is clear."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss11(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They crossed from the States into Canada."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss12(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The roads cross just outside the town."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss13(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The straps cross over at the back and are tied at the waist."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss14(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She sat with her legs crossed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss15(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She's really nice until you cross her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss16(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He had been crossed in love."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss17(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A mule is the product of a horse crossed with a donkey."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss18(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He behaved like an army officer crossed with a professor."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss19(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Sissoko crossed from the left."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss20(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She always crosses her t’s and dots her i’s to ensure accuracy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss21(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I've put a cross on the map to show where the hotel is."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss22(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Put a tick if the answer is correct and a cross if it's wrong."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss23(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In ancient times, people were punished by being hung on crosses and left to die."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss24(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She wears a gold cross around her neck."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss25(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Christ died on the Cross."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss26(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was awarded the Victoria Cross for bravery."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss27(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A mule is a cross between a horse and a donkey."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss28(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Webster's low cross was fired into the net by Varney."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss29(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I was cross with him for being late."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss30(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Please don't get cross. Let me explain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss31(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss32(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss33(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss34(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss35(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss36(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss37(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss38(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss39(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss40(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss41(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss42(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss43(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss44(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss45(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss46(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss47(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss48(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss49(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss50(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss51(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss52(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss53(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss54(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss55(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss56(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss57(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss58(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss59(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss60(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss61(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss62(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss63(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss64(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss65(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss66(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss67(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss6700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss68(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss6800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss69(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss6900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss70(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss7000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss71(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss7100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss72(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss7200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss73(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss7300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss74(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss7400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss75(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss7500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss76(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss7600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss77(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss7700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss78(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss7800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss79(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss7900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss80(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss8000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss81(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss8100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss82(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss8200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss83(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss8300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss84(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss8400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss85(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss8500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss86(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss8600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss87(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss8700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss88(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss8800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss89(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss8900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrosss90(String languageCode) async {
    // DOPSUM: CHANGE speakcross
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrosss9000"); // DOPSUM: CHANGE TEXT
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
کوردی: تووڕە، ڕق‌هەستاو،	پێچەوانە (با)،	ئاسۆیی، پۆیی،	یەکتربڕ، چەپ‌وڕاست، هاوبڕ، خاچ، چەلیپا،	مەینەتی، ڕەنج، کوێرەوەری، دەرد، بەڵا، کوڵۆڵی،	نیشانەی خاچ،	دروشمی خاچ (نیشانەی ئازایەتی)،	نیشانەی چەپ‌وڕاست، یەکتربڕ یان لەگەڵ (×، +)،	گیانەوەری دوڕڕە یان دووڕەگە،	گیا یان ڕووەکی متوربەکراو، ڕووەکی پەیوەست‌کراو،	تێکەڵە،	(میکانیک) چوارڕێ، چوارڕێ‌یانە،	هێڵی ئاسۆیی 
"""),
          const DefinitionKurdish(
              text: "١. (کردار) ڕۆشتن لە لایەکی دیکەوە بۆ لایەکەی دیکە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "As soon as traffic slowed down enough to safely cross, I started walking."),
                    ExampleSentenceKurdish(
                        text:
                            "کە هاتووچۆ هێندە هێواش بوویەوە کە بە سەلامەتی بپەڕینەوە، دەستم بە ڕێکردن کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "cross", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss1("en-US"),
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
                            "I waved and she crossed over (= crossed the road towards me)."),
                    ExampleSentenceKurdish(text: "دەستم ڕاوەشاند و پەڕییەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss2("en-US"),
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
                                    "He crossed over from the other side of the road."),
                            ExampleSentenceKurdish(
                                text: "لە ئەوپەڕی شەقامەکەوە پەڕییەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss3("en-US"),
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
                                    "She crossed to the other side of the room."),
                            ExampleSentenceKurdish(
                                text: "چوو بۆ ئەوپەڕی ژوورەکە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss4("en-US"),
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
                                text: "The bridge crosses the River Dee."),
                            ExampleSentenceKurdish(
                                text: "پردەکە بەسەر ڕووباری دیدا دەپەڕێتەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss5("en-US"),
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
                                    "He was caught trying to cross the border illegally."),
                            ExampleSentenceKurdish(
                                text:
                                    "کە دەیویست لە سنوورەکە بە نایاسایی بپەڕێتەوە گیردرا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss6("en-US"),
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
                                    "More than 150 000 people crossed the bridge that day."),
                            ExampleSentenceKurdish(
                                text:
                                    "زیاتر لە ١٥٠٠٠٠ لەو ڕۆژەدا لە پردەکە پەڕینەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss7("en-US"),
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
                                    "They crossed the finishing line together (= in a race)."),
                            ExampleSentenceKurdish(
                                text: "پێکەوە بە هێڵی کۆتاییدا پەڕینەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss8("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "He crossed over the road and joined me."),
                            ExampleSentenceKurdish(
                                text: "بە شەقامەکەدا پەڕییەوە و هاتە لام."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss9("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss9("en-US"),
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
                                    "Let's cross over now while the road is clear."),
                            ExampleSentenceKurdish(
                                text:
                                    "با ئێستادا بپەڕینەوە کە شەقامەکە بەتاڵە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss10("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss10("en-US"),
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
                                    "They crossed from the States into Canada."),
                            ExampleSentenceKurdish(
                                text: "لە ئەمریکاوە پەڕینەوە بۆ کەنەدا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss11("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss11("en-US"),
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
              text: "٢. (کردار) یەکتر بڕین؛ تێپەڕین بە یەکدیدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The roads cross just outside the town."),
                    ExampleSentenceKurdish(
                        text: "ڕێگاکان بە دەرەوەی شارۆچکەکەدا تێپەڕ دەبن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss12("en-US"),
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
                            "The straps cross over at the back and are tied at the waist."),
                    ExampleSentenceKurdish(
                        text:
                            "پشتێنەکان بە پشتدا تێپەڕدەبن و ؛ە کەمەردا دەبەسترێن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) دانانی شتێک لەسەر شتێک یان بەشێوەیەک کە پێیدا تێپەڕێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She sat with her legs crossed."),
                    ExampleSentenceKurdish(text: "دانیشت بە قاچ لەسەر قاچ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) وەستانەوە دژ بە کەسێک یان قسەکردن دژ بە پلان یان ویستەکانی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She's really nice until you cross her."),
                    ExampleSentenceKurdish(
                        text: "کەسێکی باشە تا ئەو کاتەی کە دژی دەبیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss15("en-US"),
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
                            "He had been crossed in love (= the person he loved was not faithful to him)."),
                    ExampleSentenceKurdish(
                        text: "لە خۆشەویستیدا خیانەتی لێکرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) جووتکردنی دوو جۆری جیاوازی ئاژەڵ"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "A mule is the product of a horse crossed with a donkey."),
                    ExampleSentenceKurdish(
                        text: "هێستر بەرهەمی جووتکردنی ئەسپە لەگەڵ گوێدرێژدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerSentences(),
          // Row(
          // children: [
          // const Expanded(
          // child: Column(
          // children: [
          // ExampleSentenceEnglish(
          // text:
          // "He behaved like an army officer crossed with a professor."),
          // ExampleSentenceKurdish(
          // text: "بەکارهێنانی خوازراوی وەها ڕەفتاری دەکرد وەک ئەوەی."),
          // ],
          // ),
          // ),
          // const CustomSizedBoxForTTS(),
          // Column(
          // children: [
          // CustomIconButtonBritish(
          // onPressed: () => speakcrosss18("en-GB"),
          // ),
          // CustomIconButtonAmerican(
          // onPressed: () => speakcrosss18("en-US"),
          // ),
          // ],
          // ),
          // ],
          // ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) لێدان لە تۆپێک و هەڵدانی بە یاریگایەکدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Sissoko crossed from the left."),
                    ExampleSentenceKurdish(
                        text: "سیسۆکە تۆپەکەی لەلای چەپەوە هەڵدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (کردار) کێشانی هێلێک بە شتێکدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She always crosses her t’s and dots her i’s to ensure accuracy."),
                    ExampleSentenceKurdish(
                        text:
                            "هەمیشە خەت دێنێت بە t ـیەکانیدا و خاڵ لەسەر i ـیەکانی دادەنێت بۆ دڵنیایی لە درووستی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (ناو) هێمایەک کە لە دوو هێڵ پێکدێت کە یەکتری دەبڕن. بۆ نموونە + یان x"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I've put a cross on the map to show where the hotel is."),
                    ExampleSentenceKurdish(
                        text:
                            "ئێکسێکم لەسەر نەخشەکە داناوە بۆ پیشاندانی ئەوەی هوتێلەکە لەکوێیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss21("en-US"),
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
                            "Put a tick if the answer is correct and a cross if it's wrong."),
                    ExampleSentenceKurdish(
                        text:
                            "نیشانەیەکی ڕستی لێبدە ئەگەر وەڵامەکە ڕاستە و ئێکسێک ئەگەر هەڵەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (ناو) پارچە تەختەیەک کە بۆ لەخاچدان بەکاردێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "In ancient times, people were punished by being hung on crosses and left to die."),
                    ExampleSentenceKurdish(
                        text:
                            "لە سەردەمانی کۆندا، خەڵکی لەسەر سزا دەدران بە جێهێشتنیان لەسەر خاچ و جێهێشتنیان تا بمرن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (ناو) ئەو خاچەی پەیامبەر عیسا لەسەری لەخاچ درا و وەک سمبولێکی ئایینی مەسیحییەت بەکاردێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Christ died on the Cross."),
                    ExampleSentenceKurdish(
                        text: "پێغەمبەر عیسا لەسەر خاچ مرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss25("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (ناو) شتێک، دیزاینێک، خشڵێک، هتد کە لە شێوەی ئێکسێکدایە و وەک سمبولێکی ئایینی مەسحییەت بەکاردێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She wears a gold cross around her neck."),
                    ExampleSentenceKurdish(
                        text: "خاچێکی ئاڵتوونی لە ملی دەبەستێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٣. (ناو) نەخشاندنێکی بچووک کە لە شێوەی ئێکسدایە و وەک شانازی بەکاردێت بۆ کردنی شتێکی ئازایانە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He was awarded the Victoria Cross for bravery."),
                    ExampleSentenceKurdish(
                        text: "شانازیی ڤیکتۆریای پێدرا بۆ ئازایەتی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss26("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٤. (ناو) تێکەڵەیەکی دوو شت، جۆری ئاژەڵ، هتد ــی جیاواز"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "A mule is a cross between a horse and a donkey."),
                    ExampleSentenceKurdish(
                        text: "هێستر دووڕەگەی ئەسپ و گوێدرێژە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss27("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٥. (ناو) هەڵدان تۆپ بە یاریگادا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Webster's low cross was fired into the net by Varney."),
                    ExampleSentenceKurdish(
                        text:
                            "هەڵدانە نزمەکەی وێبستەر لەلایەن ڤارنییەوە خرایە تۆڕەکەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss28("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss28("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٦. (ھاوەڵناو) پێنناسە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I was cross with him for being late."),
                    ExampleSentenceKurdish(
                        text: "تووڕە بووم لێی کە درەنگ کەوت بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss29("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss29("en-US"),
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
                        text: "Please don't get cross. Let me explain."),
                    ExampleSentenceKurdish(
                        text: "تکایە تووڕە مەبە، با ڕوونکردنەوە بدەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrosss30("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrosss30("en-US"),
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
- Verb: cross (Derived forms: crossed, crosses, crossing)
1. Travel across or pass over (= traverse, track, cover, pass over, get over, get across, cut through, cut across)
"The caravan crossed almost 100 miles each day";
 
2. Meet at a point (= intersect)
"The roads cross under the bridge";
 
3. Hinder or prevent (the efforts, plans, or desires) of (= thwart, queer [informal], spoil, scotch, foil, frustrate, baffle, bilk [informal], scupper [informal])
"cross your opponent";
 
4. Fold so as to resemble a cross
"she crossed her legs"
 
5. To cover or extend over an area or time period (= traverse, span, sweep)
"Rivers cross the valley floor";
 
6. Meet and pass
"the trains crossed"
 
7. Trace a line through or across
"cross your 't'"
 
8. Breed animals or plants using parents of different races and varieties (= crossbreed, hybridize, hybridise [Brit], interbreed)
"cross a horse and a donkey";

- Adjective: cross (Derived forms: crosser, crossest)
1. Annoyed and irritable (= crabbed, crabby, fussy, grouchy [informal], grumpy, bad-tempered, ill-tempered, arsey [Brit, informal])
 
2. Feeling or showing anger (= angry)
 
3. Extending or lying across; in a crosswise direction; at right angles to the long axis (= transverse, transversal, thwartwise [archaic], thwartways [archaic])
"cross members should be all steel";

- Noun: cross (Derived forms: crosses)
1. A wooden structure consisting of an upright post with a transverse piece
 
2. A marking that consists of lines that cross each other (= crisscross, mark)
 
3. Any affliction that causes great suffering (= crown of thorns)
"that is his cross to bear";
 
4. (genetics) an organism that is the offspring of genetically dissimilar parents or stock; especially offspring produced by breeding plants or animals of different varieties or breeds or species (= hybrid, crossbreed)
"a mule is a cross between a horse and a donkey";
 
5. (genetics) the act of mixing different species or varieties of animals or plants and thus to produce hybrids (= hybridization, hybridisation [Brit], crossbreeding, crossing, interbreeding, hybridizing, hybridising [Brit])
 
6. (soccer) a kick in which the ball passes from one side of the pitch towards the centre

- Noun: Cross 
1. A representation of the structure on which Jesus was crucified; used as an emblem of Christianity or in heraldry
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
    videoId: 'https://youtu.be/eyMKA4d35dg?t=',
    startSeconds: 431,
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
    startSeconds: 555,
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
    videoId: 'https://youtu.be/6DK0yrF_ffU?t=',
    startSeconds: 112,
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
    videoId: 'https://youtu.be/_mu1kQqkl1E?t=',
    startSeconds: 29,
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
    videoId: 'https://youtu.be/Stl6OZo7wzg?t=',
    startSeconds: 129,
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
    videoId: 'https://youtu.be/nYzTbmDpLNg?t=',
    startSeconds: 39,
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
    videoId: 'https://youtu.be/pFEB0chiuJA?t=',
    startSeconds: 491,
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