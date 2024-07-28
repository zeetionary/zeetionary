import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycover extends StatefulWidget {
  const EnglishEntrycover({super.key});

  @override
  State<EnglishEntrycover> createState() => _EnglishEntrycoverState();
}

class _EnglishEntrycoverState extends State<EnglishEntrycover> {
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
    return const EntryTitle(word: "cover");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cover");
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
    return const IPAofEnglish(text: "IpaUK: /ˈkʌvə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcover(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cover");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcover("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈkʌvər/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcover(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cover");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcover("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcovers1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She covered her face with her hands.");
  }

  Future<void> speakcovers2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I covered my mouth to stifle a yawn.");
  }

  Future<void> speakcovers3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He tried to cover his embarrassment by starting to rub his hands together.");
  }

  Future<void> speakcovers4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Snow covered the ground.");
  }

  Future<void> speakcovers5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Much of the country is covered by forest.");
  }

  Future<void> speakcovers6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Its head, body, and tail are completely covered with brown fur.");
  }

  Future<void> speakcovers7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The wind blew in from the desert and covered everything with sand.");
  }

  Future<void> speakcovers8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Soak the dried mushrooms by covering them in boiling water for a few minutes.");
  }

  Future<void> speakcovers9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The steps were now completely covered with water.");
  }

  Future<void> speakcovers10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The players were soon covered in mud.");
  }

  Future<void> speakcovers11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The survey covers all aspects of the business.");
  }

  Future<void> speakcovers12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The articles cover a wide range of subjects.");
  }

  Future<void> speakcovers13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Each podcast covers a different topic.");
  }

  Future<void> speakcovers14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do the rules cover a case like this?");
  }

  Future<void> speakcovers15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The tax may be extended to cover books.");
  }

  Future<void> speakcovers16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We've hardly covered a quarter of the course.");
  }

  Future<void> speakcovers17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("\$100 should cover your expenses.");
  }

  Future<void> speakcovers18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Your parents will have to cover your tuition fees.");
  }

  Future<void> speakcovers19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("By sunset we had covered thirty miles.");
  }

  Future<void> speakcovers20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They covered long distances on foot.");
  }

  Future<void> speakcovers21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Grand Canyon National Park covers approximately 500,000 hectares).");
  }

  Future<void> speakcovers22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's covering the party's annual conference.");
  }

  Future<void> speakcovers23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The BBC will cover all the major games of the tournament.");
  }

  Future<void> speakcovers24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm covering for Jane while she's on leave.");
  }

  Future<void> speakcovers25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I have to go out for a minute—will you cover for me if anyone asks where I am?");
  }

  Future<void> speakcovers26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Are you fully covered for fire and theft?");
  }

  Future<void> speakcovers27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Many firms put money aside to cover themselves against possible legal claims.");
  }

  Future<void> speakcovers28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cover me while I move forward.");
  }

  Future<void> speakcovers29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The police covered the exits to the building.");
  }

  Future<void> speakcovers30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Brighten up your room with some colourful covers.");
  }

  Future<void> speakcovers31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He held his nose as he lifted the cover of the bin.");
  }

  Future<void> speakcovers32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He lifted the manhole cover.");
  }

  Future<void> speakcovers33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Everyone ran for cover when it started to rain.");
  }

  Future<void> speakcovers34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After the explosion the street was full of people running for cover.");
  }

  Future<void> speakcovers35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The climbers took cover from the storm in a cave.");
  }

  Future<void> speakcovers36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her face was on the cover of every magazine.");
  }

  Future<void> speakcovers37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Have you seen the cover of the latest issue?");
  }

  Future<void> speakcovers38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This company provides wider cover.");
  }

  Future<void> speakcovers39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The RAF provided air cover for the attack.");
  }

  Future<void> speakcovers40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The total forest cover of the earth is decreasing.");
  }

  Future<void> speakcovers41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Fog and low cloud cover are expected this afternoon.");
  }

  Future<void> speakcovers42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("In this area there is snow cover for six months of the year.");
  }

  Future<void> speakcovers43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She threw back the covers and leapt out of bed.");
  }

  Future<void> speakcovers44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His work as a civil servant was a cover for his activities as a spy.");
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
کوردی: داپۆشین، (دا)پوشاندن، پۆششت، ڕووماڵ(کردن)، داپێچان، بەرگ، داپۆشە، سەرپۆش، ڕوو، شەڵتە، سەرقاپ، سەر، درگا، پەردە، ڕووکێش، سەرکێش، داپۆشک،	بەرگ (کتێب، ڕۆژنامە، کۆڤار و ھتد)،	بەرگەنامە،	داڵدە، پارێزگا، پەنا، سامە، چراخ،	پاراستن، ئاگالێ‌بوون،	پشتیوان، پشتیوانە،	ناسنامەی درۆ، ناسنامەی فڕوفێڵاوی یان ساختە،	گژوگیا، سەوزە، سەوزایی، شینکاتی، شیناوەرد (ئەو ڕووەکانەی کە لەسەر عەرز شین‌بوون)،	بیمە،	جێ، جێگا (لەسەر میزی نان‌خواردن)، نوێن، پێخەف،	جێبەجێ‌کردنی کار و ئەرکی کەسێکی تر ئەگەر لەوێ نەبێ، جێگری
"""),
          const DefinitionKurdish(text: "١. (کردار) داپۆشین بۆ شاردنەوە"),
          SentencesRow(
            englishText: "She covered her face with her hands.",
            kurdishText:
                "بە دەستی ڕووخساری داپۆشی.", // cover", please follow LX instructions
            onPressedBritish: () => speakcovers1("en-GB"),
            onPressedAmerican: () => speakcovers1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I covered my mouth to stifle a yawn.",
            kurdishText: "دامم داپۆشی بۆ دامرکاندنەوەی باوێشکێک.",
            onPressedBritish: () => speakcovers2("en-GB"),
            onPressedAmerican: () => speakcovers2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He tried to cover his embarrassment by starting to rub his hands together.",
            kurdishText:
                "ھەوڵیدا شەرمەزارییەکەی بشارێتەوە بە ساوینی دەستەکانی بە یەکدا.",
            onPressedBritish: () => speakcovers3("en-GB"),
            onPressedAmerican: () => speakcovers3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) ڕاکشان یان بڵاوبوونەوە بە ڕووی شتێکدا"),
          SentencesRow(
            englishText: "Snow covered the ground.",
            kurdishText: "بەفر زەوییەکەی داپۆشی.",
            onPressedBritish: () => speakcovers4("en-GB"),
            onPressedAmerican: () => speakcovers4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Much of the country is covered by forest.",
            kurdishText: "زۆرێک لە وڵاتەکە بە دارستان داپۆشراوە.",
            onPressedBritish: () => speakcovers5("en-GB"),
            onPressedAmerican: () => speakcovers5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Its head, body, and tail are completely covered with brown fur.",
            kurdishText:
                "سەری، جەستەی، و کلکی بە تەواوی بە فەرووی قاوەیی داپۆشراون.",
            onPressedBritish: () => speakcovers6("en-GB"),
            onPressedAmerican: () => speakcovers6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) دانانی چینێک لە شلە، خۆڵ، ھتد لەسەر کەسێک یان شتێک"),
          SentencesRow(
            englishText:
                "The wind blew in from the desert and covered everything with sand.",
            kurdishText:
                "بایەکە لە بیابانەکە ھەڵیکرد و ھەموو شتێکی بە خؤل داپۆشی.",
            onPressedBritish: () => speakcovers7("en-GB"),
            onPressedAmerican: () => speakcovers7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Soak the dried mushrooms by covering them in boiling water for a few minutes.",
            kurdishText:
                "قارچکە وشککراوەکان تەڕ بکە بە داپۆشینیان بە ئاوی کوڵاو بۆ چەند خولەکێک.",
            onPressedBritish: () => speakcovers8("en-GB"),
            onPressedAmerican: () => speakcovers8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The steps were now completely covered with water.",
            kurdishText: "قادرمەکان ئێستا بە تەواوی بە ئاو داپۆشرابوون.",
            onPressedBritish: () => speakcovers9("en-GB"),
            onPressedAmerican: () => speakcovers9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The players were soon covered in mud.",
            kurdishText: "یاریزانەکان ھەرزوو بە قوڕ داپۆشران.",
            onPressedBritish: () => speakcovers10("en-GB"),
            onPressedAmerican: () => speakcovers10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) لەخۆگرتن یان مامەڵە لەگەڵ شتێک"),
          SentencesRow(
            englishText: "The survey covers all aspects of the business.",
            kurdishText:
                "ڕاپرسییەکە تەواوی لایەنەکانی بازرگانییەکە لەخۆدەگرێت.",
            onPressedBritish: () => speakcovers11("en-GB"),
            onPressedAmerican: () => speakcovers11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The articles cover a wide range of subjects.",
            kurdishText: "وتارەکان ژمارەیەکی بەرفراوان لە بابەت لەخۆدەگرن.",
            onPressedBritish: () => speakcovers12("en-GB"),
            onPressedAmerican: () => speakcovers12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Each podcast covers a different topic.",
            kurdishText: "ھەر پۆدکاستێک بابەتێکی جیاواز لەخۆدەگرێت.",
            onPressedBritish: () => speakcovers13("en-GB"),
            onPressedAmerican: () => speakcovers13("en-US"),
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
                                    "Do the rules cover (= do they apply to) a case like this?"),
                            ExampleSentenceKurdish(
                                text: "یاساکان بەسەر کەیسێکی وەھادا دەچەسپێن؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcovers14("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcovers14("en-US"),
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
                                    "The tax may be extended to cover books."),
                            ExampleSentenceKurdish(
                                text:
                                    "باجەکە ڕەنگە درێژبکرێتەوە بۆ لەخۆگرتنی کتێب."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcovers15("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcovers15("en-US"),
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
                                    "We've hardly covered a quarter of the course."),
                            ExampleSentenceKurdish(
                                text:
                                    "جارێ تازە چارەکێکی کۆرسەکەمان باسکردووە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcovers16("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcovers16("en-US"),
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
              text: "٥. (کردار) وەرگرتنی پارەی پێویست بۆ کردنی شتێک"),
          SentencesRow(
            englishText: "\$100 should cover your expenses.",
            kurdishText: "١٠٠ دۆلار دەبێت خەرجییەکانت دابین بکات.",
            onPressedBritish: () => speakcovers17("en-GB"),
            onPressedAmerican: () => speakcovers17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Your parents will have to cover your tuition fees.",
            kurdishText: "دایک و باوکت دەبێت خەرجی خوێندنت بکەن.",
            onPressedBritish: () => speakcovers18("en-GB"),
            onPressedAmerican: () => speakcovers18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) بڕینی ماوەیەکی دیاریکراو لە دووری"),
          SentencesRow(
            englishText: "By sunset we had covered thirty miles.",
            kurdishText: "تاوەکو خۆرئاوابوون سی میلمان بڕی بوو.",
            onPressedBritish: () => speakcovers19("en-GB"),
            onPressedAmerican: () => speakcovers19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They covered long distances on foot.",
            kurdishText: "مەودای دووریان بە پێ بڕی.",
            onPressedBritish: () => speakcovers20("en-GB"),
            onPressedAmerican: () => speakcovers20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) بڵاوبوونەوە بەو ناوچەیەی باسکراوە"),
          SentencesRow(
            englishText:
                "Grand Canyon National Park covers approximately 500,000 hectares).",
            kurdishText:
                "پارکی نیشتیمانی گراند کانیەن بەنزیکەیی ٥٠٠,٠٠٠ ھێکتار دەبێت.",
            onPressedBritish: () => speakcovers21("en-GB"),
            onPressedAmerican: () => speakcovers21("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) گەیاندنی بۆنەیەک بە تەلەفیزیۆن، ڕۆژنامە، ھتد"),
          SentencesRow(
            englishText: "She's covering the party's annual conference.",
            kurdishText: "کۆنفرانسی ساڵانە پارتەکە ڕووماڵ دەکات.",
            onPressedBritish: () => speakcovers22("en-GB"),
            onPressedAmerican: () => speakcovers22("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The BBC will cover all the major games of the tournament.",
            kurdishText:
                "بی‌بی‌سی تەواوی یارییە گرنگەکانی پاڵەوانێتییەکە ڕووماڵ دەکات.",
            onPressedBritish: () => speakcovers23("en-GB"),
            onPressedAmerican: () => speakcovers23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (کردار) ئەنجامدانی کارەکانی کەسێک کە خۆی ئامادە نییە"),
          SentencesRow(
            englishText: "I'm covering for Jane while she's on leave.",
            kurdishText: "کارەکانی جەین دەکەم لەکاتێکدا کە لە مۆڵەتە.",
            onPressedBritish: () => speakcovers24("en-GB"),
            onPressedAmerican: () => speakcovers24("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (کردار) درووستکردنی درۆیەک یان بیانوویەک کە ڕێگا دەگرێت کەسێک تووشی کێشە بێت"),
          SentencesRow(
            englishText:
                "I have to go out for a minute—will you cover for me if anyone asks where I am?",
            kurdishText:
                "پێویستە بۆ خولەکێک بچمە دەرەوە، بۆم دەپۆشی ئەگەر ھەر کەسێک پرسیاری کردم؟",
            onPressedBritish: () => speakcovers25("en-GB"),
            onPressedAmerican: () => speakcovers25("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١١. (کردار) ڕێگری کەوەی کەسێک تووشی زیان، برینداری، ھتد بێت بە دابینکردنی بیمە"),
          SentencesRow(
            englishText: "Are you fully covered for fire and theft?",
            kurdishText: "بە تەواوی بیمەت ھەیە بۆ ئاگرکەوتنەوە و دزی؟",
            onPressedBritish: () => speakcovers26("en-GB"),
            onPressedAmerican: () => speakcovers26("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٢. (کردار) خۆپاراستن لە لۆمە"),
          SentencesRow(
            englishText:
                "Many firms put money aside to cover themselves against possible legal claims.",
            kurdishText:
                "زۆر کۆمپانیا پارە دەخەنە لاوە بۆ پاراستنی خۆیان لە دۆسیەی یاسایی.",
            onPressedBritish: () => speakcovers27("en-GB"),
            onPressedAmerican: () => speakcovers27("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٣. (کردار) پاراستنی کەسێک بە تەقەکردن لە ھەر کەسێک کە ئازاری بدات"),
          SentencesRow(
            englishText: "Cover me while I move forward.",
            kurdishText: "بمپارێزە کە دەچمە پێشەوە.",
            onPressedBritish: () => speakcovers28("en-GB"),
            onPressedAmerican: () => speakcovers28("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٤. (کردار) ئاراستەکردنی چەکێک لە شوێنێک یان کەسێک بۆ ئەوەی کەس ھەڵنەیەت یان تەقە نەکات"),
          SentencesRow(
            englishText: "The police covered the exits to the building.",
            kurdishText: "پۆلیس ڕێگاکانی چوونەدەرەوەی بیناکەی کۆنترۆڵ کردبوو.",
            onPressedBritish: () => speakcovers29("en-GB"),
            onPressedAmerican: () => speakcovers29("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٥. (ناو) شتێک کە دەیدەیت بەسەر شتێکی دیکەدا"),
          SentencesRow(
            englishText: "Brighten up your room with some colourful covers.",
            kurdishText: "ژوورەکەت ڕەنگین بکە بە داپۆشەری ڕەنگین.",
            onPressedBritish: () => speakcovers30("en-GB"),
            onPressedAmerican: () => speakcovers30("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He held his nose as he lifted the cover of the bin.",
            kurdishText: "لووتی گرت کە سەری زباڵەکەی بەرزکردەوە.",
            onPressedBritish: () => speakcovers31("en-GB"),
            onPressedAmerican: () => speakcovers31("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He lifted the manhole cover.",
            kurdishText: "سەری مەنھۆڵەکەی بەرزکردەوە.",
            onPressedBritish: () => speakcovers32("en-GB"),
            onPressedAmerican: () => speakcovers32("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٦. (ناو) پەناگە بۆ پاراستن لە کەشی خراپ یان ھێرش"),
          SentencesRow(
            englishText: "Everyone ran for cover when it started to rain.",
            kurdishText: "ھەموان بۆ پەناگە ڕایانکرد کە دەستی بە باران کرد.",
            onPressedBritish: () => speakcovers33("en-GB"),
            onPressedAmerican: () => speakcovers33("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "After the explosion the street was full of people running for cover.",
            kurdishText:
                "لە دوای تەقینەوەکە شەقامەکە پڕ بوو لە خەڵک کۆ بۆ پەناگە دەگەڕان.",
            onPressedBritish: () => speakcovers34("en-GB"),
            onPressedAmerican: () => speakcovers34("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The climbers took cover from the storm in a cave.",
            kurdishText:
                "شاخەوانان داڵدەیان بردە بەر ئەشکەوتەکە دژ بە زریانەکە.",
            onPressedBritish: () => speakcovers35("en-GB"),
            onPressedAmerican: () => speakcovers35("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٧. (ناو) بەرگی کتێبێک یان گۆڤارێک"),
          SentencesRow(
            englishText:
                "Her face was on the cover (= the front cover) of every magazine.",
            kurdishText: "ڕووخساری لەسەر بەرگی ھەموو گۆڤارێک بوو.",
            onPressedBritish: () => speakcovers36("en-GB"),
            onPressedAmerican: () => speakcovers36("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Have you seen the cover of the latest issue?",
            kurdishText: "بەرگی کۆتا چاپت دیوە؟",
            onPressedBritish: () => speakcovers37("en-GB"),
            onPressedAmerican: () => speakcovers37("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٨. (ناو) پاراستن کە کۆمپانیایەکی بیمە پێت دەدات بە بەڵێندانی ئەوەی پارەت پێبدات ئەگەر ڕووداوێکی دیاریکراو ڕووبدات"),
          SentencesRow(
            englishText: "This company provides wider cover.",
            kurdishText: "ئەم کۆمپانیایە پاراستنی زیاتر دابین دەکات.",
            onPressedBritish: () => speakcovers38("en-GB"),
            onPressedAmerican: () => speakcovers38("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٩. (ناو) پاراستن یان پشتیوانی کە دەدرێت بە کەسێک کە ھێرش دەکات یان ھێرشی دەکرێتە سەر"),
          SentencesRow(
            englishText: "The RAF provided air cover for the attack.",
            kurdishText: "ھێزی ئاسمانی شاھانەیی پشتیوانی ئاسمانی دابین کردبوو.",
            onPressedBritish: () => speakcovers39("en-GB"),
            onPressedAmerican: () => speakcovers39("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٠. (ناو) دار و گژووگیا کە لەسەر ناوچەیەک گەشە دەکات"),
          SentencesRow(
            englishText: "The total forest cover of the earth is decreasing.",
            kurdishText: "سەوزایی گشتی دارستانی زەوی کەم دەکات.",
            onPressedBritish: () => speakcovers40("en-GB"),
            onPressedAmerican: () => speakcovers40("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢١. (ناو) ئاسمانی ھەوراوی یان زەوی بەفراوی"),
          SentencesRow(
            englishText: "Fog and low cloud cover are expected this afternoon.",
            kurdishText:
                "تەم و ئاسمانی ھەوراوی نزم بۆ ئەم نیوەڕۆیە پێشبینی دەکرێت.",
            onPressedBritish: () => speakcovers41("en-GB"),
            onPressedAmerican: () => speakcovers41("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "In this area there is snow cover for six months of the year.",
            kurdishText: "لەم ناوچەیە زەوی بەفراوی بۆ شەش مانگی ساڵ ھەیە.",
            onPressedBritish: () => speakcovers42("en-GB"),
            onPressedAmerican: () => speakcovers42("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢٢. (ناو) پێخەف، بەتانی، ھتد لەسەر جێخەوێک"),
          SentencesRow(
            englishText: "She threw back the covers and leapt out of bed.",
            kurdishText: "نوێنەکانی فڕێدا و لە جێخەوەکە ھەڵپەڕییە دەرەوە.",
            onPressedBritish: () => speakcovers43("en-GB"),
            onPressedAmerican: () => speakcovers43("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢٣. (ناو) شتێک کە ئامانج لێی ئەوەیە ناسنامەی ڕاستی، ھەستێک، یان شتێکی نایاسایی دەشارێتەوە"),
          SentencesRow(
            englishText:
                "His work as a civil servant was a cover for his activities as a spy.",
            kurdishText:
                "کارەکەی وەک فەرمانبەرێکی مەدەنی شاردنەوەیەکی چالاکییەکانی وەک سیخووڕێک بوو.",
            onPressedBritish: () => speakcovers44("en-GB"),
            onPressedAmerican: () => speakcovers44("en-US"),
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
- Verb: cover (derived forms: covers, covered, covering)
1. Provide with a covering or cause to be covered
"cover her face with a handkerchief"; "cover the child with a blanket"; "cover the grave with flowers"
 
2. Form a cover over (= spread over)
"The grass covered the grave";
 
3. Span an interval of distance, space or time (= continue, extend)
"The period covered the turn of the century"; "This farm covers some 200 acres";
 
4. Provide for
"The grant doesn't cover my salary"
 
5. Act on verbally or in some form of artistic expression (= treat, handle, plow [N. Amer], deal, address, plough [Brit, Cdn])
"The course covered all of Western Civilization";
 
6. Include in scope; include as part of something broader; have as one's sphere or territory (= embrace, encompass, comprehend)
"this should cover everyone in the group";
 
7. Travel across or pass over (= traverse, track, cross, pass over, get over, get across, cut through, cut across)
"The caravan covered almost 100 miles each day";
 
8. Be responsible for reporting the details of, as in journalism (= report)
"The cub reporter covered New York City";
 
9. Hold within range of an aimed firearm
 
10. To take an action to protect against future problems
"Count the cash in the drawer twice just to cover yourself"
 
11. Hide from view or knowledge (= cover up, paper over)
"The President covered the fact that he bugged the offices in the White House";
 
12. Protect or defend (a position in a game)
"he covered left field"
 
13. Maintain a check on; especially by patrolling
"The second officer covered the top floor"
 
14. Protect by insurance (= insure, underwrite)
"The insurance won't cover this";
 
15. Make up for shortcomings or a feeling of inferiority by exaggerating good qualities (= compensate, overcompensate)
"he is covering for being a bad father";
 
16. Invest with a large or excessive amount of something
"She covered herself with glory"
 
17. Help out by taking someone's place and temporarily assuming his responsibilities
"She is covering for our secretary who is ill this week"
 
18. Be sufficient to meet, defray, or offset the charge or cost of
"Is this enough to cover the check?"
 
19. Spread over a surface to conceal or protect
"This paint covers well"
 
20. Cover as if with a shroud (= shroud, enshroud, hide)
"The origins of this civilization are covered in mystery";
 
21. (animal husbandry) copulate with a female, used especially of horses (= breed)
"The horse covers the mare";
 
22. Put something on top of something else (= overlay)
"cover the meat with a lot of gravy";
 
23. (card game) play a higher card than the one previously played
"Smith covered again"
 
24. Be responsible for guarding an opponent in a game
 
25. Sit on (eggs) (= brood, hatch, incubate)
"The female covers the eggs";
 
26. Clothe, as if for protection from the elements (= wrap up)
"cover your head!";

- Noun: cover (derived forms: covers)
1. A covering that serves to conceal or shelter something (= screen, covert, concealment)
"under cover of darkness";

2. Bedding that keeps a person warm in bed (= blanket)
"he pulled the covers over his head and went to sleep";
 
3. The act of concealing the existence of something by obstructing the view of it (= covering, screening, masking)
"the cover concealed their guns from enemy aircraft";
 
4. The protective covering on the front, back, and spine of a book (= binding, book binding, back)
"the book had a leather cover";
 
5. A natural object that covers or envelops (= covering, natural covering)
"the fox was flushed from its cover";
 
6. Covering for a hole (especially a hole in the top of a container) (= top)
"put the cover back on the kettle";
 
7. Fire that makes it difficult for the enemy to fire on your own individuals or formations (= covering fire)
"artillery provided cover for the withdrawal";
 
8. A fixed charge by a restaurant or nightclub over and above the charge for food and drink (= cover charge)
 
9. A recording of a song that was first recorded or made popular by somebody else (= cover version, cover song)
"they made a cover of a Beatles' song";
 
10. A false identity and background (especially one created for an undercover agent)
"her new name and passport are cover for her next assignment"
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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 92;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 1424;

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

  final String _videoId = 'Cd1EmYRZynw';
  final double _startSeconds = 216;

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

  final String _videoId = 'zmEv7vTOQGE';
  final double _startSeconds = 997;

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

  final String _videoId = 'G4BxOhJOmUw';
  final double _startSeconds = 226;

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

  final String _videoId = 'bXCOI_LQ_0o';
  final double _startSeconds = 53;

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

  final String _videoId = '3Ml-JTgFW1I';
  final double _startSeconds = 70;

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