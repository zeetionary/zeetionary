import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycount extends StatelessWidget {
  const EnglishEntrycount({super.key});

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
    return const EntryTitle(word: "count");
  }
}

class IpaUK extends StatelessWidget {
  IpaUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcount(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("count"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUK: /kaʊnt/"),
        CustomIconButtonBritish(
          onPressed: () => speakcount("en-GB"),
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

  Future<void> speakcount(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("count"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUS: /kaʊnt/"),
        CustomIconButtonAmerican(
          onPressed: () => speakcount("en-US"),
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

  Future<void> speakcounts1(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She can count up to 10 in Italian."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts2(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He can now count from one to twenty."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts3(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We counted up to fifty, then set off to look for our friends."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts4(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They're still counting votes in Texas."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts5(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I can't count the number of times I've eaten there."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts6(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She began to count up how many guests they had to invite."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts7(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We have invited 50 people, not counting the children."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts8(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The tour guide was sure one person was missing from the group until she realized she had forgotten to count herself."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts9(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is going to be a close election, so every vote counts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts10(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Every point in this game counts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts11(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The fact that she had apologized counted for nothing with him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts12(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Don't go over that line or your throw won't count."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts13(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Applications received after 1 July will not be counted."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts14(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I count him among my closest friends."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts15(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I count myself lucky to have known him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts16(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I count it a privilege to have served alongside her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts17(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If the election result is close, there will be a second count."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts18(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The bus driver did a quick count of the empty seats."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts19(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "By my count there are eight tracks here that aren't on the band's three albums."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts20(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Raise your leg and hold for a count of ten."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts21(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "On the count of three, take one step forward."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts22(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her white cell count has gone down again."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts23(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They were found guilty on all counts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts24(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I disagree with you on both counts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts25(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts26(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts27(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts28(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts29(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts30(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts31(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts32(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts33(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts34(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts35(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts36(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts37(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts38(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts39(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts40(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts41(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts42(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts43(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts44(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts45(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts46(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts47(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts48(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts49(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts50(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts51(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts52(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts53(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts54(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcounts55(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcounts5500"); // DOPSUM: CHANGE TEXT
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
کوردی: ژماردن، هێژمارتن، حساب‌کردن، ژمارە، ڕەنووس، حساب، حسێب،	کێشە، دۆز،	بابەت، بڕگە، بابەتی تاوانباری،	لایەن، ئالی، لا، بوار
"""),
          const DefinitionKurdish(text: "١. (کردار) ژماردن بە ڕیزبەندی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She can count up to 10 in Italian."),
                    ExampleSentenceKurdish(
                        text: "دەتوانێت تاوەکو ١٠ بە ئیتالی بژمێرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "count", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts1("en-US"),
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
                        text: "He can now count from one to twenty."),
                    ExampleSentenceKurdish(
                        text: "ئێستا دەتوانێت لە یەک تاوەکو بیست بژمێرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts2("en-US"),
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
                            "We counted up to fifty, then set off to look for our friends."),
                    ExampleSentenceKurdish(
                        text:
                            "تاوەکو چلمان ژمارد و دواتر چووین بۆ گەڕان بۆ هاوڕێکانمان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) دۆزینەوەی ژمارەی تەواوی خەڵکی، شت، هتد لە گرووپێکدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They're still counting votes in Texas."),
                    ExampleSentenceKurdish(
                        text: "هێشتا دەنگەکان دەژمێرن لە تێکساس."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts4("en-US"),
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
                            "I can't count the number of times I've eaten there (= I've eaten there very many times)."),
                    ExampleSentenceKurdish(
                        text:
                            "ناتوانم ژمارەی ئەو جارانە بژمێرن کە لەوێ نانم خواردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts5("en-US"),
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
                            "She began to count up how many guests they had to invite."),
                    ExampleSentenceKurdish(
                        text:
                            "دەستیکرد بە ژماردنی ئەوەی چەند میوان پێویست بوو بانگ بکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) لەخۆگرتنی کەسێک یان شتێک کە کۆی گشتی دەردەکەیت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "We have invited 50 people, not counting the children."),
                    ExampleSentenceKurdish(
                        text:
                            "٥٠ کەسمان بانگهێشت کردووە، بەبێ حسابکردنی منداڵەکان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts7("en-US"),
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
                            "The tour guide was sure one person was missing from the group until she realized she had forgotten to count herself."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕێبەری گەشتەکە دڵنیابوو لەوەی کەسێک لە گرووپەکە نەبوو تاوەکو زانی کە بیری چووبوو خۆی حساب بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) گرنگبوون، حساب بوون"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "It is going to be a close election, so every vote counts."),
                    ExampleSentenceKurdish(
                        text:
                            "هەڵبژاردنێکی داخراو دەبێت، بۆیە هەموو دەنگێک حسابە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts9("en-US"),
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
                        text: "Every point in this game counts."),
                    ExampleSentenceKurdish(
                        text: "هەموو خاڵێک لەم یارییەدا گرنگە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts10("en-US"),
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
                            "The fact that she had apologized counted for nothing with him."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەوەی کە داوای لێبووردنی کرد هیچ لای گرنگ نەبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) بە فەرمی پەسەندکردن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Don't go over that line or your throw won't count."),
                    ExampleSentenceKurdish(
                        text:
                            "بەسەر ئەو هێڵەدا مەچۆ ئەگەرنا هەڵدانەکەت حساب نابێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts12("en-US"),
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
                            "Applications received after 1 July will not be counted."),
                    ExampleSentenceKurdish(
                        text:
                            "داخوازینامەی وەرگیراو لە دوای ١ ـی تەممووز حساب نابێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) بیرکردنەوە لە شتێک بە شێوەیەکی دیاریکراو"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I count him among my closest friends."),
                    ExampleSentenceKurdish(
                        text: "وەک باشترین هاوڕێکانم سەیری ئەکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts14("en-US"),
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
                        text: "I count myself lucky to have known him."),
                    ExampleSentenceKurdish(
                        text: "خۆم بە بەبەخت دادەنێم کە ناسیومە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts15("en-US"),
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
                            "I count it a privilege to have served alongside her."),
                    ExampleSentenceKurdish(
                        text:
                            "وەک شانازییەک سەیری دەکەم کە شان‌بەشانی ئەو خزمەتم کردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ناو) دۆزینەوەی کۆی گشتی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "If the election result is close, there will be a second count."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەگەر ئەنجامی هەڵبژاردنەکە نزیک بێت، ژماردنەوەیەکی دیکە دەبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts17("en-US"),
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
                            "The bus driver did a quick count of the empty seats."),
                    ExampleSentenceKurdish(
                        text:
                            "شۆفێری پاسەکە ژماردنێکی خێرای کورسییە بەتاڵەکانی کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts18("en-US"),
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
                            "By my count there are eight tracks here that aren't on the band's three albums."),
                    ExampleSentenceKurdish(
                        text:
                            "بە ژماردن من، هەشت گۆرانی لێرەن کە لە سێ ئەلبوومی باندەکە نین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (ناو) ژماردن بە دەستپێکردن لە یەکەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Raise your leg and hold for a count of ten."),
                    ExampleSentenceKurdish(
                        text: "لاقت بەرزبکەوە و ڕایبگرە بە ژماردن تاوەکو دە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts20("en-US"),
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
                        text: "On the count of three, take one step forward."),
                    ExampleSentenceKurdish(
                        text: "بە ژماردن تاوەکو سێ، هەنگاوێک بۆ پێشەوە بنێ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (ناو) پێوانی ڕێژەی شتێک کە لە ناوچەیەک یان شتێکە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Her white cell count has gone down again."),
                    ExampleSentenceKurdish(
                        text: "ڕێژەی خڕۆکە سپییەکانی دووبارە دابەزیون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٠. (ناو) تاوانێک کە کەسێک بە ئەنجامدانی تاوانبار کراوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They were found guilty on all counts."),
                    ExampleSentenceKurdish(
                        text: "بە تاوانباری هەموو تاوانەکان دانران."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (ناو) خاڵێک لە گفتوگۆیەک یان مشتومڕێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I disagree with you on both counts."),
                    ExampleSentenceKurdish(
                        text: "لە هەردوو خاڵەکەدا لەگەڵت ناکۆکم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcounts24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcounts24("en-US"),
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
- Verb: count (derived forms: counting, counted, counts)
1. Determine the number or amount of (= number, enumerate, numerate)
"Count your change"; "Can you count the books on your shelf?";
 
2. Have weight; have import, carry weight (= matter, weigh)
 
3. Show consideration for; take into account (= consider, weigh)
"You must count her age";
 
4. Name or recite the numbers in ascending order
"The toddler could count to 100"
 
5. Put into a group (= number)
"The academy counts several Nobel Prize winners among its members";

6. Include as if by counting
"I can count my colleagues in the opposition"
 
7. Have a certain value or carry a certain weight
"each answer counts as three points"
 
8. Have faith or confidence in (= bet, depend, swear, rely, bank, look, calculate, reckon)
"you can count on me to help you any time";
 
9. Take account of (= reckon)
"Count on the monsoon";

- Noun: count (derived forms: counts)
1. The total number counted
"a blood count"
 
2. The act of counting; reciting numbers in ascending order (= counting, numeration, enumeration, reckoning, tally)
"the count continued for several hours";
 
3. A nobleman (in various countries) having rank equal to a British earl
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
    videoId: 'fZ9WiuJPnNA',
    startSeconds: 20,
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
    videoId: 'hTqtGJwsJVE',
    startSeconds: 2750,
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
    videoId: 'bRVueBoZjEA',
    startSeconds: 124,
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
    videoId: 'BNPPMs9CvDQ',
    startSeconds: 126,
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
    videoId: 'b7ITL2VDH5Q',
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
    videoId: 'QY7BWZ_aSc4',
    startSeconds: 26,
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
    videoId: 'ltU3ms9rt5w',
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