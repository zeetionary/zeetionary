import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

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
    await flutterTts.speak("demand");
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
    await flutterTts.speak("demand");
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
    await flutterTts.speak("A federal judge rejected their demands.");
  }

  Future<void> speakdemands2(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The management had no intention of meeting union demands.");
  }

  Future<void> speakdemands3(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Campaigners have stepped up their demands for immediate government action.");
  }

  Future<void> speakdemands4(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I think your demand for a higher salary is perfectly reasonable.");
  }

  Future<void> speakdemands5(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Juggling the demands of work and family is never easy.");
  }

  Future<void> speakdemands6(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She shouldn't always give in to his demands.");
  }

  Future<void> speakdemands7(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Flying makes enormous demands on pilots.");
  }

  Future<void> speakdemands8(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("As a director he makes huge demands on his actors.");
  }

  Future<void> speakdemands9(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We must prepare children to respond to the demands of work.");
  }

  Future<void> speakdemands10(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I think the demands of this job are excessive.");
  }

  Future<void> speakdemands11(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The person who cannot say ‘no’ to others' requests is likely to be overwhelmed by external demands.");
  }

  Future<void> speakdemands12(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Demand is exceeding supply.");
  }

  Future<void> speakdemands13(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It is becoming more difficult for us to meet demand.");
  }

  Future<void> speakdemands14(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Consumer demand for organic foods continues to increase rapidly.");
  }

  Future<void> speakdemands15(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We are struggling to satisfy the demand for the product.");
  }

  Future<void> speakdemands16(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They are demanding the release of all political prisoners.");
  }

  Future<void> speakdemands17(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You should demand an apology in writing.");
  }

  Future<void> speakdemands18(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Protesters demanded the resignation of the prime minister.");
  }

  Future<void> speakdemands19(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The UN has demanded that all troops be withdrawn.");
  }

  Future<void> speakdemands20(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We demand a lot of our teachers.");
  }

  Future<void> speakdemands21(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I demand to see the manager.");
  }

  Future<void> speakdemands22(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He had demanded money from her.");
  }

  Future<void> speakdemands23(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("‘Who the hell are you?’ he demanded angrily.");
  }

  Future<void> speakdemands24(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("‘And where have you been?’ he demanded angrily.");
  }

  Future<void> speakdemands25(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Today's consumers are demanding a greater variety of produce.");
  }

  Future<void> speakdemands26(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This sport demands both speed and strength.");
  }

  Future<void> speakdemands27(String languageCode) async {
    // DOPSUM: CHANGE speakdemand
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She can be a very tough negotiator when the situation demands it.");
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
          SentencesRow(
            englishText: "A federal judge rejected their demands.",
            kurdishText: "دادوەرێکی فیدراڵی داواکانی ڕەتکردنەوە.", // demand
            onPressedBritish: () => speakdemands1("en-GB"),
            onPressedAmerican: () => speakdemands1("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The management had no intention of meeting union demands.",
            kurdishText:
                "بەڕێوەبەرایەتی ھیچ نیازێکی نەبوو داواکانی سەندیکاکە جێبەچی بکات.",
            onPressedBritish: () => speakdemands2("en-GB"),
            onPressedAmerican: () => speakdemands2("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Campaigners have stepped up their demands for immediate government action.",
            kurdishText:
                "چالاکوانان فشاریان زیاد کردووە بۆ داوای ھەنگاوی دەستبەجێی حکومەت.",
            onPressedBritish: () => speakdemands3("en-GB"),
            onPressedAmerican: () => speakdemands3("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I think your demand for a higher salary is perfectly reasonable.",
            kurdishText:
                "پێموایە داواکەت بۆ مووچەی بەرزتر تەواو لە جێگای خۆیەتی.",
            onPressedBritish: () => speakdemands4("en-GB"),
            onPressedAmerican: () => speakdemands4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) ئەو شتانەی کە کەسێک یان شتێک ناچارت دەکات بیکەیت، بە تایبەتی شتی سەخت، ماندووکەر، ھتد"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "Juggling the demands of work and family is never easy.",
            kurdishText:
                "گونجاندنی پێویستییەکانی کار و خێزان ھەرگیز ئاسان نییە.",
            onPressedBritish: () => speakdemands5("en-GB"),
            onPressedAmerican: () => speakdemands5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She shouldn't always give in to his demands.",
            kurdishText: "نابێت ھەمیشە مل بدات بۆ حەوجێیەکانی.",
            onPressedBritish: () => speakdemands6("en-GB"),
            onPressedAmerican: () => speakdemands6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Flying makes enormous demands on pilots.",
            kurdishText: "فڕین قورسایی زۆر دەخاتە سەر فڕۆکەوانان.",
            onPressedBritish: () => speakdemands7("en-GB"),
            onPressedAmerican: () => speakdemands7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "As a director he makes huge demands on his actors.",
            kurdishText: "وەک دەرھێنەرێک داوای زۆر لە ئەکتەرەکانی دەکات.",
            onPressedBritish: () => speakdemands8("en-GB"),
            onPressedAmerican: () => speakdemands8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "We must prepare children to respond to the demands of work.",
            kurdishText: "دەبێت منداڵان ڕابھێنین بۆ پێداویستییەکانی کارکردن.",
            onPressedBritish: () => speakdemands9("en-GB"),
            onPressedAmerican: () => speakdemands9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I think the demands of this job are excessive.",
            kurdishText: "پێموایە حەوجێیەکانی ئەم کارە زۆرن.",
            onPressedBritish: () => speakdemands10("en-GB"),
            onPressedAmerican: () => speakdemands10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The person who cannot say ‘no’ to others' requests is likely to be overwhelmed by external demands.",
            kurdishText:
                "ئەو کەسەی کە ناتوانێت بڵێت 'نەخێر' بە داواکانی کەسانی دیکە ئەگەری ھەیە بکەوێتە ژێر باری دەرەکییەوە.",
            onPressedBritish: () => speakdemands11("en-GB"),
            onPressedAmerican: () => speakdemands11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) ویستی کڕیاران بۆ شت کڕین"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Demand is exceeding supply.",
            kurdishText: "خواست شتومەک زیاد دەکات.",
            onPressedBritish: () => speakdemands12("en-GB"),
            onPressedAmerican: () => speakdemands12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "It is becoming more difficult for us to meet demand.",
            kurdishText: "سەختتر دەبێت بۆمان بە خواستدا ڕابگەین.",
            onPressedBritish: () => speakdemands13("en-GB"),
            onPressedAmerican: () => speakdemands13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Consumer demand for organic foods continues to increase rapidly.",
            kurdishText:
                "خواستی کڕیاران بۆ خواردنی ئەندامی بەردەوامە لەوەی بەخێرایی زیاد بکات.",
            onPressedBritish: () => speakdemands14("en-GB"),
            onPressedAmerican: () => speakdemands14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "We are struggling to satisfy the demand for the product.",
            kurdishText: "تەقەڵامانە لە ڕاگەشتن بە خواست بۆ بەرھەمەکە.",
            onPressedBritish: () => speakdemands15("en-GB"),
            onPressedAmerican: () => speakdemands15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) داواکردن بە بەھێزی بۆ شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "They are demanding the release of all political prisoners.",
            kurdishText: "داوای ئازادبوونی ھەموو زیندانییە سیاسییەکان دەکەن.",
            onPressedBritish: () => speakdemands16("en-GB"),
            onPressedAmerican: () => speakdemands16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "You should demand an apology in writing.",
            kurdishText: "دەبێت بە نووسین داوای لێبوردنخوازییەک بکەیت.",
            onPressedBritish: () => speakdemands17("en-GB"),
            onPressedAmerican: () => speakdemands17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Protesters demanded the resignation of the prime minister.",
            kurdishText:
                "خۆپیشاندەران داوای دەستلەکارکێشانەوەی سەرۆک وەزیران دەکەن.",
            onPressedBritish: () => speakdemands18("en-GB"),
            onPressedAmerican: () => speakdemands18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The UN has demanded that all troops be withdrawn.",
            englishNote:
                "British English also: They are demanding that all troops should be withdrawn.",
            kurdishText:
                "نەتەوە یەکگرتووەکان داوای کردووە ھەموو ھێزەکان بکشێندرێنەوە.",
            onPressedBritish: () => speakdemands19("en-GB"),
            onPressedAmerican: () => speakdemands19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We demand a lot of our teachers.",
            kurdishText: "داوای زۆر لە مامۆستایان دەکەین.",
            onPressedBritish: () => speakdemands20("en-GB"),
            onPressedAmerican: () => speakdemands20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I demand to see the manager.",
            kurdishText: "داوای بینیی بەڕێوەبەر دەکەم.",
            onPressedBritish: () => speakdemands21("en-GB"),
            onPressedAmerican: () => speakdemands21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He had demanded money from her.",
            kurdishText: "داوای پارەی لێکردبوو.",
            onPressedBritish: () => speakdemands22("en-GB"),
            onPressedAmerican: () => speakdemands22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) پرسینی شتێک بە تووڕەیی و توندی"),
          SentencesRow(
            englishText: "‘Who the hell are you?’ he demanded angrily.",
            kurdishText: "بە تووڕەییەوە پرسی 'تۆ چی نەفرەتییەکەیت؟'",
            onPressedBritish: () => speakdemands23("en-GB"),
            onPressedAmerican: () => speakdemands23("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "‘And where have you been?’ he demanded angrily.",
            kurdishText: "بە تووڕەییەوە پرسی 'و لە کوێ بوویت؟'",
            onPressedBritish: () => speakdemands24("en-GB"),
            onPressedAmerican: () => speakdemands24("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) داواکردنی کەلوپەل و خزمەتگوزاری"),
          SentencesRow(
            englishText:
                "Today's consumers are demanding a greater variety of produce.",
            kurdishText:
                "کڕیارانی ئەم سەردەمە خواستیان لەسەر جۆری زیاتری بەرھەم ھەیە.",
            onPressedBritish: () => speakdemands25("en-GB"),
            onPressedAmerican: () => speakdemands25("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) پێویستبوونی شتێک بۆ ئەوەی لە شتێکی دیکەدا سەرکەوتوو بیت"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "This sport demands both speed and strength.",
            kurdishText: "ئەم وەرزشە پێویستی بە خێرایی و ھێز ھەیە.",
            onPressedBritish: () => speakdemands26("en-GB"),
            onPressedAmerican: () => speakdemands26("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She can be a very tough negotiator when the situation demands it.",
            kurdishText:
                "دەکرێت دانووستانکارێکی توند بێت کە دۆخەکە پێویستی پیی بێت.",
            onPressedBritish: () => speakdemands27("en-GB"),
            onPressedAmerican: () => speakdemands27("en-US"),
          ),
          // demands2800"),
          // speakdemands28
          // demands28("en-US"),
          // demands2900"),
          // speakdemands29
          // demands29("en-US"),
          // demands3000"),
          // speakdemands30
          // demands30("en-US"),
          // demands3100"),
          // speakdemands31
          // demands31("en-US"),
          // demands3200"),
          // speakdemands32
          // demands32("en-US"),
          // demands3300"),
          // speakdemands33
          // demands33("en-US"),
          // demands3400"),
          // speakdemands34
          // demands34("en-US"),
          // demands3500"),
          // speakdemands35
          // demands35("en-US"),
          // demands3600"),
          // speakdemands36
          // demands36("en-US"),
          // demands3700"),
          // speakdemands37
          // demands37("en-US"),
          // demands3800"),
          // speakdemands38
          // demands38("en-US"),
          // demands3900"),
          // speakdemands39
          // demands39("en-US"),
          // demands4000"),
          // speakdemands40
          // demands40("en-US"),
          // demands4100"),
          // speakdemands41
          // demands41("en-US"),
          // demands4200"),
          // speakdemands42
          // demands42("en-US"),
          // demands4300"),
          // speakdemands43
          // demands43("en-US"),
          // demands4400"),
          // speakdemands44
          // demands44("en-US"),
          // demands4500"),
          // speakdemands45
          // demands45("en-US"),
          // demands4600"),
          // speakdemands46
          // demands46("en-US"),
          // demands4700"),
          // speakdemands47
          // demands47("en-US"),
          // demands4800"),
          // speakdemands48
          // demands48("en-US"),
          // demands4900"),
          // speakdemands49
          // demands49("en-US"),
          // demands5000"),
          // speakdemands50
          // demands50("en-US"),
          // demands5100"),
          // speakdemands51
          // demands51("en-US"),
          // demands5200"),
          // speakdemands52
          // demands52("en-US"),
          // demands5300"),
          // speakdemands53
          // demands53("en-US"),
          // demands5400"),
          // speakdemands54
          // demands54("en-US"),
          // demands5500"),
          // speakdemands55
          // demands55("en-US"),
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
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'y1sF6ZeASU0';
  final double _startSeconds = 541;

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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 1106;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 's3B-qp3U5G0';
  final double _startSeconds = 61;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1664;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = '9TugA_z5vQE';
  final double _startSeconds = 152;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'raSeaAeryWE';
  final double _startSeconds = 1164;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'b1reY72ktEc';
  final double _startSeconds = 220;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
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