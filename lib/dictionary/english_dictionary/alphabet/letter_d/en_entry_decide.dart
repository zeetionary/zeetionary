import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydecide extends StatefulWidget {
  const EnglishEntrydecide({super.key});

  @override
  State<EnglishEntrydecide> createState() => _EnglishEntrydecideState();
}

class _EnglishEntrydecideState extends State<EnglishEntrydecide> {
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
    return const EntryTitle(word: "decide");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: decide");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈsaɪd/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdecide(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("decide"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdecide("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈsaɪd/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdecide(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("decide"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdecide("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdecides1(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's up to you to decide."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides2(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You will have to decide soon."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides3(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I can't tell you what to do—you'll have to decide for yourself."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides4(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We've decided not to go away after all."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides5(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Why did you decide to look for a new job?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides6(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She gave up politics and decided instead to focus on charity work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides7(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government has already decided that the law needs to be changed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides8(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She decided that she wanted to live in France."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides9(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You have the right to decide what you want to do."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides10(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I can't decide what to wear."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides11(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She couldn’t decide whether he was telling the truth or not."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides12(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was difficult to decide between the two candidates."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides13(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They decided against taking legal action."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides14(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The Appeal Court decided in their favour."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides15(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is always possible that the judge may decide against you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides16(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A mixture of skill and good luck decided the outcome of the game."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides17(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "For most customers, price is the deciding factor."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides18(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They offered me free accommodation for a year, and that decided me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides19(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides20(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides21(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides22(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides23(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides24(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides25(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides26(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides27(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides28(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides29(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides30(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides31(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides32(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides33(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides34(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides35(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides36(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides37(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides38(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides39(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides40(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides41(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides42(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides43(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides44(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides45(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides46(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides47(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides48(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides49(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides50(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides51(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdecides52(String languageCode) async {
    // DOPSUM: CHANGE speakdecide
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdecides5200"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
//           const KurdishVocabulary(text: """
// کوردی: بڕیارگرتن، بڕیاردان، بەتەما بوون
// """),
          const DefinitionKurdish(
              text:
                  "١. (کردار) بەوریایی بیرکردنەوە سەبارەت بە هەموو ئەو هەڵبژاردانەی بەردەستن و هەڵبژاردنی یەکێکیان"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "It's up to you to decide."),
                    ExampleSentenceKurdish(text: "بەدەست تۆیە بڕیار بدەیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "decide", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdecides1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdecides1("en-US"),
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
                        text: "You will have to decide soon."),
                    ExampleSentenceKurdish(text: "دەبێت بەزوویی بڕیار بدەیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdecides2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdecides2("en-US"),
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
                                    "I can't tell you what to do—you'll have to decide for yourself."),
                            ExampleSentenceKurdish(
                                text:
                                    "ناتوانم پێت بڵێم چی بکەیت ـ خۆت دەبێت بڕیار بدەیت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdecides3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdecides3("en-US"),
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
                                    "We've decided not to go away after all."),
                            ExampleSentenceKurdish(
                                text:
                                    "لە کۆتاییدا بڕیارمان داوە دوور نەکەوینەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdecides4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdecides4("en-US"),
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
                                    "Why did you decide to look for a new job?"),
                            ExampleSentenceKurdish(
                                text: "بۆچی بڕیارت دا بۆ کارێکی تازە بگەڕێیت؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdecides5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdecides5("en-US"),
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
                                    "She gave up politics and decided instead to focus on charity work."),
                            ExampleSentenceKurdish(
                                text:
                                    "وازی لە سیاسەت هێنا و بڕیاری دا لە جیاتیدا سەرنج بخاتە سەر کاری خێرخوازی."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdecides6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdecides6("en-US"),
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
                                    "The government has already decided that the law needs to be changed."),
                            ExampleSentenceKurdish(
                                text:
                                    "حکومەت پێشوەختە بڕیاری داوە کە یاساکە پێویستە بگۆڕدرێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdecides7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdecides7("en-US"),
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
                                    "She decided that she wanted to live in France."),
                            ExampleSentenceKurdish(
                                text: "بڕیاری دا کە دەیەوێت لە پاریس بژی."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdecides8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdecides8("en-US"),
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
                                    "You have the right to decide what you want to do."),
                            ExampleSentenceKurdish(
                                text:
                                    "مافی ئەوەت هەیە بڕیارت بدەیت چیت دەوێت بیکەیت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdecides9("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdecides9("en-US"),
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
                                text: "I can't decide what to wear."),
                            ExampleSentenceKurdish(
                                text: "ناتوانم بڕیار بدەم چی لەبەر بکەم."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdecides10("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdecides10("en-US"),
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
                                    "She couldn’t decide whether he was telling the truth or not."),
                            ExampleSentenceKurdish(
                                text:
                                    "نەیدەتوانی بڕیار بدات کە ئایا ڕاستییەکە دەڵێت یان نا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdecides11("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdecides11("en-US"),
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
                                    "It was difficult to decide between the two candidates."),
                            ExampleSentenceKurdish(
                                text:
                                    "قورسە لەنێوان دوو بەربژێرەکەدا بڕیار بدەم."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdecides12("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdecides12("en-US"),
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
                                    "They decided against taking legal action."),
                            ExampleSentenceKurdish(
                                text: "بڕیار دژ بە ڕێوشوێنی یاسایی دا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdecides13("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdecides13("en-US"),
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
              text: "٢. (کردار) دەرکردنی بڕیارێکی فەرمی  یان یاسایی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The Appeal Court decided in their favour."),
                    ExampleSentenceKurdish(
                        text:
                            "دادگای تێهەڵچوونەوە لە بەرژەوەندییان بڕیاری دا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdecides14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdecides14("en-US"),
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
                            "It is always possible that the judge may decide against you."),
                    ExampleSentenceKurdish(
                        text:
                            "هەمیشە ڕێی تێ دەچێت دادوەرەکە دژ بە تۆ بڕیار بدات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdecides15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdecides15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) دانانی کاریگەری لەسەر ئەنجامی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "A mixture of skill and good luck decided the outcome of the game."),
                    ExampleSentenceKurdish(
                        text:
                            "تێکەڵەیەک لە شارەزایی و بەخت بڕیاری لە ئەنجامی یارییەکە دا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdecides16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdecides16("en-US"),
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
                            "A number of factors decide whether a movie will be successful or not."),
                    ExampleSentenceKurdish(
                        text:
                            "چەند فاکتەرێک بڕیار دەدەن کە ئایا فیلمێک سەرکەوتوو دەبێت یان نا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdecides1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdecides1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DefinitionKurdish(
              text: "٤. (کردار) بوون بە هۆکاری ئەوەی کەسێک شتێک بکات"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "For most customers, price is the deciding factor."),
                    ExampleSentenceKurdish(
                        text: "بۆ من، نرخ فاکتەری بڕیاردەرە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdecides17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdecides17("en-US"),
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
                            "They offered me free accommodation for a year, and that decided me."),
                    ExampleSentenceKurdish(
                        text:
                            "جێگای مانەوەی بێ‌بەرامبەری یەک ساڵیان پێدام، و ئەوە یەکلامی کردەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdecides18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdecides18("en-US"),
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
- Verb: decide (Derived forms: deciding, decides, decided)
1. Reach, make, or come to a decision about something (= make up one's mind, determine)
"We finally decided after lengthy deliberations";
 
2. Bring to an end; come to a final conclusion (= settle, resolve, adjudicate)
"The case was decided"; "The judge decided the case in favour of the plaintiff";
 
3. Cause to decide
"This new development finally decided me!"
 
4. Influence or determine
"The vote in New Hampshire often decides the outcome of the Presidential election"
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
    videoId: 'https://youtu.be/fXLrw7XozC8?t=',
    startSeconds: 242,
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
    videoId: 'https://youtu.be/dfuPBC-v5NE?t=',
    startSeconds: 1327,
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
    videoId: 'https://youtu.be/fg8Cpl5PIRE?t=',
    startSeconds: 24,
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
    startSeconds: 445,
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
    videoId: 'https://youtu.be/0zwNZJbM-Gw?t=',
    startSeconds: 18,
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
    videoId: 'https://youtu.be/QLq6GEiHqR8?t=',
    startSeconds: 939,
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
    videoId: 'https://youtu.be/UuGpm01SPcA?t=',
    startSeconds: 539,
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