import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycross extends StatefulWidget {
  const EnglishEntrycross({super.key});

  @override
  State<EnglishEntrycross> createState() => _EnglishEntrycrossState();
}

class _EnglishEntrycrossState extends State<EnglishEntrycross> {
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
    return const EntryTitle(word: "cross");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cross");
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
    return const IPAofEnglish(text: "IpaUK: /krɒs/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcross(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cross");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcross("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /krɔːs/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcross(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cross");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcross("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrosss1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As soon as traffic slowed down enough to safely cross, I started walking.");
  }

  Future<void> speakcrosss2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I waved and she crossed over.");
  }

  Future<void> speakcrosss3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He crossed over from the other side of the road.");
  }

  Future<void> speakcrosss4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She crossed to the other side of the room.");
  }

  Future<void> speakcrosss5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bridge crosses the River Dee.");
  }

  Future<void> speakcrosss6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was caught trying to cross the border illegally.");
  }

  Future<void> speakcrosss7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("More than 150 000 people crossed the bridge that day.");
  }

  Future<void> speakcrosss8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They crossed the finishing line together.");
  }

  Future<void> speakcrosss9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He crossed over the road and joined me.");
  }

  Future<void> speakcrosss10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's cross over now while the road is clear.");
  }

  Future<void> speakcrosss11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They crossed from the States into Canada.");
  }

  Future<void> speakcrosss12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The roads cross just outside the town.");
  }

  Future<void> speakcrosss13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The straps cross over at the back and are tied at the waist.");
  }

  Future<void> speakcrosss14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She sat with her legs crossed.");
  }

  Future<void> speakcrosss15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's really nice until you cross her.");
  }

  Future<void> speakcrosss16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He had been crossed in love.");
  }

  Future<void> speakcrosss17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A mule is the product of a horse crossed with a donkey.");
  }

  Future<void> speakcrosss18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He behaved like an army officer crossed with a professor.");
  }

  Future<void> speakcrosss19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Sissoko crossed from the left.");
  }

  Future<void> speakcrosss20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She always crosses her t’s and dots her i’s to ensure accuracy.");
  }

  Future<void> speakcrosss21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I've put a cross on the map to show where the hotel is.");
  }

  Future<void> speakcrosss22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Put a tick if the answer is correct and a cross if it's wrong.");
  }

  Future<void> speakcrosss23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In ancient times, people were punished by being hung on crosses and left to die.");
  }

  Future<void> speakcrosss24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She wears a gold cross around her neck.");
  }

  Future<void> speakcrosss25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Christ died on the Cross.");
  }

  Future<void> speakcrosss26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was awarded the Victoria Cross for bravery.");
  }

  Future<void> speakcrosss27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A mule is a cross between a horse and a donkey.");
  }

  Future<void> speakcrosss28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Webster's low cross was fired into the net by Varney.");
  }

  Future<void> speakcrosss29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I was cross with him for being late.");
  }

  Future<void> speakcrosss30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Please don't get cross. Let me explain.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: تووڕە، ڕق‌ھەستاو،	پێچەوانە (با)،	ئاسۆیی، پۆیی،	یەکتربڕ، چەپ‌وڕاست، ھاوبڕ، خاچ، چەلیپا،	مەینەتی، ڕەنج، کوێرەوەری، دەرد، بەڵا، کوڵۆڵی،	نیشانەی خاچ،	دروشمی خاچ (نیشانەی ئازایەتی)،	نیشانەی چەپ‌وڕاست، یەکتربڕ یان لەگەڵ (×، +)،	گیانەوەری دوڕڕە یان دووڕەگە،	گیا یان ڕووەکی متوربەکراو، ڕووەکی پەیوەست‌کراو،	تێکەڵە،	(میکانیک) چوارڕێ، چوارڕێ‌یانە،	ھێڵی ئاسۆیی 
"""),
          const DefinitionKurdish(
              text: "١. (کردار) ڕۆشتن لە لایەکی دیکەوە بۆ لایەکەی دیکە"),
          SentencesRow(
            englishText:
                "As soon as traffic slowed down enough to safely cross, I started walking.",
            kurdishText:
                "کە ھاتووچۆ ھێندە ھێواش بوویەوە کە بە سەلامەتی بپەڕینەوە، دەستم بە ڕێکردن کرد.", // cross", please follow LX instructions
            onPressedBritish: () => speakcrosss1("en-GB"),
            onPressedAmerican: () => speakcrosss1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I waved and she crossed over (= crossed the road towards me).",
            kurdishText: "دەستم ڕاوەشاند و پەڕییەوە.",
            onPressedBritish: () => speakcrosss2("en-GB"),
            onPressedAmerican: () => speakcrosss2("en-US"),
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
                                    "He crossed over from the other side of the road."),
                            ExampleSentenceKurdish(
                                text: "لە ئەوپەڕی شەقامەکەوە پەڕییەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss3("en-US"),
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
                                    "She crossed to the other side of the room."),
                            ExampleSentenceKurdish(
                                text: "چوو بۆ ئەوپەڕی ژوورەکە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss4("en-US"),
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
                                text: "The bridge crosses the River Dee."),
                            ExampleSentenceKurdish(
                                text: "پردەکە بەسەر ڕووباری دیدا دەپەڕێتەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss5("en-US"),
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
                                    "He was caught trying to cross the border illegally."),
                            ExampleSentenceKurdish(
                                text:
                                    "کە دەیویست لە سنوورەکە بە نایاسایی بپەڕێتەوە گیردرا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss6("en-US"),
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
                                    "More than 150 000 people crossed the bridge that day."),
                            ExampleSentenceKurdish(
                                text:
                                    "زیاتر لە ١٥٠٠٠٠ لەو ڕۆژەدا لە پردەکە پەڕینەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss7("en-US"),
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
                                    "They crossed the finishing line together (= in a race)."),
                            ExampleSentenceKurdish(
                                text: "پێکەوە بە ھێڵی کۆتاییدا پەڕینەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss8("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "He crossed over the road and joined me."),
                            ExampleSentenceKurdish(
                                text: "بە شەقامەکەدا پەڕییەوە و ھاتە لام."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss9("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss9("en-US"),
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
                                    "Let's cross over now while the road is clear."),
                            ExampleSentenceKurdish(
                                text:
                                    "با ئێستادا بپەڕینەوە کە شەقامەکە بەتاڵە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss10("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss10("en-US"),
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
                                    "They crossed from the States into Canada."),
                            ExampleSentenceKurdish(
                                text: "لە ئەمریکاوە پەڕینەوە بۆ کەنەدا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrosss11("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrosss11("en-US"),
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
              text: "٢. (کردار) یەکتر بڕین؛ تێپەڕین بە یەکدیدا"),
          SentencesRow(
            englishText: "The roads cross just outside the town.",
            kurdishText: "ڕێگاکان بە دەرەوەی شارۆچکەکەدا تێپەڕ دەبن.",
            onPressedBritish: () => speakcrosss12("en-GB"),
            onPressedAmerican: () => speakcrosss12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The straps cross over at the back and are tied at the waist.",
            kurdishText: "پشتێنەکان بە پشتدا تێپەڕدەبن و ؛ە کەمەردا دەبەسترێن.",
            onPressedBritish: () => speakcrosss13("en-GB"),
            onPressedAmerican: () => speakcrosss13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) دانانی شتێک لەسەر شتێک یان بەشێوەیەک کە پێیدا تێپەڕێت"),
          SentencesRow(
            englishText: "She sat with her legs crossed.",
            kurdishText: "دانیشت بە قاچ لەسەر قاچ.",
            onPressedBritish: () => speakcrosss14("en-GB"),
            onPressedAmerican: () => speakcrosss14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) وەستانەوە دژ بە کەسێک یان قسەکردن دژ بە پلان یان ویستەکانی"),
          SentencesRow(
            englishText: "She's really nice until you cross her.",
            kurdishText: "کەسێکی باشە تا ئەو کاتەی کە دژی دەبیت.",
            onPressedBritish: () => speakcrosss15("en-GB"),
            onPressedAmerican: () => speakcrosss15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He had been crossed in love (= the person he loved was not faithful to him).",
            kurdishText: "لە خۆشەویستیدا خیانەتی لێکرا.",
            onPressedBritish: () => speakcrosss16("en-GB"),
            onPressedAmerican: () => speakcrosss16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) جووتکردنی دوو جۆری جیاوازی ئاژەڵ"),
          SentencesRow(
            englishText:
                "A mule is the product of a horse crossed with a donkey.",
            kurdishText: "ھێستر بەرھەمی جووتکردنی ئەسپە لەگەڵ گوێدرێژدا.",
            onPressedBritish: () => speakcrosss17("en-GB"),
            onPressedAmerican: () => speakcrosss17("en-US"),
          ),
          // const DividerSentences(),
          // Row(
          // children: [
          // const Expanded(
          // child: Column(
          // children: [
          // ExampleSentenceEnglish(
          // text:
          // "He behaved like an army officer crossed with a professor."),
          // ExampleSentenceKurdish(
          // text: "بەکارھێنانی خوازراوی وەھا ڕەفتاری دەکرد وەک ئەوەی."),
          // ],
          // ),
          // ),
          // const CustomSizedBoxForTTS(),
          // Column(
          // children: [
          // CustomIconButtonBritish(
          // onPressed: () => speakcrosss18("en-GB"),
          // ),
          // CustomIconButtonAmerican(
          // onPressed: () => speakcrosss18("en-US"),
          // ),
          // ],
          // ),
          // ],
          // ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) لێدان لە تۆپێک و ھەڵدانی بە یاریگایەکدا"),
          SentencesRow(
            englishText: "Sissoko crossed from the left.",
            kurdishText: "سیسۆکە تۆپەکەی لەلای چەپەوە ھەڵدا.",
            onPressedBritish: () => speakcrosss19("en-GB"),
            onPressedAmerican: () => speakcrosss19("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (کردار) کێشانی ھێلێک بە شتێکدا"),
          SentencesRow(
            englishText:
                "She always crosses her t’s and dots her i’s to ensure accuracy.",
            kurdishText:
                "ھەمیشە خەت دێنێت بە t ـیەکانیدا و خاڵ لەسەر i ـیەکانی دادەنێت بۆ دڵنیایی لە درووستی.",
            onPressedBritish: () => speakcrosss20("en-GB"),
            onPressedAmerican: () => speakcrosss20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (ناو) ھێمایەک کە لە دوو ھێڵ پێکدێت کە یەکتری دەبڕن. بۆ نموونە + یان x"),
          SentencesRow(
            englishText:
                "I've put a cross on the map to show where the hotel is.",
            kurdishText:
                "ئێکسێکم لەسەر نەخشەکە داناوە بۆ پیشاندانی ئەوەی ھوتێلەکە لەکوێیە.",
            onPressedBritish: () => speakcrosss21("en-GB"),
            onPressedAmerican: () => speakcrosss21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Put a tick if the answer is correct and a cross if it's wrong.",
            kurdishText:
                "نیشانەیەکی ڕستی لێبدە ئەگەر وەڵامەکە ڕاستە و ئێکسێک ئەگەر ھەڵەیە.",
            onPressedBritish: () => speakcrosss22("en-GB"),
            onPressedAmerican: () => speakcrosss22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (ناو) پارچە تەختەیەک کە بۆ لەخاچدان بەکاردێت"),
          SentencesRow(
            englishText:
                "In ancient times, people were punished by being hung on crosses and left to die.",
            kurdishText:
                "لە سەردەمانی کۆندا، خەڵکی لەسەر سزا دەدران بە جێھێشتنیان لەسەر خاچ و جێھێشتنیان تا بمرن.",
            onPressedBritish: () => speakcrosss23("en-GB"),
            onPressedAmerican: () => speakcrosss23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (ناو) ئەو خاچەی پەیامبەر عیسا لەسەری لەخاچ درا و وەک سمبولێکی ئایینی مەسیحییەت بەکاردێت"),
          SentencesRow(
            englishText: "Christ died on the Cross.",
            kurdishText: "پێغەمبەر عیسا لەسەر خاچ مرد.",
            onPressedBritish: () => speakcrosss25("en-GB"),
            onPressedAmerican: () => speakcrosss25("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (ناو) شتێک، دیزاینێک، خشڵێک، ھتد کە لە شێوەی ئێکسێکدایە و وەک سمبولێکی ئایینی مەسحییەت بەکاردێت"),
          SentencesRow(
            englishText: "She wears a gold cross around her neck.",
            kurdishText: "خاچێکی ئاڵتوونی لە ملی دەبەستێت.",
            onPressedBritish: () => speakcrosss24("en-GB"),
            onPressedAmerican: () => speakcrosss24("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٣. (ناو) نەخشاندنێکی بچووک کە لە شێوەی ئێکسدایە و وەک شانازی بەکاردێت بۆ کردنی شتێکی ئازایانە"),
          SentencesRow(
            englishText: "He was awarded the Victoria Cross for bravery.",
            kurdishText: "شانازیی ڤیکتۆریای پێدرا بۆ ئازایەتی.",
            onPressedBritish: () => speakcrosss26("en-GB"),
            onPressedAmerican: () => speakcrosss26("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٤. (ناو) تێکەڵەیەکی دوو شت، جۆری ئاژەڵ، ھتد ــی جیاواز"),
          SentencesRow(
            englishText: "A mule is a cross between a horse and a donkey.",
            kurdishText: "ھێستر دووڕەگەی ئەسپ و گوێدرێژە.",
            onPressedBritish: () => speakcrosss27("en-GB"),
            onPressedAmerican: () => speakcrosss27("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٥. (ناو) ھەڵدان تۆپ بە یاریگادا"),
          SentencesRow(
            englishText:
                "Webster's low cross was fired into the net by Varney.",
            kurdishText:
                "ھەڵدانە نزمەکەی وێبستەر لەلایەن ڤارنییەوە خرایە تۆڕەکەوە.",
            onPressedBritish: () => speakcrosss28("en-GB"),
            onPressedAmerican: () => speakcrosss28("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٦. (ھاوەڵناو) پێنناسە"),
          SentencesRow(
            englishText: "I was cross with him for being late.",
            kurdishText: "تووڕە بووم لێی کە درەنگ کەوت بوو.",
            onPressedBritish: () => speakcrosss29("en-GB"),
            onPressedAmerican: () => speakcrosss29("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Please don't get cross. Let me explain.",
            kurdishText: "تکایە تووڕە مەبە، با ڕوونکردنەوە بدەم.",
            onPressedBritish: () => speakcrosss30("en-GB"),
            onPressedAmerican: () => speakcrosss30("en-US"),
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
- Verb: cross (derived forms: crossed, crosses, crossing)
1. Travel across or pass over (= traverse, track, cover, pass over, get over, get across, cut through, cut across)
"The caravan crossed almost 100 miles each day";
 
2. Meet at a point (= intersect)
"The roads cross under the bridge";
 
3. Hinder or prevent (the efforts, plans, or desires) of (= thwart, queer [informal], spoil, scotch, foil, frustrate, baffle, bilk [informal], scupper [informal])
"cross your opponent";
 
4. Fold so as to resemble a cross
"she crossed her legs"
 
5. To cover or extend over an area or time period (= traverse, span, sweep)
"Rivers cross the valley floor";
 
6. Meet and pass
"the trains crossed"
 
7. Trace a line through or across
"cross your 't'"
 
8. Breed animals or plants using parents of different races and varieties (= crossbreed, hybridize, hybridise [Brit], interbreed)
"cross a horse and a donkey";

- Adjective: cross (derived forms: crosser, crossest)
1. Annoyed and irritable (= crabbed, crabby, fussy, grouchy [informal], grumpy, bad-tempered, ill-tempered, arsey [Brit, informal])
 
2. Feeling or showing anger (= angry)
 
3. Extending or lying across; in a crosswise direction; at right angles to the long axis (= transverse, transversal, thwartwise [archaic], thwartways [archaic])
"cross members should be all steel";

- Noun: cross (derived forms: crosses)
1. A wooden structure consisting of an upright post with a transverse piece
 
2. A marking that consists of lines that cross each other (= crisscross, mark)
 
3. Any affliction that causes great suffering (= crown of thorns)
"that is his cross to bear";
 
4. (genetics) an organism that is the offspring of genetically dissimilar parents or stock; especially offspring produced by breeding plants or animals of different varieties or breeds or species (= hybrid, crossbreed)
"a mule is a cross between a horse and a donkey";
 
5. (genetics) the act of mixing different species or varieties of animals or plants and thus to produce hybrids (= hybridization, hybridisation [Brit], crossbreeding, crossing, interbreeding, hybridizing, hybridising [Brit])
 
6. (soccer) a kick in which the ball passes from one side of the pitch towards the centre

- Noun: Cross 
1. A representation of the structure on which Jesus was crucified; used as an emblem of Christianity or in heraldry
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
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'eyMKA4d35dg';
  final double _startSeconds = 431;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
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

  final String _videoId = 'ozsgl_sLnHQ';
  final double _startSeconds = 555;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
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

  final String _videoId = '6DK0yrF_ffU';
  final double _startSeconds = 112;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
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

  final String _videoId = '_mu1kQqkl1E';
  final double _startSeconds = 29;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
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

  final String _videoId = 'Stl6OZo7wzg';
  final double _startSeconds = 129;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
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

  final String _videoId = 'nYzTbmDpLNg';
  final double _startSeconds = 39;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
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

  final String _videoId = 'pFEB0chiuJA';
  final double _startSeconds = 491;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
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