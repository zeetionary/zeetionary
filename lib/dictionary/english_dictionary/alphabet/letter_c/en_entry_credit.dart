import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycredit extends StatefulWidget {
  const EnglishEntrycredit({super.key});

  @override
  State<EnglishEntrycredit> createState() => _EnglishEntrycreditState();
}

class _EnglishEntrycreditState extends State<EnglishEntrycredit> {
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
    return const EntryTitle(word: "credit");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: credit");
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
    return const IPAofEnglish(text: "IpaUK: /ˈkredɪt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcredit(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("credit"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcredit("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈkredɪt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcredit(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("credit"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcredit("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcredits1(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We bought the dishwasher on credit."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits2(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Someone with a bad credit history is less likely to be lent money."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits3(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The credit crisis is far from over."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits4(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We offer two months' interest-free credit."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits5(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The bank refused further credit to the company."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits6(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her credit isn't good anywhere now."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits7(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You have a credit balance of £250."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits8(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My account is in credit."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits9(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You'll be paid by direct credit into your bank account."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits10(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My phone's run out of credit."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits11(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The child tax credit is subject to strict income limitations."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits12(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He's a player who rarely seems to get the credit he deserves."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits13(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We did all the work and she gets all the credit!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits14(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I can't take all the credit for the show's success—it was a team effort."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits15(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Credit will be given in the exam for good spelling and grammar."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits16(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Why should he get all the credit?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits17(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She is a credit to the school."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits18(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Your children are a great credit to you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits19(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was given a programme credit for her work on the costumes for the play."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits20(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We left before the final credits began to roll."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits21(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They credited my account two days later."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits22(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Your account has been credited with £50 000."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits23(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All the contributors are credited on the title page."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits24(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has been wrongly credited as the author."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits25(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company is credited with inventing the industrial robot."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits26(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This therapy has long been credited with many benefits."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits27(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Credit me with some intelligence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits28(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The cheetah is generally credited as the world's fastest animal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits29(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He's been promoted—would you credit it?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits30(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits31(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits32(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits33(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits34(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits35(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits36(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits37(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits38(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits39(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits40(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits41(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits42(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits43(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits44(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits45(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits46(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits47(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits48(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits49(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits50(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits51(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits52(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits53(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits54(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits55(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits56(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits57(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits58(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits59(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits60(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits61(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits62(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits63(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits64(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits65(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits66(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits67(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits6700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits68(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits6800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits69(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits6900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits70(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits7000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits71(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits7100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits72(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits7200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcredits73(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcredits7300"); // DOPSUM: CHANGE TEXT
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
کوردی: باوەڕ، بایەخ،	مۆڵەت، ماوە، دەرفەت، وادە،	سەرجەم ئەو پارەی کەوا لە حسابی بانکی کەسێ دایە،	قەرز،	خاوەن‌قەرز، قەرزدەر، ستوونی خاوەن‌قەرز، لای ڕاست،	لێ‌ڕابینین، ڕاپەڕموون،	شانازی،	ئابڕوو، ناوبانگ، بڕەوی، متمانەیی،	پیاهەڵوتن، پەسن‌دان، ستایشت،	پەسندکردن،	مایەی شانازی، جێگای سەربەرزی،	یەکەی خوێندن (لە کۆلێژ یان زانکۆ)
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) ڕێککەوتن لەگەڵ فرۆشگایەک بۆ دواتر پێدانی پارەی ئەو شتانەی کە کڕیوتن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "We bought the dishwasher on credit."),
                    ExampleSentenceKurdish(
                        text: "دەزگای قاپ‌شتنەکەمان بە قەرز کڕی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "credit", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits1("en-US"),
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
                            "Someone with a bad credit history is less likely to be lent money."),
                    ExampleSentenceKurdish(
                        text:
                            "کەسێکی قەرز کوێر ئەگەری کەمە پارەی بە قەرز پێبدرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits2("en-US"),
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
                        text: "The credit crisis is far from over."),
                    ExampleSentenceKurdish(
                        text: "کێشەی قەرزەکە کۆتایی نەهاتووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits3("en-US"),
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
                        text: "We offer two months' interest-free credit."),
                    ExampleSentenceKurdish(
                        text: "بۆ دوو مانگ بەبێ سوو قەرگرتن قەرز دەدەین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) ئەو پارەیەی کە لە بانکێک قەرزی دەکەیت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The bank refused further credit to the company."),
                    ExampleSentenceKurdish(
                        text:
                            "بانکەکە ڕەتیکردەوە قەزری زیاتر بە کۆمپانیاکە بدات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) هەبوونی متمانەی ئەوەی کە قەرز دەگەڕێیتەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Her credit isn't good anywhere now."),
                    ExampleSentenceKurdish(
                        text: "لە ئێستادا متمانەی هیچ باش نییە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) ئەو پارەیەی کە لە هەژماری بانکی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "You have a credit balance of £250."),
                    ExampleSentenceKurdish(
                        text: "باڵانسی هەژماری بانکی ٢٥٠ پاوەندت هەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits7("en-US"),
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
                    ExampleSentenceEnglish(text: "My account is in credit."),
                    ExampleSentenceKurdish(text: "هەژمارەکەم پارەی تێدایە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) بڕە پارەیەک کە دەخرێتە هەژمارێکی بانکییەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "You'll be paid by direct credit into your bank account."),
                    ExampleSentenceKurdish(
                        text:
                            "پارەت پێ دەدرێت بە زیادکردنی ڕاستەوخۆ بۆ سەر هەژمارە بانکییەکەت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (ناو) مافی بەکارهێنانی شتێک کە پێشتر پارەت بۆ داوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "My phone's run out of credit."),
                    ExampleSentenceKurdish(
                        text: "موبایلەکەم باڵانسی تێدا نەماوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (ناو) بڕە پارەیەک کە کەسێک مافی بە سەرەوە هەیە بە هۆکارێکی دیاریکراو؛ بڕە پارەیەک کە نایدەیت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The child tax credit is subject to strict income limitations."),
                    ExampleSentenceKurdish(
                        text:
                            "پارەی باجی منداڵ پەیوەستە بە سنوورداری توندی داهاتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ناو) ستایش"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He's a player who rarely seems to get the credit he deserves."),
                    ExampleSentenceKurdish(
                        text:
                            "یاریزانێکە کە بەدەگمەن دەردەکەوێت ئەو ستایشە وەربگرێت کە شایەنیەتی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits12("en-US"),
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
                            "We did all the work and she gets all the credit!"),
                    ExampleSentenceKurdish(
                        text:
                            "ئێمە هەموو کارەکەمان کرد و ئەو هەموو ستایشەکە وەردەگرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits13("en-US"),
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
                                    "I can't take all the credit for the show's success—it was a team effort."),
                            ExampleSentenceKurdish(
                                text:
                                    "ناتوانم ستایش بۆ هەموو سەرکەوتنی پڕۆگرامەکە وەربگرم، هەوڵی تیمێک بوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcredits14("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcredits14("en-US"),
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
                                    "Credit will be given in the exam for good spelling and grammar."),
                            ExampleSentenceKurdish(
                                text:
                                    "لە تاقیکردنەوەکەدا بایەخ دەدرێت بە ڕێنووس و ڕێزمانی درووست."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcredits15("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcredits15("en-US"),
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
                                text: "Why should he get all the credit?"),
                            ExampleSentenceKurdish(
                                text:
                                    "بۆچی دەبێت ئەو هەموو ستایشەکە وەربگرێت؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcredits16("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcredits16("en-US"),
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
                  "٩. (ناو) کەسێک یان شتێک کە خاسیەت و سەرکەوتنەکانی جێگای ستایشە و ڕێز دێنێت بۆ کەسێک یان شتێکی دیکە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She is a credit to the school."),
                    ExampleSentenceKurdish(text: "جێگای شانازی قوتابخانەکەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits17("en-US"),
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
                        text: "Your children are a great credit to you."),
                    ExampleSentenceKurdish(text: "منداڵەکانت جێگای شانازیتن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (ناو) ناوهێنانی کەسێک کە کاری کردووە لە پڕۆژەیەکدا، بۆ نموونە فیلمێک یان پڕۆگرامێکی تەلەفیزیۆنی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She was given a programme credit for her work on the costumes for the play."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕێزی لە پڕۆگرامەکە لێنرا بۆ کارەکانی لەسەر جلوبەرگی شانۆکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits19("en-US"),
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
                            "We left before the final credits began to roll."),
                    ExampleSentenceKurdish(
                        text:
                            "پێش ئەوەی ڕێزلێنانی کۆتایی دەست بە دەرکەوتن بکات ڕۆشتین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (کردار) زیادکردنی بڕە پارەیەک بۆ هەژماری بانکی کەسێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They credited my account two days later."),
                    ExampleSentenceKurdish(
                        text: "دوای دوو ڕۆژ هەژمارەکەمیان پڕکردەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits21("en-US"),
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
                      text: "Your account has been credited with £50 000.",
                      note: "Or: £50 000 has been credited to your account.",
                    ),
                    ExampleSentenceKurdish(
                        text: "هەژمارەکەت ٥٠٠٠٠ پاوەندی تێخراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (کردار) باوەڕکردن یان گوتنی ئەوەی کە کەسێک بەرپرسە بۆ کردنی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "All the contributors are credited on the title page."),
                    ExampleSentenceKurdish(
                        text:
                            "تەواوی بەژداران لە پەڕەی سەردێڕ ئاماژەیان پێکراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits23("en-US"),
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
                        text: "She has been wrongly credited as the author."),
                    ExampleSentenceKurdish(
                        text: "بە هەڵە وەک نووسەر ناوی هێنراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits24("en-US"),
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
                                    "The company is credited with inventing the industrial robot."),
                            ExampleSentenceKurdish(
                                text:
                                    "کۆمپانیاکە پەسن دەدرێت بە داهێنانی ڕۆبۆتی پیشەسازی."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcredits25("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcredits25("en-US"),
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
                                    "This therapy has long been credited with many benefits."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئەم چارەسەرە ماوەیەکی زۆرە بە زۆر سوودەوە بەستراوەتەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcredits26("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcredits26("en-US"),
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
                  "١٣. (کردار) باوەڕکردن بەوەی کەسێک یان شتێک خاسیەتێک یان تایبەتمەندییەکی هەیە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Credit me with some intelligence."),
                    ExampleSentenceKurdish(text: "کەمێک ژیریم لێ ڕاببینە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits27("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٤. (کردار) باوەڕبوون بەوەی کەسێک یان شتێک لە جۆرێکی دیاریکراوە یان خاسیەتێکی دیاریکراوی هەیە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The cheetah is generally credited as the world's fastest animal."),
                    ExampleSentenceKurdish(
                        text:
                            "چیتا بەشێوەیەکی گشتی بە خێراترین ئاژەڵی جیهان دادەنرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits28("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits28("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٥. (کردار) باوەڕکردن بە شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He's been promoted—would you credit it?"),
                    ExampleSentenceKurdish(
                        text: "پلەی بەرزکراوەتەوە، باوەڕ دەکەیت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcredits29("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcredits29("en-US"),
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
- Noun: credit 
1. Acknowledgement, praise or respect for something, e.g. having a quality, producing something, doing something, etc. (= recognition)
"he was given credit for his work"; "give her credit for trying";
 
2. Money available for a client to borrow
 
3. An accounting entry acknowledging income or capital items (= credit entry)
 
4. Used in the phrase 'to your credit' in order to indicate an achievement deserving praise
"she already had several performances to her credit"
 
5. Arrangement for deferred payment for goods and services (= deferred payment, tick [Brit, informal])
 
6. Recognition by a college or university that a course of studies has been successfully completed; typically measured in semester hours (= course credit)
 
7. A short note recognizing a source of information or of a quoted passage (= citation, cite, acknowledgment, reference, mention, quotation)
"the student's essay failed to list several important credits";
 
8. An entry on a list of persons who contributed to a film or written work
"the credits were given at the end of the film"
 
9. An estimate, based on previous dealings, of a person's or an organization's ability to fulfil their financial commitments (= credit rating)

- Verb: credit (Derived forms: credited, credits, crediting)
1. Give someone credit for something
"We credited her for saving our jobs"
 
2. Ascribe an achievement to (= accredit)
"She was not properly credited in the program";
 
3. Enter as credit
"We credit your account with £100"
 
4. Have trust in; trust in the truth or veracity of
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
    videoId: 'https://youtu.be/eyMKA4d35dg',
    startSeconds: 303,
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
    videoId: 'https://youtu.be/QCdqHswGS5A',
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/s1SaD-gSZO4',
    startSeconds: 282,
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
    videoId: 'https://youtu.be/AFS6saV981Q',
    startSeconds: 862,
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
    videoId: 'https://youtu.be/Xtwar56r4Lg',
    startSeconds: 150,
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
    videoId: 'https://youtu.be/II-OP6vdMs8',
    startSeconds: 82,
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
    videoId: 'https://youtu.be/TOzQrOPrjwk',
    startSeconds: 57,
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