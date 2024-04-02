import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycover extends StatelessWidget {
  const EnglishEntrycover({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          child: Column(
            children: [
              const EntryAndIPA(),
              const CustomTabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(),
                    KurdishMeaning(),
                    const YoutubeVideos(),
                  ],
                ),
              ),
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
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
    return const EntryTitle(word: "cover");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cover");
  }
}

class IpaUK extends StatelessWidget {
  IpaUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcover(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cover"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUK: /ˈkʌvə(r)/"),
        CustomIconButtonBritish(
          onPressed: () => speakcover("en-GB"),
        ),
      ],
    );
  }
}

class IpaUS extends StatelessWidget {
  IpaUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcover(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cover"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUS: /ˈkʌvər/"),
        CustomIconButtonAmerican(
          onPressed: () => speakcover("en-US"),
        ),
      ],
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcovers1(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She covered her face with her hands."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers2(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I covered my mouth to stifle a yawn."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers3(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He tried to cover his embarrassment by starting to rub his hands together."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers4(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Snow covered the ground."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers5(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Much of the country is covered by forest."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers6(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Its head, body, and tail are completely covered with brown fur."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers7(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The wind blew in from the desert and covered everything with sand."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers8(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Soak the dried mushrooms by covering them in boiling water for a few minutes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers9(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The steps were now completely covered with water."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers10(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The players were soon covered in mud."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers11(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The survey covers all aspects of the business."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers12(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The articles cover a wide range of subjects."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers13(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Each podcast covers a different topic."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers14(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Do the rules cover a case like this?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers15(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The tax may be extended to cover books."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers16(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We've hardly covered a quarter of the course."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers17(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("\$100 should cover your expenses."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers18(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Your parents will have to cover your tuition fees."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers19(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers20(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers21(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers22(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers23(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers24(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers25(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers26(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers27(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers28(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers29(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers30(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers31(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers32(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers33(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers34(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers35(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers36(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers37(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers38(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers39(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers40(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers41(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers42(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers43(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers44(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers45(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers46(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers47(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers48(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers49(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers50(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers51(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers52(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers53(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers54(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers55(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers56(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers57(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers58(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers59(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers60(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers61(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers62(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers63(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers64(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers65(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers66(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers67(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers6700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers68(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers6800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers69(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers6900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers70(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers7000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers71(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers7100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers72(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers7200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers73(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers7300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers74(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers7400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers75(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers7500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers76(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers7600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers77(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers7700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers78(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers7800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers79(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers7900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers80(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers8000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers81(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers8100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers82(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers8200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers83(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers8300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers84(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers8400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers85(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers8500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers86(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers8600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers87(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers8700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers88(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers8800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers89(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers8900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers90(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcovers9000"); // DOPSUM: CHANGE TEXT
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
کوردی: داپۆشین، (دا)پوشاندن، پۆششت، ڕووماڵ(کردن)، داپێچان، بەرگ، داپۆشە، سەرپۆش، ڕوو، شەڵتە، سەرقاپ، سەر، درگا، پەردە، ڕووکێش، سەرکێش، داپۆشک،	بەرگ (کتێب، ڕۆژنامە، کۆڤار و هتد)،	بەرگەنامە،	داڵدە، پارێزگا، پەنا، سامە، چراخ،	پاراستن، ئاگالێ‌بوون،	پشتیوان، پشتیوانە،	ناسنامەی درۆ، ناسنامەی فڕوفێڵاوی یان ساختە،	گژوگیا، سەوزە، سەوزایی، شینکاتی، شیناوەرد (ئەو ڕووەکانەی کە لەسەر عەرز شین‌بوون)،	بیمە،	جێ، جێگا (لەسەر میزی نان‌خواردن)، نوێن، پێخەف،	جێبەجێ‌کردنی کار و ئەرکی کەسێکی تر ئەگەر لەوێ نەبێ، جێگری
"""),
          const DefinitionKurdish(text: "١. (کردار) داپۆشین بۆ شاردنەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She covered her face with her hands."),
                    ExampleSentenceKurdish(text: "بە دەستی ڕووخساری داپۆشی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "cover", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers1("en-US"),
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
                        text: "I covered my mouth to stifle a yawn."),
                    ExampleSentenceKurdish(
                        text: "دامم داپۆشی بۆ دامرکاندنەوەی باوێشکێک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers2("en-US"),
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
                            "He tried to cover his embarrassment by starting to rub his hands together."),
                    ExampleSentenceKurdish(
                        text:
                            "هەوڵیدا شەرمەزارییەکەی بشارێتەوە بە ساوینی دەستەکانی بە یەکدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) ڕاکشان یان بڵاوبوونەوە بە ڕووی شتێکدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Snow covered the ground."),
                    ExampleSentenceKurdish(text: "بەفر زەوییەکەی داپۆشی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers4("en-US"),
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
                        text: "Much of the country is covered by forest."),
                    ExampleSentenceKurdish(
                        text: "زۆرێک لە وڵاتەکە بە دارستان داپۆشراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers5("en-US"),
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
                            "Its head, body, and tail are completely covered with brown fur."),
                    ExampleSentenceKurdish(
                        text:
                            "سەری، جەستەی، و کلکی بە تەواوی بە فەرووی قاوەیی داپۆشراون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) دانانی چینێک لە شلە، خۆڵ، هتد لەسەر کەسێک یان شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The wind blew in from the desert and covered everything with sand."),
                    ExampleSentenceKurdish(
                        text:
                            "بایەکە لە بیابانەکە هەڵیکرد و هەموو شتێکی بە خؤل داپۆشی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers7("en-US"),
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
                            "Soak the dried mushrooms by covering them in boiling water for a few minutes."),
                    ExampleSentenceKurdish(
                        text:
                            "قارچکە وشککراوەکان تەڕ بکە بە داپۆشینیان بە ئاوی کوڵاو بۆ چەند خولەکێک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers8("en-US"),
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
                            "The steps were now completely covered with water."),
                    ExampleSentenceKurdish(
                        text: "قادرمەکان ئێستا بە تەواوی بە ئاو داپۆشرابوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers9("en-US"),
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
                        text: "The players were soon covered in mud."),
                    ExampleSentenceKurdish(
                        text: "یاریزانەکان هەرزوو بە قوڕ داپۆشران."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) لەخۆگرتن یان مامەڵە لەگەڵ شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The survey covers all aspects of the business."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕاپرسییەکە تەواوی لایەنەکانی بازرگانییەکە لەخۆدەگرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers11("en-US"),
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
                        text: "The articles cover a wide range of subjects."),
                    ExampleSentenceKurdish(
                        text:
                            "وتارەکان ژمارەیەکی بەرفراوان لە بابەت لەخۆدەگرن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers12("en-US"),
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
                        text: "Each podcast covers a different topic."),
                    ExampleSentenceKurdish(
                        text: "هەر پۆدکاستێک بابەتێکی جیاواز لەخۆدەگرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers13("en-US"),
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
                                    "Do the rules cover (= do they apply to) a case like this?"),
                            ExampleSentenceKurdish(
                                text: "یاساکان بەسەر کەیسێکی وەهادا دەچەسپێن؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcovers14("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcovers14("en-US"),
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
                                    "The tax may be extended to cover books."),
                            ExampleSentenceKurdish(
                                text:
                                    "باجەکە ڕەنگە درێژبکرێتەوە بۆ لەخۆگرتنی کتێب."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcovers15("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcovers15("en-US"),
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
                                    "We've hardly covered a quarter of the course."),
                            ExampleSentenceKurdish(
                                text:
                                    "جارێ تازە چارەکێکی کۆرسەکەمان باسکردووە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcovers16("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcovers16("en-US"),
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
              text: "٥. (کردار) وەرگرتنی پارەی پێویست بۆ کردنی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "\$100 should cover your expenses."),
                    ExampleSentenceKurdish(
                        text: "١٠٠ دۆلار دەبێت خەرجییەکانت دابین بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers17("en-US"),
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
                            "Your parents will have to cover your tuition fees."),
                    ExampleSentenceKurdish(
                        text: "دایک و باوکت دەبێت خەرجی خوێندنت بکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers18("en-US"),
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
- Verb: cover (Derived forms: covers, covered, covering)
1. Provide with a covering or cause to be covered
"cover her face with a handkerchief"; "cover the child with a blanket"; "cover the grave with flowers"
 
2. Form a cover over (= spread over)
"The grass covered the grave";
 
3. Span an interval of distance, space or time (= continue, extend)
"The period covered the turn of the century"; "This farm covers some 200 acres";
 
4. Provide for
"The grant doesn't cover my salary"
 
5. Act on verbally or in some form of artistic expression (= treat, handle, plow [N. Amer], deal, address, plough [Brit, Cdn])
"The course covered all of Western Civilization";
 
6. Include in scope; include as part of something broader; have as one's sphere or territory (= embrace, encompass, comprehend)
"this should cover everyone in the group";
 
7. Travel across or pass over (= traverse, track, cross, pass over, get over, get across, cut through, cut across)
"The caravan covered almost 100 miles each day";
 
8. Be responsible for reporting the details of, as in journalism (= report)
"The cub reporter covered New York City";
 
9. Hold within range of an aimed firearm
 
10. To take an action to protect against future problems
"Count the cash in the drawer twice just to cover yourself"
 
11. Hide from view or knowledge (= cover up, paper over)
"The President covered the fact that he bugged the offices in the White House";
 
12. Protect or defend (a position in a game)
"he covered left field"
 
13. Maintain a check on; especially by patrolling
"The second officer covered the top floor"
 
14. Protect by insurance (= insure, underwrite)
"The insurance won't cover this";
 
15. Make up for shortcomings or a feeling of inferiority by exaggerating good qualities (= compensate, overcompensate)
"he is covering for being a bad father";
 
16. Invest with a large or excessive amount of something
"She covered herself with glory"
 
17. Help out by taking someone's place and temporarily assuming his responsibilities
"She is covering for our secretary who is ill this week"
 
18. Be sufficient to meet, defray, or offset the charge or cost of
"Is this enough to cover the check?"
 
19. Spread over a surface to conceal or protect
"This paint covers well"
 
20. Cover as if with a shroud (= shroud, enshroud, hide)
"The origins of this civilization are covered in mystery";
 
21. (animal husbandry) copulate with a female, used especially of horses (= breed)
"The horse covers the mare";
 
22. Put something on top of something else (= overlay)
"cover the meat with a lot of gravy";
 
23. (card game) play a higher card than the one previously played
"Smith covered again"
 
24. Be responsible for guarding an opponent in a game
 
25. Sit on (eggs) (= brood, hatch, incubate)
"The female covers the eggs";
 
26. Clothe, as if for protection from the elements (= wrap up)
"cover your head!";

- Noun: cover (Derived forms: covers)
1. A covering that serves to conceal or shelter something (= screen, covert, concealment)
"under cover of darkness";

2. Bedding that keeps a person warm in bed (= blanket)
"he pulled the covers over his head and went to sleep";
 
3. The act of concealing the existence of something by obstructing the view of it (= covering, screening, masking)
"the cover concealed their guns from enemy aircraft";
 
4. The protective covering on the front, back, and spine of a book (= binding, book binding, back)
"the book had a leather cover";
 
5. A natural object that covers or envelops (= covering, natural covering)
"the fox was flushed from its cover";
 
6. Covering for a hole (especially a hole in the top of a container) (= top)
"put the cover back on the kettle";
 
7. Fire that makes it difficult for the enemy to fire on your own individuals or formations (= covering fire)
"artillery provided cover for the withdrawal";
 
8. A fixed charge by a restaurant or nightclub over and above the charge for food and drink (= cover charge)
 
9. A recording of a song that was first recorded or made popular by somebody else (= cover version, cover song)
"they made a cover of a Beatles' song";
 
10. A false identity and background (especially one created for an undercover agent)
"her new name and passport are cover for her next assignment"
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
    videoId: 'https://youtu.be/hFZFjoX2cGg?t=',
    startSeconds: 92,
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
    videoId: 'https://youtu.be/hS2x1zl4rn0?t=',
    startSeconds: 1424,
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
    videoId: 'https://youtu.be/Cd1EmYRZynw?t=',
    startSeconds: 216,
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
    videoId: 'https://youtu.be/zmEv7vTOQGE?t=',
    startSeconds: 997,
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
    videoId: 'https://youtu.be/G4BxOhJOmUw?t=',
    startSeconds: 226,
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
    videoId: 'https://youtu.be/bXCOI_LQ_0o?t=',
    startSeconds: 53,
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
    videoId: 'https://youtu.be/3Ml-JTgFW1I?t=',
    startSeconds: 70,
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