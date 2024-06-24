import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydead extends StatefulWidget {
  const EnglishEntrydead({super.key});

  @override
  State<EnglishEntrydead> createState() => _EnglishEntrydeadState();
}

class _EnglishEntrydeadState extends State<EnglishEntrydead> {
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
    return const EntryTitle(word: "dead");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dead");
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
    return const IPAofEnglish(text: "IpaUK: /ded/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdead(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dead");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdead("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ded/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdead(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dead");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdead("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeads1(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My mother's dead; she died in 2017.");
  }

  Future<void> speakdeads2(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was shot dead by a gunman outside his home.");
  }

  Future<void> speakdeads3(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was pronounced dead at the scene of the accident.");
  }

  Future<void> speakdeads4(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The poor child looks more dead than alive.");
  }

  Future<void> speakdeads5(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He dropped dead last week.");
  }

  Future<void> speakdeads6(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("By the time the police arrived, he was already dead.");
  }

  Future<void> speakdeads7(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His wife lay dead beside him.");
  }

  Future<void> speakdeads8(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She had been struck dead by lightning.");
  }

  Future<void> speakdeads9(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We didn't know whether the fish was dead or alive.");
  }

  Future<void> speakdeads10(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Suddenly the phone went dead.");
  }

  Future<void> speakdeads11(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("John's mobile was completely dead.");
  }

  Future<void> speakdeads12(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Many believe the peace plan is dead.");
  }

  Future<void> speakdeads13(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Unfortunately racism is not yet dead.");
  }

  Future<void> speakdeads14(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Is the Western a dead art form?");
  }

  Future<void> speakdeads15(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There were two dead bottles of wine on the table.");
  }

  Future<void> speakdeads16(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There were no theatres, no cinemas, no coffee. It was dead as anything.");
  }

  Future<void> speakdeads17(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Winter is traditionally the dead season for the housing market.");
  }

  Future<void> speakdeads18(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She felt dead on her feet and didn't have the energy to question them further.");
  }

  Future<void> speakdeads19(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My left arm had gone dead.");
  }

  Future<void> speakdeads20(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was dead to all feelings of pity.");
  }

  Future<void> speakdeads21(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He answered in quite dead voice.");
  }

  Future<void> speakdeads22(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The car came to a dead stop.");
  }

  Future<void> speakdeads23(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her face was a dead giveaway that something was going on.");
  }

  Future<void> speakdeads24(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The dead and wounded in that one attack amounted to 6 000.");
  }

  Future<void> speakdeads25(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Christians believe that God raised Jesus from the dead.");
  }

  Future<void> speakdeads26(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In nine years he has brought his party back from the dead almost to the brink of power.");
  }

  Future<void> speakdeads27(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You're dead right!");
  }

  Future<void> speakdeads28(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The train was dead on time.");
  }

  Future<void> speakdeads29(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's dead against the idea.");
  }

  Future<void> speakdeads30(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The instructions are dead easy to follow.");
  }

  Future<void> speakdeads31(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You were dead lucky to get that job.");
  }

  Future<void> speakdeads32(String languageCode) async {
    // DOPSUM: CHANGE speakdead
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I was dead scared.");
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
کوردی: مردوو، گیان‌دەرچوو، نازیندوو، بێ‌گیان، بێ‌جان، بێ‌ڕۆح، تیاچوو، مردوو،	لەباوکەوتوو، کۆن،	(گژوگیا و ھتد) وشک، وشک‌ھەڵگەڕاو،	کوژاوە، دامردوو، داکوژاو، دامرکاو، ناچالاک،	وەڕەس‌کەر، عاجزکەر، ناخۆش، دڵتەنگ،	بێ‌جم‌وجۆڵ، بێ‌چالاکی، کڕ، مات، سرەوتوو، داکوژاو،	بەکارھێنراو، لەکارکراو،	تەواوبوو، دوایی‌پێ‌ھاتوو،	تەواو، دروست، ڕەبەق،	تەزیو، سڕ، کەسیرە(کەوتوو)، ھەڵوەریو،	ماندوو، شەکەت، ھیلاک، لەکارکەوتوو، پەک‌کەوتوو، خراپ‌بوو،	(دەنگ) گیراو، نووساو، دەرنەھاتوو،	(ڕەنگ) سارد، ناگەش، ناڕۆشن، تەڵخ، مات،	گیراو، بەستراو،	ڕاستەوخۆ، سەرڕاست، ڕاست،	کت‌وپڕ، لە ناکاو.	بە تەواوەتی، بە گشتی،	بنیادەمی مردوو، مەیت،	بێ‌دەنگی
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) مردوو"),
          SentencesRow(
            englishText: "My mother's dead; she died in 2017.",
            kurdishText: "دایکم مردووە؛ لە ساڵی ٢٠١٧ گیانی لەدەستدا.", // dead
            onPressedBritish: () => speakdeads1("en-GB"),
            onPressedAmerican: () => speakdeads1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He was shot dead by a gunman outside his home.",
            kurdishText: "لە دەرەوەی ماڵەکەی لەلایەن چەکدارێکەوە کوژرا.",
            onPressedBritish: () => speakdeads2("en-GB"),
            onPressedAmerican: () => speakdeads2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        "She was pronounced dead at the scene of the accident.",
                    kurdishText: "لە شوێنی ڕووداوەکە بە مردوو دانرا.",
                    onPressedBritish: () => speakdeads3("en-GB"),
                    onPressedAmerican: () => speakdeads3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The poor child looks more dead than alive.",
                    kurdishText:
                        "منداڵە داماوەکە زیاتر لە مردوو دەکات وەک لە زیندوو.",
                    onPressedBritish: () => speakdeads4("en-GB"),
                    onPressedAmerican: () => speakdeads4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "He dropped dead (= died suddenly) last week.",
                    kurdishText: "ھەفتەی ڕابردوو لەناکاو مرد.",
                    onPressedBritish: () => speakdeads5("en-GB"),
                    onPressedAmerican: () => speakdeads5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "By the time the police arrived, he was already dead.",
                    kurdishText: "تاوەکو پۆلیس گەشت لەمێژ بوو مردبوو.",
                    onPressedBritish: () => speakdeads6("en-GB"),
                    onPressedAmerican: () => speakdeads6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "His wife lay dead beside him.",
                    kurdishText: "ھاوژینەکەی بە مردووی لە تەنیشتی کەوتووە.",
                    onPressedBritish: () => speakdeads7("en-GB"),
                    onPressedAmerican: () => speakdeads7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "She had been struck dead by lightning.",
                    kurdishText: "بە ھەورەبرووسکە گیانی لەدەستدا.",
                    onPressedBritish: () => speakdeads8("en-GB"),
                    onPressedAmerican: () => speakdeads8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "We didn't know whether the fish was dead or alive.",
                    kurdishText:
                        "نەماندەزانی کە ماسییەکە مردوو یان زیندوو بوو.",
                    onPressedBritish: () => speakdeads9("en-GB"),
                    onPressedAmerican: () => speakdeads9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) کوژاوە بەھۆی نەبوونی بارگاوی"),
          SentencesRow(
            englishText: "Suddenly the phone went dead.",
            kurdishText: "لەناکاو موبایلەکە کوژایەوە.",
            onPressedBritish: () => speakdeads10("en-GB"),
            onPressedAmerican: () => speakdeads10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "John's mobile was completely dead.",
            kurdishText: "موبایلەکەی جۆن بە تەواوی لەکارکەوتبوو.",
            onPressedBritish: () => speakdeads11("en-GB"),
            onPressedAmerican: () => speakdeads11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) شتێک کە چیتر متمانە نەماوە پێی"),
          SentencesRow(
            englishText: "Many believe the peace plan is dead.",
            kurdishText: "زۆر کەس باوەڕیان وایە پلانی ئاشتی مردووە.",
            onPressedBritish: () => speakdeads12("en-GB"),
            onPressedAmerican: () => speakdeads12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Unfortunately racism is not yet dead.",
            kurdishText: "بەداخەوە ڕەگەزپەرست ھێشتا مردوو نییە.",
            onPressedBritish: () => speakdeads13("en-GB"),
            onPressedAmerican: () => speakdeads13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ھاوەڵناو) سەر بە ڕابردوو"),
          SentencesRow(
            englishText: "Is the Western a dead art form?",
            kurdishText: "ئایا ڕۆژئاوایی جۆرە ھونەرێکی مردووە؟",
            onPressedBritish: () => speakdeads14("en-GB"),
            onPressedAmerican: () => speakdeads14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ھاوەڵناو) کۆتایی ھاتوو؛ کە چی دیکە بەکارنایەت"),
          SentencesRow(
            englishText: "There were two dead bottles of wine on the table.",
            kurdishText: "دوو بوتلی تەواوبووی بیرە لەسەر مێزەکە بوو.",
            onPressedBritish: () => speakdeads15("en-GB"),
            onPressedAmerican: () => speakdeads15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ھاوەڵناو) زۆر ئارام"),
          SentencesRow(
            englishText:
                "There were no theatres, no cinemas, no coffee. It was dead as anything.",
            kurdishText:
                "ھیچ شانۆ، ھیچ سینەما، ھیچ قاوەخانە نەبوو. زۆر ئارام بوو وەک ھەموو شتێک.",
            onPressedBritish: () => speakdeads16("en-GB"),
            onPressedAmerican: () => speakdeads16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ھاوەڵناو) بەبێ چالاکی؛ بەبێ کڕین و فرۆشتن"),
          SentencesRow(
            englishText:
                "Winter is traditionally the dead season for the housing market.",
            kurdishText: "زستان بە گشتی وەرزێکی کزوکڕە بۆ بازاڕی خانووبەرە.",
            onPressedBritish: () => speakdeads17("en-GB"),
            onPressedAmerican: () => speakdeads17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ھاوەڵناو) تەواو ماندوو"),
          SentencesRow(
            englishText:
                "She felt dead on her feet and didn't have the energy to question them further.",
            kurdishText:
                "لە پێیەکانیدا ھەستی بە شەکەتی دەکرد و وزەی ئەوەی نەبوو چیتر پرسیاریان لێ بکات.",
            onPressedBritish: () => speakdeads18("en-GB"),
            onPressedAmerican: () => speakdeads18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (ھاوەڵناو) نەبوونی توانای ھەستکردن بەھۆی سەرما، ھتد"),
          SentencesRow(
            englishText: "My left arm had gone dead.",
            kurdishText: "باڵی چەپم سڕبووبوو.",
            onPressedBritish: () => speakdeads19("en-GB"),
            onPressedAmerican: () => speakdeads19("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (ھاوەڵناو) نەتوانینی ھەستکردن یان تێگەشتن لە ھەستەکان"),
          SentencesRow(
            englishText: "He was dead to all feelings of pity.",
            kurdishText: "دابڕاو بوو لە ھەموو ھەستێکی بەزەیی.",
            onPressedBritish: () => speakdeads20("en-GB"),
            onPressedAmerican: () => speakdeads20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١١. (ھاوەڵناو) بێ‌ھەست"),
          SentencesRow(
            englishText: "He answered in quite dead voice.",
            kurdishText: "بە دەنگێکی لەسەرخۆ و مات وەڵامی دایەوە.",
            onPressedBritish: () => speakdeads21("en-GB"),
            onPressedAmerican: () => speakdeads21("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٢. (ھاوەڵناو) تەواو"),
          SentencesRow(
            englishText: "The car came to a dead stop.",
            kurdishText: "ئۆۆتمبێلەکە کەوتە وەستانی تەواو.",
            onPressedBritish: () => speakdeads22("en-GB"),
            onPressedAmerican: () => speakdeads22("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Her face was a dead giveaway (= made it very obvious) that something was going on.",
            kurdishText: "ڕووخساری درکێنەری تەواو بوو کە شتێک ڕوویدەدا.",
            onPressedBritish: () => speakdeads23("en-GB"),
            onPressedAmerican: () => speakdeads23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٣. (ناو) ئەو کەسانەی مردوون"),
          SentencesRow(
            englishText:
                "The dead and wounded in that one attack amounted to 6 000.",
            kurdishText: "مردووان و برینداران لەو تاکە ھێرشەدا گەشتە ٦٠٠٠.",
            onPressedBritish: () => speakdeads24("en-GB"),
            onPressedAmerican: () => speakdeads24("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٤. (ناو) مردووی"),
          SentencesRow(
            englishText:
                "Christians believe that God raised Jesus from the dead.",
            kurdishText:
                "مەسیحییەکان باوەڕیان وایە خودا عیسای لە مردوویەتی ھێنایەوە.",
            onPressedBritish: () => speakdeads25("en-GB"),
            onPressedAmerican: () => speakdeads25("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "In nine years he has brought his party back from the dead almost to the brink of power.",
            kurdishText:
                "لە نۆ ساڵدا پارتەکەی لە مردوویەتییەوە گەڕاندەوە تا ڕادەیەک لە قەراغی دەسەڵات.",
            onPressedBritish: () => speakdeads26("en-GB"),
            onPressedAmerican: () => speakdeads26("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٥. (ھاوەڵکار) بە تەواوی"),
          SentencesRow(
            englishText: "You're dead right!",
            kurdishText: "بە تەواوی ڕاستی!",
            onPressedBritish: () => speakdeads27("en-GB"),
            onPressedAmerican: () => speakdeads27("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The train was dead on time.",
            kurdishText: "شەمەندەفەرەکە ڕێک لەکاتی خۆیدا بوو.",
            onPressedBritish: () => speakdeads28("en-GB"),
            onPressedAmerican: () => speakdeads28("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He's dead against the idea.",
            kurdishText: "بە تەواوی دژ بە بیرۆکەکە بوو.",
            onPressedBritish: () => speakdeads29("en-GB"),
            onPressedAmerican: () => speakdeads29("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٦. (ھاوەڵکار) زۆر"),
          SentencesRow(
            englishText: "The instructions are dead easy to follow.",
            kurdishText: "ڕێنماییەکان زۆر ئاسانن بۆ شوێنکەوتن.",
            onPressedBritish: () => speakdeads30("en-GB"),
            onPressedAmerican: () => speakdeads30("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "You were dead lucky to get that job.",
            kurdishText: "زۆر بە بەخت بوویت لە بەدەستھێنانی ئەو کارە.",
            onPressedBritish: () => speakdeads31("en-GB"),
            onPressedAmerican: () => speakdeads31("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I was dead scared.",
            kurdishText: "زۆر ترساو بووم.",
            onPressedBritish: () => speakdeads32("en-GB"),
            onPressedAmerican: () => speakdeads32("en-US"),
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
- Adjective: dead (derived forms: deadest, deader)
1. Not alive; no seeming to have or expecting to have life
"the nerve is dead"; "a dead pallor"; "he was marked as a dead man by the assassin"
 
2. Not showing characteristics of life especially the capacity to sustain life; no longer exerting force or having energy or heat
"Mars is a dead planet"; "dead soil"; "dead coals"; "the fire is dead"
 
3. [informal] Very tired (= all in, beat [informal], bushed)
"I'm dead after that long trip";
 
4. Unerringly accurate
"a dead shot"; "took dead aim"
 
5. Physically inactive
"Crater Lake is in the crater of a dead volcano of the Cascade Range"
 
6. (followed by 'to') not showing human feeling or sensitivity; unresponsive (= numb)
"passersby were dead to our plea for help";
 
7. Devoid of physical sensation; numb (= deadened)
"his gums were dead from the novocain";
 
8. Lacking acoustic resonance
"dead sounds characteristic of some compact discs"; "the dead wall surfaces of a recording studio"
 
9. Not yielding a return (= idle)
"dead capital";
 
10. Not circulating or flowing (= stagnant)
"dead air"; "dead water";
 
11. Not surviving in active use
"Latin is a dead language"
 
12. Lacking resilience or bounce
"a dead tennis ball"
 
13. Out of use or operation because of a fault or breakdown
"a dead telephone line"; "the motor is dead"
 
14. No longer having force or relevance
"a dead issue"
 
15. The complete stoppage of an action
"came to a dead stop"
 
16. Drained of electric charge; discharged (= drained, flat [Brit])
"a dead battery";
 
17. Devoid of activity
"this is a dead town; nothing ever happens here"

- Noun: dead (derived forms: deads)
1. People who are no longer living
"they buried the dead"
 
2. A time when coldness (or some other quality associated with death) is intense
"the dead of winter"

- Adverb: dead 
1. Completely and without qualification; used informally as an intensifier (= absolutely, perfectly, utterly)
"you can be dead sure of my innocence"; "was dead tired"; "dead right";
 
2. Quickly and without warning (= suddenly, all of a sudden, on the spur of the moment, of a sudden, abruptly, short)
"he stopped dead";
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

  final String _videoId = 'R_fZjGm2OrM';
  final double _startSeconds = 327;

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

  final String _videoId = 'XFGAQrEUaeU';
  final double _startSeconds = 89;

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

  final String _videoId = 'wizgxRBfVTY';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '5pXU5xUiSmc';
  final double _startSeconds = 15;

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

  final String _videoId = 'dThvyim4tbU';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'KJy7T24rhg0';
  final double _startSeconds = 659;

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

  final String _videoId = 'v6yg4ImnYwA';
  final double _startSeconds = 211;

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