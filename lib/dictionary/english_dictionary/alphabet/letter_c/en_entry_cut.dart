import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

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
    await flutterTts.speak("cut");
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
    await flutterTts.speak("cut");
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
    await flutterTts.speak("She cut her finger on a piece of glass.");
  }

  Future<void> speakcuts2(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He cut himself shaving.");
  }

  Future<void> speakcuts3(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Sometimes people experiencing distress cut themselves.");
  }

  Future<void> speakcuts4(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She had fallen and cut her head open.");
  }

  Future<void> speakcuts5(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She picked up the knife and cut into the meat.");
  }

  Future<void> speakcuts6(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You need a powerful saw to cut through metal.");
  }

  Future<void> speakcuts7(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bus was cut in two by the train.");
  }

  Future<void> speakcuts8(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Now cut the tomatoes in half.");
  }

  Future<void> speakcuts9(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He cut the loaf into thick slices.");
  }

  Future<void> speakcuts10(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She cut the loaf in two and gave me one of the halves.");
  }

  Future<void> speakcuts11(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll cut the apple in half.");
  }

  Future<void> speakcuts12(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cut the cake into six pieces.");
  }

  Future<void> speakcuts13(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cut the carrots in half lengthwise.");
  }

  Future<void> speakcuts14(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She cuts hair for a living.");
  }

  Future<void> speakcuts15(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's had his hair cut really short.");
  }

  Future<void> speakcuts16(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her hair had been very well cut.");
  }

  Future<void> speakcuts17(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("First, cut a long piece of string.");
  }

  Future<void> speakcuts18(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He cut four thick slices from the loaf.");
  }

  Future<void> speakcuts19(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I cut them all a piece of birthday cake.");
  }

  Future<void> speakcuts20(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He cut himself shaving.0");
  }

  Future<void> speakcuts21(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Workmen cut a hole in the pipe.");
  }

  Future<void> speakcuts22(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The climbers cut steps in the ice.");
  }

  Future<void> speakcuts23(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This knife won't cut.");
  }

  Future<void> speakcuts24(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sandstone cuts easily.");
  }

  Future<void> speakcuts25(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Buyers will bargain hard to cut the cost of the house they want.");
  }

  Future<void> speakcuts26(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His salary has been cut by ten per cent.");
  }

  Future<void> speakcuts27(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The Bank of England has cut interest rates to 1.5 per cent.");
  }

  Future<void> speakcuts28(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Could you cut your essay from 5 000 to 3 000 words?");
  }

  Future<void> speakcuts29(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We have managed to cut our costs drastically.");
  }

  Future<void> speakcuts30(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Sometimes people experiencing distress cut themselves.0");
  }

  Future<void> speakcuts31(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The President has promised to cut taxes significantly.");
  }

  Future<void> speakcuts32(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The injured driver had to be cut from the wreckage.");
  }

  Future<void> speakcuts33(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Two survivors were cut free after being trapped for twenty minutes.");
  }

  Future<void> speakcuts34(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The swimsuit was cut high in the leg.");
  }

  Future<void> speakcuts35(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This scene was cut from the final version of the movie.");
  }

  Future<void> speakcuts36(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You can cut and paste between different programs.");
  }

  Future<void> speakcuts37(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cut the chatter and get on with your work!");
  }

  Future<void> speakcuts38(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She has cut all ties with her family.");
  }

  Future<void> speakcuts39(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He has refused to cut links with these companies.");
  }

  Future<void> speakcuts40(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She had fallen and cut her head open.0");
  }

  Future<void> speakcuts41(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The director shouted ‘Cut!’");
  }

  Future<void> speakcuts42(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The scene cuts from the bedroom to the street.");
  }

  Future<void> speakcuts43(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's always cutting class.");
  }

  Future<void> speakcuts44(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His cruel remarks cut her deeply.");
  }

  Future<void> speakcuts45(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("When did she cut her first tooth?");
  }

  Future<void> speakcuts46(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Blood poured from the deep cut on his arm.");
  }

  Future<void> speakcuts47(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Clean the cut and cover it to prevent infection.");
  }

  Future<void> speakcuts48(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He has a small cut on his finger.");
  }

  Future<void> speakcuts49(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("One man was attacked and suffered cuts to his face.");
  }

  Future<void> speakcuts50(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She picked up the knife and cut into the meat.0");
  }

  Future<void> speakcuts51(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She suffered only minor cuts and grazes as a result of the accident.");
  }

  Future<void> speakcuts52(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Using sharp scissors, make a small cut in the material.");
  }

  Future<void> speakcuts53(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The company has made another round of job cuts this year.");
  }

  Future<void> speakcuts54(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They announced cuts in public spending.");
  }

  Future<void> speakcuts55(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The cuts will come into effect next May.");
  }

  Future<void> speakcuts56(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Your hair could do with a cut.");
  }

  Future<void> speakcuts57(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Despite its simplicity, the dress stood out due to its elegant cut.");
  }

  Future<void> speakcuts58(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They were rewarded with a cut of 5% from the profits.");
  }

  Future<void> speakcuts59(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He takes a cut of the profits.");
  }

  Future<void> speakcuts60(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You need a powerful saw to cut through metal.0");
  }

  Future<void> speakcuts61(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The director objected to the cuts ordered by the censor.");
  }

  Future<void> speakcuts62(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Several scenes had been removed in the cut of the movie shown at the festival.");
  }

  Future<void> speakcuts63(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We're working on the first cut of next year's budget.");
  }

  Future<void> speakcuts64(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sirloin is the most expensive cut of beef.");
  }

  Future<void> speakcuts70(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bus was cut in two by the train.0");
  }

  Future<void> speakcuts80(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Now cut the tomatoes in half.0");
  }

  Future<void> speakcuts90(String languageCode) async {
    // DOPSUM: CHANGE speakcut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He cut the loaf into thick slices.0");
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
کوردی: بڕین، دابڕین، بڕیار، بڕشت،	پارچە، کوت، بڕ، پل، لەت،	بەش، کەرت، پشک،	کون (بە شتێکی تیژ تێ‌کرابێ)،	برین، زام، ڕێش،	کەم‌بوونەوە، داکشان، ھاتنەخوارەوە، دابەزین،	سانسۆر، لابردن، قرتاندن، پەڕاندن،	لێدان، پیاکێشان،	بڕگە، بەر، بڕشت، تراش، بڕاو، لەت‌کراوە، قرتاو،	تاشراو، ھەڵکەنراو، داتاشراو،	ورد، لەت‌لەت، تیکەتیکە، پارچەپارچە،	کەمەوبوو، داشکاو 5خەساو، خەسێنراو، یەختەکراو،	بڕگەبڕگە، ددانەددانە،	کورتەوەکراو، قرتێنراو، پەڕێنراو، لابراو
"""),
          const DefinitionKurdish(text: "١. (کردار) بڕینی شتێک"),
          SentencesRow(
            englishText: "She cut her finger on a piece of glass.",
            kurdishText:
                "پەنجەی بە پارچە شووشەیەک بڕی.", // cut", please follow LX instructions
            onPressedBritish: () => speakcuts1("en-GB"),
            onPressedAmerican: () => speakcuts1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He cut himself (= his face) shaving.",
            kurdishText: "لە کاتی تاشیندا خۆی زامدار کرد.",
            onPressedBritish: () => speakcuts2("en-GB"),
            onPressedAmerican: () => speakcuts2("en-US"),
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
                                    "ھەندێک جار ئەو کەسانەی ھەست بە خەفەت دەکەن خۆیان زامدار دەکەن."),
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
                                    "چەقۆکەی ھەڵگرت و دەستی بە بڕینی مریشکەکە کرد."),
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
                                    "پێویستیت بە مشارێکی بەھێزە بۆ ئەوەی کانزاکە ببڕیت."),
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
          SentencesRow(
            englishText: "The bus was cut in two by the train.",
            kurdishText: "پاسەکە دووکەرت کرا لەلایەن شەمەندەفەرەکەوە.",
            onPressedBritish: () => speakcuts7("en-GB"),
            onPressedAmerican: () => speakcuts7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Now cut the tomatoes in half.",
            kurdishText: "ئێستا تەماتەکان لە ناوەڕاستدا کەرت بکە.",
            onPressedBritish: () => speakcuts8("en-GB"),
            onPressedAmerican: () => speakcuts8("en-US"),
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
          SentencesRow(
            englishText: "She cuts hair for a living.",
            kurdishText: "کاری سەرتاشی دەکات.",
            onPressedBritish: () => speakcuts14("en-GB"),
            onPressedAmerican: () => speakcuts14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He's had his hair cut really short.",
            kurdishText: "قژی زۆر کورت بڕیوە.",
            onPressedBritish: () => speakcuts15("en-GB"),
            onPressedAmerican: () => speakcuts15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Her hair had been very well cut.",
            kurdishText: "قژی زۆر باش بڕدراوە.",
            onPressedBritish: () => speakcuts16("en-GB"),
            onPressedAmerican: () => speakcuts16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) لابردنی شتێک یان بەشێکی بە چەقۆیەک، ھتد"),
          SentencesRow(
            englishText: "First, cut a long piece of string.",
            kurdishText: "سەرەتا، تاڵێکی درێژ ببڕە.",
            onPressedBritish: () => speakcuts17("en-GB"),
            onPressedAmerican: () => speakcuts17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He cut four thick slices from the loaf.",
            kurdishText: "چوار پارچەی ئەستووری لە سەموونەکە بڕی.",
            onPressedBritish: () => speakcuts18("en-GB"),
            onPressedAmerican: () => speakcuts18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I cut them all a piece of birthday cake.",
            englishNote: "also: I cut a piece of birthday cake for them all.",
            kurdishText: "پارچەیەکم لە کێکی لەدایکبوون بڕی بۆ ھەموویان.",
            onPressedBritish: () => speakcuts19("en-GB"),
            onPressedAmerican: () => speakcuts19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Shall I cut you a piece of cake?",
            kurdishText: "پارچەیەک کێکت بۆ ببڕم.",
            onPressedBritish: () => speakcuts20("en-GB"),
            onPressedAmerican: () => speakcuts20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) درووستکردنی شتێک بە داتاشین یان لێبڕین لێی بە چەقۆ، ھتد"),
          SentencesRow(
            englishText: "Workmen cut a hole in the pipe.",
            kurdishText: "کرێکارەکان کونێکیان کردە بۆرییەکە.",
            onPressedBritish: () => speakcuts21("en-GB"),
            onPressedAmerican: () => speakcuts21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The climbers cut steps in the ice.",
            kurdishText: "شاخەوانان جێ ھەنگاویان دەکردەوە لە سەھۆڵەکە.",
            onPressedBritish: () => speakcuts22("en-GB"),
            onPressedAmerican: () => speakcuts22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (کردار) کە دەکرێت شت ببڕێت"),
          SentencesRow(
            englishText: "This knife won't cut.",
            kurdishText: "ئەم چەقۆیە شت نابڕێت.",
            onPressedBritish: () => speakcuts23("en-GB"),
            onPressedAmerican: () => speakcuts23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (کردار) کە دەکرێت ببڕدرێت"),
          SentencesRow(
            englishText: "Sandstone cuts easily.",
            kurdishText: "بەردەلم بە ئاسانی دەبڕدرێت.",
            onPressedBritish: () => speakcuts24("en-GB"),
            onPressedAmerican: () => speakcuts24("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) کەمکردنەوەی شتێک بە بڕینی لێی"),
          SentencesRow(
            englishText:
                "Buyers will bargain hard to cut the cost of the house they want.",
            kurdishText:
                "کڕیاران سەودای زۆر دەکەن بۆ کەمکردنەوەی نرخی ئەو خانووەی دەیانەوێت.",
            onPressedBritish: () => speakcuts25("en-GB"),
            onPressedAmerican: () => speakcuts25("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "His salary has been cut by ten per cent.",
            kurdishText: "مووچەکەی بە ڕێژەی دە لە سەد کەمکراوەتەوە.",
            onPressedBritish: () => speakcuts26("en-GB"),
            onPressedAmerican: () => speakcuts26("en-US"),
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
                                    "The President has promised to cut taxes significantly."),
                            ExampleSentenceKurdish(
                                text:
                                    "سەرۆک بەڵێنی داوە ڕێژەی باج بە ئاستێکی زۆر کەم بکاتەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts31("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts31("en-US"),
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
                                    "The Bank of England has cut interest rates to 1.5 per cent."),
                            ExampleSentenceKurdish(
                                text:
                                    "بانکی ئینگلتەرە ڕێژەی دووی کەمکردووەتەوە بۆ ١,٥ لە سەد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts27("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts27("en-US"),
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
                                    "Could you cut your essay from 5 000 to 3 000 words?"),
                            ExampleSentenceKurdish(
                                text:
                                    "دەتوانیت وتارەکەت لە ٥٠٠٠ وشەوە بۆ ٣٠٠٠ وشە کەم بکەیتەوە؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts28("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts28("en-US"),
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
                                    "We have managed to cut our costs drastically."),
                            ExampleSentenceKurdish(
                                text:
                                    "توانیومانە خەرجییەکانمان بە ئاستێکی زۆر کەم بکەینەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts29("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts29("en-US"),
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
                                    "The price has been cut from €250 to €175."),
                            ExampleSentenceKurdish(
                                text:
                                    "نرخەکە لە ٢٥٠ یۆرۆوە کەمکراوەتەوە بۆ ١٧٥ یۆرۆ."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts30("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts30("en-US"),
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
                  "٩. (کردار) ڕێگەدان بەوەی کە کەسێک لە شوێنێک ھەڵبێت بە بڕینی حەبلێک، شتێک، ھتد کە ڕێگری لێ دەکات"),
          SentencesRow(
            englishText: "The injured driver had to be cut from the wreckage.",
            kurdishText: "شۆفێرە بریندارەکە دەبوو لە لەت‌وکوتەکە دەربھێندرێت.",
            onPressedBritish: () => speakcuts32("en-GB"),
            onPressedAmerican: () => speakcuts32("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Two survivors were cut free after being trapped for twenty minutes.",
            kurdishText:
                "ڕزگاربووان ئازادکران لە دوای ئەوەی بۆ بیست خولەک گیریان خواردبوو.",
            onPressedBritish: () => speakcuts33("en-GB"),
            onPressedAmerican: () => speakcuts33("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (کردار) دیزاین کردن و بڕینی پارچە جلێک بە شێوەیەکی دیاریکراو"),
          SentencesRow(
            englishText: "The swimsuit was cut high in the leg.",
            kurdishText: "جلە مەلەکە لە لاقدا بەرز دیزاین کرا.",
            onPressedBritish: () => speakcuts34("en-GB"),
            onPressedAmerican: () => speakcuts34("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١١. (کردار) سڕینەوەی شتێک لە شتێک"),
          SentencesRow(
            englishText:
                "This scene was cut from the final version of the movie.",
            kurdishText: "ئەم دیمەنە لە کۆتا ڤێرژنی فیلمەکە بڕدرا.",
            onPressedBritish: () => speakcuts35("en-GB"),
            onPressedAmerican: () => speakcuts35("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (کردار) لابردنی پارچە نووسینێک لە کۆمپیوتەرێک و دانانی لە شوێنێکی دیکە"),
          SentencesRow(
            englishText: "You can cut and paste between different programs.",
            kurdishText:
                "دەتوانیت نووسین ببڕیت و بیلکێنیت لە پڕۆگرامی جیاوازدا.",
            onPressedBritish: () => speakcuts36("en-GB"),
            onPressedAmerican: () => speakcuts36("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٣. (کردار) بۆ گوتن بە کەسێک بۆ ئەوەی لە کردنی شتێک بوەستێت"),
          SentencesRow(
            englishText: "Cut the chatter and get on with your work!",
            kurdishText: "واز لە چەنەدان بێنە و دەست بە کار بکە!",
            onPressedBritish: () => speakcuts37("en-GB"),
            onPressedAmerican: () => speakcuts37("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٤. (کردار) بە تەواوی کۆتاییھێنان بە پەیوەندی یان گفتوگۆ لەگەڵ کەسێک"),
          SentencesRow(
            englishText: "She has cut all ties with her family.",
            kurdishText:
                "ھەموو پەیوەندییەکانی لەگەڵ خێزانەکەی کۆتایی پێھێناوە.",
            onPressedBritish: () => speakcuts38("en-GB"),
            onPressedAmerican: () => speakcuts38("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He has refused to cut links with these companies.",
            kurdishText:
                "ڕەتیکردووەتەوە پەیوەندی لەگەڵ ئەم کۆمپانیانەدا بپچڕێنێت.",
            onPressedBritish: () => speakcuts39("en-GB"),
            onPressedAmerican: () => speakcuts39("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٥. (کردار) ئامادەکردنی فیلمێک بە سڕینەوەی ژمارەیەک بەشی یان گۆڕینی ڕیزبەندییان"),
          SentencesRow(
            englishText: "The movie was a cut by John Green.",
            kurdishText: "فیلمەکە لەلایەن جۆن گرینەوە کاری دەستکاری بۆ کرا.",
            onPressedBritish: () => speakcuts40("en-GB"),
            onPressedAmerican: () => speakcuts40("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٦. (کردار) وەستان لە وێنە گرتن"),
          SentencesRow(
            englishText: "The director shouted ‘Cut!’",
            kurdishText: "دەرھێنەرەکە ھاواری کرد 'بوەستن!'",
            onPressedBritish: () => speakcuts41("en-GB"),
            onPressedAmerican: () => speakcuts41("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٧. (کردار) جوڵان بە خێرایی لە دیمەنێکەوە بۆ یەکێکی دیکە"),
          SentencesRow(
            englishText: "The scene cuts from the bedroom to the street.",
            kurdishText:
                "دیمەنەکە بەخێرایی دەچێت لە ژووری خەوەوە بۆ سەر شەقام.",
            onPressedBritish: () => speakcuts42("en-GB"),
            onPressedAmerican: () => speakcuts42("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٨. (کردار) نەچوون بۆ وانەی خوێندن"),
          SentencesRow(
            englishText: "He's always cutting class.",
            kurdishText: "ھەمیشە لە وانەکان دووردەکەوێتەوە.",
            onPressedBritish: () => speakcuts43("en-GB"),
            onPressedAmerican: () => speakcuts43("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٩. (کردار) ئازاردانی دەروونی کەسێک"),
          SentencesRow(
            englishText: "His cruel remarks cut her deeply.",
            kurdishText: "لێدوانە بێ‌بەزەییەکانی بە قووڵی برینداری کرد.",
            onPressedBritish: () => speakcuts44("en-GB"),
            onPressedAmerican: () => speakcuts44("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢٠. (کردار) دەرکردنی"),
          SentencesRow(
            englishText: "When did she cut her first tooth?",
            kurdishText: "کەی یەکەم ددانی دەرکرد؟",
            onPressedBritish: () => speakcuts45("en-GB"),
            onPressedAmerican: () => speakcuts45("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢١. (ناو) برینێک کە بە شتێکی تیژ درووست بووە"),
          SentencesRow(
            englishText: "Blood poured from the deep cut on his arm.",
            kurdishText: "خوێن چۆڕەی کرد لە برینە قووڵەکەی باڵی.",
            onPressedBritish: () => speakcuts46("en-GB"),
            onPressedAmerican: () => speakcuts46("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Clean the cut and cover it to prevent infection.",
            kurdishText: "برینەکە پاک بکەوە بۆ ئەوەی لە ھەوکردن بیپارێزی.",
            onPressedBritish: () => speakcuts47("en-GB"),
            onPressedAmerican: () => speakcuts47("en-US"),
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
                                text: "He has a small cut on his finger."),
                            ExampleSentenceKurdish(
                                text: "برینێکی بچووک لەسەر پەنجەی ھەیە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts48("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts48("en-US"),
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
                                    "One man was attacked and suffered cuts to his face."),
                            ExampleSentenceKurdish(
                                text:
                                    "پیاوێک ھێرشی کرایە سەر و برینێکی بەرکەوت لەسەر ڕووخساری."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts49("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts49("en-US"),
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
                                text: "She got a bad cut over her right eye."),
                            ExampleSentenceKurdish(
                                text:
                                    "تووشی برینێکی خراپ بوو لەسەر چاوی چەپی."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts50("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts50("en-US"),
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
                                    "She suffered only minor cuts and grazes as a result of the accident."),
                            ExampleSentenceKurdish(
                                text:
                                    "تەنھا تووشی برینی بچووک و داڕووشان بوویەوە لە ئەنجامی ڕووداوەکە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcuts51("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcuts51("en-US"),
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
              text: "٢٢. (ناو) کونێک لە شتێکدا کە بە شتێکی تیژ درووستکراوە"),
          SentencesRow(
            englishText:
                "Using sharp scissors, make a small cut in the material.",
            kurdishText: "بە مەقەستی تیژ کونێکی بچووک بکە پارچەکە.",
            onPressedBritish: () => speakcuts52("en-GB"),
            onPressedAmerican: () => speakcuts52("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢٣. (ناو) کەمکردنەوە"),
          SentencesRow(
            englishText:
                "The company has made another round of job cuts this year.",
            kurdishText:
                "کۆمپانیاکە قۆناغێکی دیکەی کەمکردنەوەی کاری دەستپێکردووە بۆ ئەمساڵ.",
            onPressedBritish: () => speakcuts53("en-GB"),
            onPressedAmerican: () => speakcuts53("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They announced cuts in public spending.",
            kurdishText: "کەمکردنەوەیان لە خەرجی گشتیدا ڕاگەیاند.",
            onPressedBritish: () => speakcuts54("en-GB"),
            onPressedAmerican: () => speakcuts54("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The cuts will come into effect next May.",
            kurdishText:
                "کەمکردنەوەکان ئایاری داھاتوو دەچنە قۆناغی جێبەجێکردنەوە.",
            onPressedBritish: () => speakcuts55("en-GB"),
            onPressedAmerican: () => speakcuts55("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢٤. (ناو) بڕینی قژی کەسێک"),
          SentencesRow(
            englishText: "Your hair could do with a cut (= it is too long).",
            kurdishText: "پرچت پێویستی بە بڕینێکە.",
            onPressedBritish: () => speakcuts56("en-GB"),
            onPressedAmerican: () => speakcuts56("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٥. (ناو) دیزاین و شێوازی جلێک بەھۆی شێوەی بڕینی"),
          SentencesRow(
            englishText:
                "Despite its simplicity, the dress stood out due to its elegant cut.",
            kurdishText:
                "سەرەڕای سادەییەکەی، جلەکە بەرچاو کەوت بەھۆی دیزاینە شۆخەکەی.",
            onPressedBritish: () => speakcuts57("en-GB"),
            onPressedAmerican: () => speakcuts57("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢٦. (ناو) بڕێک لە شتێک"),
          SentencesRow(
            englishText:
                "They were rewarded with a cut of 5% from the profits.",
            kurdishText: "خەڵات کران بە پشکی ٥٪ لە قازانجەکان.",
            onPressedBritish: () => speakcuts58("en-GB"),
            onPressedAmerican: () => speakcuts58("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He takes a cut of the profits.",
            kurdishText: "بەشێک لە قازانجەکان دەبات.",
            onPressedBritish: () => speakcuts59("en-GB"),
            onPressedAmerican: () => speakcuts59("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "By the time the organizers have had their cut, there won't be much left.",
            kurdishText:
                "تا ئەوکاتەی ڕێکخەران پشکی خۆیان دەبەن زۆر نامێنێتەوە.",
            onPressedBritish: () => speakcuts60("en-GB"),
            onPressedAmerican: () => speakcuts60("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٧. (ناو) بڕینی فیلمێک، شانۆیەک، پارچە نووسینێک، ھتد"),
          SentencesRow(
            englishText:
                "The director objected to the cuts ordered by the censor.",
            kurdishText:
                "دەرھێنەرەک وەستایەوە دژ بەو بڕینانەی کە لەلایەن چاودێرەکەوە بڕیاری لێدرا.",
            onPressedBritish: () => speakcuts61("en-GB"),
            onPressedAmerican: () => speakcuts61("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٨. (ناو) وەشانێکی شتێک کە درووستکراوە"),
          SentencesRow(
            englishText:
                "Several scenes had been removed in the cut of the movie shown at the festival.",
            kurdishText:
                "ژمارەیەک دیمەن سڕدراوەتەوە لەو وەشانەی فیلمەکە کە لە فیستیڤاڵەکە پیشاندرا.",
            onPressedBritish: () => speakcuts62("en-GB"),
            onPressedAmerican: () => speakcuts62("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "We're working on the first cut of next year's budget.",
            kurdishText: "کار لەسەر یەکەم وەشانی بودجەی ساڵی داھاتوو دەکەین.",
            onPressedBritish: () => speakcuts63("en-GB"),
            onPressedAmerican: () => speakcuts63("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢٩. (ناو) پارچە گۆشتێک کە لە بەشێکی دیاریکراوی ئاژەڵێک بڕدراوە"),
          SentencesRow(
            englishText: "Sirloin is the most expensive cut of beef.",
            kurdishText: "سیرلۆین گرانترین پارچە گۆشتی مانگایە.",
            onPressedBritish: () => speakcuts64("en-GB"),
            onPressedAmerican: () => speakcuts64("en-US"),
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
- Verb: cut (derived forms: cut, cutting, cuts)
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

- Noun: cut (derived forms: cuts)
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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 516;

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

  final String _videoId = 'Kou7ur5xt_4';
  final double _startSeconds = 275;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 1697;

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

  final String _videoId = 'BxWw8AO4ZmI';
  final double _startSeconds = 56;

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

  final String _videoId = 'rEdl2Uetpvo';
  final double _startSeconds = 145;

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

  final String _videoId = 'nRafaCcfrcI';
  final double _startSeconds = 410;

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

  final String _videoId = 's3B-qp3U5G0';
  final double _startSeconds = 1320;

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