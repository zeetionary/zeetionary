import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydischarge extends StatefulWidget {
  const EnglishEntrydischarge({super.key});

  @override
  State<EnglishEntrydischarge> createState() => _EnglishEntrydischargeState();
}

class _EnglishEntrydischargeState extends State<EnglishEntrydischarge> {
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
    return const EntryTitle(word: "discharge");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: discharge");
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
    return const IPAofEnglish(text: "IpaUK: /dɪsˈtʃɑːdʒ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdischarge(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("discharge");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdischarge("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪsˈtʃɑːrdʒ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdischarge(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("discharge");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdischarge("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdischarges1(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was discharged from the army following his injury.");
  }

  Future<void> speakdischarges2(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was discharged from the police force for bad conduct.");
  }

  Future<void> speakdischarges3(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was found guilty and dishonourably discharged from the army.");
  }

  Future<void> speakdischarges4(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Patients were being discharged from the hospital too early.");
  }

  Future<void> speakdischarges5(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All the people involved in the accident have now been discharged from hospital.");
  }

  Future<void> speakdischarges6(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She had discharged herself against medical advice.");
  }

  Future<void> speakdischarges7(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was conditionally discharged after admitting the theft.");
  }

  Future<void> speakdischarges8(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was formally discharged by the court.");
  }

  Future<void> speakdischarges9(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("If the jury cannot agree, it should be discharged.");
  }

  Future<void> speakdischarges10(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The river is diverted through the power station before discharging into the sea.");
  }

  Future<void> speakdischarges11(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The factory was fined for discharging chemicals into the river.");
  }

  Future<void> speakdischarges12(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The wound started discharging pus.");
  }

  Future<void> speakdischarges13(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Lightning is caused by clouds discharging electricity.");
  }

  Future<void> speakdischarges14(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I will faithfully discharge my duties.");
  }

  Future<void> speakdischarges15(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His widow was unable to discharge the debt.");
  }

  Future<void> speakdischarges16(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He could not properly discharge his duties.");
  }

  Future<void> speakdischarges17(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The police officer accidentally discharged a firearm while unloading it.");
  }

  Future<void> speakdischarges18(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He knocked her hand down and the gun discharged into the floor.");
  }

  Future<void> speakdischarges19(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A ban on the discharge of toxic waste will soon be implemented.");
  }

  Future<void> speakdischarges20(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Changes in vaginal discharge can indicate an infection.");
  }

  Future<void> speakdischarges21(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The storm produced a loud thunder with each electrical discharge.");
  }

  Future<void> speakdischarges22(String languageCode) async {
    // DOPSUM: CHANGE speakdischarge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The illness resulted in his discharge from the army.");
  }

  Future<void> speakdopsum1s23(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His quick discharge came as a surprise to everyone.");
  }

  Future<void> speakdopsum1s24(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The doctor will provide instructions before your discharge from the hospital.");
  }

  Future<void> speakdopsum1s25(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was given an absolute discharge but banned from driving for twelve months.");
  }

  Future<void> speakdopsum1s26(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The judge gave him a one-year conditional discharge.");
  }

  Future<void> speakdopsum1s27(String languageCode) async {
    // DOPSUM: CHANGE speakdopsum1
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The gun had an accidental discharge when it fell.");
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
کوردی: بەتاڵ‌کردن، داگرتن، خاڵی‌کردن، دابەزاندن، واڵاکردن،	جێبەجێ‌کردن، ڕاپەڕاندن، کردن (ی ئەرک)،	دانەوە، پێدانەوە،	خستن، تێگرتن، تەقاندن، ھاویشتن،	مۆڵەت‌پێدان، ناردنەوە،	چوونەدەرەوە،	دەرکردن، ھاویشتنە دەرەوە، خستنەدەرەوە، شتی دەردراو، مەتریاڵی دەرھاویژراو، دەرھاویشتە،	بەتاڵ‌کردنی بارگەی ئێلیکتریکی،	(برین) چڵک، زووخاو، زووخ، کێم، ھەو، زنچک، زڵزڵە، گڤرت، شژ،	(زیندانی) ئازادی، بەربوون، بەردان، بەڕەڵاکردن
"""),
          const DefinitionKurdish(
              text:
                  "١. (کردار) پێدانی مۆڵەتی فەرمی بە کەسێک بۆ جێھێشتنی پۆلیس یان ھێزە چەکدارەکان؛ دەرکردنی کەسێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He was discharged from the army following his injury."),
                    ExampleSentenceKurdish(
                        text: "لە دوای برینداربوونی لە سوپا مۆڵەت درا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "discharge", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges1("en-US"),
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
                            "She was discharged from the police force for bad conduct."),
                    ExampleSentenceKurdish(
                        text: "لە ھێزی پۆلیس دەرکرا بۆ مامەڵەی خراپ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges2("en-US"),
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
                            "He was found guilty and dishonourably discharged from the army."),
                    ExampleSentenceKurdish(
                        text:
                            "بە تاوانبار ناسێنرا بە شەرمەزارییەوە لە سوپا دەرکرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) ڕێگەدان بە کەسێک کە نەخۆشخانە جێبھێڵێت بەھۆی ئەوەی تەندرووستی باشە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Patients were being discharged from the hospital too early."),
                    ExampleSentenceKurdish(
                        text: "نەخۆشەکان زۆر زوو لە نەخۆشخانە دەردەکران."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges4("en-US"),
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
                            "All the people involved in the accident have now been discharged from hospital."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەموو ئەو کەسانەی لە ڕووداوەکە بەژداربوون ئێستا لە نەخۆشخانە دەرکراون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges5("en-US"),
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
                            "She had discharged herself against medical advice."),
                    ExampleSentenceKurdish(
                        text:
                            "بە پێچەوانەی ئامۆژگاریی پزیشکییەوە نەخۆشخانەی جێھێشتبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) ڕێگادان بە کەسێک کە دادگا یان زیندان جێبھێڵێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He was conditionally discharged after admitting the theft."),
                    ExampleSentenceKurdish(
                        text: "بە مەرج ئازادکرا لە دوای داننان بەدزییەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges7("en-US"),
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
                        text: "She was formally discharged by the court."),
                    ExampleSentenceKurdish(
                        text: "بە فەرمی لەلایەن دادگاوە ئازادکرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) ڕێگادان بە ئەندامێکی دەستەی سوێندخۆران کە کار لەسەر کەیسێک نەکات"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "If the jury cannot agree, it should be discharged."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەگەر دەستەی سوێندخۆران ناتوانن ڕازی بن، دەبێت مۆڵەت بدرێن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) ڕێگادان بەوەی گاز یان شلە بڕژێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The river is diverted through the power station before discharging into the sea."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕووبارەکە لە ڕێگای وێستگەی وزەکەوە ئاراستەی دەگۆڕێت پێش ئەوەی بڕژێنرێتە دەریاوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges10("en-US"),
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
                            "The factory was fined for discharging chemicals into the river."),
                    ExampleSentenceKurdish(
                        text:
                            "کارگەکە سزادرا بۆ ڕژاندنی مادەی کیمیایی بۆ ناو ڕووبارەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) ھاتنە دەرەوەی شلەی وەک کێم لە جەستەوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The wound started discharging pus."),
                    ExampleSentenceKurdish(
                        text: "برینەکە دەستی بە دەردانی کێم کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (کردار) دەردانی وزە یان ھێز"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Lightning is caused by clouds discharging electricity."),
                    ExampleSentenceKurdish(
                        text:
                            "برووسکە درووست دەبێت کە ھەورەکان کارەبا درووست دەکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (کردار) کردنی ھەر شتێک کە پێویستە بۆ ئەنجامدانی ئەرکێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I will faithfully discharge my duties."),
                    ExampleSentenceKurdish(
                        text: "بە ئەمەکەوە کۆتایی بە ئەرکەکانم دێنم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges14("en-US"),
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
                        text: "His widow was unable to discharge the debt."),
                    ExampleSentenceKurdish(
                        text: "بێوەژنەکەی توانای نەبوو قەرزەکان بداتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges15("en-US"),
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
                        text: "He could not properly discharge his duties."),
                    ExampleSentenceKurdish(
                        text: "نەیدەتوانی بە گونجاوی ئەرکەکانی ئەنجام بدات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (کردار) تەقاندنی فیشەکێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The police officer accidentally discharged a firearm while unloading it."),
                    ExampleSentenceKurdish(
                        text:
                            "پۆلیسێک بە ڕێکەوت چەکێکی تەقاند لەکاتی بەتاڵکردنەوەی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges17("en-US"),
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
                            "He knocked her hand down and the gun discharged into the floor."),
                    ExampleSentenceKurdish(
                        text: "کێشای بە دەستیدا و چەکەەک کەوتە سەر زەوی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٠. (ناو) ڕژاندنی گاس یان شلە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "A ban on the discharge of toxic waste will soon be implemented."),
                    ExampleSentenceKurdish(
                        text:
                            "قەدەغەیەک لەسەر ڕژاندنی پاشەڕۆی ژەھراوی بەزووی دەخرێتە بواری جێبەجێکردنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges19("en-US"),
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
                            "Changes in vaginal discharge can indicate an infection."),
                    ExampleSentenceKurdish(
                        text:
                            "گۆڕان لە دەردراوی زێ دەکرێت ئاماژە بە تووشبوون بێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (ناو) دەرچوونی وزەی کارەبا لە شتێکەوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The storm produced a loud thunder with each electrical discharge."),
                    ExampleSentenceKurdish(
                        text:
                            "زریانەکە برووسکەیەکی بەرزی درووست دەکرد لەگەڵ ھەر چەخماخەیەکی کارەبایی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (ناو) مۆڵەتدان یان دەرکردنی کەسێک لە ھێزی پۆلیس یان سوپا"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The illness resulted in his discharge from the army."),
                    ExampleSentenceKurdish(
                        text: "نەخۆشییەکە درووست بوو بەھۆی دەرکردنی لە سوپا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdischarges22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdischarges22("en-US"),
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
                            "His quick discharge came as a surprise to everyone."),
                    ExampleSentenceKurdish(
                        text: "دەرکردنی خێرای سوپرایز بوو بۆ ھەموان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٣. (ناو) ڕێگەدان بە کەسێک کە نەخۆشخانە جێبھێڵێت بەھۆی ئەوەی تەندرووستە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The doctor will provide instructions before your discharge from the hospital."),
                    ExampleSentenceKurdish(
                        text:
                            "پزیشکەکە ڕێنماییت پێدەدات پێش مۆڵەتدانت لە نەخۆشخانە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٤. (ناو) ڕێگادان بە کەسێک کە زیندان یان دادگا جێبھێڵێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He was given an absolute discharge but banned from driving for twelve months."),
                    ExampleSentenceKurdish(
                        text:
                            "ئازادکردنی تەواوی پێدرا بەڵام ١٢ مانگ شۆفێری لێ قەدەغە کرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s25("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٥. (ناو) ئەنجامدانی ئەرکێک یان دانەوەی قەرز"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The judge gave him a one-year conditional discharge."),
                    ExampleSentenceKurdish(
                        text: "دادوەرەکە یەک ساڵ ئازادیی بە مەرجی پێدرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s26("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٦. (ناو) تەقاندنی فیشەکێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The gun had an accidental discharge when it fell."),
                    ExampleSentenceKurdish(
                        text: "چەکەکە تەقاندنێکی بەڕێکەوتی ھەبوو کە کەوت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdopsum1s27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdopsum1s27("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // dopsum1s2800"),
          // speakdopsum1s28
          // dopsum1s28
          // dopsum1s2900"),
          // speakdopsum1s29
          // dopsum1s29
          // dopsum1s_3000"),
          // speakdopsum1s30
          // dopsum1s30
          // dopsum1s3100"),
          // speakdopsum1s31
          // dopsum1s31
          // dopsum1s3200"),
          // speakdopsum1s32
          // dopsum1s32
          // dopsum1s3300"),
          // speakdopsum1s33
          // dopsum1s33
          // dopsum1s3400"),
          // speakdopsum1s34
          // dopsum1s34
          // dopsum1s3500"),
          // speakdopsum1s35
          // dopsum1s35
          // dopsum1s3600"),
          // speakdopsum1s36
          // dopsum1s36
          // dopsum1s3700"),
          // speakdopsum1s37
          // dopsum1s37
          // dopsum1s3800"),
          // speakdopsum1s38
          // dopsum1s38
          // dopsum1s3900"),
          // speakdopsum1s39
          // dopsum1s39
          // dopsum1s_4000"),
          // speakdopsum1s40
          // dopsum1s40("en-US"),
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
- Verb: discharge (derived forms: discharged, discharges, discharging)
1. Allow or require to leave (a patient from hospital, from police custody, etc.)
 
2. Release from obligations or duties (= free)
 
3. Release from military service (= muster out)
 
4. Eliminate (a substance) (= exhaust, expel, eject, release)
"combustion products are discharged in the engine";
 
5. Pour forth or release
"discharge liquids"
 
6. Carry out, fulfil (= dispatch, complete)
"discharge one's duties";
 
7. Remove the charge from
 
8. Go off or discharge (= fire, go off)
"The gun discharged";
 
9. Remove (cargo, people, etc.) from and leave (= drop, drop off, set down, put down, unload)
 
10. Cause to go off (= fire)
"discharge a gun";
 
11. Become empty or void of its content (= empty)
 
12. Pronounce not guilty of criminal charges (= acquit, assoil [archaic], clear, exonerate, exculpate)
"The suspect was discharged of the murder charges";

- Noun: discharge (derived forms: discharges)
1. The termination of someone's employment (leaving them free to depart) (= dismissal, dismission, firing, liberation, release, sack, sacking, heave-ho [informal], chuck [Brit, informal], the axe [informal], severance, the boot [informal], the chop [Brit, informal])
 
2. The act of releasing gas, liquid etc.
 
3. A substance that is emitted or released (= emission)
 
4. Any of several bodily processes by which substances go out of the body (= emission, expelling)
"the discharge of pus";
 
5. A formal written statement of relinquishment (= release, waiver)
 
6. The act of discharging a gun (= firing, firing off)
 
7. Release from hospital, the police, etc.
 
8. The pouring forth of a fluid (= outpouring, run)
 
9. The sudden giving off of energy
 
10. Electrical conduction through a gas in an applied electric field (= spark, arc, electric arc, electric discharge)
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

  final String _videoId = 'L1HCG3BGK8I';
  final double _startSeconds = 300;

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

  final String _videoId = 'hCsPV0eiqxg';
  final double _startSeconds = 326;

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

  final String _videoId = 'yXjN5ln-2TQ';
  final double _startSeconds = 394;

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

  final String _videoId = '_rBO8neWw04';
  final double _startSeconds = 435;

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

  final String _videoId = 'KIxg2zxg1CQ';
  final double _startSeconds = 28;

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

  final String _videoId = 'NZLbTuBDhJg';
  final double _startSeconds = 474;

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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '7zpojhD4hpI';
  final double _startSeconds = 715;

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