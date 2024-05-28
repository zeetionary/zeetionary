import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydate extends StatefulWidget {
  const EnglishEntrydate({super.key});

  @override
  State<EnglishEntrydate> createState() => _EnglishEntrydateState();
}

class _EnglishEntrydateState extends State<EnglishEntrydate> {
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
    return const EntryTitle(word: "date");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: date");
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
    return const IPAofEnglish(text: "IpaUK: /deɪt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdate(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("date"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdate("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /deɪt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdate(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("date"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdate("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdates1(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Write today's date at the top of the page."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates2(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They haven't set a date for the wedding yet."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates3(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We need to fix a date for the next meeting."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates4(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I can't come on that date."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates5(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Please give your name, address and date of birth."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates6(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There's no date on this letter."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates7(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "1066 is the most famous date in English history."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates8(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I hated history at school—I could never remember all those dates."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates9(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The painting bears the date 1626."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates10(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The details can be added at a later date."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates11(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The work will be carried out at a future date."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates12(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Call me next week and we'll try and make a date."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates13(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Next Friday? Fine—it's a date!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates14(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        " I've got a date with Lucy tomorrow night."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates15(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We agreed to go out on a date."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates16(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's out on a date with her new boyfriend."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates17(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My date is meeting me at seven."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates18(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I need to find a date for Friday."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates19(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Thank you for your letter dated 24th March."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates20(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The forms should be dated and signed and sent back immediately."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates21(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It has not yet been possible to date the paintings accurately."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates22(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The skeleton has been dated at about 2000 BC."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates23(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The manuscript has been dated to the sixteenth century."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates24(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She designs classic clothes which do not date."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates25(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I remember the 1958 coup—that dates me, doesn't it?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates26(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's been dating Ron for several months."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates27(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("How long have you two been dating?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates28(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She bought a box of fresh dates from the market."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates29(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates30(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates31(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates32(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates33(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates34(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates35(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates36(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates37(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates38(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates39(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates40(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates41(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates42(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates43(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates44(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates45(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates46(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates47(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates48(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates49(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates50(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates51(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates52(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates53(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates54(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates55(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates56(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates57(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates58(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates59(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates60(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates61(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates62(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates63(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates64(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates65(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates66(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates67(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates6700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates68(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates6800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates69(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates6900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates70(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates7000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates71(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates7100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates72(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates7200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates73(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates7300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates74(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates7400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates75(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates7500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdates76(String languageCode) async {
    // DOPSUM: CHANGE speakdate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdates7600"); // DOPSUM: CHANGE TEXT
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
کوردی: ڕێکەوت، هلکەفت، ڕۆژومانگ، مێژوو، ڕۆژکەوت،	سەردەم، سەروبەند، قۆناخ، چەرخ،	بڕیار، بڕیاری یەکتربینین، بەڵێنی (چ لەباری کۆمەڵایەتی یا دڵداری‌یەوە)،	دەزگیران، دۆستی کچ، دۆستی کوڕ، خورما
"""),
          const DefinitionKurdish(
              text: "١. (ناو) بەروار؛ ڕۆژێکی دیاریکراوی مانگ"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Write today's date at the top of the page."),
                    ExampleSentenceKurdish(
                        text: "ڕێکەوتی ئەمڕۆ لە سەرەوەی پەڕەکە بنووسە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "date", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates1("en-US"),
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
                        text: "They haven't set a date for the wedding yet."),
                    ExampleSentenceKurdish(
                        text:
                            "هێشتا ڕێککەوتێکیان بۆ ئاهەنگی هاوسەرگیرییەکە دانەناوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates2("en-US"),
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
                                text: "I can't come on that date."),
                            ExampleSentenceKurdish(
                                text: "ناتوانم لەو ڕێکەوتەدا بێم."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdates4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdates4("en-US"),
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
                                    "We need to fix a date for the next meeting."),
                            ExampleSentenceKurdish(
                                text:
                                    "دەبێت کاتێک دابنێین بۆ کۆبوونەوەی داهاتوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdates3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdates3("en-US"),
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
                                    "Please give your name, address and date of birth."),
                            ExampleSentenceKurdish(
                                text:
                                    "تکایە و ناو، ناونیشان و ڕێکەوتی لەدایکبوونتم پێبدە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdates5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdates5("en-US"),
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
                                text: "There's no date on this letter."),
                            ExampleSentenceKurdish(
                                text: "هیچ ڕێکەوتێک لەسەر ئەم نامەیە نییە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdates6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdates6("en-US"),
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
                  "٢. (ناو) ڕێکەوتێک یان ساڵێکی دیاریکراو کە ڕووداوێک ڕوویداوە یان ڕوودەدات"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "1066 is the most famous date in English history."),
                    ExampleSentenceKurdish(
                        text: "١٠٦٦ بەناوبانگترین ساڵە لە مێژووی ئینگلیزدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates7("en-US"),
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
                            "I hated history at school—I could never remember all those dates."),
                    ExampleSentenceKurdish(
                        text:
                            "لە قوتابجانە ڕقم لە مێژوو بوو، هەرگیز نەمدەتوانی هەموو ئەو ڕێکەوتانەم بیربکەوێتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates8("en-US"),
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
                        text: "The painting bears the date 1626."),
                    ExampleSentenceKurdish(
                        text: "تابلۆکە ساڵی ١٩٢٦ ـی لەسەر نووسراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) کاتێک لە ڕابردوو یان داهاتوو کە ڕۆژێکی دیاریکراو نییە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The details can be added at a later date."),
                    ExampleSentenceKurdish(
                        text:
                            "وردەکارییەکان دەکرێت لە کاتێکی دواتردا زیاد بکرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates10("en-US"),
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
                        text: "The work will be carried out at a future date."),
                    ExampleSentenceKurdish(
                        text: "کارەکە لە کاتێکدا لە داهاتوودا دەکرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ناو) ڕێککەوتنێک بۆ بینینی کەسێک لە کاتێکی دیاریکراودا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Call me next week and we'll try and make a date."),
                    ExampleSentenceKurdish(
                        text:
                            "هەفتەی داهاتوو پەیوەندیم پێوە بکە و هەوڵ دەدەین و ڕێکەوتێک دادەنێین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates12("en-US"),
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
                        text: "Next Friday? Fine—it's a date!"),
                    ExampleSentenceKurdish(
                        text: "هەفتەی داهاتوو؟ تەواوە ـ ڕێکەوتمانە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) ژوانێک لە نێوان دوو دڵداردا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: " I've got a date with Lucy tomorrow night."),
                    ExampleSentenceKurdish(
                        text: "سبەی شەو ژوانێکم هەیە لەگەڵ لوسیدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates14("en-US"),
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
                        text: "We agreed to go out on a date."),
                    ExampleSentenceKurdish(text: "ڕازی بووین بچینە ژوانێک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates15("en-US"),
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
                        text: "She's out on a date with her new boyfriend."),
                    ExampleSentenceKurdish(
                        text: "لەگەڵ دۆستە کوڕە تازەکەیدا لە ژوانە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ناو) دۆستێکی کوڕ یان کچ کە لەگەڵیدا لە ژوانی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "My date is meeting me at seven."),
                    ExampleSentenceKurdish(text: "دۆستەکەم لە حەوت دێتە لام."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates17("en-US"),
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
                        text: "I need to find a date for Friday."),
                    ExampleSentenceKurdish(
                        text: "دەبێت دۆستێک بۆ هەینی بدۆزمەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ناو) خورما"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She bought a box of fresh dates from the market."),
                    ExampleSentenceKurdish(
                        text: "پاکەتێک خورمای تازەی لە مارکێتەکە کڕی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates28("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates28("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (کردار) نووسینی ڕێکەوت لەسەر شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Thank you for your letter dated 24th March."),
                    ExampleSentenceKurdish(
                        text: "سوپاس بۆ نامەکەت کە ٢٤ ـی ئاداری لێ نووسراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates19("en-US"),
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
                            "The forms should be dated and signed and sent back immediately."),
                    ExampleSentenceKurdish(
                        text:
                            "فۆرمەکان دەبێت ڕێکەوت و واژۆیان لێ بدرێت و دەستبەجێ بگەڕێندرێنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٠. (کردار) دەستنیشانکردنی تەمەنی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "It has not yet been possible to date the paintings accurately."),
                    ExampleSentenceKurdish(
                        text:
                            "نەگونجاوە کە بە درووستی تەمەنی تابلۆکان دەستنیشان بکرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates21("en-US"),
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
                        text: "The skeleton has been dated at about 2000 BC."),
                    ExampleSentenceKurdish(
                        text:
                            "تەمەنی ئێسکە پەیکەرەکە بۆ نزیکەی ٢٠٠٠ پ.ز دەستنیشان کراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates22("en-US"),
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
                            "The manuscript has been dated to the sixteenth century."),
                    ExampleSentenceKurdish(
                        text: "بەڵگەنامەکە بۆ سەدەی شازدە گەڕێندراوەتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (کردار) کۆن بوون بەشێوەیەک چی دیکە باو نییە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She designs classic clothes which do not date."),
                    ExampleSentenceKurdish(
                        text:
                            "کە جلە کلاسیکییانە دیزاین دەکات کە کۆنەباو نابن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (کردار) شتێک کە ئەوە دەردەخات کە بەتەمەنیت یان بەتەمەنتریت لە دەرووبەرت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I remember the 1958 coup—that dates me, doesn't it?"),
                    ExampleSentenceKurdish(
                        text:
                            "کودەتاکەی ١٩٥٨ بیرم دێت ـ ئەوە بەتەمەنم دەکات، وانییە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates25("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٣. (کردار) هەبوونی پەیوەندی سۆزداری لەگەڵ کەسێکدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She's been dating Ron for several months."),
                    ExampleSentenceKurdish(
                        text: "بۆ چەند مانگێکە پەیوەندی لەگەڵ ڕۆن هەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates26("en-US"),
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
                        text: "How long have you two been dating?"),
                    ExampleSentenceKurdish(
                        text: "چەند دەبێت ئەو دووانەتان پەیوەندیتان هەیە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdates27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdates27("en-US"),
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
- Noun: date (derived forms: dates)
1. The specified day of the month (= day of the month)
"what is the date today?";
 
2. A meeting arranged in advance (= appointment, engagement)
"she asked how to avoid kissing at the end of a date";
 
3. A participant in a date (= escort)
"his date never stopped talking";
 
4. The present
"they are up to date"; "we haven't heard from them to date"
 
5. The particular day, month, or year (usually according to the Gregorian calendar) that an event occurred
"he tried to memorizes all the dates for his history class"
 
6. A particular day specified as the time something happens
"the date of the election is set by law"; "we hope to get together at an early date"; "Mother's Day is always on the same date"
 
7. Sweet edible fruit of the date palm with a single long woody seed

- Verb: date (derived forms: dating, dates, dated)
1. Meet with a lover or potential lover
"Tonight she is dating a former high school sweetheart"
 
2. Stamp with a date (= date stamp)
"The package is dated November 24";
 
3. Assign a date to; determine the (probable) date of
"Scientists often cannot date precisely archeological or prehistorical findings"
 
4. Date regularly; have a steady relationship with (= go steady, go out, see)
"He is dating his former wife again!";
 
5. Provide with a dateline; mark with a date
"She wrote the letter on Monday but she dated it Saturday so as not to reveal that she procrastinated"
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
    videoId: 'khOUvmOQExc',
    startSeconds: 194,
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
    videoId: 'j1BfO7VlIw4',
    startSeconds: 344,
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
    videoId: 'QtrRtGC3G_I',
    startSeconds: 28,
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
    videoId: 'QtrRtGC3G_I',
    startSeconds: 33,
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
    videoId: 'OjsQ78t_0_M',
    startSeconds: 30,
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
    videoId: 'AF8d72mA41M',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'AF8d72mA41M',
    startSeconds: 1272,
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