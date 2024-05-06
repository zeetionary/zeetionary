import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycut extends StatefulWidget {
  const EnglishEntrycut({super.key});

  @override
  State<EnglishEntrycut> createState() => _EnglishEntrycutState();
}

class _EnglishEntrycutState extends State<EnglishEntrycut> {
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
    return const EntryTitle(word: "cut");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cut");
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
    return const IPAofEnglish(text: "IpaUK: /kʌt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcut(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cut"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcut("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kʌt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcut(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cut"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcut("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcuts1(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She cut her finger on a piece of glass."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts2(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He cut himself shaving."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts3(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Sometimes people experiencing distress cut themselves."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts4(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She had fallen and cut her head open."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts5(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She picked up the knife and cut into the meat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts6(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You need a powerful saw to cut through metal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts7(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The bus was cut in two by the train."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts8(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Now cut the tomatoes in half."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts9(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He cut the loaf into thick slices."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts10(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She cut the loaf in two and gave me one of the halves."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts11(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'll cut the apple in half."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts12(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Cut the cake into six pieces."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts13(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Cut the carrots in half lengthwise."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts14(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She cuts hair for a living."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts15(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He's had his hair cut really short."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts16(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her hair had been very well cut."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts17(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts18(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts19(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts20(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He cut himself shaving.0"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts21(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts22(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts23(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts24(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts25(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts26(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts27(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts28(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts29(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts30(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Sometimes people experiencing distress cut themselves.0"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts31(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts32(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts33(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts34(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts35(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts36(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts37(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts38(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts39(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts40(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She had fallen and cut her head open.0"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts41(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts42(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts43(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts44(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts45(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts46(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts47(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts48(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts49(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts50(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She picked up the knife and cut into the meat.0"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts51(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts52(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts53(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts54(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts55(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts56(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts57(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts58(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts59(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts60(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You need a powerful saw to cut through metal.0"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts61(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts62(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts63(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts64(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts65(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts66(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts67(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts6700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts68(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts6800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts69(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts6900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts70(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The bus was cut in two by the train.0"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts71(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts7100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts72(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts7200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts73(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts7300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts74(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts7400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts75(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts7500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts76(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts7600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts77(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts7700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts78(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts7800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts79(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts7900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts80(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Now cut the tomatoes in half.0"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts81(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts8100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts82(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts8200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts83(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts8300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts84(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts8400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts85(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts8500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts86(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts8600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts87(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts8700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts88(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts8800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts89(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcuts8900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcuts90(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He cut the loaf into thick slices.0"); // DOPSUM: CHANGE TEXT
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
کوردی: بڕین، دابڕین، بڕیار، بڕشت،	پارچە، کوت، بڕ، پل، لەت،	بەش، کەرت، پشک،	کون (بە شتێکی تیژ تێ‌کرابێ)،	برین، زام، ڕێش،	کەم‌بوونەوە، داکشان، هاتنەخوارەوە، دابەزین،	سانسۆر، لابردن، قرتاندن، پەڕاندن،	لێدان، پیاکێشان،	بڕگە، بەر، بڕشت، تراش، بڕاو، لەت‌کراوە، قرتاو،	تاشراو، هەڵکەنراو، داتاشراو،	ورد، لەت‌لەت، تیکەتیکە، پارچەپارچە،	کەمەوبوو، داشکاو 5خەساو، خەسێنراو، یەختەکراو،	بڕگەبڕگە، ددانەددانە،	کورتەوەکراو، قرتێنراو، پەڕێنراو، لابراو
"""),
          const DefinitionKurdish(text: "١. (کردار) بڕینی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She cut her finger on a piece of glass."),
                    ExampleSentenceKurdish(
                        text: "پەنجەی بە پارچە شووشەیەک بڕی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "cut", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcuts1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcuts1("en-US"),
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
                        text: "He cut himself (= his face) shaving."),
                    ExampleSentenceKurdish(
                        text: "لە کاتی تاشیندا خۆی زامدار کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcuts2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcuts2("en-US"),
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
                                    "Sometimes people experiencing distress cut themselves (= deliberately)."),
                            ExampleSentenceKurdish(
                                text:
                                    "هەندێک جار ئەو کەسانەی هەست بە خەفەت دەکەن خۆیان زامدار دەکەن."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts3("en-US"),
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
                                text: "She had fallen and cut her head open."),
                            ExampleSentenceKurdish(
                                text: "کەوتبوو و سەری قڵیشاندبوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts4("en-US"),
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
                                    "She picked up the knife and cut into the meat."),
                            ExampleSentenceKurdish(
                                text:
                                    "چەقۆکەی هەڵگرت و دەستی بە بڕینی مریشکەکە کرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts5("en-US"),
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
                                    "You need a powerful saw to cut through metal."),
                            ExampleSentenceKurdish(
                                text:
                                    "پێویستیت بە مشارێکی بەهێزە بۆ ئەوەی کانزاکە ببڕیت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts6("en-US"),
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
              text: "٢. (کردار) کەرتکردنی شتێک بۆ دوو بەش یان زیاتر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The bus was cut in two by the train."),
                    ExampleSentenceKurdish(
                        text: "پاسەکە دووکەرت کرا لەلایەن شەمەندەفەرەکەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcuts7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcuts7("en-US"),
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
                        text: "Now cut the tomatoes in half."),
                    ExampleSentenceKurdish(
                        text: "ئێستا تەماتەکان لە ناوەڕاستدا کەرت بکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcuts8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcuts8("en-US"),
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
                                text: "He cut the loaf into thick slices."),
                            ExampleSentenceKurdish(
                                text: "سەموونەکەی کرد بە پارچەی ئەستوورەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts9("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts9("en-US"),
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
                                    "She cut the loaf in two and gave me one of the halves."),
                            ExampleSentenceKurdish(
                                text:
                                    "سەموونەکەی کرد بە دوو کەرتەوە و یەکێک لە نیوەکانی داپێم."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts10("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts10("en-US"),
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
                                text: "I'll cut the apple in half."),
                            ExampleSentenceKurdish(
                                text: "سێوەکە لە ناوەڕاستدا کەرت دەکەم."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts11("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts11("en-US"),
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
                                text: "Cut the cake into six pieces."),
                            ExampleSentenceKurdish(
                                text: "کێکەکە بکە بە شەش پارچەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts12("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts12("en-US"),
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
                                text: "Cut the carrots in half lengthwise."),
                            ExampleSentenceKurdish(
                                text: "گەزەرکان بە درێژی لە ناوەڕاستدا ببڕە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts13("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts13("en-US"),
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
              text: "٣. (کردار) کورتکردنەوەی شتێک بە بڕینی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "She cuts hair for a living."),
                    ExampleSentenceKurdish(text: "کاری سەرتاشی دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcuts14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcuts14("en-US"),
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
                        text: "He's had his hair cut really short."),
                    ExampleSentenceKurdish(text: "قژی زۆر کورت بڕیوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcuts15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcuts15("en-US"),
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
                        text: "Her hair had been very well cut."),
                    ExampleSentenceKurdish(text: "قژی زۆر باش بڕدراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcuts16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcuts16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) پێنناسە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "speakcuts1700"),
                    ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcuts17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcuts17("en-US"),
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
- Verb: cut (Derived forms: cut, cutting, cuts)
1. Separate with or as if with an instrument
"Cut the rope"
 
2. Make a reduction in, cut down on (= reduce, cut down, cut back, trim, trim down, trim back, bring down)
"The employer wants to cut back health benefits"; "cut down your daily fat intake";
 
3. Turn sharply; change direction abruptly (= swerve, sheer, curve, trend, veer, slue, slew)
"The car cut to the left at the intersection";
 
4. Make an incision or separation
"cut along the dotted line"
 
5. Discharge from a group
"The coach cut two players from the team"
 
6. Form by probing, penetrating, or digging
"cut a hole"; "cut trenches"; "The sweat cut little rivulets into her face"
 
7. (fashion) Style or make in a certain fashion (= tailor)
"cut a dress";
 
8. (sport) hit (a ball) with a spin so that it turns in the opposite direction
"cut a Ping-Pong ball"
 
9. Fill in and give as payment (= write out, issue, make out)
"cut a ticket";
 
10. Separate and assemble the components of (= edit, edit out)
"cut recording tape";
 
11. Intentionally fail to attend (= skip)
"cut class";
 
12. Be able to manage or manage successfully (= hack [informal])
"she could not cut the long days in the office";
 
13. Give the appearance or impression of
"cut a nice figure"
 
14. (boxing) move (one's fist)
"his opponent cut upward toward his chin"
 
15. Pass directly and often in haste
"We cut through the neighbour's yard to get home sooner"
 
16. Pass through or across
"The boat cut the water"
 
17. Make an abrupt change of image or sound
"cut from one scene to another"
 
18. Stop filming
"cut a movie scene"
 
19. Make a recording of
"cut the songs"; "She cut all of her major titles again"
 
20. Record a performance on (a medium)
"cut a record"
 
21. Create by duplicating data (= burn)
"cut a disk";
 
22. Form or shape by cutting or incising
"cut paper dolls"
 
23. Perform or carry out
"cut a caper"
 
24. Function as a cutting instrument
"This knife cuts well"
 
25. Allow incision or separation
"This bread cuts easily"
 
26. Divide a deck of cards at random into two parts to make selection difficult
"Wayne cut"; "She cut the deck for a long time"
 
27. Cause to stop operating by disengaging a switch (= switch off, turn off, turn out)
"cut the engine";
 
28. Reap or harvest
"cut grain"
 
29. Fell by sawing; hew
"The Vietnamese cut a lot of timber while they occupied Cambodia"
 
30. Penetrate injuriously
"The glass from the shattered windscreen cut into her forehead"
 
31. Refuse to acknowledge (= ignore, disregard, snub)
"She cut him dead at the meeting";
 
32. Shorten as if by severing the edges or ends of
"cut my hair"
 
33. Weed out unwanted or unnecessary things (= prune, rationalize, rationalise [Brit])
"We had to lose weight, so we cut the sugar from our diet";
 
34. Dissolve by breaking down the fat of
"soap cuts grease"
 
35. Have a reducing effect
"This cuts into my earnings"
 
36. Cease, stop (= cut off)
"We had to cut short the conversation"; "cut the noise";
 
37. Reduce in scope while retaining essential elements (= abridge, foreshorten, abbreviate, shorten, contract, reduce)
"The manuscript must be cut";
 
38. Lessen the strength or flavour of a solution or mixture (= dilute, thin, thin out, reduce)
"cut bourbon";
 
39. Have grow through the gums
"The baby cut a tooth"
 
40. Grow through the gums
"The new tooth is cutting"
 
41. Cut off the testicles (of male animals such as horses) (= geld)
"the vet cut the young horse";

- Adjective: cut 
1. Separated into parts or laid open or penetrated with a sharp edge or instrument
"the cut surface was mottled"; "cut tobacco"; "blood from his cut forehead"; "bandages on her cut wrists"
 
2. Fashioned or shaped by cutting
"a well-cut suit"; "cut diamonds"; "cut velvet"
 
3. Made neat and tidy by trimming (= trimmed)
"his neatly cut hair";
 
4. (used of grass or vegetation) cut down with a hand implement or machine (= mown)
"the smell of newly cut hay";
 
5. (of pages of a book) having the folds of the leaves trimmed or slit
"the cut pages of the book"
 
6. With parts removed (= shortened)
"the drastically cut film";
 
7. (of a male animal) having the testicles removed (= emasculated, gelded)
"a cut horse";
 
8. (used of rates or prices) reduced usually sharply (= slashed)
"the cut prices attracted buyers";
 
9. Mixed with water (= thinned, weakened)
"sold cut whiskey";

- Noun: cut (Derived forms: cuts)
1. A share of the profits
"everyone got a cut of the earnings"
 
2. (film) an immediate transition from one shot to the next
"the cut from the accident scene to the hospital seemed too abrupt"
 
3. A trench resembling a furrow that was made by erosion or excavation (= gash)
 
4. A step on some scale
"he is a cut above the rest"
 
5. A wound made by cutting (= gash, slash, slice)
"he put a bandage over the cut";
 
6. A piece of meat that has been cut from an animal carcass (= cut of meat)
 
7. A remark capable of wounding mentally (= stinger, burn [informal])
"the unkindest cut of all";
 
8. A distinct selection of music from a recording or a compact disc (= track)
"he played the first cut on the cd";
 
9. The omission that is made when an editorial change shortens a written passage (= deletion, excision)
"an editor's cuts frequently upset young authors";
 
10. The style in which a garment is cut
"a dress of traditional cut"
 
11. A canal made by erosion or excavation
 
12. A refusal to recognize someone you know (= snub, cold shoulder)
"the cut was clearly intentional";
 
13. In baseball; a batter's attempt to hit a pitched ball (= baseball swing, swing)
"he took a vicious cut at the ball";
 
14. (sport) a stroke that puts reverse spin on the ball (= undercut)
"cuts do not bother a good tennis player";
 
15. The division of a deck of cards before dealing (= cutting)
"he insisted that we give him the last cut before every deal";
 
16. The act of penetrating or opening with a sharp edge (= cutting)
"his cut in the lining revealed the hidden jewels";
 
17. The act of cutting something into parts (= cutting)
"his cuts were skilful";
 
18. The act of shortening something by chopping off the ends (= cutting, cutting off)
"the barber gave him a good cut";
 
19. The act of reducing the amount or number
"the mayor proposed extensive cuts in the city budget"
 
20. An unexcused absence from class
"he was punished for taking too many cuts in his maths class"
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
    videoId: 'https://youtu.be/khOUvmOQExc?t=',
    startSeconds: 516,
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
    videoId: 'https://youtu.be/Kou7ur5xt_4?t=',
    startSeconds: 275,
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
    videoId: 'https://youtu.be/HDntl7yzzVI?t=',
    startSeconds: 1697,
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
    videoId: 'https://youtu.be/BxWw8AO4ZmI?t=',
    startSeconds: 56,
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
    videoId: 'https://youtu.be/rEdl2Uetpvo?t=',
    startSeconds: 145,
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
    videoId: 'https://youtu.be/nRafaCcfrcI?t=',
    startSeconds: 410,
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
    videoId: 'https://youtu.be/s3B-qp3U5G0?t=',
    startSeconds: 1320,
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