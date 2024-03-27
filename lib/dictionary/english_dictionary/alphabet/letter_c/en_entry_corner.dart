import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycorner extends StatelessWidget {
  const EnglishEntrycorner({super.key});

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
    return const EntryTitle(word: "corner");
  }
}

class IpaUK extends StatelessWidget {
  IpaUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorner(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("corner"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUK: /ˈkɔːnə(r)/"),
        CustomIconButtonBritish(
          onPressed: () => speakcorner("en-GB"),
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

  Future<void> speakcorner(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("corner"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUS: /ˈkɔːrnər/"),
        CustomIconButtonAmerican(
          onPressed: () => speakcorner("en-US"),
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

  Future<void> speakcorners1(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I hit my knee on the corner of the table."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners2(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Write your address in the top right-hand corner of the letter."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners3(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A smile lifted the corner of his mouth."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners4(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She tucked the ball into the corner of the net."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners5(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The captain wore a three-cornered hat as part of his uniform."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners6(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A large desk occupies another corner of the room."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners7(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They made straight for the table in the corner."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners8(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She tucked herself away in a corner and read all day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners9(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The wind hit him as he turned the corner."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners10(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There was a group of youths standing on the street corner."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners11(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The bus stop is around the corner, I think."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners12(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Turn right at the first corner."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners13(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The car was taking the corners too fast."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners14(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As they turned the corner all the bags slid to one side."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners15(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She lives in a quiet corner of rural Yorkshire."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners16(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He knew every corner of the old town."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners17(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was used to talking his way out of tight corners."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners18(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is important to avoid being pushed into a corner."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners19(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The referee awarded a corner."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners20(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Moore took the corner."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners21(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The man was finally cornered by police in a garage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners22(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If cornered, the snake will defend itself."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners23(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I found myself cornered by her on the stairs."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners24(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They've cornered the market in silver."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners25(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The car corners well."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners26(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners27(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners28(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners29(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners30(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners31(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners32(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners33(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners34(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners35(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners36(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners37(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners38(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners39(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners40(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners41(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners42(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners43(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners44(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners45(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners46(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners47(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners48(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners49(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners50(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners51(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners52(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners53(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners54(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners55(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners56(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners57(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners58(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners59(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners60(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners61(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners62(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners63(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners64(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners65(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners66(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners67(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners6700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners68(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners6800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners69(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners6900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners70(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners7000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners71(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners7100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners72(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners7200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners73(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners7300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners74(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners7400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners75(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners7500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners76(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners7600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners77(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners7700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners78(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners7800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners79(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners7900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners80(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners8000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners81(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners8100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners82(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners8200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners83(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners8300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners84(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners8400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners85(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners8500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners86(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners8600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners87(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners8700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcorners88(String languageCode) async {
    // DOPSUM: CHANGE speakcorner
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorners8800"); // DOPSUM: CHANGE TEXT
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
کوردی: گۆشە، سووچ، قوڕنە، قولینچک، قوژبن، چمک، کونجیک، ئانیشکە، ویرنج، سەرپێچ (وەک هی سەرکۆڵان)، دەرو و کەنار، چوارقوڕنە، چوارلای دنیا، گۆشە و کەنار،	پاوان‌کاری، قۆرخ‌کاری،	گۆشە، سووچ، کۆرنێر (تۆپێن)،	گیروگرفت، تەنگ‌وچەڵەمە، تەنگانە،	(شەڕەمشت و زۆران‌بازی) هەریەک لە دوو گۆشەی بەرامبەر کە لە نێوان گەڕەکان‌دا ڕکەبەرەکان دەحەسێنەوە
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) بەشێکی شتێک کە دوو خاڵ یان هێڵ تێیدا بە یەکدی دەگەن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I hit my knee on the corner of the table."),
                    ExampleSentenceKurdish(
                        text: "لاقم کێشا بە سووچی مێزەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "corner", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners1("en-US"),
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
                            "Write your address in the top right-hand corner of the letter."),
                    ExampleSentenceKurdish(
                        text:
                            "ناونیشانەکەت لە سووچی سەرەوەی دەستە ڕاستی نامەکە بنووسە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners2("en-US"),
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
                        text: "A smile lifted the corner of his mouth."),
                    ExampleSentenceKurdish(
                        text: "بزەیەک سووچی دەمی بەرزکردەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners3("en-US"),
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
                            "She tucked the ball into the corner of the net."),
                    ExampleSentenceKurdish(
                        text: "تۆپەکەی خستە سووچی تۆڕەکەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) هەبوونی ژمارەیەکی دیاریکراو لە سووچ یان گۆشە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The captain wore a three-cornered hat as part of his uniform."),
                    ExampleSentenceKurdish(
                        text:
                            "کاپتنەکە کڵاوێکی سێ سووچەی لەسەر کرد وەک بەشێک لە جلە یەکپۆشییەکەی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) سووچی ژوورێک یان سندووقێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "A large desk occupies another corner of the room."),
                    ExampleSentenceKurdish(
                        text: "مێزێکی گەورە لە سووچێکی دیکەی ژوورەکەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners6("en-US"),
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
                            "They made straight for the table in the corner."),
                    ExampleSentenceKurdish(
                        text: "ڕاستەوخۆ ڕۆشتن بۆ مێزی سووچەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners7("en-US"),
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
                            "She tucked herself away in a corner and read all day."),
                    ExampleSentenceKurdish(
                        text:
                            "لە قوژبنێکدا خۆی قەتیز کرد و تەواوی ڕۆژەکە خوێندییەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) شوێنێک کە تێیدا دوو ڕێگا یەک دەگرن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The wind hit him as he turned the corner."),
                    ExampleSentenceKurdish(
                        text: "بایەکە کێشای پێیدا کە گەشتە سەرپێچەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners9("en-US"),
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
                            "There was a group of youths standing on the street corner."),
                    ExampleSentenceKurdish(
                        text: "ژمارەیەک گەنج لەسەر سووچی شەقامەکە وەستابوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners10("en-US"),
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
                        text: "The bus stop is around the corner, I think."),
                    ExampleSentenceKurdish(
                        text: "پێموایە شوێن وەستانی پاسەکە لە سەرپێچەکەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners11("en-US"),
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
                        text: "Turn right at the first corner."),
                    ExampleSentenceKurdish(text: "لە یەکەم سووچ پێچبکەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) پێچێکی تیژ لە ڕێگایەکدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The car was taking the corners too fast."),
                    ExampleSentenceKurdish(
                        text:
                            "ئۆتۆمبێلەکە زۆر بە خێرایی بە پێچەکاندا تێدەپەڕی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners13("en-US"),
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
                            "As they turned the corner all the bags slid to one side."),
                    ExampleSentenceKurdish(
                        text:
                            "کە بە پێچەکەدا تێپەڕین هەموو جانتاکان لایەک خزان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (ناو) هەرێمێک یان ناوچەیەکی شوێنێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She lives in a quiet corner of rural Yorkshire."),
                    ExampleSentenceKurdish(
                        text: "لە هەرێمێکی بێ‌دەنگی گوندنشینی یۆرکشێر دەژی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners15("en-US"),
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
                        text: "He knew every corner of the old town."),
                    ExampleSentenceKurdish(
                        text: "هەموو سووچێکی شارە کۆنەکەی دەزانی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ناو) دۆخێکی سەخت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He was used to talking his way out of tight corners."),
                    ExampleSentenceKurdish(
                        text: "ڕاهاتبوو بە دەربازبوون لە دۆخە سەختەکان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners17("en-US"),
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
                            "It is important to avoid being pushed into a corner."),
                    ExampleSentenceKurdish(
                        text:
                            "گرنگە دووربکەویتەوە لەوەی بخرێیتە دۆخێکی سەختەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (ناو) لێدانێکی ئازاد لە یاری وەرزشیدا کە لە سووچێکی بەشی یاریگای ڕکابەرەکەتەوە لێیدەدەیت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The referee awarded a corner."),
                    ExampleSentenceKurdish(
                        text: "ناوبژیوانەکە کۆرنەرێکی بەخشی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners19("en-US"),
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
                    ExampleSentenceEnglish(text: "Moore took the corner."),
                    ExampleSentenceKurdish(text: "موور کۆرنەرەکەی لێدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٩. (کردار) دانانی کەسێک یان ئاژەڵێک لە شوێنێک یان دۆخێک کە ناتوانن تێیدا هەڵبێن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The man was finally cornered by police in a garage."),
                    ExampleSentenceKurdish(
                        text:
                            "پیاوەکە لە کۆتاییدا لەلایەن پۆلیسەوە لە گەراجێکدا دەورەدرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners21("en-US"),
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
                        text: "If cornered, the snake will defend itself."),
                    ExampleSentenceKurdish(
                        text: "ئەگەر دەور بدرێت، مار بەرگری لە خۆی دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (کردار) بە زۆر چوون بۆ لای کەسێک چونکە دەتەوێت قسەیان لەگەڵدا بکەیت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I found myself cornered by her on the stairs."),
                    ExampleSentenceKurdish(
                        text: "ڕووبەڕووی بوومەوە لەسەر قادرمەکان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١١. (کردار) قۆرخکردنی بازاڕێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They've cornered the market in silver."),
                    ExampleSentenceKurdish(text: "بازاڕی زیویان قۆرخکردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٢. (کردار) پێچکردنەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The car corners well (= it is easy to go around corners in it)."),
                    ExampleSentenceKurdish(
                        text: "ئۆتۆمبێلەکە باش پێچ دەکاتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorners25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorners25("en-US"),
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
- Noun: corner (Derived forms: corners)
1. The point where two lines meet or intersect
"the corners of a rectangle"
 
2. An interior angle formed by two meeting walls (= nook)
"a piano was in one corner of the room";
 
3. The intersection of two streets (= street corner, turning point)
"standing on the corner watching all the girls go by";
 
4. A place off to the side of an area
"he tripled to the rightfield corner"; "the southeastern corner of the Mediterranean"
 
5. The point where three areas or surfaces meet or intersect
"the corners of a cube"
 
6. A small concavity (= recess, recession, niche)
 
7. A temporary monopoly on a kind of commercial trade
"a corner on the silver market"
 
8. A predicament from which a skilful or graceful escape is impossible (= box)
"his lying got him into a tight corner";
 
9. A projecting part where two sides or edges meet
"he knocked off the corners"
 
10. A remote area
"in many corners of the world they still practice slavery"
 
11. (architecture) solid exterior angle of a building; especially one formed by a cornerstone (= quoin)
 
12. A free kick from the corner awarded to the other side when a player has sent the ball behind his own goal line (= corner kick)

- Verb: corner (Derived forms: cornered, cornering, corners)
1. Gain control over
"corner the gold market"
 
2. Force a person or an animal into a position from which he cannot escape (= tree [N. Amer])
 
3. Turn a corner or drive around a curve
"the car corners"
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
    videoId: '4J0xFUyz1nw',
    startSeconds: 19,
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
    videoId: '544DTGHIBM0',
    startSeconds: 589,
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
    videoId: 'QLq6GEiHqR8',
    startSeconds: 428,
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
    videoId: 'hTqtGJwsJVE',
    startSeconds: 3426,
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
    videoId: 'ewLpXw6uN28',
    startSeconds: 1267,
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
    videoId: '7j5ul4XBjAI',
    startSeconds: 546,
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
    videoId: '9TugA_z5vQE',
    startSeconds: 646,
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