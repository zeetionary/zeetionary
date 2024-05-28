import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycrop extends StatefulWidget {
  const EnglishEntrycrop({super.key});

  @override
  State<EnglishEntrycrop> createState() => _EnglishEntrycropState();
}

class _EnglishEntrycropState extends State<EnglishEntrycrop> {
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
    return const EntryTitle(word: "crop");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crop");
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
    return const IPAofEnglish(text: "IpaUK: /krɒp/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrop(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crop"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrop("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /krɑːp/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrop(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crop"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrop("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrops1(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Sugar cane is an important crop on the island."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops2(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The crops are regularly sprayed with pesticides."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops3(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Crops are sprayed with highly toxic chemicals to prevent insect damage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops4(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Isolated communities were extremely vulnerable if crops failed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops5(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Rice is a staple crop for more than half of the world's population."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops6(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Australia's wheat crop is likely to be lower than forecast this year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops7(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We are looking forward to a bumper crop."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops8(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We had a very good crop of apples last year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops9(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She is really the cream of the crop."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops10(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He held the reins in one hand and the riding crop in the other."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops11(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She has her hair cut in a short crop."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops12(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His hair had been cropped short and he looked different."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops13(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He cropped the photo so that only the face remained."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops14(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The horses were quietly cropping the grass."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops15(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The potatoes cropped well this year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops16(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The river valley is intensively cropped."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops17(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops18(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops19(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops20(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops21(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops22(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops23(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops24(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops25(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops26(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops27(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops28(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops29(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops30(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops31(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops32(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops33(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops34(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops35(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops36(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops37(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops38(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops39(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops40(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops41(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops42(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops43(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops44(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops45(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops46(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops47(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops48(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrops49(String languageCode) async {
    // DOPSUM: CHANGE speakcrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrops4900"); // DOPSUM: CHANGE TEXT
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
کوردی: بەرهەم، بەروبۆ، بەروبوو، بەربێڵ، بەرجفت، ڕێژان، ئاژار، داهات، هاورد، حاسڵ،	دەستە، گروپ، کۆمەڵ، تاقم،	زنجیرە، لیزگە، خێزەرە، ڕێچکە،	چیکڵدانە، گورچوو، جیکەڵدانە، کاسینۆک، هێڕک، چکڵانە،	شێلاق، تاژان، جەڵدە،	دەسک یان قوڵفەی شێلاق،	قژی کورت، سەری تاشراو
"""),
          const DefinitionKurdish(
              text: "١. (ناو) ڕووەکێک کە بۆ ڕێژەیەکی زۆر دەچێندرێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Sugar cane is an important crop on the island."),
                    ExampleSentenceKurdish(
                        text: "قامیشی شەکر بەروبوویەکی گرنگە لە دوورگەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "crop", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrops1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrops1("en-US"),
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
                            "The crops are regularly sprayed with pesticides."),
                    ExampleSentenceKurdish(
                        text:
                            "بەروبووەکان زووزوو مێرووکوژیان بەسەردا دەڕژێندرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrops2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrops2("en-US"),
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
                                    "Crops are sprayed with highly toxic chemicals to prevent insect damage."),
                            ExampleSentenceKurdish(
                                text:
                                    "بەروبووەکان مادەی کیمیایی زۆر ژاراوییان پێدا دەڕژێندرێت بۆ ڕێگری لە زیانی مێروو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrops3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrops3("en-US"),
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
                                    "Isolated communities were extremely vulnerable if crops failed."),
                            ExampleSentenceKurdish(
                                text:
                                    "کۆمەڵگە دابڕاوەکان بە تەواوی لە مەترسیدا دەبوون ئەگەر دانەوێڵە لەناوبچوایە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrops4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrops4("en-US"),
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
                                    "Rice is a staple crop for more than half of the world's population."),
                            ExampleSentenceKurdish(
                                text:
                                    "برنج بەروبوویەکی سەرەتاییە بۆ زیاتر لە نیوەی دانیشتووانی جیهان."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrops5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrops5("en-US"),
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
                  "٢. (ناو) ئەو ڕێژەیە لە دانەوێڵە کە لە یەک وەرزدا چێندراوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Australia's wheat crop is likely to be lower than forecast this year."),
                    ExampleSentenceKurdish(
                        text:
                            "بەرهەمی گەنمی ئوسترالیا ئەگەری هەیە کەمتر بێت لەوەی ئەمساڵ پێشبینی کراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrops6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrops6("en-US"),
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
                            "We are looking forward to a bumper crop (= a very large one)."),
                    ExampleSentenceKurdish(
                        text: "ئەمساڵ چاوەڕێی بەرهەمێکی زۆر دەکەین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrops7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrops7("en-US"),
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
                        text: "We had a very good crop of apples last year."),
                    ExampleSentenceKurdish(
                        text: "ساڵی پار بەرهەمێکی باشی گەنممان هەبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrops8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrops8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) کۆمەڵە کەسێک کە شتێک لە هەمان کاتدا دەکەن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She is really the cream of the crop (= the best in her group)."),
                    ExampleSentenceKurdish(
                        text: "بە ڕاستی باشترینی گرووپەکەیەتی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrops9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrops9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) جەڵدەیەکی بچووک کە لەلایەن ئەسپسوارانەوە بەکاردێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He held the reins in one hand and the riding crop in the other."),
                    ExampleSentenceKurdish(
                        text:
                            "جڵەوەکە لە دەستێکیدا بوو و شەلاقەکە لە ئەوەکەی دیکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrops10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrops10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) جۆرە قژێکی کورت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She has her hair cut in a short crop."),
                    ExampleSentenceKurdish(text: "قژی بە کورتی بڕی بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrops11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrops11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (کردار) بڕینی قژی کەسێک بە کورتی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "His hair had been cropped short and he looked different."),
                    ExampleSentenceKurdish(
                        text: "قژی بە کورتی بڕدرابوو و جیاواز دیاربوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrops12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrops12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (کردار) بڕینی بەشێکی وێنەیەک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He cropped the photo so that only the face remained."),
                    ExampleSentenceKurdish(
                        text:
                            "وێنەکەی بڕی بەشێوەیەک کە تەنها ڕووخساری مایەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrops13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrops13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) خواردنی بەشی سەرەوەی ڕووەک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The horses were quietly cropping the grass."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەسپەکان بە هێمنی لە ناو سەوزەگیاکەدا دەلەوەڕین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrops14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrops14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (کردار) هەبوونی بەروبووم"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The potatoes cropped well this year."),
                    ExampleSentenceKurdish(
                        text: "پەتاتەکە ئەمساڵ بەرهەمی باشی بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrops15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrops15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٠. (کردار) بەکارهێنانی زەوی بۆ بەروبووم"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The river valley is intensively cropped."),
                    ExampleSentenceKurdish(
                        text: "دۆڵی ڕووبارەکە بە گشتگیری چێندراوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrops16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrops16("en-US"),
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
- Noun: crop (derived forms: crops)
1. The yield from plants in a single growing season (= harvest)
 
2. A cultivated plant that is grown commercially on a large scale
 
3. A collection of people or things appearing together
"the annual crop of students brings a new crop of ideas"
 
4. The output of something in a season
"the latest crop of fashions is about to hit the stores"
 
5. The stock or handle of a whip
 
6. A pouch in many birds and some lower animals that resembles a stomach for storage and preliminary maceration of food (= craw)
 
7. A short haircut

- Verb: crop (derived forms: cropped, crops, cropping)
1. Cut short
"She wanted her hair cropped short"
 
2. (farming) prepare for crops (= cultivate, work)
"crop the land";
 
3. Yield crops
"This land crops well"
 
4. Let feed in a field, pasture or meadow (= graze, pasture)
 
5. Feed as in a meadow or pasture (= browse, graze, range, pasture)
"the herd was cropping";
 
6. Cultivate, tend, and cut back the growth of (= snip, clip, trim, lop, dress, prune, cut back)
"crop the plants in the garden";
 
7. To reduce the size of an image by removing undesirable or unnecessary elements
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
    videoId: 'DS8swCK8jq4',
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
    videoId: 'wQes-xTzO00',
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '9Amh6yzFwB0',
    startSeconds: 23,
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
    videoId: 'bSef4Svuy-M',
    startSeconds: 566,
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
    videoId: 'g8z3A1CUxlw',
    startSeconds: 488,
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
    videoId: 'dxBlE3rwVwc',
    startSeconds: 65,
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
    videoId: 'HKwcc_7S4-k',
    startSeconds: 560,
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