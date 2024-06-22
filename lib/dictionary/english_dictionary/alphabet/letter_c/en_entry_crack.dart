import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycrack extends StatefulWidget {
  const EnglishEntrycrack({super.key});

  @override
  State<EnglishEntrycrack> createState() => _EnglishEntrycrackState();
}

class _EnglishEntrycrackState extends State<EnglishEntrycrack> {
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
    return const EntryTitle(word: "crack");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crack");
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
    return const IPAofEnglish(text: "IpaUK: /kræk/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrack(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crack");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrack("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kræk/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrack(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crack");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrack("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcracks1(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The ice cracked as I stepped onto it.");
  }

  Future<void> speakcracks2(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He has cracked a bone in his arm.");
  }

  Future<void> speakcracks3(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The window had cracked quite badly.");
  }

  Future<void> speakcracks4(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She cracked an egg into the pan.");
  }

  Future<void> speakcracks5(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A chunk of the cliff had cracked off in a storm.");
  }

  Future<void> speakcracks6(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I cracked my head on the low ceiling.");
  }

  Future<void> speakcracks7(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I cracked my head on the low ceiling.");
  }

  Future<void> speakcracks8(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The whip cracked over the horses' heads.");
  }

  Future<void> speakcracks9(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's always cracking his knuckles.");
  }

  Future<void> speakcracks10(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her voice cracked with emotion as she told the story.");
  }

  Future<void> speakcracks11(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Things are terrible at work and people are cracking under the strain.");
  }

  Future<void> speakcracks12(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They questioned him for days before he cracked.");
  }

  Future<void> speakcracks13(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is under a lot of pressure but is showing no signs of cracking.");
  }

  Future<void> speakcracks14(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("After a year in this job I think I've got it cracked!");
  }

  Future<void> speakcracks15(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A team of experts finally cracked the code.");
  }

  Future<void> speakcracks16(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Police have cracked a major drugs ring.");
  }

  Future<void> speakcracks17(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This cup has a crack in it.");
  }

  Future<void> speakcracks18(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cracks began to appear in the walls.");
  }

  Future<void> speakcracks19(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Wide cracks appeared in the ground during the drought.");
  }

  Future<void> speakcracks20(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She peeped through the crack in the curtains.");
  }

  Future<void> speakcracks21(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The door opened a crack.");
  }

  Future<void> speakcracks22(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She heard the sharp crack of a rifle shot.");
  }

  Future<void> speakcracks23(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The chandelier hit the floor with a crack.");
  }

  Future<void> speakcracks24(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She fell over and got a nasty crack on the head.");
  }

  Future<void> speakcracks25(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He had a good crack at opening the door, but it wouldn't budge.");
  }

  Future<void> speakcracks26(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Several kilos of crack were found in her luggage.");
  }

  Future<void> speakcracks27(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He gets really mad if anyone makes a crack about his weight.");
  }

  Future<void> speakcracks28(String languageCode) async {
    // DOPSUM: CHANGE speakcrack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The crack troops were deployed to the front lines to secure the strategic position.");
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
کوردی: قەڵەشت، قەڵەش، درز، قڵیش، کەلێن، شەق، چڕژە، کون، کونی چکۆلە،	لێدان، پیاکێشان،	گرمە، نەڕە، شریخە، زرمە،	دەنگی گەورە و کت‌وپڕ،	شۆخی، گاڵتە،	ھەوڵ، تێکۆشان،	گرفت، خەوش، عەیب، کەم‌وکووڕی، ناڕێکی،	کڕاک (دەرمانێکی کریستاڵی بەھێز و ناقانوونی لە شێوەی کۆکائین، وردە دەکرێ)،	پوخت، لێزان، خاراو، کارامە، شارەزا، وەستا
"""),
          const DefinitionKurdish(text: "١. (کردار) درزبردن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The ice cracked as I stepped onto it."),
                    ExampleSentenceKurdish(
                        text: "سەھۆڵەکە درزی برد کە پێم لەسەری دانا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "crack", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks1("en-US"),
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
                        text: "He has cracked a bone in his arm."),
                    ExampleSentenceKurdish(
                        text: "ئێسکێکی لە باڵیدا درز تێبردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks2("en-US"),
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
                        text: "The window had cracked quite badly."),
                    ExampleSentenceKurdish(
                        text: "پەنجەرەکە زۆر بە خراپی درزی بردبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (کردار) شکاندن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She cracked an egg into the pan."),
                    ExampleSentenceKurdish(
                        text: "ھێلکەیەکی شکاندە ناو تاوەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks4("en-US"),
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
                            "A chunk of the cliff had cracked off in a storm."),
                    ExampleSentenceKurdish(
                        text: "بەشێک لە قەدپاڵەکە لە زریانێکدا لێبووەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) لێدان لە کەسێک یان شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I cracked my head on the low ceiling."),
                    ExampleSentenceKurdish(
                        text: "سەرم کێشا بە بنبانە نزمەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks6("en-US"),
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
                        text: "I cracked my head on the low ceiling."),
                    ExampleSentenceKurdish(
                        text: "بە ڕاستەیەک کێشای بە سەرمدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) دەرکردنی دەنگێکی تیژ"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The whip cracked over the horses' heads."),
                    ExampleSentenceKurdish(
                        text: "قامچییەکە لەسەر سەری ئەسپەکە شریقەی دەھات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks8("en-US"),
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
                            "He's always cracking his knuckles (= pulling the joints of his fingers to make a noise)."),
                    ExampleSentenceKurdish(text: "ھەمیشە پەنجەکانی دەتەقێنێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) لەرزینی دەنگ"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Her voice cracked with emotion as she told the story."),
                    ExampleSentenceKurdish(
                        text:
                            "دەنگی بە ھەست و سۆزەوە دەلەرزی کە چیرۆکەکەی پێ گوتین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) کارکردن بە ناتەواوی بەھۆی فشارەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Things are terrible at work and people are cracking under the strain."),
                    ExampleSentenceKurdish(
                        text:
                            "شتەکان زۆر خراپن لەسەر کار و خەڵکی تێکشکاون لەژێر فشاردا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks11("en-US"),
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
                            "They questioned him for days before he cracked."),
                    ExampleSentenceKurdish(
                        text:
                            "بۆ چەندین ڕۆژ لێپرسینەوەیان لێکرد پێش ئەوەی ملکەچ بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks12("en-US"),
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
                            "She is under a lot of pressure but is showing no signs of cracking."),
                    ExampleSentenceKurdish(
                        text:
                            "لەژێر پەستانێکی زۆرە بەڵام ھیچ ئاماژەیەکی تێکشکانی تێدا نییە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) دۆزینەوەی وەڵامی شتێک یان ڕێگای کردنی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "After a year in this job I think I've got it cracked!"),
                    ExampleSentenceKurdish(
                        text: "لە دوای ساڵێک لەم کارەدا، پێموایە فێری بوومە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks14("en-US"),
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
                        text: "A team of experts finally cracked the code."),
                    ExampleSentenceKurdish(
                        text: "تیمێک لە شارەزایان کۆدەکەیان شکاند."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (کردار) دۆزینەوەی ڕێگایەک بۆ وەستاندن یان تێکشکاندنی تاوانبارێک یان دوژمنێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Police have cracked a major drugs ring."),
                    ExampleSentenceKurdish(
                        text:
                            "پۆلیس گرووپێکی گەورەی مادەی ھۆشبەریان دەستگیرکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (ناو) درز"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "This cup has a crack in it."),
                    ExampleSentenceKurdish(text: "ئەم کووپە درزێکی تێدایە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks17("en-US"),
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
                        text: "Cracks began to appear in the walls."),
                    ExampleSentenceKurdish(
                        text: "درز دەستی بە دەرکەوتن کرد لە دیوارەکاندا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks18("en-US"),
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
                            "Wide cracks appeared in the ground during the drought."),
                    ExampleSentenceKurdish(
                        text:
                            "درزی فراوان دەستیان بە دەرکەوتن کرد لە زەویدا لە ماوەی وشکەساڵییەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٠. (ناو) کەلێن یان قڵیش"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She peeped through the crack in the curtains."),
                    ExampleSentenceKurdish(
                        text: "لە کەلێنی پەردەکەوە سەیری کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks20("en-US"),
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
                        text: "The door opened a crack (= a small amount)."),
                    ExampleSentenceKurdish(text: "دەرگاکە کەمێک کرایەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١١. (ناو) دەنگێکی بەرزی لەناکاو"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She heard the sharp crack of a rifle shot."),
                    ExampleSentenceKurdish(
                        text: "گوێی لە زرمەی تەقەی تفەنگەکە بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks22("en-US"),
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
                        text: "The chandelier hit the floor with a crack."),
                    ExampleSentenceKurdish(
                        text: "چلچراکە بە زرمەیەکەوە کێشای بە زەوییەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٢. (ناو) لێدانێکی بەھێز کە دەنگی دێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She fell over and got a nasty crack on the head."),
                    ExampleSentenceKurdish(
                        text: "کەوت و پیاکێشانێکی خراپ بەر سەری کەوت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٣. (ناو) ھەوڵێک بۆ کردنی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He had a good crack at opening the door, but it wouldn't budge."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەوڵێکی باشی دا بۆ کردنەوەی دەرگاکە، بەڵام نسقەی نەکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks25("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٤. (ناو) مادەیەکی ھۆشبەری بەھێزی نایاسایی کە جۆرێکە لە کۆکاین"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Several kilos of crack were found in her luggage."),
                    ExampleSentenceKurdish(
                        text:
                            "چەند کیلۆیەک لە کراک لە کەل‌وپەلەکەیدا دۆزرانەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks26("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٥. (ناو) نوکتەیەک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He gets really mad if anyone makes a crack about his weight."),
                    ExampleSentenceKurdish(
                        text:
                            "زۆر تووڕە دەبێت ئەگەر ھەر کەسێک گاڵتە بە کێشی بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks27("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٦. (ھاوەڵناو) شارەزا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The crack troops were deployed to the front lines to secure the strategic position."),
                    ExampleSentenceKurdish(
                        text:
                            "ھێزە کارامەکان نێردران بۆ بەرەکانی پێشەوە بۆ کۆنترۆڵکردنی پێگەیەکی ستراتیژی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcracks28("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcracks28("en-US"),
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
- Verb: crack (derived forms: cracks, cracked, cracking)
1. Become fractured; break or crack on the surface only (= check, break)
"The glass cracked when it was heated";
 
2. Make a very sharp explosive sound
"His gun cracked"
 
3. Make a sharp sound (= snap)
"his fingers cracked";
 
4. Hit forcefully; deal a hard blow, making a cracking noise
"The teacher cracked him across the face with a ruler"
 
5. Pass through (a barrier) (= break through)
"Registrations cracked through the 30,000 mark in the county";
 
6. Break partially but keep its integrity
"The glass cracked"
 
7. Break suddenly and abruptly, as under tension (= snap)
"The pipe cracked";
 
8. Gain unauthorized access to computers with malicious intentions
"she cracked my password"; "crack a safe"
 
9. Suffer a nervous breakdown (= crack up, crock up, break up, collapse)
 
10. Tell spontaneously
"crack a joke"
 
11. Cause to become cracked
"heat and light cracked the back of the leather chair"
 
12. (chemistry) reduce (petroleum) to a simpler compound by cracking
 
13. (chemistry) break into simpler molecules by means of heat
"The petroleum cracked"
 
14. (of a voice) change in pitch, esp. as a result of emotional strain
 
15. Yield information under interrogation or torture (= break)
"They managed to crack him on the third day";

16. Successfully decipher a code (= break)

- Noun: crack (derived forms: cracks)
1. A narrow planar hole in a rock or material, usually with a flattish sides (= cleft, crevice, fissure, scissure)
 
2. A narrow space between things; a narrow opening (= gap)
"he opened the window a crack";

3. A long narrow depression in a surface (= crevice, cranny, fissure, chap)
 
4. A sudden sharp noise (= cracking, snap)
"the crack of a whip";
 
5. A chance to do something (= shot)
"he wanted a crack at the champion";
 
5. Witty remark (= wisecrack, sally, quip)
 
6. A blemish resulting from a break without complete separation of the parts
"there was a crack in the mirror"
 
7. A purified and potent form of cocaine that is smoked rather than snorted; highly addictive (= crack cocaine, tornado)
 
8. A usually brief attempt (= fling, go, pass, whirl [informal], offer, bash [Brit, informal])
"he took a crack at it";
 
9. The act of cracking something (= fracture, cracking)
 
10. [Ireland] A highly pleasurable or exciting experience (= good time, blast [informal], ball [informal], craic [Ireland])
"we had a crack at the party";
 
11. (computing) a program, fake licence or procedure to circumvent software usage restrictions

- Adjective: crack 
Usage: informal
1. Of the highest quality, skill, etc.; very good or impressive (= ace [informal], A-one [informal], first-rate, super, tiptop, topnotch [informal], top-notch [informal], tops [informal], A1 [informal], excellent, first-class, fantabulous [informal], splendid, ripping [Brit, informal], mean [informal], beezer [UK, archaic], lush [Brit, informal], stellar [informal], awesome [informal], brilliant, outstanding, top-drawer)
"a crack shot";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),

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
  final String _videoId = 'PUT_VID';
  final double _startSeconds = 222222222222222;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
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

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'G4BxOhJOmUw';
  final double _startSeconds = 262;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
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

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = '47MNn4bsmSw';
  final double _startSeconds = 2911;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
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

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '8wY6OawRU38';
  final double _startSeconds = 147;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
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

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'YtVMmrSvZNg';
  final double _startSeconds = 12;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
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

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'uUjTeVT5wvM';
  final double _startSeconds = 24;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
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

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
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
  final String _videoId = 'SA8XRw4WIeo';
  final double _startSeconds = 20;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
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

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
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