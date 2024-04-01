import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycourt extends StatelessWidget {
  const EnglishEntrycourt({super.key});

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
    return const EntryTitle(word: "court");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: court");
  }
}

class IpaUK extends StatelessWidget {
  IpaUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcourt(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("court"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUK: /kɔːt/"),
        CustomIconButtonBritish(
          onPressed: () => speakcourt("en-GB"),
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

  Future<void> speakcourt(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("court"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IPAofEnglish(text: "IpaUS: /kɔːrt/"),
        CustomIconButtonAmerican(
          onPressed: () => speakcourt("en-US"),
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

  Future<void> speakcourts1(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her lawyer made a statement outside the court."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts2(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Relatives of the victims were in court."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts3(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She will appear in court tomorrow."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts4(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The case took five years to come to court."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts5(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There wasn't enough evidence to bring the case to court."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts6(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "During the court hearing, the prosecutor said she would seek maximum prison sentences."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts7(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Please tell the court what happened."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts8(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This is not a case to be decided by the courts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts9(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This evidence was not put before the court."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts10(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He won after only 52 minutes on court."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts11(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The players are good friends off court and train together."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts12(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was presented to the queen at court."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts13(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The painting shows the emperor with his court."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts14(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Both candidates have spent the last month courting the media."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts15(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He has never courted popularity."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts16(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As a politician he has often courted controversy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts17(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He had been courting Jane for six months."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts18(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts19(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts20(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts21(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts22(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts23(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts24(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts25(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts26(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts27(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts28(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts29(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts30(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts31(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts32(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts33(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts34(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts35(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts36(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts37(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts38(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts39(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts40(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts41(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts42(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts43(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts44(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts45(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts46(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts47(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts48(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts49(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts50(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts51(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcourts52(String languageCode) async {
    // DOPSUM: CHANGE speakcourt
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcourts5200"); // DOPSUM: CHANGE TEXT
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
کوردی: دادگا، دادگە، بارەگا، دەربار، سەرا، کۆشک، دیوەشا،	(وەرزش) یاریگا،	حەوشە، حەسار،	لقێ لە کۆمەڵێ،	دەستەی قانوون‌دانەران،	(لە بریتانیا) لاشەقامی بنبەست،	زمان‌لووسی، مەرایی، نەرمەبڕی،	دەربڕینی خۆشەویستی
"""),
          const DefinitionKurdish(text: "١. (ناو) دادگا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Her lawyer made a statement outside the court."),
                    ExampleSentenceKurdish(
                        text: "پارێزەرەکەی لێدوانێکی لە دەرەوەی دادگا دا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "court", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourts1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourts1("en-US"),
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
                        text: "Relatives of the victims were in court."),
                    ExampleSentenceKurdish(
                        text: "خزمەکانی قوربانییەکە لە دادگا بوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourts2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourts2("en-US"),
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
                                text: "She will appear in court tomorrow."),
                            ExampleSentenceKurdish(
                                text: "سبەی لە دادگا ئامادە دەبێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourts3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourts3("en-US"),
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
                                    "The case took five years to come to court (= to be heard by the court)."),
                            ExampleSentenceKurdish(
                                text:
                                    "کەیسەکە پێنج ساڵی پێچوو تا بهێنرێتە دادگا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourts4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourts4("en-US"),
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
                                    "There wasn't enough evidence to bring the case to court (= start a trial)."),
                            ExampleSentenceKurdish(
                                text:
                                    "بەڵگەی پێویست نەبوو تاوەکو کەیسەکە بهێنرێتە دادگا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourts5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourts5("en-US"),
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
                                    "During the court hearing, the prosecutor said she would seek maximum prison sentences."),
                            ExampleSentenceKurdish(
                                text:
                                    "لە ماوەی دانیشتنی دادگاییەکە، لێکۆڵەرەکە گوتی داوای سەختترین سزا دەکات."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourts6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourts6("en-US"),
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
          const DefinitionKurdish(text: "٢. (ناو) ئەندامانی دادگا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Please tell the court what happened."),
                    ExampleSentenceKurdish(
                        text: "تکایە بە دادگا بڵێ چی ڕوویدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourts7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourts7("en-US"),
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
                            "This is not a case to be decided by the courts."),
                    ExampleSentenceKurdish(
                        text: "ئەمە بڕیارێک نییە دادگاکان بڕیاری لەسەر بدەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourts8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourts8("en-US"),
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
                        text: "This evidence was not put before the court."),
                    ExampleSentenceKurdish(
                        text: "ئەم بەڵگەیە پیشانی دادگا نەدرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourts9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourts9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) یاریگای هەندێک یاری، بۆ نموونە تێنس و باسکە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He won after only 52 minutes on court."),
                    ExampleSentenceKurdish(
                        text: "لە دوای تەنها ٥٢ خولەک لە یاریگادا بردییەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourts10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourts10("en-US"),
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
                            "The players are good friends off court and train together."),
                    ExampleSentenceKurdish(
                        text:
                            "یاریزانەکان هاوڕێی نزیکن لە دەرەوەی یاریگا و پێکەوە ڕاهێنان دەکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourts11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourts11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) شوێنی ژیانی پاشا و شاژنەکان"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He was presented to the queen at court."),
                    ExampleSentenceKurdish(
                        text: "بردرا بۆ لای شاژن لە کۆشکدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourts12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourts12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ناو) پاشا و شاژن، خێزانەکانیان، و ئەو کەسانەی کاریان بۆ دەکەن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The painting shows the emperor with his court."),
                    ExampleSentenceKurdish(
                        text:
                            "تابلۆکە ئیمپراتۆر لەگەڵ دەربارەکەی پیشان دەدات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourts13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourts13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) هەوڵدان بۆ دڵخۆشکردنی کەسێک بۆ بەدەستهێنانی ئەوەی دەتەوێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Both candidates have spent the last month courting the media."),
                    ExampleSentenceKurdish(
                        text:
                            "هەردوو کاندیدەکە چەند مانگی ڕابردوویان بەسەر بردووە بە مەرایی کردن بۆ میدیاکان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourts14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourts14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) هەوڵدان بۆ بەدەستهێنانی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He has never courted popularity."),
                    ExampleSentenceKurdish(
                        text: "هەرگیز بە شوێن ناوبانگەوە نەبووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourts15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourts15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) کردنی شتێک کە دەکرێت شتێکی خراپی لێبکەوێتەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "As a politician he has often courted controversy."),
                    ExampleSentenceKurdish(
                        text: "وەک سیاسەتمەدارێک زۆرجار مشتومڕی درووستکردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourts16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourts16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٩. (کردار) هەبوونی پەیوەندی سۆزداری لەگەڵ کەسێک کە دەتەوێت هاوسەرگیری لەگەڵ بکەیت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He had been courting Jane for six months."),
                    ExampleSentenceKurdish(
                        text: "بۆ شەش مانگە پەیوەندی لەگەڵ جەین هەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcourts17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcourts17("en-US"),
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
- Noun: court (Derived forms: courts)
1. An assembly (including one or more judges) to conduct judicial business (= tribunal, judicature)
 
2. (law) a room in which a law court sits (= courtroom)
"television cameras were admitted in the court";
 
3. The sovereign and his advisers who are the governing power of a state (= royal court)
 
4. A specially marked horizontal area within which a game is played
"players had to reserve a court in advance"
 
5. The family and retinue of a sovereign or prince (= royal court)
 
6. A hotel for motorists; provides direct access from rooms to parking area (= motor hotel, motor inn, motor lodge, tourist court)
 
7. The residence of a sovereign or nobleman
"the king will visit the duke's court"
 
8. An area wholly or partly surrounded by walls or buildings (= courtyard)
"the house was built around an inner court";
 
9. Respectful deference (= homage)
"pay court to the emperor";

- Verb: court (Derived forms: courting, courted, courts)
1. Make amorous advances towards (= woo, romance, solicit)
"John is courting Mary";
 
2. Seek someone's favour (= woo)
"China is courting Russia";
 
3. Engage in social activities leading to marriage
"We were courting for over ten years"

- Noun: Court
1. Australian woman tennis player who won many major championships (born in 1947) (= Margaret Court)
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
    videoId: 'https://youtu.be/ZQNLP1_Xmcw?t=',
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
    videoId: 'https://youtu.be/tsxmyL7TUJg?t=',
    startSeconds: 465,
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
    videoId: 'https://youtu.be/DgAoy7XaFgk?t=',
    startSeconds: 166,
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
    videoId: 'https://youtu.be/_XBfpv9XADk?t=',
    startSeconds: 442,
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
    videoId: 'https://youtu.be/A5fKAqLeaBo',
    // startSeconds: 222222222222222,
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
    videoId: 'https://youtu.be/raSeaAeryWE?t=',
    startSeconds: 1769,
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
    videoId: 'https://youtu.be/wdLzMyqDuDY?t=',
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