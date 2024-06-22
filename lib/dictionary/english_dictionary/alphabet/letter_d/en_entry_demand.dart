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
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "A federal judge rejected their demands."),
                    ExampleSentenceKurdish(
                        text: "دادوەرێکی فیدراڵی داواکانی ڕەتکردنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "demand", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The management had no intention of meeting union demands."),
                    ExampleSentenceKurdish(
                        text:
                            "بەڕێوەبەرایەتی ھیچ نیازێکی نەبوو داواکانی سەندیکاکە جێبەچی بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Campaigners have stepped up their demands for immediate government action."),
                    ExampleSentenceKurdish(
                        text:
                            "چالاکوانان فشاریان زیاد کردووە بۆ داوای ھەنگاوی دەستبەجێی حکومەت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I think your demand for a higher salary is perfectly reasonable."),
                    ExampleSentenceKurdish(
                        text:
                            "پێموایە داواکەت بۆ مووچەی بەرزتر تەواو لە جێگای خۆیەتی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) ئەو شتانەی کە کەسێک یان شتێک ناچارت دەکات بیکەیت، بە تایبەتی شتی سەخت، ماندووکەر، ھتد"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Juggling the demands of work and family is never easy."),
                    ExampleSentenceKurdish(
                        text:
                            "گونجاندنی پێویستییەکانی کار و خێزان ھەرگیز ئاسان نییە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands5("en-US"),
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
                        text: "She shouldn't always give in to his demands."),
                    ExampleSentenceKurdish(
                        text: "نابێت ھەمیشە مل بدات بۆ حەوجێیەکانی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands6("en-US"),
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
                        text: "Flying makes enormous demands on pilots."),
                    ExampleSentenceKurdish(
                        text: "فڕین قورسایی زۆر دەخاتە سەر فڕۆکەوانان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands7("en-US"),
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
                            "As a director he makes huge demands on his actors."),
                    ExampleSentenceKurdish(
                        text: "وەک دەرھێنەرێک داوای زۆر لە ئەکتەرەکانی دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands8("en-US"),
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
                            "We must prepare children to respond to the demands of work."),
                    ExampleSentenceKurdish(
                        text:
                            "دەبێت منداڵان ڕابھێنین بۆ پێداویستییەکانی کارکردن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands9("en-US"),
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
                        text: "I think the demands of this job are excessive."),
                    ExampleSentenceKurdish(
                        text: "پێموایە حەوجێیەکانی ئەم کارە زۆرن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands10("en-US"),
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
                            "The person who cannot say ‘no’ to others' requests is likely to be overwhelmed by external demands."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەو کەسەی کە ناتوانێت بڵێت 'نەخێر' بە داواکانی کەسانی دیکە ئەگەری ھەیە بکەوێتە ژێر باری دەرەکییەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) ویستی کڕیاران بۆ شت کڕین"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Demand is exceeding supply."),
                    ExampleSentenceKurdish(text: "خواست شتومەک زیاد دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands12("en-US"),
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
                            "It is becoming more difficult for us to meet demand."),
                    ExampleSentenceKurdish(
                        text: "سەختتر دەبێت بۆمان بە خواستدا ڕابگەین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands13("en-US"),
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
                            "Consumer demand for organic foods continues to increase rapidly."),
                    ExampleSentenceKurdish(
                        text:
                            "خواستی کڕیاران بۆ خواردنی ئەندامی بەردەوامە لەوەی بەخێرایی زیاد بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands14("en-US"),
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
                            "We are struggling to satisfy the demand for the product."),
                    ExampleSentenceKurdish(
                        text: "تەقەڵامانە لە ڕاگەشتن بە خواست بۆ بەرھەمەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) داواکردن بە بەھێزی بۆ شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "They are demanding the release of all political prisoners."),
                    ExampleSentenceKurdish(
                        text:
                            "داوای ئازادبوونی ھەموو زیندانییە سیاسییەکان دەکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands16("en-US"),
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
                        text: "You should demand an apology in writing."),
                    ExampleSentenceKurdish(
                        text: "دەبێت بە نووسین داوای لێبوردنخوازییەک بکەیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands17("en-US"),
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
                            "Protesters demanded the resignation of the prime minister."),
                    ExampleSentenceKurdish(
                        text:
                            "خۆپیشاندەران داوای دەستلەکارکێشانەوەی سەرۆک وەزیران دەکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands18("en-US"),
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
                      text: "The UN has demanded that all troops be withdrawn.",
                      note:
                          "British English also: They are demanding that all troops should be withdrawn.",
                    ),
                    ExampleSentenceKurdish(
                        text:
                            "نەتەوە یەکگرتووەکان داوای کردووە ھەموو ھێزەکان بکشێندرێنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands19("en-US"),
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
                        text: "We demand a lot of our teachers."),
                    ExampleSentenceKurdish(
                        text: "داوای زۆر لە مامۆستایان دەکەین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands20("en-US"),
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
                        text: "I demand to see the manager."),
                    ExampleSentenceKurdish(
                        text: "داوای بینیی بەڕێوەبەر دەکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands21("en-US"),
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
                        text: "He had demanded money from her."),
                    ExampleSentenceKurdish(text: "داوای پارەی لێکردبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) پرسینی شتێک بە تووڕەیی و توندی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "‘Who the hell are you?’ he demanded angrily."),
                    ExampleSentenceKurdish(
                        text: "بە تووڕەییەوە پرسی 'تۆ چی نەفرەتییەکەیت؟'"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands23("en-US"),
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
                            "‘And where have you been?’ he demanded angrily."),
                    ExampleSentenceKurdish(
                        text: "بە تووڕەییەوە پرسی 'و لە کوێ بوویت؟'"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) داواکردنی کەلوپەل و خزمەتگوزاری"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Today's consumers are demanding a greater variety of produce."),
                    ExampleSentenceKurdish(
                        text:
                            "کڕیارانی ئەم سەردەمە خواستیان لەسەر جۆری زیاتری بەرھەم ھەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands25("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) پێویستبوونی شتێک بۆ ئەوەی لە شتێکی دیکەدا سەرکەوتوو بیت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "This sport demands both speed and strength."),
                    ExampleSentenceKurdish(
                        text: "ئەم وەرزشە پێویستی بە خێرایی و ھێز ھەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands26("en-US"),
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
                            "She can be a very tough negotiator when the situation demands it."),
                    ExampleSentenceKurdish(
                        text:
                            "دەکرێت دانووستانکارێکی توند بێت کە دۆخەکە پێویستی پیی بێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdemands27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdemands27("en-US"),
                  ),
                ],
              ),
            ],
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

class YoutubeEmbeddedend extends StatefulWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  State<YoutubeEmbeddedend> createState() => _YoutubeEmbeddedendState();
}

class _YoutubeEmbeddedendState extends State<YoutubeEmbeddedend> {
  late YoutubePlayerController _controller;
  final String _videoId = 'y1sF6ZeASU0';
  final double _startSeconds = 541;

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
      body: YouTubeVideosContainerEnd(
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
  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 1106;

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
  final String _videoId = 's3B-qp3U5G0';
  final double _startSeconds = 61;

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
  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1664;

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
  final String _videoId = '9TugA_z5vQE';
  final double _startSeconds = 152;

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
  final String _videoId = 'raSeaAeryWE';
  final double _startSeconds = 1164;

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
  final String _videoId = 'b1reY72ktEc';
  final double _startSeconds = 220;

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