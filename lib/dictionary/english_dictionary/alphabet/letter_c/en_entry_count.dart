import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycount extends StatefulWidget {
  const EnglishEntrycount({super.key});

  @override
  State<EnglishEntrycount> createState() => _EnglishEntrycountState();
}

class _EnglishEntrycountState extends State<EnglishEntrycount> {
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

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: count");
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
    return const IPAofEnglish(text: "IpaUK: /kaʊnt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcount(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("count");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcount("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kaʊnt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcount(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("count");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcount("en-US"),
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
    await flutterTts.speak("She can count up to 10 in Italian.");
  }

  Future<void> speakcounts2(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He can now count from one to twenty.");
  }

  Future<void> speakcounts3(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We counted up to fifty, then set off to look for our friends.");
  }

  Future<void> speakcounts4(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They're still counting votes in Texas.");
  }

  Future<void> speakcounts5(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I can't count the number of times I've eaten there.");
  }

  Future<void> speakcounts6(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She began to count up how many guests they had to invite.");
  }

  Future<void> speakcounts7(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We have invited 50 people, not counting the children.");
  }

  Future<void> speakcounts8(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The tour guide was sure one person was missing from the group until she realized she had forgotten to count herself.");
  }

  Future<void> speakcounts9(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It is going to be a close election, so every vote counts.");
  }

  Future<void> speakcounts10(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Every point in this game counts.");
  }

  Future<void> speakcounts11(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The fact that she had apologized counted for nothing with him.");
  }

  Future<void> speakcounts12(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Don't go over that line or your throw won't count.");
  }

  Future<void> speakcounts13(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Applications received after 1 July will not be counted.");
  }

  Future<void> speakcounts14(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I count him among my closest friends.");
  }

  Future<void> speakcounts15(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I count myself lucky to have known him.");
  }

  Future<void> speakcounts16(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I count it a privilege to have served alongside her.");
  }

  Future<void> speakcounts17(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "If the election result is close, there will be a second count.");
  }

  Future<void> speakcounts18(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The bus driver did a quick count of the empty seats.");
  }

  Future<void> speakcounts19(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "By my count there are eight tracks here that aren't on the band's three albums.");
  }

  Future<void> speakcounts20(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Raise your leg and hold for a count of ten.");
  }

  Future<void> speakcounts21(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("On the count of three, take one step forward.");
  }

  Future<void> speakcounts22(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her white cell count has gone down again.");
  }

  Future<void> speakcounts23(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They were found guilty on all counts.");
  }

  Future<void> speakcounts24(String languageCode) async {
    // DOPSUM: CHANGE speakcount
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I disagree with you on both counts.");
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
کوردی: ژماردن، ھێژمارتن، حساب‌کردن، ژمارە، ڕەنووس، حساب، حسێب،	کێشە، دۆز،	بابەت، بڕگە، بابەتی تاوانباری،	لایەن، ئالی، لا، بوار
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
                            "تاوەکو چلمان ژمارد و دواتر چووین بۆ گەڕان بۆ ھاوڕێکانمان."),
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
                  "٢. (کردار) دۆزینەوەی ژمارەی تەواوی خەڵکی، شت، ھتد لە گرووپێکدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They're still counting votes in Texas."),
                    ExampleSentenceKurdish(
                        text: "ھێشتا دەنگەکان دەژمێرن لە تێکساس."),
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
                            "٥٠ کەسمان بانگھێشت کردووە، بەبێ حسابکردنی منداڵەکان."),
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
                            "ھەڵبژاردنێکی داخراو دەبێت، بۆیە ھەموو دەنگێک حسابە."),
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
                        text: "ھەموو خاڵێک لەم یارییەدا گرنگە."),
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
                            "ئەوەی کە داوای لێبووردنی کرد ھیچ لای گرنگ نەبوو."),
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
                            "بەسەر ئەو ھێڵەدا مەچۆ ئەگەرنا ھەڵدانەکەت حساب نابێت."),
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
                        text: "وەک باشترین ھاوڕێکانم سەیری ئەکەم."),
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
                            "ئەگەر ئەنجامی ھەڵبژاردنەکە نزیک بێت، ژماردنەوەیەکی دیکە دەبێت."),
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
                            "بە ژماردن من، ھەشت گۆرانی لێرەن کە لە سێ ئەلبوومی باندەکە نین."),
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
                        text: "بە ژماردن تاوەکو سێ، ھەنگاوێک بۆ پێشەوە بنێ."),
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
                        text: "بە تاوانباری ھەموو تاوانەکان دانران."),
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
                        text: "لە ھەردوو خاڵەکەدا لەگەڵت ناکۆکم."),
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

  final String _videoId = 'fZ9WiuJPnNA';
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

  final String _videoId = 'hTqtGJwsJVE';
  final double _startSeconds = 2750;

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

  final String _videoId = 'bRVueBoZjEA';
  final double _startSeconds = 124;

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

  final String _videoId = 'BNPPMs9CvDQ';
  final double _startSeconds = 126;

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

  final String _videoId = 'b7ITL2VDH5Q';
  final double _startSeconds = 150;

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

  final String _videoId = 'QY7BWZ_aSc4';
  final double _startSeconds = 26;

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

  final String _videoId = 'ltU3ms9rt5w';
  final double _startSeconds = 56;

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