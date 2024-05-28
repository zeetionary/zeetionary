import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydamage extends StatefulWidget {
  const EnglishEntrydamage({super.key});

  @override
  State<EnglishEntrydamage> createState() => _EnglishEntrydamageState();
}

class _EnglishEntrydamageState extends State<EnglishEntrydamage> {
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
    return const EntryTitle(word: "damage");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: damage");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdæmɪdʒ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdamage(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("damage"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdamage("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdæmɪdʒ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdamage(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("damage"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdamage("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdamages1(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The building suffered extensive damage by fire in 1925."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages2(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The accident caused no permanent damage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages3(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She suffered minor brain damage at birth."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages4(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The earthquake caused damage to property estimated at £6 billion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages5(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The storm didn't do much damage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages6(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It could take years to repair the damage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages7(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The children suffered psychological and emotional damage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages8(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This could cause serious damage to the country's economy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages9(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It will be hard to repair the damage to his reputation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages10(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Don't you think you've done enough damage already?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages11(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Don't try to apologize—the damage is done."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages12(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The incident did permanent damage to relations between the two countries."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages13(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was ordered to pay damages totalling £30 000."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages14(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They intend to sue for damages."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages15(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Ann was awarded £6 000 (in) damages.ئان"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages16(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The church was badly damaged by the 1997 earthquake."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages17(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Smoking seriously damages your health."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages18(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Our car was damaged beyond repair in the crash."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages19(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She fears the allegations could permanently damage her reputation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages20(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages21(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages22(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages23(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages24(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages25(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages26(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages27(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages28(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages29(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages30(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages31(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages32(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages33(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages34(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages35(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages36(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages37(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages38(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages39(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages40(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages41(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages42(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages43(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages44(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages45(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages46(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages47(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages48(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages49(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages50(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages51(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages52(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages53(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages54(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages55(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages56(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages57(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages58(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages59(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages60(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages61(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages62(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages63(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamages64(String languageCode) async {
    // DOPSUM: CHANGE speakdamage
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamages6400"); // DOPSUM: CHANGE TEXT
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
کوردی: زەرەر، زەدە، خەسار، زیان، وەزەن، برینداری، برینداربوون، ئێش، ئێش‌پێ‌گەیشتن، ئاسێو، بەڵا، گورز، زەبر، زەربە، (ماف) پێ‌بژاردن، بژاردن، زەرەربژاردن، زەرەردانەوە، زیانە، تاوان، زیان‌دانەوە
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) زیانی فیزیکی کە لە نرخ، جوانی، یان سوودی شتێک کەم دەکاتەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The building suffered extensive damage by fire in 1925."),
                    ExampleSentenceKurdish(
                        text:
                            "بیناکە ڕووبەڕووی زیانی زۆر بە ئاگر بوویەوە لە ساڵی ١٩٢٥."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "damage", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamages1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamages1("en-US"),
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
                        text: "The accident caused no permanent damage."),
                    ExampleSentenceKurdish(
                        text: "ڕووداوەکە هیچ زیانێکی هەمیشەیی درووست نەکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamages2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamages2("en-US"),
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
                                    "She suffered minor brain damage at birth."),
                            ExampleSentenceKurdish(
                                text:
                                    "لە کاتی لەدایکبووندا ڕووبەڕووی زیانی بچووکی مێشکی بوویەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdamages3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdamages3("en-US"),
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
                                    "The earthquake caused damage to property estimated at £6 billion."),
                            ExampleSentenceKurdish(
                                text:
                                    "بومەلەرزەکە زیانی مادی بە بەهای ٦ ملیار پاوەند درووست کرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdamages4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdamages4("en-US"),
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
                                text: "The storm didn't do much damage."),
                            ExampleSentenceKurdish(
                                text: "زریانەکە زیانی زۆری نەگەیاند."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdamages5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdamages5("en-US"),
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
                                    "It could take years to repair the damage."),
                            ExampleSentenceKurdish(
                                text:
                                    "دەکرێت چەندین ساڵی پێبچێت بۆ چاککردنەوەی زیانەکە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdamages6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdamages6("en-US"),
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
              text: "٢. (ناو) کاریگەرییە خراپەکانی سەر کەسێک یان شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The children suffered psychological and emotional damage."),
                    ExampleSentenceKurdish(
                        text:
                            "منداڵەکان تووشی کێشەی دەروونی و سۆزداری بوونەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamages7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamages7("en-US"),
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
                            "This could cause serious damage to the country's economy."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەمە دەکرێت زیانی مەترسیدار بۆ ئابووری وڵاتەکە درووست بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamages8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamages8("en-US"),
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
                            "It will be hard to repair the damage to his reputation."),
                    ExampleSentenceKurdish(
                        text: "سەخت دەبێت لەکەداری ناوبانگی چاکبکرێتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamages9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamages9("en-US"),
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
                            "Don't you think you've done enough damage already?"),
                    ExampleSentenceKurdish(
                        text:
                            "پێتوانییە تا ئێستا بەشی پێویست زیانت گەیاندبێت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamages10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamages10("en-US"),
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
                        text: "Don't try to apologize—the damage is done."),
                    ExampleSentenceKurdish(
                        text:
                            "هەوڵ مەدە داوای لێبووردن بکەیت، زیانەکە گەشتووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamages11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamages11("en-US"),
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
                            "The incident did permanent damage to relations between the two countries."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕووداوەکە زیانی هەمیشەیی گەیاند بە پەیوەندی نێوان دوو وڵاتەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamages12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamages12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) بڕە پارەیەک کە وەک قەرەبوو لەلایەن دادگاوە دەدرێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He was ordered to pay damages totalling £30 000."),
                    ExampleSentenceKurdish(
                        text:
                            "سزادرا بە دانی قەرەبوو بە کۆی گشتی ٣٠٠٠٠ پاوەند."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamages13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamages13("en-US"),
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
                        text: "They intend to sue for damages."),
                    ExampleSentenceKurdish(
                        text: "نیازیان هەیە سکاڵا بۆ قەرەبوو تۆمار بکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamages14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamages14("en-US"),
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
                      text: "Ann was awarded £6 000 (in) damages.ئان",
                      note: "Also: Ann was awarded damages of £6 000.",
                    ),
                    ExampleSentenceKurdish(
                        text: "ئان ٦٠٠٠ پاوەندی وەک قەرەبوو پێدرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamages15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamages15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) زیان گەیاندن بە کەسێک یان شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The church was badly damaged by the 1997 earthquake."),
                    ExampleSentenceKurdish(
                        text:
                            "کڵێساکە بەخراپی زیانی پێگەشت بە بومەلەرزەکەی ١٩٩٧."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamages16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamages16("en-US"),
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
                        text: "Smoking seriously damages your health."),
                    ExampleSentenceKurdish(
                        text:
                            "جگەرەکێشان بە خراپی زیان دەگەیەنێت بە تەندرووستیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamages17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamages17("en-US"),
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
                            "Our car was damaged beyond repair in the crash."),
                    ExampleSentenceKurdish(
                        text:
                            "ئۆۆتمبێلەکەمان هێندە بەر زیان کەوت لە ڕووداوەکەدا کە چاکنەدەکرایەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamages18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamages18("en-US"),
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
                            "She fears the allegations could permanently damage her reputation."),
                    ExampleSentenceKurdish(
                        text:
                            "دەترسێت کە تۆمەتەکان بۆ هەمیشەیی ناوبانگی لەکەدار بکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamages19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamages19("en-US"),
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
- Verb: damage (derived forms: damaging, damages, damaged)
1. Inflict damage upon
"The snow damaged the roof"; "She damaged the car when she hit the tree"
 
2. Suffer or be susceptible to damage
"These fine china cups damage easily"

- Noun: damage  (derived forms: damages)
1. The occurrence of a change for the worse (= harm, impairment)
 
2. (military) loss of military equipment (= equipment casualty)
 
3. The act of damaging something or someone (= harm, hurt, scathe [archaic])
 
4. The amount of money needed to purchase something (= price, terms)
"how much is the damage?";
 
5. Any harm or injury resulting from a violation of a legal right (= wrong, legal injury)
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
    videoId: 'hS2x1zl4rn0',
    startSeconds: 773,
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
    videoId: 'MAnvn25URvc',
    startSeconds: 68,
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
    videoId: 'L6tVjqfIXFY',
    startSeconds: 99,
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
    videoId: '0jtWcq3zLfo',
    startSeconds: 71,
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
    videoId: 'hW69OIdAey0',
    startSeconds: 153,
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
    videoId: 'NFtQOxjWfaA',
    startSeconds: 62,
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
    videoId: 'XG8b7WhANNA',
    startSeconds: 487,
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