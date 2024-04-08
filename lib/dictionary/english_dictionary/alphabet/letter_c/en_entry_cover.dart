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
  const IpaUK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IpaUKtext(),
        TTSUK(),
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
    return const IPAofEnglish(text: "IpaUK: /ˈkʌvə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
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
    return CustomIconButtonBritish(
      onPressed: () => speakcover("en-GB"),
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
        const IpaUStext(),
        TTSUS(),
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
    return const IPAofEnglish(text: "IpaUS: /ˈkʌvər/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
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
    return CustomIconButtonAmerican(onPressed: () => speakcover("en-US"),);
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
    await flutterTts
        .speak("By sunset we had covered thirty miles."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers20(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They covered long distances on foot."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers21(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Grand Canyon National Park covers approximately 500,000 hectares)."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers22(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's covering the party's annual conference."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers23(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The BBC will cover all the major games of the tournament."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers24(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'm covering for Jane while she's on leave."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers25(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I have to go out for a minute—will you cover for me if anyone asks where I am?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers26(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Are you fully covered for fire and theft?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers27(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Many firms put money aside to cover themselves against possible legal claims."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers28(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Cover me while I move forward."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers29(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The police covered the exits to the building."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers30(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Brighten up your room with some colourful covers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers31(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He held his nose as he lifted the cover of the bin."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers32(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He lifted the manhole cover."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers33(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Everyone ran for cover when it started to rain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers34(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After the explosion the street was full of people running for cover."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers35(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The climbers took cover from the storm in a cave."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers36(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her face was on the cover of every magazine."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers37(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Have you seen the cover of the latest issue?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers38(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This company provides wider cover."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers39(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The RAF provided air cover for the attack."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers40(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The total forest cover of the earth is decreasing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers41(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Fog and low cloud cover are expected this afternoon."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers42(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In this area there is snow cover for six months of the year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers43(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She threw back the covers and leapt out of bed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcovers44(String languageCode) async {
    // DOPSUM: CHANGE speakcover
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His work as a civil servant was a cover for his activities as a spy."); // DOPSUM: CHANGE TEXT
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
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) بڕینی ماوەیەکی دیاریکراو لە دووری"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "By sunset we had covered thirty miles."),
                    ExampleSentenceKurdish(
                        text: "تاوەکو خۆرئاوابوون سی میلمان بڕی بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers19("en-US"),
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
                        text: "They covered long distances on foot."),
                    ExampleSentenceKurdish(text: "مەودای دووریان بە پێ بڕی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) بڵاوبوونەوە بەو ناوچەیەی باسکراوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Grand Canyon National Park covers approximately 500,000 hectares)."),
                    ExampleSentenceKurdish(
                        text:
                            "پارکی نیشتیمانی گراند کانیەن بەنزیکەیی ٥٠٠,٠٠٠ هێکتار دەبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) گەیاندنی بۆنەیەک بە تەلەفیزیۆن، ڕۆژنامە، هتد"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She's covering the party's annual conference."),
                    ExampleSentenceKurdish(
                        text: "کۆنفرانسی ساڵانە پارتەکە ڕووماڵ دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers22("en-US"),
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
                            "The BBC will cover all the major games of the tournament."),
                    ExampleSentenceKurdish(
                        text:
                            "بی‌بی‌سی تەواوی یارییە گرنگەکانی پاڵەوانێتییەکە ڕووماڵ دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (کردار) ئەنجامدانی کارەکانی کەسێک کە خۆی ئامادە نییە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I'm covering for Jane while she's on leave."),
                    ExampleSentenceKurdish(
                        text: "کارەکانی جەین دەکەم لەکاتێکدا کە لە مۆڵەتە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (کردار) درووستکردنی درۆیەک یان بیانوویەک کە ڕێگا دەگرێت کەسێک تووشی کێشە بێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I have to go out for a minute—will you cover for me if anyone asks where I am?"),
                    ExampleSentenceKurdish(
                        text:
                            "پێویستە بۆ خولەکێک بچمە دەرەوە، بۆم دەپۆشی ئەگەر هەر کەسێک پرسیاری کردم؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers25("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١١. (کردار) ڕێگری کەوەی کەسێک تووشی زیان، برینداری، هتد بێت بە دابینکردنی بیمە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Are you fully covered for fire and theft?"),
                    ExampleSentenceKurdish(
                        text: "بە تەواوی بیمەت هەیە بۆ ئاگرکەوتنەوە و دزی؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers26("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٢. (کردار) خۆپاراستن لە لۆمە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Many firms put money aside to cover themselves against possible legal claims."),
                    ExampleSentenceKurdish(
                        text:
                            "زۆر کۆمپانیا پارە دەخەنە لاوە بۆ پاراستنی خۆیان لە دۆسیەی یاسایی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers27("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٣. (کردار) پاراستنی کەسێک بە تەقەکردن لە هەر کەسێک کە ئازاری بدات"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Cover me while I move forward."),
                    ExampleSentenceKurdish(text: "بمپارێزە کە دەچمە پێشەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers28("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers28("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٤. (کردار) ئاراستەکردنی چەکێک لە شوێنێک یان کەسێک بۆ ئەوەی کەس هەڵنەیەت یان تەقە نەکات"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The police covered the exits to the building."),
                    ExampleSentenceKurdish(
                        text:
                            "پۆلیس ڕێگاکانی چوونەدەرەوەی بیناکەی کۆنترۆڵ کردبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers29("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers29("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٥. (ناو) شتێک کە دەیدەیت بەسەر شتێکی دیکەدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Brighten up your room with some colourful covers."),
                    ExampleSentenceKurdish(
                        text: "ژوورەکەت ڕەنگین بکە بە داپۆشەری ڕەنگین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers30("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers30("en-US"),
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
                            "He held his nose as he lifted the cover of the bin."),
                    ExampleSentenceKurdish(
                        text: "لووتی گرت کە سەری زباڵەکەی بەرزکردەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers31("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers31("en-US"),
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
                        text: "He lifted the manhole cover."),
                    ExampleSentenceKurdish(text: "سەری مەنهۆڵەکەی بەرزکردەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers32("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers32("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٦. (ناو) پەناگە بۆ پاراستن لە کەشی خراپ یان هێرش"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Everyone ran for cover when it started to rain."),
                    ExampleSentenceKurdish(
                        text:
                            "هەموان بۆ پەناگە ڕایانکرد کە دەستی بە باران کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers33("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers33("en-US"),
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
                            "After the explosion the street was full of people running for cover."),
                    ExampleSentenceKurdish(
                        text:
                            "لە دوای تەقینەوەکە شەقامەکە پڕ بوو لە خەڵک کۆ بۆ پەناگە دەگەڕان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers34("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers34("en-US"),
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
                            "The climbers took cover from the storm in a cave."),
                    ExampleSentenceKurdish(
                        text:
                            "شاخەوانان داڵدەیان بردە بەر ئەشکەوتەکە دژ بە زریانەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers35("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers35("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٧. (ناو) بەرگی کتێبێک یان گۆڤارێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Her face was on the cover (= the front cover) of every magazine."),
                    ExampleSentenceKurdish(
                        text: "ڕووخساری لەسەر بەرگی هەموو گۆڤارێک بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers36("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers36("en-US"),
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
                        text: "Have you seen the cover of the latest issue?"),
                    ExampleSentenceKurdish(text: "بەرگی کۆتا چاپت دیوە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers37("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers37("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٨. (ناو) پاراستن کە کۆمپانیایەکی بیمە پێت دەدات بە بەڵێندانی ئەوەی پارەت پێبدات ئەگەر ڕووداوێکی دیاریکراو ڕووبدات"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "This company provides wider cover."),
                    ExampleSentenceKurdish(
                        text: "ئەم کۆمپانیایە پاراستنی زیاتر دابین دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers38("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers38("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٩. (ناو) پاراستن یان پشتیوانی کە دەدرێت بە کەسێک کە هێرش دەکات یان هێرشی دەکرێتە سەر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The RAF provided air cover for the attack."),
                    ExampleSentenceKurdish(
                        text:
                            "هێزی ئاسمانی شاهانەیی پشتیوانی ئاسمانی دابین کردبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers39("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers39("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٠. (ناو) دار و گژووگیا کە لەسەر ناوچەیەک گەشە دەکات"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The total forest cover of the earth is decreasing."),
                    ExampleSentenceKurdish(
                        text: "سەوزایی گشتی دارستانی زەوی کەم دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers40("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers40("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢١. (ناو) ئاسمانی هەوراوی یان زەوی بەفراوی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Fog and low cloud cover are expected this afternoon."),
                    ExampleSentenceKurdish(
                        text:
                            "تەم و ئاسمانی هەوراوی نزم بۆ ئەم نیوەڕۆیە پێشبینی دەکرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers41("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers41("en-US"),
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
                            "In this area there is snow cover for six months of the year."),
                    ExampleSentenceKurdish(
                        text:
                            "لەم ناوچەیە زەوی بەفراوی بۆ شەش مانگی ساڵ هەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers42("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers42("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٢. (ناو) پێخەف، بەتانی، هتد لەسەر جێخەوێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She threw back the covers and leapt out of bed."),
                    ExampleSentenceKurdish(
                        text:
                            "نوێنەکانی فڕێدا و لە جێخەوەکە هەڵپەڕییە دەرەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers43("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers43("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢٣. (ناو) شتێک کە ئامانج لێی ئەوەیە ناسنامەی ڕاستی، هەستێک، یان شتێکی نایاسایی دەشارێتەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "His work as a civil servant was a cover for his activities as a spy."),
                    ExampleSentenceKurdish(
                        text:
                            "کارەکەی وەک فەرمانبەرێکی مەدەنی شاردنەوەیەکی چالاکییەکانی وەک سیخووڕێک بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcovers44("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcovers44("en-US"),
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