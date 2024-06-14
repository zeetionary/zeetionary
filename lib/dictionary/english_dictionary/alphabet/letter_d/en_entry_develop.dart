import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydevelop extends StatefulWidget {
  const EnglishEntrydevelop({super.key});

  @override
  State<EnglishEntrydevelop> createState() => _EnglishEntrydevelopState();
}

class _EnglishEntrydevelopState extends State<EnglishEntrydevelop> {
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
    return const EntryTitle(word: "develop");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: develop");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈveləp/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdevelop(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("develop"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdevelop("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈveləp/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdevelop(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("develop"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdevelop("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdevelops1(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "From birth to age 5, a child's brain develops rapidly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops2(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Some children develop more slowly than others."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops3(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Gradually these settlements developed into cities."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops4(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Human beings developed from earlier species of animals."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops5(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The aim is to develop your personal skills."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops6(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She developed the company from nothing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops7(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their relationship has developed over a number of years."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops8(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He is trying hard to develop a loving relationship with his daughter."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops9(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Physicians need to develop a better understanding of this issue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops10(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company develops and markets new software."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops11(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It takes time to develop new technology."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops12(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We are developing products for different parts of the industry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops13(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She developed lung cancer at the age of sixty."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops14(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The car developed engine trouble and we had to stop."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops15(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If symptoms develop, seek help quickly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops16(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A crisis was rapidly developing in the Gulf."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops17(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We need more time to see how things develop before we take action."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops18(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The conflict quickly developed into full-scale war."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops19(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The situation is developing into a crisis."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops20(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The site is being developed by a French company."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops21(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A lot of residents in town feel that it would be tragic if the land were developed for residential use."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops22(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company is developing a chain of hotels."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops23(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He is enthusiastic about plans to develop factories at the site."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops24(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "For a country to develop, a good road network is essential."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops25(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their economy was developing at an incredible pace."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops26(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She develops the theme more fully in her later books."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops27(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He began to develop these ideas in a series of paintings."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops28(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops29(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops30(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops_3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops31(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops32(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops33(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops34(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops35(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops36(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops37(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops38(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops39(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops40(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops_4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops41(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops42(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops43(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops44(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops45(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops46(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops47(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops48(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops49(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops50(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops_6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops51(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops52(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops53(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops54(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdevelops55(String languageCode) async {
    // DOPSUM: CHANGE speakdevelop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdevelops5500"); // DOPSUM: CHANGE TEXT
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
کوردی: پەرە پێدان، گەشە پێدان، پێکھێنان
"""),
          const DefinitionKurdish(
              text:
                  "١. (کردار) گەشەکردن و بەرەوپێشچوون، گەورەتر بوون، پێشکەوتووتر بوون، ھتد بە تێپەڕبوونی کات"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "From birth to age 5, a child's brain develops rapidly."),
                    ExampleSentenceKurdish(
                        text:
                            "لە لەدایکبوونەوە تاوەکو پێنج ساڵی مێشکی منداڵ بە خێرایی بەرەوپێش دەچێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "develop", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Some children develop more slowly than others."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەندێک منداڵ ھێواشتر گەشە دەکەن وەک لەوانی دیکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
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
                                    "Gradually these settlements developed into cities."),
                            ExampleSentenceKurdish(
                                text:
                                    "کەم کەم ئەم کۆمەڵگەی نیشتەجێبوونانە بوون بە شار."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdevelops3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdevelops3("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "Human beings developed from earlier species of animals."),
                            ExampleSentenceKurdish(
                                text:
                                    "مرۆڤ لە جۆرەکانی دیکەی ئاژەڵانەوە گەشەی کرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdevelops4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdevelops4("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "The aim is to develop your personal skills."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئامانجەکە بەرەوپێشبردنی شارەزاییە کەسییەکانتە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdevelops5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdevelops5("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "She developed the company from nothing."),
                            ExampleSentenceKurdish(
                                text: "کۆمپانیاکەی لە ھیچەوە پەرەپێدا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdevelops6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdevelops6("en-US"),
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
              text: "٢. (کردار) دەستپێکردن و پەرەپێدانی شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Their relationship has developed over a number of years."),
                    ExampleSentenceKurdish(
                        text:
                            "پەیوەندییەکەیان لە ماوەی چەند ساڵێکدا بەرەو پێشچوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He is trying hard to develop a loving relationship with his daughter."),
                    ExampleSentenceKurdish(
                        text:
                            "بە ڕژدی ھەوڵ دەدات کە پەیوەندییەکی خۆشەویستانە لەگەڵ کچەکەی درووست بکات بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Physicians need to develop a better understanding of this issue."),
                    ExampleSentenceKurdish(
                        text:
                            "پزیشکە گشتییەکان دەبێت تێگەشتنی زیاتر پەرەپێبدەن بۆ ئەم بابەتە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) پەرەپێدانی بیرۆکەیەک، بەرھەمێک، ھتد و سەرخستنی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The company develops and markets new software."),
                    ExampleSentenceKurdish(
                        text:
                            "کۆمپانیاکە ئەرمامێیر تازە گەشە پێدەدات و بەبازاڕیان دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "It takes time to develop new technology."),
                    ExampleSentenceKurdish(
                        text: "کاتی دەوێت تەکنەلۆژیای تازە درووست بکرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "We are developing products for different parts of the industry."),
                    ExampleSentenceKurdish(
                        text:
                            "بەرھەم گەشە پێدەدەین بۆ بەشە جیاوازەکانی پیشەسازی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) ھەبوونی شتێک، وەک نەخۆشییەک یان کێشەیەک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She developed lung cancer at the age of sixty."),
                    ExampleSentenceKurdish(
                        text: "لە تەمەنی شەست ساڵی تووشی شێرپەنجەی سینگ بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
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
                                    "The car developed engine trouble and we had to stop."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئۆتۆمبێلەکە تووشی کێشەی بزوێنەر بوو و پێویست بوو بوەستین."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdevelops14("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdevelops14("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "If symptoms develop, seek help quickly."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئەگەر نیشانەکانیت گرت بەخێرایی بۆ یارمەتی بچۆ."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdevelops15("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdevelops15("en-US"),
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
                  "٥. (کردار) دەستکردن بە ڕوودان یان گۆڕان، بەتایبەتی بەشێوەیەکی خراپ"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "A crisis was rapidly developing in the Gulf."),
                    ExampleSentenceKurdish(
                        text:
                            "قەیرانێک بە خێرایی تەشەنەی دەکرد لە کەنداوی عەرەب."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
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
                                    "We need more time to see how things develop before we take action."),
                            ExampleSentenceKurdish(
                                text:
                                    "پێویستیمان بە کاتی زیاترە کە ببینین چۆن شتەکان تەشەنە دەکەن پێش ئەوەی ھەنگاو بنێین."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdevelops17("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdevelops17("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "The conflict quickly developed into full-scale war."),
                            ExampleSentenceKurdish(
                                text: "پێکدادانەکە زوو بوو بە جەنگی تەواو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdevelops18("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdevelops18("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "The situation is developing into a crisis."),
                            ExampleSentenceKurdish(
                                text: "دۆخەکە تەشەنە دەسێنێت بۆ قەیران."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdevelops19("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdevelops19("en-US"),
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
                  "٦. (کردار) بنیادنانی خانوو، کارگە، ھتد ـی تازە لەسەر خاکێک کە پێشووتر بەکار نەدەھات"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The site is being developed by a French company."),
                    ExampleSentenceKurdish(
                        text:
                            "شوێنەکە لەلایەن کۆمپانیایەکی فەرەنسییەوە گەشەی پێ دەدرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "A lot of residents in town feel that it would be tragic if the land were developed for residential use."),
                    ExampleSentenceKurdish(
                        text:
                            "زۆر ھاوڵاتی ھەست دەکەن تراژیدیا دەبێت ئەگەر خاکەکە بۆ بەکارھێنانی نیشتەجێبوون گەشەی پێ بدرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) بنیادنان یان باشترکردنی بینا یان کارگەیەک"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The company is developing a chain of hotels."),
                    ExampleSentenceKurdish(
                        text: "کۆمپانیاکە زنجیرە ھوتێلێک درووست دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops22("en-US"),
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
                            "He is enthusiastic about plans to develop factories at the site."),
                    ExampleSentenceKurdish(
                        text: "بەجۆشە سەبارەت بە بنیادنانی کارگە لە شوێنەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (کردار) بەرەوپێشچوونی وڵاتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "For a country to develop, a good road network is essential."),
                    ExampleSentenceKurdish(
                        text:
                            "بۆ پێشکەوتنی وڵاتێک، تۆڕێکی ڕێگاوبانی باش سەرەکییە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Their economy was developing at an incredible pace."),
                    ExampleSentenceKurdish(
                        text:
                            "کۆمپانیاکەیان بە خێراییەکی ناوازە بەرەوپێش دەچوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops25("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٩. (کردار) زیادکردنی وردەکاریی زیاتر بۆ چیرۆکێک، بیرۆکەیەک، ھتد"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She develops the theme more fully in her later books."),
                    ExampleSentenceKurdish(
                        text:
                            "لە پەرتووکەکانی داھاتووی زیاتر مژارەکە بەرەوپێش دەبات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops26("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He began to develop these ideas in a series of paintings."),
                    ExampleSentenceKurdish(
                        text:
                            "دەستیکرد بە بەروپێشبردنی ئەم بیرۆکانە لە زنجیرە تابلۆیەکدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdevelops27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdevelops27("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops2800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops28("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops28("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops2900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops29("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops29("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops_3000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops30("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops30("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops3100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops31("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops31("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops3200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops32("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops32("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops3300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops33("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops33("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops3400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops34("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops34("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops3500"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops35("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops35("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops3600"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops36("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops36("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops3700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops37("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops37("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops3800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops38("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops38("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops3900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops39("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops39("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops_4000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops40("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops40("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops4100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops41("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops41("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops4200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops42("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops42("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops4300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops43("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops43("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops4400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops44("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops44("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops4500"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops45("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops45("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops4600"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops46("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops46("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops4700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops47("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops47("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops4800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops48("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops48("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops4900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops49("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops49("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops_6000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops50("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops50("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops5100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops51("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops51("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops5200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops52("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops52("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops5300"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops53("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops53("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops5400"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops54("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops54("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (کردار) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdevelops5500"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdevelops55("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdevelops55("en-US"),
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
- Verb: develop (derived forms: developed, developing, develops)
1. Make something new, such as a product or a mental or artistic creation
"Her company developed a new kind of building material that withstands all kinds of weather"; "They developed a new technique"
 
2. Start and work to gradually produce or understand (= evolve, germinate)
"We have developed a new theory of evolution";
 
3. Gain through experience (= acquire, evolve)
"Children must develop a sense of right and wrong"; "Dave developed leadership qualities in his new position"; "develop a passion for painting";
 
4. Come to have or undergo a change of (physical features and attributes) (= grow, produce, get, acquire)
"The patient developed abdominal pains"; "Well-developed breasts";
 
5. Come into existence; take on form or shape (= originate, arise, rise, uprise, spring up, grow)
"A new religious movement developed in that country";
 
6. Change the use of and make available or usable (= build up)
"develop land"; "The country developed its natural resources";
 
7. Elaborate, as of theories and hypotheses (= explicate, formulate)
"Could you develop the ideas in your thesis";
 
8. Create by training and teaching (= train, prepare, educate)
"we develop the leaders for the future";
 
9. Be gradually disclosed or unfolded; become manifest
"The plot developed slowly"
 
10. Grow, progress, unfold, or evolve through a process of evolution, natural growth, differentiation, or a conducive environment
"A flower developed on the branch"; "The country developed into a mighty superpower"; "The embryo develops into a foetus"; "This situation has developed over a long time"
 
11. Become technologically advanced (= modernize, modernise [Brit])
"Many countries in Asia are now developing at a very fast pace";
 
12. Cause to grow and differentiate in ways conforming to its natural development (= make grow)
"The perfect climate here develops the grain"; "He developed a new kind of apple";
 
13. Generate gradually
"We must develop more potential customers"; "develop a market for the new mobile phone"
 
14. Grow emotionally or mature (= grow)
"The child developed beautifully in her new kindergarten";
 
15. (photography) make visible by means of chemical solutions
"Please develop this roll of film for me"
 
16. Superimpose a three-dimensional surface on a plane without stretching, in geometry
 
17. (chess) move one's pieces into strategically more advantageous positions
"Spassky developed quickly"
 
18. (chess) move into a strategically more advantageous position
"develop the rook"
 
19. Elaborate by the unfolding of a musical idea and by the working out of the rhythmic and harmonic changes in the theme
"develop the melody and change the key"
 
20. Happen (= break, recrudesce)
"Report the news as it develops";
 
21. (mathematics) expand in the form of a series
"Develop the function in the following form"
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
    videoId: 'hFZFjoX2cGg',
    startSeconds: 1107,
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
    videoId: 'zqllxbPWKNI',
    startSeconds: 102,
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
    videoId: 'AF8d72mA41M',
    startSeconds: 688,
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
    videoId: 'ewLpXw6uN28',
    startSeconds: 22,
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
    videoId: 'dtp6b76pMak',
    startSeconds: 2022,
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
    videoId: 'iKv4oc2zbeA',
    startSeconds: 2126,
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
    videoId: 'ZO6ZDATLRmo',
    startSeconds: 60,
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