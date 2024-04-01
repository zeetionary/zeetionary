import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycourse extends StatelessWidget {
  const EnglishEntrycourse({super.key});

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
    return const EntryTitle(word: "course");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: course");
  }
}

class IpaUK extends StatelessWidget {
  IpaUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcourse(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("course"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUK: /kɔːs/"),
        CustomIconButtonBritish(
          onPressed: () => speakcourse("en-GB"),
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

  Future<void> speakcourse(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("course"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUS: /kɔːrs/"),
        CustomIconButtonAmerican(
          onPressed: () => speakcourse("en-US"),
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

  Future<void> speakcourses1(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He took a course in Russian language and literature."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses2(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I want to do a course in art and design."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses3(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She teaches a course on internet crime."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses4(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I enrolled in a ten-week online course."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses5(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The college runs specialist language courses."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses6(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("What degree course did you choose?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses7(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The university offers a course in computer games technology."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses8(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The course leads to a master's degree."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses9(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He spends every weekend out on the golf course."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses10(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Only ten yachts completed the course."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses11(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We had chicken for our main course."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses12(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He radioed the pilot to change course."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses13(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We're on course for our destination."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses14(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The president appears likely to change course on some key issues."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses15(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The dollar fell sharply for two days, and then reversed course."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses16(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her career followed a similar course to her sister's."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses17(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is time to chart a new course in defence policy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses18(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The president was urged to change course before it was too late."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses19(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They were obliged to steer a course between the interests of the two groups."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses20(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There are various courses open to us."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses21(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "What course of action would you recommend?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses22(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The wisest course would be to say nothing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses23(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This was an event that changed the course of history."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses24(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "War has determined the course of much of human history."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses25(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The path follows the course of the river."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses26(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When taking antibiotics it is important to finish the course."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses27(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He stopped talking and tears coursed down his cheeks."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses28(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses29(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses30(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses31(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses32(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses33(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses34(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses35(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses36(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses37(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses38(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses39(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses40(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses41(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses42(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses43(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses44(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses45(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses46(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses47(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses48(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses49(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses50(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses51(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses52(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses53(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses54(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses55(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses56(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses57(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses58(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses59(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses60(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses61(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses6100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses62(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses6200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses63(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses6300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses64(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses6400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses65(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses6500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses66(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses6600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses67(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses6700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses68(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses6800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses69(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses6900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses70(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses7000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses71(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses7100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses72(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses7200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses73(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses7300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses74(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses7400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses75(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses7500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses76(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses7600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses77(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses7700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses78(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses7800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses79(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses7900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses80(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses8000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses81(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses8100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourses82(String languageCode) async {
    // DOPSUM: CHANGE speakcourse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourses8200"); // DOPSUM: CHANGE TEXT
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
کوردی: ڕێڕەو، ڕێگا، ڕێ، ڕەوڕەوە، ڕێک، ڕەوت، ڕەوەند،	ماوەی، مەودای،	شێوە، شێواز، تەرز،	خولی وانە، وانە، پۆل، بواری خوێندن،	ئاوەڕۆ،	بەش، پشک (خۆراک)،	یاریگا، گۆڕەپان،	تێپەڕینی کات،	ڕیز، ڕەگ، چین،	چارەسەری، زنجیرە چارەسەرییەکی پزشکی، بادەوە یان چارۆکەی خوارەوە (ی کەشتی)،	(زوو لە چیرۆکی پاڵەوانان‌دا) خان، قۆناخ، ڕووداو، بێ‌نوێژی
"""),
          const DefinitionKurdish(
              text: "١. (ناو) کۆمەڵە وانەیەک لەسەر بابەتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He took a course in Russian language and literature."),
                    ExampleSentenceKurdish(
                        text: "بەژداری کۆرسێکی لەسەر زمان و ئەدەبی ڕووسی کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "course", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses1("en-US"),
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
                        text: "I want to do a course in art and design."),
                    ExampleSentenceKurdish(
                        text: "دەمەوێت کۆرسێکی هونەر و دیزاین ئەنجام بدەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses2("en-US"),
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
                                    "She teaches a course on internet crime."),
                            ExampleSentenceKurdish(
                                text:
                                    "کۆرسێک لەسەر تاوانکاری ئینتەرنێت دەڵێتەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourses3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourses3("en-US"),
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
                                    "I enrolled in a ten-week online course."),
                            ExampleSentenceKurdish(
                                text:
                                    "بەژداری کۆرسێکی دە هەفتەیی ئۆنلاینم کرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourses4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourses4("en-US"),
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
                                    "The college runs specialist language courses."),
                            ExampleSentenceKurdish(
                                text:
                                    "کۆلێژەکە کۆرسی شارەزاییانەی زمانی هەیە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourses5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourses5("en-US"),
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
                  "٢. (ناو) ماوەیەکی خوێندن لە کۆلێژ یان زانکۆ کە بە تاقیکردنەوە یان وەرگرتنی بڕوانامە کۆتایی دێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "What degree course did you choose?"),
                    ExampleSentenceKurdish(
                        text: "چی کۆرسێکی بڕوانامەت هەڵبژارد؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses6("en-US"),
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
                            "The university offers a course in computer games technology."),
                    ExampleSentenceKurdish(
                        text:
                            "زانکۆکە کۆرسێک لەسەر تەکنەلۆژیای یاریی کۆمپیوتەر پێشکەش دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses7("en-US"),
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
                        text: "The course leads to a master's degree."),
                    ExampleSentenceKurdish(
                        text: "کۆرسەکە دەگات بە بڕوانامەی ماستەر."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) ناوچەیەکی گەورە کە بۆ یاری گۆڵف ئامادە کراوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He spends every weekend out on the golf course."),
                    ExampleSentenceKurdish(
                        text:
                            "هەموو کۆتاییەکی هەفتە لە گۆڕەپانی گۆڵفەکە بەسەر دەبات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) زەوییەک یان ناوچەیەکی ئاوی کە تێیدا پێشبڕکێیەک ساز دەکرێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Only ten yachts completed the course."),
                    ExampleSentenceKurdish(
                        text: "تەنها دە یەخت مەوداکەیان تەواوکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) یەکێک لە بەشە جیاوازەکانی ژەمە خواردنێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "We had chicken for our main course."),
                    ExampleSentenceKurdish(
                        text: "بۆ بەشی سەرەکیمان مریشکمان هەبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (ناو) ڕێڕەوی فڕۆکەیەک یان کەشتییەک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He radioed the pilot to change course."),
                    ExampleSentenceKurdish(
                        text: "ئاماژەی بۆ فڕۆکەوانەکە نارد ڕێڕەوەکەی بگۆڕێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses12("en-US"),
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
                        text: "We're on course for our destination."),
                    ExampleSentenceKurdish(
                        text: "لەسەر ڕێڕەوی گەشتن بە ئامانجەکەمانین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (ناو) ئاراستەیەک کە بیرۆکە و کرداری کەسێک بۆی دەچێت، یان ئاقاری گەشەکردنی ڕووداوەکان"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The president appears likely to change course on some key issues."),
                    ExampleSentenceKurdish(
                        text:
                            "سەرۆک وادەردەکەوێت ئەگەری هەبێت ڕەوتی بگۆڕێت لەسەر هەندێک بابەتی گرنگ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses14("en-US"),
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
                            "The dollar fell sharply for two days, and then reversed course."),
                    ExampleSentenceKurdish(
                        text:
                            "دۆلار بۆ دوو ڕۆژ بە زۆری داتەپی، و دواتر ڕێڕەوی گۆڕی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses15("en-US"),
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
                                    "Her career followed a similar course to her sister's."),
                            ExampleSentenceKurdish(
                                text:
                                    "کارەکەی بە ڕێڕەوێکی هاوشێوەی خوشکەکەیدا چوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourses16("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourses16("en-US"),
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
                                    "It is time to chart a new course in defence policy."),
                            ExampleSentenceKurdish(
                                text:
                                    "کاتی ئەوە هاتووە ڕێڕەوێکی تازە لە سیاسەتی بەرگریدا دابڕێژین."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourses17("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourses17("en-US"),
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
                                    "The president was urged to change course before it was too late."),
                            ExampleSentenceKurdish(
                                text:
                                    "سەرۆک هاندرا ڕێڕەوەکەی بگۆڕێت پێش ئەوەی زۆر درەنگ بێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourses18("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourses18("en-US"),
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
                                    "They were obliged to steer a course between the interests of the two groups."),
                            ExampleSentenceKurdish(
                                text:
                                    "ناچاربوون ڕێڕەوێک لە نێوان بەرژەوەندی هەردوو گرووپەکەدا بگرنە بەر."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourses19("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourses19("en-US"),
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
              text: "٨. (ناو) شێوازی مامەڵەکردن لەگەڵ دۆخێکی دیاریکراودا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "There are various courses open to us."),
                    ExampleSentenceKurdish(
                        text: "ژمارەیەک ڕێگای لە پێشمان کراوەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses20("en-US"),
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
                        text: "What course of action would you recommend?"),
                    ExampleSentenceKurdish(
                        text: "چی ڕێگاچارەیەک پێشنیار دەکەیت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses21("en-US"),
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
                        text: "The wisest course would be to say nothing."),
                    ExampleSentenceKurdish(
                        text: "باشترین ڕێگا ئەوەیە هیچ نەڵێیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (ناو) ڕێگای بەرەوپێشچوونی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "This was an event that changed the course of history."),
                    ExampleSentenceKurdish(
                        text: "ئەمە ڕووداوێک بوو کە ئاقاری مێژووی گۆڕی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses23("en-US"),
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
                            "War has determined the course of much of human history."),
                    ExampleSentenceKurdish(
                        text: "جەنگ زۆرینەی ڕەوتی مێژووی دیاریکردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٠. (ناو) ڕێڕەوی ڕووبارێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The path follows the course of the river."),
                    ExampleSentenceKurdish(
                        text: "ڕێگاکە بە شوێن ڕێڕەوی ڕووبارەکەدا دەچێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses25("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١١. (ناو) زنجیرە چارەسەرێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "When taking antibiotics it is important to finish the course."),
                    ExampleSentenceKurdish(
                        text:
                            "کە دژەبەکتریا وەردەگریت باشتر وایە زنجیرە چارەسەرییەکە تەواو بکەیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses26("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٢. (کردار) جوڵان بە خێرایی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He stopped talking and tears coursed down his cheeks."),
                    ExampleSentenceKurdish(
                        text:
                            "لە قسەکردن وەستا و فرمێسک بە گۆنایدا ڕژا بە چاویدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourses27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourses27("en-US"),
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
- Noun: course (Derived forms: courses)
1. Education imparted in a series of lessons or meetings (= course of study, course of instruction, class)
"he took a course in basket weaving";
 
2. A connected series of events, actions or developments (= line)
"the government took a firm course";
 
3. General line of orientation (= trend)
"the river takes a southern course";
 
4. A mode of action (= course of action)
"if you persist in that course you will surely fail"; "once a nation is embarked on a course of action it becomes extremely difficult for any retraction to take place";
 
5. A line or route along which something travels or moves (= path, track)
"the course of the river";
 
6. A body of students who are taught together (= class, form, grade [N. Amer])
"early morning courses are always sleepy";
 
7. Part of a meal served at one time
"she prepared a three course meal"
 
8. (construction) a layer of masonry (= row)
"a course of bricks";
 
9. Facility consisting of a circumscribed area of land or water laid out for a sport
"the course had only nine holes"; "the course was less than a mile"

- Verb: course (Derived forms: coursing, coursed, courses)
1. Move swiftly through or over
"ships coursing the Atlantic"
 
2. Move along, of liquids (= run, flow, feed)
"Water coursed into the cave";
 
3. (game) hunt with hounds
"He often courses hares"

- Adverb: course 
1. As might be expected (= naturally, of course, natch [slang])
"of course, the lawyer sent us a huge bill"; "course, the lawyer sent us a huge bill";
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
    startSeconds: 6,
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
    videoId: 'https://youtu.be/VrKW58MS12g?t=',
    startSeconds: 32,
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
    videoId: 'https://youtu.be/DOMPU26i7Xw?t=',
    startSeconds: 132,
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
    videoId: 'https://youtu.be/DPZzrlFCD_I?t=',
    startSeconds: 63,
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
    videoId: 'https://youtu.be/tXjHb5QmDV0?t=',
    startSeconds: 93,
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
    videoId: 'https://youtu.be/sSdMX8AWurI?t=',
    startSeconds: 104,
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
    videoId: 'https://youtu.be/lYu1ysDULwA?t=',
    startSeconds: 437,
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