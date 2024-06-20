import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydemand extends StatefulWidget {
  const EnglishEntrydemand({super.key});

  @override
  State<EnglishEntrydemand> createState() => _EnglishEntrydemandState();
}

class _EnglishEntrydemandState extends State<EnglishEntrydemand> {
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
    return const EntryTitle(word: "demand");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: demand");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈmɑːnd/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdemand(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("demand"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdemand("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈmænd/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdemand(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("demand"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdemand("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdemands1(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A federal judge rejected their demands."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands2(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The management had no intention of meeting union demands."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands3(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Campaigners have stepped up their demands for immediate government action."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands4(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I think your demand for a higher salary is perfectly reasonable."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands5(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Juggling the demands of work and family is never easy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands6(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She shouldn't always give in to his demands."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands7(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Flying makes enormous demands on pilots."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands8(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As a director he makes huge demands on his actors."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands9(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We must prepare children to respond to the demands of work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands10(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I think the demands of this job are excessive."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands11(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The person who cannot say ‘no’ to others' requests is likely to be overwhelmed by external demands."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands12(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Demand is exceeding supply."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands13(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is becoming more difficult for us to meet demand."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands14(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Consumer demand for organic foods continues to increase rapidly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands15(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We are struggling to satisfy the demand for the product."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands16(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They are demanding the release of all political prisoners."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands17(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You should demand an apology in writing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands18(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Protesters demanded the resignation of the prime minister."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands19(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The UN has demanded that all troops be withdrawn."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands20(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We demand a lot of our teachers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands21(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I demand to see the manager."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands22(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He had demanded money from her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands23(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "‘Who the hell are you?’ he demanded angrily."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands24(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "‘And where have you been?’ he demanded angrily."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands25(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Today's consumers are demanding a greater variety of produce."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands26(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This sport demands both speed and strength."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands27(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She can be a very tough negotiator when the situation demands it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands28(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands29(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands30(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands31(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands32(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands33(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands34(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands35(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands36(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands37(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands38(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands39(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands40(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands41(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands42(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands43(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands44(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands45(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands46(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands47(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands48(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands49(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands50(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands51(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands52(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands53(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands54(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdemands55(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdemands5500"); // DOPSUM: CHANGE TEXT
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
کوردی: داخوازی، داوا، برەو،	(ئابوری) داخوازی، داوا،	حەوجێ، پێویستی،	داخوازی پێدان،	(خوازە) بار، قورسایی
"""),
          const DefinitionKurdish(text: "١. (ناو) داوایەکی بەھێز بۆ شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "A federal judge rejected their demands."),
                    ExampleSentenceKurdish(
                        text: "دادوەرێکی فیدراڵی داواکانی ڕەتکردنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "demand", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The management had no intention of meeting union demands."),
                    ExampleSentenceKurdish(
                        text:
                            "بەڕێوەبەرایەتی ھیچ نیازێکی نەبوو داواکانی سەندیکاکە جێبەچی بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Campaigners have stepped up their demands for immediate government action."),
                    ExampleSentenceKurdish(
                        text:
                            "چالاکوانان فشاریان زیاد کردووە بۆ داوای ھەنگاوی دەستبەجێی حکومەت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I think your demand for a higher salary is perfectly reasonable."),
                    ExampleSentenceKurdish(
                        text:
                            "پێموایە داواکەت بۆ مووچەی بەرزتر تەواو لە جێگای خۆیەتی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) ئەو شتانەی کە کەسێک یان شتێک ناچارت دەکات بیکەیت، بە تایبەتی شتی سەخت، ماندووکەر، ھتد"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Juggling the demands of work and family is never easy."),
                    ExampleSentenceKurdish(
                        text:
                            "گونجاندنی پێویستییەکانی کار و خێزان ھەرگیز ئاسان نییە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands5("en-US"),
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
                        text: "She shouldn't always give in to his demands."),
                    ExampleSentenceKurdish(
                        text: "نابێت ھەمیشە مل بدات بۆ حەوجێیەکانی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands6("en-US"),
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
                        text: "Flying makes enormous demands on pilots."),
                    ExampleSentenceKurdish(
                        text: "فڕین قورسایی زۆر دەخاتە سەر فڕۆکەوانان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands7("en-US"),
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
                            "As a director he makes huge demands on his actors."),
                    ExampleSentenceKurdish(
                        text: "وەک دەرھێنەرێک داوای زۆر لە ئەکتەرەکانی دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands8("en-US"),
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
                            "We must prepare children to respond to the demands of work."),
                    ExampleSentenceKurdish(
                        text:
                            "دەبێت منداڵان ڕابھێنین بۆ پێداویستییەکانی کارکردن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands9("en-US"),
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
                        text: "I think the demands of this job are excessive."),
                    ExampleSentenceKurdish(
                        text: "پێموایە حەوجێیەکانی ئەم کارە زۆرن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands10("en-US"),
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
                            "The person who cannot say ‘no’ to others' requests is likely to be overwhelmed by external demands."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەو کەسەی کە ناتوانێت بڵێت 'نەخێر' بە داواکانی کەسانی دیکە ئەگەری ھەیە بکەوێتە ژێر باری دەرەکییەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) ویستی کڕیاران بۆ شت کڕین"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Demand is exceeding supply."),
                    ExampleSentenceKurdish(text: "خواست شتومەک زیاد دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands12("en-US"),
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
                            "It is becoming more difficult for us to meet demand."),
                    ExampleSentenceKurdish(
                        text: "سەختتر دەبێت بۆمان بە خواستدا ڕابگەین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands13("en-US"),
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
                            "Consumer demand for organic foods continues to increase rapidly."),
                    ExampleSentenceKurdish(
                        text:
                            "خواستی کڕیاران بۆ خواردنی ئەندامی بەردەوامە لەوەی بەخێرایی زیاد بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands14("en-US"),
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
                            "We are struggling to satisfy the demand for the product."),
                    ExampleSentenceKurdish(
                        text: "تەقەڵامانە لە ڕاگەشتن بە خواست بۆ بەرھەمەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) داواکردن بە بەھێزی بۆ شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "They are demanding the release of all political prisoners."),
                    ExampleSentenceKurdish(
                        text:
                            "داوای ئازادبوونی ھەموو زیندانییە سیاسییەکان دەکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands16("en-US"),
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
                        text: "You should demand an apology in writing."),
                    ExampleSentenceKurdish(
                        text: "دەبێت بە نووسین داوای لێبوردنخوازییەک بکەیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands17("en-US"),
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
                            "Protesters demanded the resignation of the prime minister."),
                    ExampleSentenceKurdish(
                        text:
                            "خۆپیشاندەران داوای دەستلەکارکێشانەوەی سەرۆک وەزیران دەکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands18("en-US"),
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
                      text: "The UN has demanded that all troops be withdrawn.",
                      note:
                          "British English also: They are demanding that all troops should be withdrawn.",
                    ),
                    ExampleSentenceKurdish(
                        text:
                            "نەتەوە یەکگرتووەکان داوای کردووە ھەموو ھێزەکان بکشێندرێنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands19("en-US"),
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
                        text: "We demand a lot of our teachers."),
                    ExampleSentenceKurdish(
                        text: "داوای زۆر لە مامۆستایان دەکەین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands20("en-US"),
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
                        text: "I demand to see the manager."),
                    ExampleSentenceKurdish(
                        text: "داوای بینیی بەڕێوەبەر دەکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands21("en-US"),
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
                        text: "He had demanded money from her."),
                    ExampleSentenceKurdish(text: "داوای پارەی لێکردبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) پرسینی شتێک بە تووڕەیی و توندی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "‘Who the hell are you?’ he demanded angrily."),
                    ExampleSentenceKurdish(
                        text: "بە تووڕەییەوە پرسی 'تۆ چی نەفرەتییەکەیت؟'"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands23("en-US"),
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
                            "‘And where have you been?’ he demanded angrily."),
                    ExampleSentenceKurdish(
                        text: "بە تووڕەییەوە پرسی 'و لە کوێ بوویت؟'"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) داواکردنی کەلوپەل و خزمەتگوزاری"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Today's consumers are demanding a greater variety of produce."),
                    ExampleSentenceKurdish(
                        text:
                            "کڕیارانی ئەم سەردەمە خواستیان لەسەر جۆری زیاتری بەرھەم ھەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands25("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) پێویستبوونی شتێک بۆ ئەوەی لە شتێکی دیکەدا سەرکەوتوو بیت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "This sport demands both speed and strength."),
                    ExampleSentenceKurdish(
                        text: "ئەم وەرزشە پێویستی بە خێرایی و ھێز ھەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands26("en-US"),
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
                            "She can be a very tough negotiator when the situation demands it."),
                    ExampleSentenceKurdish(
                        text:
                            "دەکرێت دانووستانکارێکی توند بێت کە دۆخەکە پێویستی پیی بێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands27("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands2800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands28("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands28("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands2900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands29("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands29("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands3000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands30("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands30("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands3100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands31("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands31("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands3200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands32("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands32("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands3300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands33("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands33("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands3400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands34("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands34("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands3500"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands35("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands35("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands3600"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands36("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands36("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands3700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands37("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands37("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands3800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands38("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands38("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands3900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands39("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands39("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands4000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands40("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands40("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands4100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands41("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands41("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands4200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands42("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands42("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands4300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands43("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands43("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands4400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands44("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands44("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands4500"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands45("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands45("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands4600"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands46("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands46("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands4700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands47("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands47("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands4800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands48("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands48("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands4900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands49("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands49("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands5000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands50("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands50("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands5100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands51("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands51("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands5200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands52("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands52("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands5300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands53("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands53("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands5400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands54("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands54("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdemands5500"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdemands55("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdemands55("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
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
- Verb: demand (derived forms: demands, demanding, demanded)
1. Request urgently and forcefully
"The victim's family is demanding compensation"; "The boss demanded that he be fired immediately"; "She demanded to see the manager"
 
2. Must previously have happened or existed, happen or be in place during (in order for stated thing to be happening or be the case) (= necessitate, ask, postulate, need, require, take, involve, call for)
"This position demands a lot of personal sacrifice";
 
3. Claim as due or just (= exact)
"The bank demanded payment of the loan";
 
4. Lay legal claim to
 
5. Summon to court
 
6. Ask to be informed of
"I demand an explanation"

- Noun: demand (derived forms: demands)
1. An urgent or peremptory request
"his demands for attention were unceasing"
 
2. The ability and desire to purchase goods and services
"the automobile reduced the demand for buggywhips"; "the demand exceeded the supply"
 
3. Required activity (= requirement)
"there were many demands on his time";
 
4. The act of demanding
"the kidnapper's exorbitant demands for money"
 
5. A condition requiring relief (= need)
"there is a demand for jobs";
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
  final String _videoId = 'y1sF6ZeASU0';
  final double _startSeconds = 541;

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
  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 1106;

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
  final String _videoId = 's3B-qp3U5G0';
  final double _startSeconds = 61;

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
  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1664;

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
  final String _videoId = '9TugA_z5vQE';
  final double _startSeconds = 152;

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
  final String _videoId = 'raSeaAeryWE';
  final double _startSeconds = 1164;

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
  final String _videoId = 'b1reY72ktEc';
  final double _startSeconds = 220;

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