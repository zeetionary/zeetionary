import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycrown extends StatefulWidget {
  const EnglishEntrycrown({super.key});

  @override
  State<EnglishEntrycrown> createState() => _EnglishEntrycrownState();
}

class _EnglishEntrycrownState extends State<EnglishEntrycrown> {
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
    return const EntryTitle(word: "crown");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crown");
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
    return const IPAofEnglish(text: "IpaUK: /kraʊn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrown(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crown"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrown("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kraʊn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrown(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crown"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrown("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrowns1(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The crown was placed upon the new monarch's head."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns2(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Who's appearing for the Crown in this case?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns3(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She refused the crown."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns4(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He succeeded to the crown of Spain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns5(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In 1553 the crown passed from Edward VI to Mary."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns6(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The princess wore a crown of roses at the party."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns7(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is determined to retain her Wimbledon crown."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns8(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She swept her hair into a bun on the crown of her head."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns9(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The castle was built on the crown of the hill for strategic advantage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns10(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Roses bloom on shoots that sprout from the crown of the plant."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns11(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Nests were built high in the crowns of trees."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns12(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After the accident, he needed a crown to repair the fractured tooth."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns13(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Queen Elizabeth was crowned in 1953."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns14(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The prince was soon to be crowned King of England."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns15(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The church was crowned with golden domes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns16(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their efforts were finally crowned with success."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns17(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I felt like crowning him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns18(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I've had one of my teeth crowned."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns19(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns20(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns21(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns22(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns23(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns24(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns25(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns26(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns27(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns28(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns29(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns30(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns31(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns32(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns33(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns34(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns35(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns36(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns37(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns38(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns39(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns40(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns41(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns42(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns43(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns44(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns45(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns46(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns47(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns48(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrowns49(String languageCode) async {
    // DOPSUM: CHANGE speakcrown
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrowns4900"); // DOPSUM: CHANGE TEXT
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
کوردی: تاج،	پاتشایەتی، تاج‌وتەخت، تەخت‌وتاج،	تاجەگوڵ،	نیشان یان دروشمی تاج،	بەڕێوەبەرایەتی یان هێز و دەسەڵاتی شا یان شاژن،	سەرناوی قارەمانی،	خەڵات،	نووک، سەر، بەشی سەرەوە، سەرکەل، تەوق، نووچکە، تەپڵ،	تاجی ددان، ڕووپۆشی ددان،	ترۆپک، دوند، لووتکە
"""),
          const DefinitionKurdish(text: "١. (ناو) تاجی پاشا و شاژن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The crown was placed upon the new monarch's head."),
                    ExampleSentenceKurdish(
                        text: "تاجەکە لەسەری پاشا/شاژنە تازەکە دانرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "crown", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) حکومەتی وڵاتێک کە پاشا یان شاژنێکی هەیە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Who's appearing for the Crown (= bringing a criminal charge against somebody on behalf of the state) in this case?"),
                    ExampleSentenceKurdish(
                        text: "کێ لەم کەیسەدا نوێنەری حکومەت دەکات؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) پێگەی پاشایەتی یان شاژنی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She refused the crown (= refused to become queen)."),
                    ExampleSentenceKurdish(text: "تەختەکەی ڕەتکردەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns3("en-US"),
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
                        text: "He succeeded to the crown of Spain."),
                    ExampleSentenceKurdish(
                        text: "چووە سەر تەختی شاهانەی ئیسپانیا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns4("en-US"),
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
                            "In 1553 the crown passed from Edward VI to Mary."),
                    ExampleSentenceKurdish(
                        text:
                            "لە ساڵی ١٥٣٣ تەختەکە لە ئێدواردەوە بۆ ماری گوازرایەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ناو) تاجە گوڵینە کە لەسەر دەکرێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The princess wore a crown of roses at the party."),
                    ExampleSentenceKurdish(
                        text:
                            "شازادە خاتوون تاجەگوڵینەیەکی لەسەر کرد لە ئاهەنگەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) پێگەی بردنەوەی پێشبڕکێیەکی وەرزشی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She is determined to retain her Wimbledon crown."),
                    ExampleSentenceKurdish(
                        text: "سوورە لەسەر ئەوەی نازناوی ویمبڵدۆنی بپارێزێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ناو) بەشی سەرەوەی سەر یان کڵاوێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She swept her hair into a bun on the crown of her head."),
                    ExampleSentenceKurdish(
                        text: "قوتکەقژێکی دانا لەسەر تەپڵە سەری دانا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ناو) بەرزترین بەشی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The castle was built on the crown of the hill for strategic advantage."),
                    ExampleSentenceKurdish(
                        text:
                            "قەڵاکە لەسەر لوتکەی گردەکە بنیات نرابوو بۆ سوودی ستراتیژی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (ناو) بەشێکی ڕووەکێک کە ڕاستەوخۆ لەسەر یان ژێری خاکەوەیە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Roses bloom on shoots that sprout from the crown of the plant."),
                    ExampleSentenceKurdish(
                        text:
                            "گوڵ گەشەی کردووە لەو نەمامانەوەی کە لە چەکەرەی ڕووەکەکەوە چرۆیان کردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (ناو) بەشی سەرەوەی ڕووەکێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Nests were built high in the crowns of trees."),
                    ExampleSentenceKurdish(
                        text: "هێلانە بەرز لە ترۆپکی دارەکان درووستکران."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٠. (ناو) ڕووپۆشێک بۆ ددانێک شکاو"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "After the accident, he needed a crown to repair the fractured tooth."),
                    ExampleSentenceKurdish(
                        text:
                            "لە دوای ڕووداوەکە، پێویستی بە ڕووکەشێکی ددان بوو بۆ چاککردنەوەی ددانە شکاوەکەی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (کردار) ناساندن وەک پاشا یان شاژن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Queen Elizabeth was crowned in 1953."),
                    ExampleSentenceKurdish(
                        text: "شاژن ئیلیزابێس لە ساڵی ١٩٥٣ تاجی لەسەر نرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns13("en-US"),
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
                            "The prince was soon to be crowned King of England."),
                    ExampleSentenceKurdish(
                        text:
                            "شازادەکە زوو دەبوو بە شازادەی جێنشینی ئینگلتەرە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٢. (کردار) داپۆشین یان پێکهێنانی بەشی سەرەوە شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The church was crowned with golden domes."),
                    ExampleSentenceKurdish(
                        text: "کڵێساکە گومەزەیەکی زێڕینی لەسەر دانرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٣. (کردار) تەواوکردنی شتێک یان وای لێ بکەیت بێ‌خەوش بێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Their efforts were finally crowned with success."),
                    ExampleSentenceKurdish(
                        text:
                            "هەوڵەکانیان لە کۆتاییدا بە سەرکەوتن پاداشت درایەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٣. (کردار) لێدان لەسەر سەر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "I felt like crowning him."),
                    ExampleSentenceKurdish(text: "حەزم دەکرد بکێشم پێیدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٤. (کردار) دانانی داپۆشەرێک لەسەر ددان"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I've had one of my teeth crowned."),
                    ExampleSentenceKurdish(
                        text: "یەکێک لە ددانەکانم تاجکراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrowns18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrowns18("en-US"),
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
- Verb: crown (Derived forms: crowning, crowned, crowns)
1. Invest with regal power; enthrone (= coronate)
"The prince was crowned in Westminster Abbey";
 
2. Be the culminating event (= top)
"The speech crowned the meeting";
 
3. Form the topmost part of
"A weather vane crowns the building"
 
4. Put an enamel cover on
"crown my teeth"

- Noun: crown (Derived forms: crowns)
1. The part of a tooth above the gum that is covered with enamel
 
2. A wreath or garland worn on the head to signify victory
 
3. An ornamental jewelled headdress signifying sovereignty (= diadem)
 
4. The part of a hat (the vertex) that covers the crown of the head
 
5. An English coin worth 5 shillings
 
6. The upper branches and leaves of a tree or other plant (= treetop)
 
7. The highest or extreme point of something (usually a mountain or hill) (= peak, crest, top, tip, summit)
"the view from the crown was magnificent";
 
8. The award given to the champion (= pennant)
 
9. The top of the head (= pate, poll, vertex)
 
10. (dentistry) dental appliance consisting of an artificial crown for a broken or decayed tooth (= crownwork, jacket, jacket crown, cap)
"tomorrow my dentist will fit me for a crown";
 
11. The centre of a cambered road (= crest)

- Noun: Crown (Derived forms: Crowns)
1. The Crown (or the reigning monarch) as the symbol of the power and authority of a monarchy
"the colonies revolted against the Crown"
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
    videoId: 'https://youtu.be/Iwa39iZ0zHo?t=',
    startSeconds: 1241,
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
    videoId: 'https://youtu.be/2A1VhtcDYNQ?t=',
    startSeconds: 61,
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
    videoId: 'https://youtu.be/kZLKLQwsh6A?t=',
    startSeconds: 483,
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
    videoId: 'https://youtu.be/9sjyMZfijFI?t=',
    startSeconds: 85,
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
    videoId: 'https://youtu.be/HDntl7yzzVI?t=',
    startSeconds: 1613,
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
    videoId: 'https://youtu.be/D-2799Y07Zc?t=',
    startSeconds: 631,
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
    videoId: 'https://youtu.be/zqllxbPWKNI?t=',
    startSeconds: 1183,
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