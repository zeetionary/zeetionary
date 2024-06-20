import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydeep extends StatefulWidget {
  const EnglishEntrydeep({super.key});

  @override
  State<EnglishEntrydeep> createState() => _EnglishEntrydeepState();
}

class _EnglishEntrydeepState extends State<EnglishEntrydeep> {
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
    return const EntryTitle(word: "deep");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: deep");
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
    return const IPAofEnglish(text: "IpaUK: /diːp/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeep(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("deep"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeep("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /diːp/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeep(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("deep"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeep("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeeps1(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The water looks quite deep there."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps2(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Around the world, the deep oceans are heating."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps3(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Sunflowers have deep roots."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps4(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The custom has deep roots in the community."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps5(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She had a deep cut on her left arm."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps6(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The telescope captured stunning images of distant galaxies in deep space."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps7(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The water is only a few centimetres deep."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps8(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How deep is the wound?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps9(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The water was only waist-deep so I walked ashore."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps10(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She stood knee-deep in the water."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps11(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They were standing three-deep at the bar."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps12(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She took a deep breath."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps13(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He gave a deep sigh."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps14(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She fell into a deep sleep."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps15(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He had a pale face with deep blue eyes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps16(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The colour is deeper when the grapes are dried."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps17(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I heard his deep warm voice filling the room."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps18(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We heard a deep roar in the distance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps19(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They expressed deep concern."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps20(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We extend our deepest sympathies to his family."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps21(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They have a deep respect for tradition."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps22(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's in deep trouble."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps23(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The affair had exposed deep divisions within the party."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps24(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She had reached a deep understanding of the local culture."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps25(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We will need a deeper analysis of this problem."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps26(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This discussion's getting too deep for me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps27(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He always sought for a deeper meaning in everything."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps28(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They spent hours discussing deep philosophical issues."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps29(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The firm ended up deep in debt."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps30(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He is often so deep in his books that he forgets to eat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps31(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's always been a deep one, trusting no one."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps32(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Dig deeper!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps33(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The miners were trapped deep underground."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps34(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He stood with his hands deep in his pockets."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps35(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He gazed deep into her eyes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps36(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His body was committed to the deep."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps37(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In the deep of night, the city streets were deserted and silent."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps38(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps39(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps40(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps41(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps42(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps43(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps44(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps45(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps46(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps47(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps48(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps49(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps50(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps51(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps52(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps53(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps54(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps55(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps56(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps57(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps58(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps59(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps60(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeeps61(String languageCode) async {
    // DOPSUM: CHANGE speakdeep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeeps6100"); // DOPSUM: CHANGE TEXT
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
کوردی: قووڵ، پێبڕ، کوویر، گاود، مە ند یان مەنگ (ئاو)،	(خەو و ھتد) قووڵ، گران، کڕخەو، شیرین،	(دەنگ) بۆڕ، گڕ،	(ڕەنگ) تۆخ، توند، تێر،	توند، بەڕشت، مجد،	دواوە، پشتەوە، نێوەوە،	نوقمی، قووڵەوەبوو، ناسەرسەرەکی، قووڵ،	ئاڵۆز، سەخت، دژوار، ناسەرسەرەکی، تێگەیشتن‌سەخت، پێچەڵاوپێچ
"""),
          const DefinitionKurdish(
              text:
                  "١. (ھاوەڵناو) قووڵ؛ ھەبوونی مەودایەکی زۆر لە سەرەوە یان ڕووەکەیەوە بۆ خوارەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The water looks quite deep there."),
                    ExampleSentenceKurdish(
                        text: "ئاوەکە لەوێدا تەواو قووڵ دیارە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "deep", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps1("en-US"),
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
                        text: "Around the world, the deep oceans are heating."),
                    ExampleSentenceKurdish(
                        text: "لە جیھاندا، زەریا قووڵەکان گەرم دەبن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps2("en-US"),
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
                    ExampleSentenceEnglish(text: "Sunflowers have deep roots."),
                    ExampleSentenceKurdish(text: "گوڵەبەڕۆژە ڕەگی قوڵی ھەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps3("en-US"),
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
                        text: "The custom has deep roots in the community."),
                    ExampleSentenceKurdish(
                        text:
                            "(بەکارھێنانی خوازراوی) نەریتەکە ڕیشەیەکی قووڵی ھەیە لە کۆمەڵگاکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ھاوەڵناو) قووڵ؛ ھەبوونی مەودایەکی زۆر لە قەراغەوە بۆ دوورترین خاڵ لە ناوەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She had a deep cut on her left arm."),
                    ExampleSentenceKurdish(
                        text: "برینێکی قووڵی لەسەر باڵی چەپی ھەبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps5("en-US"),
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
                            "The telescope captured stunning images of distant galaxies in deep space."),
                    ExampleSentenceKurdish(
                        text:
                            "تەلیسکۆبەکە وێنەی سەرنجڕاکێشی گەلە ئەستێرە دوورەکانی ئاسمانی فراوانی چرکاند."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) بۆ باسکردن یان پرسیارکردن لەسەر قووڵی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The water is only a few centimetres deep."),
                    ExampleSentenceKurdish(
                        text: "ئاوەکە تەنھا چەند سەنتیمەترێک قووڵە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps7("en-US"),
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
                    ExampleSentenceEnglish(text: "How deep is the wound?"),
                    ExampleSentenceKurdish(text: "برینەکە چەندە قووڵە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ھاوەڵناو) تاوەکو ئەو ئاستەی باسکراوە بۆ سەرەوە یان خوارەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The water was only waist-deep so I walked ashore."),
                    ExampleSentenceKurdish(
                        text:
                            "ئاوەکە تەنھا تاوەکو کەمەرە قووڵ بوو بۆیە ڕێم کردە کەنارەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps9("en-US"),
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
                        text: "She stood knee-deep in the water."),
                    ExampleSentenceKurdish(
                        text: "تاوەکو قوڵایی چۆکی لە ئاوەکە وەستابوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ھاوەڵناو) بۆ ژماردنی ڕیز کە یەک لە دوای یەکە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They were standing three-deep at the bar."),
                    ExampleSentenceKurdish(
                        text: "لە ڕیزی سێیەم لە باڕەکە وەستابوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ھاوەڵناو) ھەناسەی قووڵ"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "She took a deep breath."),
                    ExampleSentenceKurdish(text: "ھەناسەیەکی قووڵی ھەڵمژی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps12("en-US"),
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
                    ExampleSentenceEnglish(text: "He gave a deep sigh."),
                    ExampleSentenceKurdish(text: "ھەناسەیەکی قووڵی دایەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ھاوەڵناو) خەوێکی قووڵ"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "She fell into a deep sleep."),
                    ExampleSentenceKurdish(text: "کەوتە خەوێکی قووڵەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ھاوەڵناو) ڕەنگێکی تۆخ و تاریک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He had a pale face with deep blue eyes."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕووخسارێکی ڕەنگ‌پەڕیو و چاوێکی شینی تۆخی ھەبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps15("en-US"),
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
                            "The colour is deeper when the grapes are dried."),
                    ExampleSentenceKurdish(
                        text: "ڕەنگەکە تۆخترە کە ترێیەکان وشک دەبنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (ھاوەڵناو) دەنگی نزم"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I heard his deep warm voice filling the room."),
                    ExampleSentenceKurdish(
                        text: "گوێم لە دەنگە گڕەکەی بوو ژوورەکەی گرتبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps17("en-US"),
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
                        text: "We heard a deep roar in the distance."),
                    ExampleSentenceKurdish(
                        text: "گوێم لە نەڕەیەکی قووڵ بوو لە دوورەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٠. (ھاوەڵناو) کە بە توندی ھەستی پێدەکرێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They expressed deep concern."),
                    ExampleSentenceKurdish(text: "نیگەرانی قووڵیان دەربڕی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps19("en-US"),
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
                            "We extend our deepest sympathies to his family."),
                    ExampleSentenceKurdish(
                        text: "ھاوخەمی قووڵی خۆمان بۆ خێزانەکەی ڕادەگەیەنین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps20("en-US"),
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
                        text: "They have a deep respect for tradition."),
                    ExampleSentenceKurdish(
                        text: "ڕێزێکی زۆرمان بۆ نەریتەکان ھەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١١. (ھاوەڵناو) بە ئاستێکی زۆر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "He's in deep trouble."),
                    ExampleSentenceKurdish(text: "لە کێشەیەکی قووڵدایە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps22("en-US"),
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
                            "The affair had exposed deep divisions within the party."),
                    ExampleSentenceKurdish(
                        text:
                            "بابەتەکە ناکۆکی قووڵی لەناو پارتەکەدا درووست کردبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٢. (ھاوەڵناو) پیشاندانی زانیاری و تێگەشتنی زۆر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She had reached a deep understanding of the local culture."),
                    ExampleSentenceKurdish(
                        text:
                            "گەشتبوو بە تێگەشتنێکی زۆر بۆ کەلتوورە خۆجێییەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps24("en-US"),
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
                            "We will need a deeper analysis of this problem."),
                    ExampleSentenceKurdish(
                        text: "پێویستیمان بە شیکردنەوەیەکی زیاتری ئەم کێشەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps25("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٣. (ھاوەڵناو) سەخت بۆ تێگەشتن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "This discussion's getting too deep for me."),
                    ExampleSentenceKurdish(
                        text: "باسەکە زۆر قووڵ دەبێتەوە بۆ من."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps26("en-US"),
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
                            "He always sought for a deeper meaning in everything."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەمیشە بۆ واتایەکی قووڵتر لە ھەموو شتێکدا دەگەڕا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps27("en-US"),
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
                            "They spent hours discussing deep philosophical issues."),
                    ExampleSentenceKurdish(
                        text:
                            "چەندین کاتژمێریان بەسەر برد بە باسکردنی بابەتی قووڵی فەلسەفی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps28("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps28("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٤. (ھاوەڵناو) بە تەواوی بەژدار لە چالاکییەک یان دۆخێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The firm ended up deep in debt."),
                    ExampleSentenceKurdish(
                        text: "کۆمپانیەکە کۆتایی پێھات لە قەرزێکی خەستدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps29("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps29("en-US"),
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
                            "He is often so deep in his books that he forgets to eat."),
                    ExampleSentenceKurdish(
                        text:
                            "زۆرجار قووڵدەبێتەوە لە کتێبدا کە بیری دەچێت خواردن بخوات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps30("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps30("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٥. (ھاوەڵناو) کەسێک کە ھەست و سۆزی دەشارێتەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She's always been a deep one, trusting no one."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەمیشە کەسێکی ئاڵۆز بووە، باوەڕی بە کەس نەبووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps31("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps31("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٦. (ھاوەڵکار) مەودایەکی زۆر لە ڕووی شتێک یان لە ناو شتێکدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Dig deeper!"),
                    ExampleSentenceKurdish(text: "قووڵتر بکەنە!"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps32("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps32("en-US"),
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
                        text: "The miners were trapped deep underground."),
                    ExampleSentenceKurdish(
                        text:
                            "کان ھەڵکەنەکان قووڵ لەژێر زەویدا گیریان خواردبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps33("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps33("en-US"),
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
                        text: "He stood with his hands deep in his pockets."),
                    ExampleSentenceKurdish(
                        text: "وەستابوو بە دەستەکانی قووڵ لە گیرفانیدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps34("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps34("en-US"),
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
                        text: "He gazed deep into her eyes."),
                    ExampleSentenceKurdish(text: "قووڵ ڕووانی لە چاوەکانی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps35("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps35("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٧. (ناو) دەریا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "His body was committed to the deep (= he was buried at sea)."),
                    ExampleSentenceKurdish(text: "جەستەی بە دەریا سپێردرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps36("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps36("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٨. (ناو) بەشێکی قووڵی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "In the deep of night, the city streets were deserted and silent."),
                    ExampleSentenceKurdish(
                        text:
                            "لە قوڵایی شەودا، شەقامەکانی شارەکە چۆڵ و بێ‌دەنگ بوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeeps37("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeeps37("en-US"),
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
- Adjective: deep (derived forms: deeper, deepest)
1. Marked by depth of thinking
"deep thoughts"; "a deep allegory"
 
2. Very distant in time or space
"deep in the past"; "deep in enemy territory"; "deep in the woods"; "a deep space probe"
 
3. Intense or extreme
"in deep trouble"; "deep happiness"
 
4. Not easily disturbed or changed; big or strong
"a deep breath"; "a deep sigh"; "deep concentration"; "deep emotion"; "a deep trance"; "in a deep sleep"
 
5. Having great spatial extension or penetration downward or inward from an outer surface or backward or laterally or outward from a centre; sometimes used in combination
"a deep well"; "a deep dive"; "deep water"; "a deep casserole"; "a deep gash"; "deep massage"; "deep pressure receptors in muscles"; "deep shelves"; "a deep closet"; "surrounded by a deep yard"; "hit the ball to deep centre field"; "in deep space"; "waist-deep"
 
6. Having or denoting a low vocal or instrumental range (= bass)
"a deep voice";
 
7. Strong; intense (= rich)
"deep purple";
 
8. Relatively thick from top to bottom
"deep carpets"; "deep snow"
 
9. Extending relatively far inward
"a deep border"
 
10. (of darkness) densely dark (= thick)
"a face in deep shadow"; "deep night";
 
11. Large in quantity or size
"deep cuts in the budget"
 
12. With head or back bent low
"a deep bow"
 
13. Of an obscure nature (= cryptic, cryptical, inscrutable, mysterious, mystifying)
"a deep dark secret";
 
14. Difficult to penetrate; incomprehensible to one of ordinary understanding or knowledge (= abstruse, recondite)
"a deep metaphysical theory";
 
15. Exhibiting great cunning usually with secrecy
"deep political machinations"; "a deep plot"

- Adverb: deep 
1. To a great depth; far down or in (= deeply)
"dug deep";
 
2. To an advanced time (= late)
"deep into the night";
 
3. To a great distance
"penetrated deep into enemy territory"; "went deep into the woods"

- Noun: deep (derived forms: deeps)
1. The central and most intense or profound part
"in the deep of night"; "in the deep of winter"
 
2. A long steep-sided depression in the ocean floor (= trench, oceanic abyss)
 
3. Literary term for an ocean
"denizens of the deep"
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
  final String _videoId = 'kHrjgWoy8qY';
  final double _startSeconds = 291;

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

class YoutubeEmbeddedone extends StatefulWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  State<YoutubeEmbeddedone> createState() => _YoutubeEmbeddedoneState();
}

class _YoutubeEmbeddedoneState extends State<YoutubeEmbeddedone> {
  late YoutubePlayerController _controller;
  final String _videoId = '3cxHwQl9pNM';
  final double _startSeconds = 85;

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
  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 1186;

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
  final String _videoId = '_Z0ZQT0FttM';
  final double _startSeconds = 2147;

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
  final String _videoId = 'VwPGtn9qJZ4';
  final double _startSeconds = 1039;

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
  final String _videoId = 'dThvyim4tbU';
  final double _startSeconds = 98;

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
  final String _videoId = 'H3YesThIu6w';
  final double _startSeconds = 269;

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