import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycourse extends StatefulWidget {
  const EnglishEntrycourse({super.key});

  @override
  State<EnglishEntrycourse> createState() => _EnglishEntrycourseState();
}

class _EnglishEntrycourseState extends State<EnglishEntrycourse> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                bottom: CustomTabBarNew(
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
    return const EntryTitle(word: "course");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: course");
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
    return const IPAofEnglish(text: "IpaUK: /kɔːs/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcourse(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("course");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcourse("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kɔːrs/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcourse(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("course");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcourse("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcourses1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He took a course in Russian language and literature.");
  }

  Future<void> speakcourses2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I want to do a course in art and design.");
  }

  Future<void> speakcourses3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She teaches a course on internet crime.");
  }

  Future<void> speakcourses4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I enrolled in a ten-week online course.");
  }

  Future<void> speakcourses5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The college runs specialist language courses.");
  }

  Future<void> speakcourses6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What degree course did you choose?");
  }

  Future<void> speakcourses7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The university offers a course in computer games technology.");
  }

  Future<void> speakcourses8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The course leads to a master's degree.");
  }

  Future<void> speakcourses9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He spends every weekend out on the golf course.");
  }

  Future<void> speakcourses10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Only ten yachts completed the course.");
  }

  Future<void> speakcourses11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We had chicken for our main course.");
  }

  Future<void> speakcourses12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He radioed the pilot to change course.");
  }

  Future<void> speakcourses13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We're on course for our destination.");
  }

  Future<void> speakcourses14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The president appears likely to change course on some key issues.");
  }

  Future<void> speakcourses15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The dollar fell sharply for two days, and then reversed course.");
  }

  Future<void> speakcourses16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Her career followed a similar course to her sister's.");
  }

  Future<void> speakcourses17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It is time to chart a new course in defence policy.");
  }

  Future<void> speakcourses18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The president was urged to change course before it was too late.");
  }

  Future<void> speakcourses19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "They were obliged to steer a course between the interests of the two groups.");
  }

  Future<void> speakcourses20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There are various courses open to us.");
  }

  Future<void> speakcourses21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What course of action would you recommend?");
  }

  Future<void> speakcourses22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The wisest course would be to say nothing.");
  }

  Future<void> speakcourses23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("This was an event that changed the course of history.");
  }

  Future<void> speakcourses24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("War has determined the course of much of human history.");
  }

  Future<void> speakcourses25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The path follows the course of the river.");
  }

  Future<void> speakcourses26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("When taking antibiotics it is important to finish the course.");
  }

  Future<void> speakcourses27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He stopped talking and tears coursed down his cheeks.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: ڕێڕەو، ڕێگا، ڕێ، ڕەوڕەوە، ڕێک، ڕەوت، ڕەوەند،	ماوەی، مەودای،	شێوە، شێواز، تەرز،	خولی وانە، وانە، پۆل، بواری خوێندن،	ئاوەڕۆ،	بەش، پشک (خۆراک)،	یاریگا، گۆڕەپان،	تێپەڕینی کات،	ڕیز، ڕەگ، چین،	چارەسەری، زنجیرە چارەسەرییەکی پزشکی، بادەوە یان چارۆکەی خوارەوە (ی کەشتی)،	(زوو لە چیرۆکی پاڵەوانان‌دا) خان، قۆناخ، ڕووداو، بێ‌نوێژی
"""),
          const DefinitionKurdish(
              text: "١. (ناو) کۆمەڵە وانەیەک لەسەر بابەتێک"),
          SentencesRow(
            englishText: "He took a course in Russian language and literature.",
            kurdishText: "بەژداری کۆرسێکی لەسەر زمان و ئەدەبی ڕووسی کرد.",
            onPressedBritish: () => speakcourses1("en-GB"),
            onPressedAmerican: () => speakcourses1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I want to do a course in art and design.",
            kurdishText: "دەمەوێت کۆرسێکی ھونەر و دیزاین ئەنجام بدەم.",
            onPressedBritish: () => speakcourses2("en-GB"),
            onPressedAmerican: () => speakcourses2("en-US"),
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
                                    "She teaches a course on internet crime."),
                            ExampleSentenceKurdish(
                                text:
                                    "کۆرسێک لەسەر تاوانکاری ئینتەرنێت دەڵێتەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourses3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourses3("en-US"),
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
                                    "I enrolled in a ten-week online course."),
                            ExampleSentenceKurdish(
                                text:
                                    "بەژداری کۆرسێکی دە ھەفتەیی ئۆنلاینم کرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourses4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourses4("en-US"),
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
                                    "The college runs specialist language courses."),
                            ExampleSentenceKurdish(
                                text:
                                    "کۆلێژەکە کۆرسی شارەزاییانەی زمانی ھەیە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourses5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourses5("en-US"),
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
              text:
                  "٢. (ناو) ماوەیەکی خوێندن لە کۆلێژ یان زانکۆ کە بە تاقیکردنەوە یان وەرگرتنی بڕوانامە کۆتایی دێت"),
          SentencesRow(
            englishText: "What degree course did you choose?",
            kurdishText: "چی کۆرسێکی بڕوانامەت ھەڵبژارد؟",
            onPressedBritish: () => speakcourses6("en-GB"),
            onPressedAmerican: () => speakcourses6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The university offers a course in computer games technology.",
            kurdishText:
                "زانکۆکە کۆرسێک لەسەر تەکنەلۆژیای یاریی کۆمپیوتەر پێشکەش دەکات.",
            onPressedBritish: () => speakcourses7("en-GB"),
            onPressedAmerican: () => speakcourses7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The course leads to a master's degree.",
            kurdishText: "کۆرسەکە دەگات بە بڕوانامەی ماستەر.",
            onPressedBritish: () => speakcourses8("en-GB"),
            onPressedAmerican: () => speakcourses8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) ناوچەیەکی گەورە کە بۆ یاری گۆڵف ئامادە کراوە"),
          const AlsoEnglishckb(word: "ھەروەھا: golf course"),
          SentencesRow(
            englishText: "He spends every weekend out on the golf course.",
            kurdishText:
                "ھەموو کۆتاییەکی ھەفتە لە گۆڕەپانی گۆڵفەکە بەسەر دەبات.",
            onPressedBritish: () => speakcourses9("en-GB"),
            onPressedAmerican: () => speakcourses9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) زەوییەک یان ناوچەیەکی ئاوی کە تێیدا پێشبڕکێیەک ساز دەکرێت"),
          SentencesRow(
            englishText: "Only ten yachts completed the course.",
            kurdishText: "تەنھا دە یەخت مەوداکەیان تەواوکرد.",
            onPressedBritish: () => speakcourses10("en-GB"),
            onPressedAmerican: () => speakcourses10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) یەکێک لە بەشە جیاوازەکانی ژەمە خواردنێک"),
          SentencesRow(
            englishText: "We had chicken for our main course.",
            kurdishText: "بۆ بەشی سەرەکیمان مریشکمان ھەبوو.",
            onPressedBritish: () => speakcourses11("en-GB"),
            onPressedAmerican: () => speakcourses11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (ناو) ڕێڕەوی فڕۆکەیەک یان کەشتییەک"),
          SentencesRow(
            englishText: "He radioed the pilot to change course.",
            kurdishText: "ئاماژەی بۆ فڕۆکەوانەکە نارد ڕێڕەوەکەی بگۆڕێت.",
            onPressedBritish: () => speakcourses12("en-GB"),
            onPressedAmerican: () => speakcourses12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We're on course for our destination.",
            kurdishText: "لەسەر ڕێڕەوی گەشتن بە ئامانجەکەمانین.",
            onPressedBritish: () => speakcourses13("en-GB"),
            onPressedAmerican: () => speakcourses13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (ناو) ئاراستەیەک کە بیرۆکە و کرداری کەسێک بۆی دەچێت، یان ئاقاری گەشەکردنی ڕووداوەکان"),
          SentencesRow(
            englishText:
                "The president appears likely to change course on some key issues.",
            kurdishText:
                "سەرۆک وادەردەکەوێت ئەگەری ھەبێت ڕەوتی بگۆڕێت لەسەر ھەندێک بابەتی گرنگ.",
            onPressedBritish: () => speakcourses14("en-GB"),
            onPressedAmerican: () => speakcourses14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The dollar fell sharply for two days, and then reversed course.",
            kurdishText:
                "دۆلار بۆ دوو ڕۆژ بە زۆری داتەپی، و دواتر ڕێڕەوی گۆڕی.",
            onPressedBritish: () => speakcourses15("en-GB"),
            onPressedAmerican: () => speakcourses15("en-US"),
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
                                    "Her career followed a similar course to her sister's."),
                            ExampleSentenceKurdish(
                                text:
                                    "کارەکەی بە ڕێڕەوێکی ھاوشێوەی خوشکەکەیدا چوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourses16("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourses16("en-US"),
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
                                    "It is time to chart a new course in defence policy."),
                            ExampleSentenceKurdish(
                                text:
                                    "کاتی ئەوە ھاتووە ڕێڕەوێکی تازە لە سیاسەتی بەرگریدا دابڕێژین."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourses17("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourses17("en-US"),
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
                                    "The president was urged to change course before it was too late."),
                            ExampleSentenceKurdish(
                                text:
                                    "سەرۆک ھاندرا ڕێڕەوەکەی بگۆڕێت پێش ئەوەی زۆر درەنگ بێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourses18("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourses18("en-US"),
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
                                    "They were obliged to steer a course between the interests of the two groups."),
                            ExampleSentenceKurdish(
                                text:
                                    "ناچاربوون ڕێڕەوێک لە نێوان بەرژەوەندی ھەردوو گرووپەکەدا بگرنە بەر."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourses19("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourses19("en-US"),
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
              text: "٨. (ناو) شێوازی مامەڵەکردن لەگەڵ دۆخێکی دیاریکراودا"),
          SentencesRow(
            englishText: "There are various courses open to us.",
            kurdishText: "ژمارەیەک ڕێگای لە پێشمان کراوەن.",
            onPressedBritish: () => speakcourses20("en-GB"),
            onPressedAmerican: () => speakcourses20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "What course of action would you recommend?",
            kurdishText: "چی ڕێگاچارەیەک پێشنیار دەکەیت؟",
            onPressedBritish: () => speakcourses21("en-GB"),
            onPressedAmerican: () => speakcourses21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The wisest course would be to say nothing.",
            kurdishText: "باشترین ڕێگا ئەوەیە ھیچ نەڵێیت.",
            onPressedBritish: () => speakcourses22("en-GB"),
            onPressedAmerican: () => speakcourses22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (ناو) ڕێگای بەرەوپێشچوونی شتێک"),
          SentencesRow(
            englishText:
                "This was an event that changed the course of history.",
            kurdishText: "ئەمە ڕووداوێک بوو کە ئاقاری مێژووی گۆڕی.",
            onPressedBritish: () => speakcourses23("en-GB"),
            onPressedAmerican: () => speakcourses23("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "War has determined the course of much of human history.",
            kurdishText: "جەنگ زۆرینەی ڕەوتی مێژووی دیاریکردووە.",
            onPressedBritish: () => speakcourses24("en-GB"),
            onPressedAmerican: () => speakcourses24("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٠. (ناو) ڕێڕەوی ڕووبارێک"),
          SentencesRow(
            englishText: "The path follows the course of the river.",
            kurdishText: "ڕێگاکە بە شوێن ڕێڕەوی ڕووبارەکەدا دەچێت.",
            onPressedBritish: () => speakcourses25("en-GB"),
            onPressedAmerican: () => speakcourses25("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١١. (ناو) زنجیرە چارەسەرێک"),
          SentencesRow(
            englishText:
                "When taking antibiotics it is important to finish the course.",
            kurdishText:
                "کە دژەبەکتریا وەردەگریت باشتر وایە زنجیرە چارەسەرییەکە تەواو بکەیت.",
            onPressedBritish: () => speakcourses26("en-GB"),
            onPressedAmerican: () => speakcourses26("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٢. (کردار) جوڵان بە خێرایی"),
          SentencesRow(
            englishText:
                "He stopped talking and tears coursed down his cheeks.",
            kurdishText: "لە قسەکردن وەستا و فرمێسک بە گۆنایدا ڕژا بە چاویدا.",
            onPressedBritish: () => speakcourses27("en-GB"),
            onPressedAmerican: () => speakcourses27("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: course (derived forms: courses)
1. Education imparted in a series of lessons or meetings (= course of study, course of instruction, class)
"he took a course in basket weaving";
 
2. A connected series of events, actions or developments (= line)
"the government took a firm course";
 
3. General line of orientation (= trend)
"the river takes a southern course";
 
4. A mode of action (= course of action)
"if you persist in that course you will surely fail"; "once a nation is embarked on a course of action it becomes extremely difficult for any retraction to take place";
 
5. A line or route along which something travels or moves (= path, track)
"the course of the river";
 
6. A body of students who are taught together (= class, form, grade [N. Amer])
"early morning courses are always sleepy";
 
7. Part of a meal served at one time
"she prepared a three course meal"
 
8. (construction) a layer of masonry (= row)
"a course of bricks";
 
9. Facility consisting of a circumscribed area of land or water laid out for a sport
"the course had only nine holes"; "the course was less than a mile"

- Verb: course (derived forms: coursing, coursed, courses)
1. Move swiftly through or over
"ships coursing the Atlantic"
 
2. Move along, of liquids (= run, flow, feed)
"Water coursed into the cave";
 
3. (game) hunt with hounds
"He often courses hares"

- Adverb: course 
1. As might be expected (= naturally, of course, natch [slang])
"of course, the lawyer sent us a huge bill"; "course, the lawyer sent us a huge bill";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 6;

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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 32;

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

  final String _videoId = 'DOMPU26i7Xw';
  final double _startSeconds = 132;

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

  final String _videoId = 'DPZzrlFCD_I';
  final double _startSeconds = 63;

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

  final String _videoId = 'tXjHb5QmDV0';
  final double _startSeconds = 93;

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

  final String _videoId = 'sSdMX8AWurI';
  final double _startSeconds = 104;

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

  final String _videoId = 'lYu1ysDULwA';
  final double _startSeconds = 437;

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