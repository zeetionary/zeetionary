import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycredit extends StatefulWidget {
  const EnglishEntrycredit({super.key});

  @override
  State<EnglishEntrycredit> createState() => _EnglishEntrycreditState();
}

class _EnglishEntrycreditState extends State<EnglishEntrycredit> {
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
    return const EntryTitle(word: "credit");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: credit");
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
    return const IPAofEnglish(text: "IpaUK: /ˈkredɪt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcredit(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("credit");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcredit("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈkredɪt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcredit(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("credit");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcredit("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcredits1(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We bought the dishwasher on credit.");
  }

  Future<void> speakcredits2(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Someone with a bad credit history is less likely to be lent money.");
  }

  Future<void> speakcredits3(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The credit crisis is far from over.");
  }

  Future<void> speakcredits4(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We offer two months' interest-free credit.");
  }

  Future<void> speakcredits5(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bank refused further credit to the company.");
  }

  Future<void> speakcredits6(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her credit isn't good anywhere now.");
  }

  Future<void> speakcredits7(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You have a credit balance of £250.");
  }

  Future<void> speakcredits8(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My account is in credit.");
  }

  Future<void> speakcredits9(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You'll be paid by direct credit into your bank account.");
  }

  Future<void> speakcredits10(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My phone's run out of credit.");
  }

  Future<void> speakcredits11(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The child tax credit is subject to strict income limitations.");
  }

  Future<void> speakcredits12(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He's a player who rarely seems to get the credit he deserves.");
  }

  Future<void> speakcredits13(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We did all the work and she gets all the credit!");
  }

  Future<void> speakcredits14(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I can't take all the credit for the show's success—it was a team effort.");
  }

  Future<void> speakcredits15(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Credit will be given in the exam for good spelling and grammar.");
  }

  Future<void> speakcredits16(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Why should he get all the credit?");
  }

  Future<void> speakcredits17(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She is a credit to the school.");
  }

  Future<void> speakcredits18(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Your children are a great credit to you.");
  }

  Future<void> speakcredits19(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was given a programme credit for her work on the costumes for the play.");
  }

  Future<void> speakcredits20(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We left before the final credits began to roll.");
  }

  Future<void> speakcredits21(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They credited my account two days later.");
  }

  Future<void> speakcredits22(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Your account has been credited with £50 000.");
  }

  Future<void> speakcredits23(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("All the contributors are credited on the title page.");
  }

  Future<void> speakcredits24(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She has been wrongly credited as the author.");
  }

  Future<void> speakcredits25(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The company is credited with inventing the industrial robot.");
  }

  Future<void> speakcredits26(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This therapy has long been credited with many benefits.");
  }

  Future<void> speakcredits27(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Credit me with some intelligence.");
  }

  Future<void> speakcredits28(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The cheetah is generally credited as the world's fastest animal.");
  }

  Future<void> speakcredits29(String languageCode) async {
    // DOPSUM: CHANGE speakcredit
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's been promoted—would you credit it?");
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
کوردی: باوەڕ، بایەخ،	مۆڵەت، ماوە، دەرفەت، وادە،	سەرجەم ئەو پارەی کەوا لە حسابی بانکی کەسێ دایە،	قەرز،	خاوەن‌قەرز، قەرزدەر، ستوونی خاوەن‌قەرز، لای ڕاست،	لێ‌ڕابینین، ڕاپەڕموون،	شانازی،	ئابڕوو، ناوبانگ، بڕەوی، متمانەیی،	پیاھەڵوتن، پەسن‌دان، ستایشت،	پەسندکردن،	مایەی شانازی، جێگای سەربەرزی،	یەکەی خوێندن (لە کۆلێژ یان زانکۆ)
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) ڕێککەوتن لەگەڵ فرۆشگایەک بۆ دواتر پێدانی پارەی ئەو شتانەی کە کڕیوتن"),
          SentencesRow(
            englishText: "We bought the dishwasher on credit.",
            kurdishText:
                "دەزگای قاپ‌شتنەکەمان بە قەرز کڕی.", // credit", please follow LX instructions
            onPressedBritish: () => speakcredits1("en-GB"),
            onPressedAmerican: () => speakcredits1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Someone with a bad credit history is less likely to be lent money.",
            kurdishText: "کەسێکی قەرز کوێر ئەگەری کەمە پارەی بە قەرز پێبدرێت.",
            onPressedBritish: () => speakcredits2("en-GB"),
            onPressedAmerican: () => speakcredits2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The credit crisis is far from over.",
            kurdishText: "کێشەی قەرزەکە کۆتایی نەھاتووە.",
            onPressedBritish: () => speakcredits3("en-GB"),
            onPressedAmerican: () => speakcredits3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We offer two months' interest-free credit.",
            kurdishText: "بۆ دوو مانگ بەبێ سوو قەرگرتن قەرز دەدەین.",
            onPressedBritish: () => speakcredits4("en-GB"),
            onPressedAmerican: () => speakcredits4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) ئەو پارەیەی کە لە بانکێک قەرزی دەکەیت"),
          SentencesRow(
            englishText: "The bank refused further credit to the company.",
            kurdishText: "بانکەکە ڕەتیکردەوە قەزری زیاتر بە کۆمپانیاکە بدات.",
            onPressedBritish: () => speakcredits5("en-GB"),
            onPressedAmerican: () => speakcredits5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) ھەبوونی متمانەی ئەوەی کە قەرز دەگەڕێیتەوە"),
          SentencesRow(
            englishText: "Her credit isn't good anywhere now.",
            kurdishText: "لە ئێستادا متمانەی ھیچ باش نییە.",
            onPressedBritish: () => speakcredits6("en-GB"),
            onPressedAmerican: () => speakcredits6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) ئەو پارەیەی کە لە ھەژماری بانکی"),
          SentencesRow(
            englishText: "You have a credit balance of £250.",
            kurdishText: "باڵانسی ھەژماری بانکی ٢٥٠ پاوەندت ھەیە.",
            onPressedBritish: () => speakcredits7("en-GB"),
            onPressedAmerican: () => speakcredits7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(englishText: "My account is in credit.",
          kurdishText: "ھەژمارەکەم پارەی تێدایە.",
            onPressedBritish: () => speakcredits8("en-GB"),
            onPressedAmerican: () => speakcredits8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) بڕە پارەیەک کە دەخرێتە ھەژمارێکی بانکییەوە"),
          SentencesRow(
            englishText:
                "You'll be paid by direct credit into your bank account.",
            kurdishText:
                "پارەت پێ دەدرێت بە زیادکردنی ڕاستەوخۆ بۆ سەر ھەژمارە بانکییەکەت.",
            onPressedBritish: () => speakcredits9("en-GB"),
            onPressedAmerican: () => speakcredits9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (ناو) مافی بەکارھێنانی شتێک کە پێشتر پارەت بۆ داوە"),
          SentencesRow(
            englishText: "My phone's run out of credit.",
            kurdishText: "موبایلەکەم باڵانسی تێدا نەماوە.",
            onPressedBritish: () => speakcredits10("en-GB"),
            onPressedAmerican: () => speakcredits10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (ناو) بڕە پارەیەک کە کەسێک مافی بە سەرەوە ھەیە بە ھۆکارێکی دیاریکراو؛ بڕە پارەیەک کە نایدەیت"),
          SentencesRow(
            englishText:
                "The child tax credit is subject to strict income limitations.",
            kurdishText:
                "پارەی باجی منداڵ پەیوەستە بە سنوورداری توندی داھاتەوە.",
            onPressedBritish: () => speakcredits11("en-GB"),
            onPressedAmerican: () => speakcredits11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ناو) ستایش"),
          SentencesRow(
            englishText:
                "He's a player who rarely seems to get the credit he deserves.",
            kurdishText:
                "یاریزانێکە کە بەدەگمەن دەردەکەوێت ئەو ستایشە وەربگرێت کە شایەنیەتی.",
            onPressedBritish: () => speakcredits12("en-GB"),
            onPressedAmerican: () => speakcredits12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We did all the work and she gets all the credit!",
            kurdishText:
                "ئێمە ھەموو کارەکەمان کرد و ئەو ھەموو ستایشەکە وەردەگرێت.",
            onPressedBritish: () => speakcredits13("en-GB"),
            onPressedAmerican: () => speakcredits13("en-US"),
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
                                    "I can't take all the credit for the show's success—it was a team effort."),
                            ExampleSentenceKurdish(
                                text:
                                    "ناتوانم ستایش بۆ ھەموو سەرکەوتنی پڕۆگرامەکە وەربگرم، ھەوڵی تیمێک بوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcredits14("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcredits14("en-US"),
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
                                    "Credit will be given in the exam for good spelling and grammar."),
                            ExampleSentenceKurdish(
                                text:
                                    "لە تاقیکردنەوەکەدا بایەخ دەدرێت بە ڕێنووس و ڕێزمانی درووست."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcredits15("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcredits15("en-US"),
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
                                text: "Why should he get all the credit?"),
                            ExampleSentenceKurdish(
                                text:
                                    "بۆچی دەبێت ئەو ھەموو ستایشەکە وەربگرێت؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcredits16("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcredits16("en-US"),
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
                  "٩. (ناو) کەسێک یان شتێک کە خاسیەت و سەرکەوتنەکانی جێگای ستایشە و ڕێز دێنێت بۆ کەسێک یان شتێکی دیکە"),
          SentencesRow(englishText: "She is a credit to the school.",
          kurdishText: "جێگای شانازی قوتابخانەکەیە.",
            onPressedBritish: () => speakcredits17("en-GB"),
            onPressedAmerican: () => speakcredits17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(englishText: "Your children are a great credit to you.",
          kurdishText: "منداڵەکانت جێگای شانازیتن.",
            onPressedBritish: () => speakcredits18("en-GB"),
            onPressedAmerican: () => speakcredits18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (ناو) ناوھێنانی کەسێک کە کاری کردووە لە پڕۆژەیەکدا، بۆ نموونە فیلمێک یان پڕۆگرامێکی تەلەفیزیۆنی"),
          SentencesRow(
            englishText:
                "She was given a programme credit for her work on the costumes for the play.",
            kurdishText:
                "ڕێزی لە پڕۆگرامەکە لێنرا بۆ کارەکانی لەسەر جلوبەرگی شانۆکەدا.",
            onPressedBritish: () => speakcredits19("en-GB"),
            onPressedAmerican: () => speakcredits19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We left before the final credits began to roll.",
            kurdishText:
                "پێش ئەوەی ڕێزلێنانی کۆتایی دەست بە دەرکەوتن بکات ڕۆشتین.",
            onPressedBritish: () => speakcredits20("en-GB"),
            onPressedAmerican: () => speakcredits20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (کردار) زیادکردنی بڕە پارەیەک بۆ ھەژماری بانکی کەسێک"),
          SentencesRow(
            englishText: "They credited my account two days later.",
            kurdishText: "دوای دوو ڕۆژ ھەژمارەکەمیان پڕکردەوە.",
            onPressedBritish: () => speakcredits21("en-GB"),
            onPressedAmerican: () => speakcredits21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Your account has been credited with £50 000.",
            englishNote: "Or: £50 000 has been credited to your account.",
kurdishText: "ھەژمارەکەت ٥٠٠٠٠ پاوەندی تێخراوە.",
            onPressedBritish: () => speakcredits22("en-GB"),
            onPressedAmerican: () => speakcredits22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (کردار) باوەڕکردن یان گوتنی ئەوەی کە کەسێک بەرپرسە بۆ کردنی شتێک"),
          SentencesRow(
            englishText: "All the contributors are credited on the title page.",
            kurdishText: "تەواوی بەژداران لە پەڕەی سەردێڕ ئاماژەیان پێکراوە.",
            onPressedBritish: () => speakcredits23("en-GB"),
            onPressedAmerican: () => speakcredits23("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She has been wrongly credited as the author.",
            kurdishText: "بە ھەڵە وەک نووسەر ناوی ھێنراوە.",
            onPressedBritish: () => speakcredits24("en-GB"),
            onPressedAmerican: () => speakcredits24("en-US"),
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
                                    "The company is credited with inventing the industrial robot."),
                            ExampleSentenceKurdish(
                                text:
                                    "کۆمپانیاکە پەسن دەدرێت بە داھێنانی ڕۆبۆتی پیشەسازی."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcredits25("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcredits25("en-US"),
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
                                    "This therapy has long been credited with many benefits."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئەم چارەسەرە ماوەیەکی زۆرە بە زۆر سوودەوە بەستراوەتەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcredits26("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcredits26("en-US"),
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
                  "١٣. (کردار) باوەڕکردن بەوەی کەسێک یان شتێک خاسیەتێک یان تایبەتمەندییەکی ھەیە"),
          SentencesRow(englishText: "Credit me with some intelligence.",
          kurdishText: "کەمێک ژیریم لێ ڕاببینە.",
            onPressedBritish: () => speakcredits27("en-GB"),
            onPressedAmerican: () => speakcredits27("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٤. (کردار) باوەڕبوون بەوەی کەسێک یان شتێک لە جۆرێکی دیاریکراوە یان خاسیەتێکی دیاریکراوی ھەیە"),
          SentencesRow(
            englishText:
                "The cheetah is generally credited as the world's fastest animal.",
            kurdishText:
                "چیتا بەشێوەیەکی گشتی بە خێراترین ئاژەڵی جیھان دادەنرێت.",
            onPressedBritish: () => speakcredits28("en-GB"),
            onPressedAmerican: () => speakcredits28("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٥. (کردار) باوەڕکردن بە شتێک"),
          SentencesRow(
            englishText: "He's been promoted—would you credit it?",
            kurdishText: "پلەی بەرزکراوەتەوە، باوەڕ دەکەیت؟",
            onPressedBritish: () => speakcredits29("en-GB"),
            onPressedAmerican: () => speakcredits29("en-US"),
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
- Noun: credit 
1. Acknowledgement, praise or respect for something, e.g. having a quality, producing something, doing something, etc. (= recognition)
"he was given credit for his work"; "give her credit for trying";
 
2. Money available for a client to borrow
 
3. An accounting entry acknowledging income or capital items (= credit entry)
 
4. Used in the phrase 'to your credit' in order to indicate an achievement deserving praise
"she already had several performances to her credit"
 
5. Arrangement for deferred payment for goods and services (= deferred payment, tick [Brit, informal])
 
6. Recognition by a college or university that a course of studies has been successfully completed; typically measured in semester hours (= course credit)
 
7. A short note recognizing a source of information or of a quoted passage (= citation, cite, acknowledgment, reference, mention, quotation)
"the student's essay failed to list several important credits";
 
8. An entry on a list of persons who contributed to a film or written work
"the credits were given at the end of the film"
 
9. An estimate, based on previous dealings, of a person's or an organization's ability to fulfil their financial commitments (= credit rating)

- Verb: credit (derived forms: credited, credits, crediting)
1. Give someone credit for something
"We credited her for saving our jobs"
 
2. Ascribe an achievement to (= accredit)
"She was not properly credited in the program";
 
3. Enter as credit
"We credit your account with £100"
 
4. Have trust in; trust in the truth or veracity of
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

  final String _videoId = 'eyMKA4d35dg';
  final double _startSeconds = 303;

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

  final String _videoId = 'QCdqHswGS5A';
  final double _startSeconds = 33;

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

  final String _videoId = 's1SaD-gSZO4';
  final double _startSeconds = 282;

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

  final String _videoId = 'AFS6saV981Q';
  final double _startSeconds = 862;

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

  final String _videoId = 'Xtwar56r4Lg';
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

  final String _videoId = 'II-OP6vdMs8';
  final double _startSeconds = 82;

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

  final String _videoId = 'TOzQrOPrjwk';
  final double _startSeconds = 57;

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