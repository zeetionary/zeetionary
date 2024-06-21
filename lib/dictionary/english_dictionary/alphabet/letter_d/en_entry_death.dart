import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydeath extends StatefulWidget {
  const EnglishEntrydeath({super.key});

  @override
  State<EnglishEntrydeath> createState() => _EnglishEntrydeathState();
}

class _EnglishEntrydeathState extends State<EnglishEntrydeath> {
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
    return const EntryTitle(word: "death");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: death");
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
    return const IPAofEnglish(text: "IpaUK: /deθ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeath(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("death");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeath("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /deθ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeath(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("death");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeath("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeaths1(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It is believed she died a violent death.");
  }

  Future<void> speakdeaths2(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He suffered a slow and painful death.");
  }

  Future<void> speakdeaths3(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He met his death two years later.");
  }

  Future<void> speakdeaths4(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He witnessed the death of his mother from tuberculosis.");
  }

  Future<void> speakdeaths5(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her death came at the age of 82.");
  }

  Future<void> speakdeaths6(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("How far would they go to avenge the death of their friend?");
  }

  Future<void> speakdeaths7(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("More deaths occur in winter.");
  }

  Future<void> speakdeaths8(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Obesity is a leading cause of preventable deaths.");
  }

  Future<void> speakdeaths9(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("On Samuel's death, the farm passed to his sons.");
  }

  Future<void> speakdeaths10(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Police are not treating the death as suspicious.");
  }

  Future<void> speakdeaths11(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Women accounted for 2% of all combat deaths.");
  }

  Future<void> speakdeaths12(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She faked her own death so he couldn't find her.");
  }

  Future<void> speakdeaths13(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The annual total of road deaths is falling.");
  }

  Future<void> speakdeaths14(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Police are trying to establish the cause of death.");
  }

  Future<void> speakdeaths15(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The disease can cause death unless the patient is treated promptly.");
  }

  Future<void> speakdeaths16(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do you believe in life after death?");
  }

  Future<void> speakdeaths17(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was sentenced to death.");
  }

  Future<void> speakdeaths18(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Millions of people starved to death.");
  }

  Future<void> speakdeaths19(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Four prisoners were under sentence of death.");
  }

  Future<void> speakdeaths20(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Touching the wires means instant death.");
  }

  Future<void> speakdeaths21(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This process becomes irreversible and leads to cell death.");
  }

  Future<void> speakdeaths22(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("By 1740 European feudalism was in its death throes.");
  }

  Future<void> speakdeaths23(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Delivering on time is a matter of life and death for a small company.");
  }

  Future<void> speakdeaths24(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths2400");
  }

  Future<void> speakdeaths25(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths2500");
  }

  Future<void> speakdeaths26(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths2600");
  }

  Future<void> speakdeaths27(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths2700");
  }

  Future<void> speakdeaths28(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths2800");
  }

  Future<void> speakdeaths29(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths2900");
  }

  Future<void> speakdeaths30(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths3000");
  }

  Future<void> speakdeaths31(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths3100");
  }

  Future<void> speakdeaths32(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths3200");
  }

  Future<void> speakdeaths33(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths3300");
  }

  Future<void> speakdeaths34(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths3400");
  }

  Future<void> speakdeaths35(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths3500");
  }

  Future<void> speakdeaths36(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths3600");
  }

  Future<void> speakdeaths37(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths3700");
  }

  Future<void> speakdeaths38(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths3800");
  }

  Future<void> speakdeaths39(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths3900");
  }

  Future<void> speakdeaths40(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths4000");
  }

  Future<void> speakdeaths41(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths4100");
  }

  Future<void> speakdeaths42(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths4200");
  }

  Future<void> speakdeaths43(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths4300");
  }

  Future<void> speakdeaths44(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths4400");
  }

  Future<void> speakdeaths45(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths4500");
  }

  Future<void> speakdeaths46(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths4600");
  }

  Future<void> speakdeaths47(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths4700");
  }

  Future<void> speakdeaths48(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths4800");
  }

  Future<void> speakdeaths49(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths4900");
  }

  Future<void> speakdeaths50(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths5000");
  }

  Future<void> speakdeaths51(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths5100");
  }

  Future<void> speakdeaths52(String languageCode) async {
    // DOPSUM: CHANGE speakdeath
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeaths5200");
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
کوردی: مردن، مەرگ، ئاووگڵ، کوژران، تیاچوون،	کوشتن،	مایەی کوژران، گیان‌گر،	کۆتایی، تیاچوون، نەمان،	ئاکام
"""),
          const DefinitionKurdish(text: "١. (ناو) مردن یان کوژرانی کەسێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "It is believed she died a violent death."),
                    ExampleSentenceKurdish(
                        text: "باوەڕ وایە بە کوشتنێکی دڕندانە مرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "death", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeaths1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeaths1("en-US"),
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
                        text: "He suffered a slow and painful death."),
                    ExampleSentenceKurdish(
                        text: "تووشی مەرگێکی ھێواش و بەئازار بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeaths2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeaths2("en-US"),
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
                                text: "He met his death two years later."),
                            ExampleSentenceKurdish(
                                text: "دوای دوو ساڵ بە مەرگی خۆی گەشت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeaths3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeaths3("en-US"),
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
                                    "He witnessed the death of his mother from tuberculosis."),
                            ExampleSentenceKurdish(
                                text:
                                    "شایەتحاڵی مەرگی دایکی بوو بە نەخۆشی سیل."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeaths4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeaths4("en-US"),
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
                                text: "Her death came at the age of 82."),
                            ExampleSentenceKurdish(
                                text: "لە تەمەنی ٨٢ ساڵیدا کۆچی دوایی کرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeaths5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeaths5("en-US"),
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
                                    "How far would they go to avenge the death of their friend?"),
                            ExampleSentenceKurdish(
                                text:
                                    "تا چەند دەچن بۆ تۆڵەکردنەوەی مەرگی ھاوڕێکەیان؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeaths6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeaths6("en-US"),
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
                                text: "More deaths occur in winter."),
                            ExampleSentenceKurdish(
                                text: "مەرگی زیاتر لە زستاندا ڕوودەدەن."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeaths7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeaths7("en-US"),
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
                                    "Obesity is a leading cause of preventable deaths."),
                            ExampleSentenceKurdish(
                                text:
                                    "قەڵەوی ھۆکاری سەرەکی مردنی پێشپێگیراوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeaths8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeaths8("en-US"),
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
                                    "On Samuel's death, the farm passed to his sons."),
                            ExampleSentenceKurdish(
                                text:
                                    "لەگەڵ مردنی ساموێل، کێڵگەکە بەر کوڕەکانی کەوت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeaths9("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeaths9("en-US"),
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
                                    "Police are not treating the death as suspicious."),
                            ExampleSentenceKurdish(
                                text: "پۆلیس مردنەکە بە گوماناوی سەیر ناکەن."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeaths10("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeaths10("en-US"),
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
                                    "Women accounted for 2% of all combat deaths."),
                            ExampleSentenceKurdish(
                                text: "ژنان ڕێژەی ٢٪ ـی مردنەکانی جەنگ بوون."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeaths11("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeaths11("en-US"),
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
                                    "She faked her own death so he couldn't find her."),
                            ExampleSentenceKurdish(
                                text:
                                    "مردنی خۆی ساختە کرد بۆ ئەوەی نەیدۆزێتەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeaths12("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeaths12("en-US"),
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
                                    "The annual total of road deaths is falling."),
                            ExampleSentenceKurdish(
                                text:
                                    "مردنی گشتی ساڵانەی سەر شەقامەکان دادەبەزێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeaths13("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeaths13("en-US"),
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
          const DefinitionKurdish(text: "٢. (ناو) کۆتایی ژیان"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Police are trying to establish the cause of death."),
                    ExampleSentenceKurdish(
                        text: "پۆلیس ھەوڵ دەدەن ھۆکاری مردن دیاری بکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeaths14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeaths14("en-US"),
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
                            "The disease can cause death unless the patient is treated promptly."),
                    ExampleSentenceKurdish(
                        text:
                            "نەخۆشییەکە دەکرێت ببێتە ھۆکاری مردن مەگەر ئەوەی نەخۆشەکە بەزووی چارەسەر بکرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeaths15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeaths15("en-US"),
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
                        text: "Do you believe in life after death?"),
                    ExampleSentenceKurdish(
                        text: "باوەڕت بە ژیانی دوای مردن ھەیە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeaths16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeaths16("en-US"),
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
                        text: "He was sentenced to death (= to be executed)."),
                    ExampleSentenceKurdish(text: "بە مردن سزا درا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeaths17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeaths17("en-US"),
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
                            "Millions of people starved to death (= were killed by lack of food)."),
                    ExampleSentenceKurdish(
                        text: "ملیۆنان کەس لە برسییەتیدا مردن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeaths18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeaths18("en-US"),
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
                        text: "Four prisoners were under sentence of death."),
                    ExampleSentenceKurdish(
                        text: "چوار زیندانی سزای مەرگیان ھەبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeaths19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeaths19("en-US"),
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
                        text: "Touching the wires means instant death."),
                    ExampleSentenceKurdish(
                        text: "دەستدان لە وایەرەکان واتا مردنی دەستبەجێ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeaths20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeaths20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) وەستاندنی پڕۆسەی زیندەکیمیایی ژیان لە خانە یان شانەدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "This process becomes irreversible and leads to cell death."),
                    ExampleSentenceKurdish(
                        text:
                            "پڕۆسەکە ھەڵنەوەشاوە دەبێت و دەبێتە ھۆکاری مردنی خانە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeaths21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeaths21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) کۆتایی یان لەناوچوونی ھەمیشەیی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "By 1740 European feudalism was in its death throes."),
                    ExampleSentenceKurdish(
                        text:
                            "لە ساڵی ١٧٤٠ دەرەبەگایەتی لە ئەورووپا لە ژانی مەرگدا بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeaths22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeaths22("en-US"),
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
                            "Delivering on time is a matter of life and death for a small company."),
                    ExampleSentenceKurdish(
                        text:
                            "گەیاندن لەکاتی خۆیدا بابەتی ژیان و مردنە بۆ کۆمپانیایەکی بچووک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeaths23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeaths23("en-US"),
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
- Noun: death (derived forms: deaths)
1. The event of dying or departure from life (= decease, expiry)
"her death came as a terrible shock";
 
2. The permanent end of all life functions in an organism or part of an organism
"the animal died a painful death"
 
3. The absence of life or state of being dead
"he seemed more content in death than he had ever been in life"
 
4. The time when something ends (= dying, demise)
"it was the death of all his plans";
 
5. The time at which life ends; continuing until dead (= last)
"she stayed until his death";
 
6. A final state (= end, destruction)
"he came to a bad death";
 
7. The act of killing
"he had two deaths on his conscience"

- Noun: Death 
1. The personification of death
"Death walked the streets of the plague-bound city"
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
  final String _videoId = 'tsE1rMH18Tk';
  final double _startSeconds = 431;

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
  final String _videoId = 'L81XWiDgmTk';
  final double _startSeconds = 20;

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
  final String _videoId = 'tpOsDC0KNjw';
  final double _startSeconds = 90;

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
  final String _videoId = 'R_fZjGm2OrM';
  final double _startSeconds = 395;

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
  final String _videoId = '_wNsZEqpKUA';
  final double _startSeconds = 1156;

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
  final String _videoId = 'LAOoF2gyQaA';
  final double _startSeconds = 272;

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
  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1595;

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