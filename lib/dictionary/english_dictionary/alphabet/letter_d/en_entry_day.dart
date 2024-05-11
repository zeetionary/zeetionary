import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryday extends StatefulWidget {
  const EnglishEntryday({super.key});

  @override
  State<EnglishEntryday> createState() => _EnglishEntrydayState();
}

class _EnglishEntrydayState extends State<EnglishEntryday> {
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
    return const EntryTitle(word: "day");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: day");
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
    return const IPAofEnglish(text: "IpaUK: /deɪ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakday(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("day"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakday("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /deɪ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakday(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("day"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakday("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdays1(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I go to the gym every day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays2(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We spent five days in Paris."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays3(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I saw Tom three days ago."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays4(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We're going away in a few days."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays5(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The house should be ready in a few days' time."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays6(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The situation has been deteriorating for the past few days."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays7(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "On that day Rosa Parks did something that changed history."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays8(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I saw her again the next day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays9(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He resigned the following day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays10(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What a beautiful day!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays11(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The sun was shining all day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays12(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I could sit and watch the river all day long."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays13(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He works at night and sleeps during the day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays14(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Memories of happy days on the hills never fade."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays15(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Have a nice day!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays16(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Did you have a good day?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays17(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's been a long day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays18(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She didn't do a full day's work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays19(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was the biggest star in Hollywood in those days."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays20(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Much has changed since the days of my youth."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays21(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "That was in the bad old days of rampant inflation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays22(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Dickens gives us a vivid picture of poverty in Queen Victoria's day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays23(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I have many happy memories from my student days."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays24(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She cared for him for the rest of his days."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays25(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays26(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays27(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays28(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays29(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays30(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays31(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays32(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays33(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays34(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays35(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays36(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays37(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays38(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays39(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays40(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays41(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays42(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays43(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays44(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays45(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays46(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays47(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays48(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays49(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays50(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays51(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays52(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays53(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays54(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdays55(String languageCode) async {
    // DOPSUM: CHANGE speakday
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdays5500"); // DOPSUM: CHANGE TEXT
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
کوردی: ڕۆژ، شەووڕۆژ، ماوەی ٢٤ کات‌ژمێر،	ڕۆژی کارکردن، سەردەم، ڕۆژگار، زەمانە، سەروبەند، قۆناخ،	(خوازە) ڕقەبەرایەتی، بەربەەرکانی، ڕکەبەری، کێشە، ململانێ، شەڕ
"""),
          const DefinitionKurdish(
              text: "١. (ناو) ڕۆژێک؛ ماوەیەک کە ٢٤ کاتژمێرە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "I go to the gym every day."),
                    ExampleSentenceKurdish(text: "هەموو ڕۆژ دەچم بۆ جیم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "day", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays1("en-US"),
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
                        text: "We spent five days in Paris."),
                    ExampleSentenceKurdish(
                        text: "پێنج ڕۆژمان لە پاریس بەسەربرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays2("en-US"),
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
                                text: "I saw Tom three days ago."),
                            ExampleSentenceKurdish(
                                text: "سێ ڕۆژ پێش ئێستا تۆمم بینی."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdays3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdays3("en-US"),
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
                                text: "We're going away in a few days."),
                            ExampleSentenceKurdish(
                                text: "بۆ پێنج ڕۆژ لێرە نابین."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdays4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdays4("en-US"),
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
                                    "The house should be ready in a few days' time."),
                            ExampleSentenceKurdish(
                                text:
                                    "خانووەکە دەبێت لە ماوەی چەند ڕۆژێکی کەمدا ئامادە بێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdays5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdays5("en-US"),
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
                                    "The situation has been deteriorating for the past few days."),
                            ExampleSentenceKurdish(
                                text:
                                    "دۆخەکە لە ماوەی چەند ڕۆژی داهاتوودا خراپتر بووە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdays6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdays6("en-US"),
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
                                    "On that day Rosa Parks did something that changed history."),
                            ExampleSentenceKurdish(
                                text:
                                    "لەو ڕۆژەدا ڕۆزا پارکس شتێکی کرد کە مێژووی گۆڕی."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdays7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdays7("en-US"),
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
                                text: "I saw her again the next day."),
                            ExampleSentenceKurdish(text: "ڕۆژی دواتر دیمەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdays8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdays8("en-US"),
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
                                text: "He resigned the following day."),
                            ExampleSentenceKurdish(
                                text: "ڕۆژی دواتر دەستی لەکارکێشایەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdays9("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdays9("en-US"),
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
              text: "٢. (ناو) ڕۆژ؛ ئەو ماوەیەی ڕۆژێک کە تاریک نییە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "What a beautiful day!"),
                    ExampleSentenceKurdish(text: "چی ڕۆژێکی جوانە!"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays10("en-US"),
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
                        text: "The sun was shining all day."),
                    ExampleSentenceKurdish(
                        text: "خۆر تەواوی ڕۆژەکە دەگەشایەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays11("en-US"),
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
                        text: "I could sit and watch the river all day long."),
                    ExampleSentenceKurdish(
                        text:
                            "دەمتوانی تەواوی ڕۆژەکە دابنیشم و سەیری ڕووبارەکە بکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays12("en-US"),
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
                        text: "He works at night and sleeps during the day."),
                    ExampleSentenceKurdish(
                        text: "لە شەودا کار دەکات و بە ڕۆژ دەخەوێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays13("en-US"),
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
                            "Memories of happy days on the hills never fade."),
                    ExampleSentenceKurdish(
                        text:
                            "یادەوەرییەکانی ڕۆژە خۆشەکان لەسەر گردەکان هەرگیز کاڵ نابنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) ئەو کاتانەی ڕۆژ کە چالاکیت و کار دەکەیت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Have a nice day!"),
                    ExampleSentenceKurdish(text: "ڕۆژێکی خۆش."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays15("en-US"),
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
                    ExampleSentenceEnglish(text: "Did you have a good day?"),
                    ExampleSentenceKurdish(text: "ڕۆژێکی خۆشت هەبوو؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays16("en-US"),
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
                        text: "It's been a long day (= I've been very busy)."),
                    ExampleSentenceKurdish(text: "ڕۆژێکی درێژ بووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays17("en-US"),
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
                        text: "She didn't do a full day's work."),
                    ExampleSentenceKurdish(text: "کاری ڕۆژێکی تەواوی نەکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) ماوەیەکی دیاریکراوی کاتێک یان مێژوو"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He was the biggest star in Hollywood in those days."),
                    ExampleSentenceKurdish(
                        text: "لەو ماوەدا گەورەترین ئەستێرەی هۆڵیوود بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays19("en-US"),
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
                        text: "Much has changed since the days of my youth."),
                    ExampleSentenceKurdish(
                        text: "زۆر شت گۆڕاوە لە سەردەمانی گەنجییەتیمەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays20("en-US"),
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
                            "That was in the bad old days of rampant inflation."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەوە لە ماوەی خراپی هەڵاوسانی ئابووری بەرز بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays21("en-US"),
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
                            "Dickens gives us a vivid picture of poverty in Queen Victoria's day."),
                    ExampleSentenceKurdish(
                        text:
                            "دیکنز وێنایەکی ڕوونی هەژاریمان پێدەدات لە سەردەمی شاژن ڤیکتۆریادا پێدەدات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) ماوەیەکی دیاریکراوی ژیانی کەسێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I have many happy memories from my student days."),
                    ExampleSentenceKurdish(
                        text: "یادەوەری زۆری خۆشم هەیە لە ماوەی خوێندکاریمدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays23("en-US"),
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
                            "She cared for him for the rest of his days (= the rest of his life)."),
                    ExampleSentenceKurdish(
                        text: "بۆ ماوەی کۆتایی ژیانی ئاگای لێیبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdays24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdays24("en-US"),
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
- Noun: day (Derived forms: days)
1. Time for Earth to make a complete rotation on its axis (= twenty-four hours, twenty-four hour period, 24-hour interval, solar day, mean solar day)
"two days later they left"; "they put on two performances every day"; "there are 30,000 passengers per day";
 
2. A point or period in time
"it should arrive any day now"; "after that day she never trusted him again"; "those were the days"; "these days it is not unusual"
 
3. A day assigned to a particular purpose or observance
"Mother's Day"
 
4. The time after sunrise and before sunset while it is light outside (= daytime, daylight)
"the dawn turned night into day";
 
5. The recurring hours when you are not sleeping (especially those when you are working)
"my day began early this morning"; "it was a busy day on the stock exchange"; "she called it a day and went to bed"
 
6. An era of existence or influence
"in the day of the dinosaurs"; "in the days of the Roman Empire"; "in the days of sailing ships"; "he was a successful pianist in his day"
 
7. The period of time taken by a particular planet (e.g. Mars) to make a complete rotation on its axis
"how long is a day on Jupiter?"
 
8. The time for one complete rotation of the earth relative to a particular star, about 4 minutes shorter than a mean solar day (= sidereal day)
 
9. A period of opportunity
"he deserves his day in court"; "every dog has his day"

- Noun: Day
1. United States writer best known for his autobiographical works (1874-1935) (= Clarence Day, Clarence Shepard Day Jr.)
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
    videoId: 'https://youtu.be/HvNdJ2RCReg?t=',
    startSeconds: 16,
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
    videoId: 'https://youtu.be/NWE3vyCaK44?t=',
    startSeconds: 25,
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
    videoId: 'https://youtu.be/hFZFjoX2cGg?t=',
    startSeconds: 56,
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
    videoId: 'https://youtu.be/hS2x1zl4rn0?t=',
    startSeconds: 144,
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
    videoId: 'https://youtu.be/_wNsZEqpKUA?t=',
    startSeconds: 261,
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
    videoId: 'https://youtu.be/r8E1Hq5tktg?t=',
    startSeconds: 143,
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
    videoId: 'https://youtu.be/NCLZi2Rn_ug?t=',
    startSeconds: 50,
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