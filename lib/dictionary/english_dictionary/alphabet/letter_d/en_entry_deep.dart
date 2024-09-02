import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydeep extends StatefulWidget {
  const EnglishEntrydeep({super.key});

  @override
  State<EnglishEntrydeep> createState() => _EnglishEntrydeepState();
}

class _EnglishEntrydeepState extends State<EnglishEntrydeep> {
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
    return const EntryTitle(word: "deep");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: deep");
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
    return const IPAofEnglish(text: "IpaUK: /diːp/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeep(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("deep");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeep("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /diːp/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeep(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("deep");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeep("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeeps1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The water looks quite deep there.");
  }

  Future<void> speakdeeps2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Around the world, the deep oceans are heating.");
  }

  Future<void> speakdeeps3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Sunflowers have deep roots.");
  }

  Future<void> speakdeeps4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The custom has deep roots in the community.");
  }

  Future<void> speakdeeps5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She had a deep cut on her left arm.");
  }

  Future<void> speakdeeps6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The telescope captured stunning images of distant galaxies in deep space.");
  }

  Future<void> speakdeeps7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The water is only a few centimetres deep.");
  }

  Future<void> speakdeeps8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("How deep is the wound?");
  }

  Future<void> speakdeeps9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The water was only waist-deep so I walked ashore.");
  }

  Future<void> speakdeeps10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She stood knee-deep in the water.");
  }

  Future<void> speakdeeps11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They were standing three-deep at the bar.");
  }

  Future<void> speakdeeps12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She took a deep breath.");
  }

  Future<void> speakdeeps13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He gave a deep sigh.");
  }

  Future<void> speakdeeps14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She fell into a deep sleep.");
  }

  Future<void> speakdeeps15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He had a pale face with deep blue eyes.");
  }

  Future<void> speakdeeps16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The colour is deeper when the grapes are dried.");
  }

  Future<void> speakdeeps17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I heard his deep warm voice filling the room.");
  }

  Future<void> speakdeeps18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We heard a deep roar in the distance.");
  }

  Future<void> speakdeeps19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They expressed deep concern.");
  }

  Future<void> speakdeeps20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We extend our deepest sympathies to his family.");
  }

  Future<void> speakdeeps21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They have a deep respect for tradition.");
  }

  Future<void> speakdeeps22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He's in deep trouble.");
  }

  Future<void> speakdeeps23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The affair had exposed deep divisions within the party.");
  }

  Future<void> speakdeeps24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She had reached a deep understanding of the local culture.");
  }

  Future<void> speakdeeps25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We will need a deeper analysis of this problem.");
  }

  Future<void> speakdeeps26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This discussion's getting too deep for me.");
  }

  Future<void> speakdeeps27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He always sought for a deeper meaning in everything.");
  }

  Future<void> speakdeeps28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They spent hours discussing deep philosophical issues.");
  }

  Future<void> speakdeeps29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The firm ended up deep in debt.");
  }

  Future<void> speakdeeps30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He is often so deep in his books that he forgets to eat.");
  }

  Future<void> speakdeeps31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She's always been a deep one, trusting no one.");
  }

  Future<void> speakdeeps32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Dig deeper!");
  }

  Future<void> speakdeeps33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The miners were trapped deep underground.");
  }

  Future<void> speakdeeps34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He stood with his hands deep in his pockets.");
  }

  Future<void> speakdeeps35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He gazed deep into her eyes.");
  }

  Future<void> speakdeeps36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His body was committed to the deep.");
  }

  Future<void> speakdeeps37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "In the deep of night, the city streets were deserted and silent.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: قووڵ، پێبڕ، کوویر، گاود، مە ند یان مەنگ (ئاو)،	(خەو و ھتد) قووڵ، گران، کڕخەو، شیرین،	(دەنگ) بۆڕ، گڕ،	(ڕەنگ) تۆخ، توند، تێر،	توند، بەڕشت، مجد،	دواوە، پشتەوە، نێوەوە،	نوقمی، قووڵەوەبوو، ناسەرسەرەکی، قووڵ،	ئاڵۆز، سەخت، دژوار، ناسەرسەرەکی، تێگەیشتن‌سەخت، پێچەڵاوپێچ
"""),
          const DefinitionKurdish(
              text:
                  "١. (ھاوەڵناو) قووڵ؛ ھەبوونی مەودایەکی زۆر لە سەرەوە یان ڕووەکەیەوە بۆ خوارەوە"),
          SentencesRow(
            englishText: "The water looks quite deep there.",
            kurdishText: "ئاوەکە لەوێدا تەواو قووڵ دیارە.",
            onPressedBritish: () => speakdeeps1("en-GB"),
            onPressedAmerican: () => speakdeeps1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Around the world, the deep oceans are heating.",
            kurdishText: "لە جیھاندا، زەریا قووڵەکان گەرم دەبن.",
            onPressedBritish: () => speakdeeps2("en-GB"),
            onPressedAmerican: () => speakdeeps2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Sunflowers have deep roots.",
            kurdishText: "گوڵەبەڕۆژە ڕەگی قوڵی ھەیە.",
            onPressedBritish: () => speakdeeps3("en-GB"),
            onPressedAmerican: () => speakdeeps3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The custom has deep roots in the community.",
            kurdishText:
                "(بەکارھێنانی خوازراوی) نەریتەکە ڕیشەیەکی قووڵی ھەیە لە کۆمەڵگاکەدا.",
            onPressedBritish: () => speakdeeps4("en-GB"),
            onPressedAmerican: () => speakdeeps4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ھاوەڵناو) قووڵ؛ ھەبوونی مەودایەکی زۆر لە قەراغەوە بۆ دوورترین خاڵ لە ناوەوە"),
          SentencesRow(
            englishText: "She had a deep cut on her left arm.",
            kurdishText: "برینێکی قووڵی لەسەر باڵی چەپی ھەبوو.",
            onPressedBritish: () => speakdeeps5("en-GB"),
            onPressedAmerican: () => speakdeeps5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The telescope captured stunning images of distant galaxies in deep space.",
            kurdishText:
                "تەلیسکۆبەکە وێنەی سەرنجڕاکێشی گەلە ئەستێرە دوورەکانی ئاسمانی فراوانی چرکاند.",
            onPressedBritish: () => speakdeeps6("en-GB"),
            onPressedAmerican: () => speakdeeps6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) بۆ باسکردن یان پرسیارکردن لەسەر قووڵی شتێک"),
          SentencesRow(
            englishText: "The water is only a few centimetres deep.",
            kurdishText: "ئاوەکە تەنھا چەند سەنتیمەترێک قووڵە.",
            onPressedBritish: () => speakdeeps7("en-GB"),
            onPressedAmerican: () => speakdeeps7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "How deep is the wound?",
            kurdishText: "برینەکە چەندە قووڵە؟",
            onPressedBritish: () => speakdeeps8("en-GB"),
            onPressedAmerican: () => speakdeeps8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ھاوەڵناو) تاوەکو ئەو ئاستەی باسکراوە بۆ سەرەوە یان خوارەوە"),
          SentencesRow(
            englishText: "The water was only waist-deep so I walked ashore.",
            kurdishText:
                "ئاوەکە تەنھا تاوەکو کەمەرە قووڵ بوو بۆیە ڕێم کردە کەنارەکە.",
            onPressedBritish: () => speakdeeps9("en-GB"),
            onPressedAmerican: () => speakdeeps9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She stood knee-deep in the water.",
            kurdishText: "تاوەکو قوڵایی چۆکی لە ئاوەکە وەستابوو.",
            onPressedBritish: () => speakdeeps10("en-GB"),
            onPressedAmerican: () => speakdeeps10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ھاوەڵناو) بۆ ژماردنی ڕیز کە یەک لە دوای یەکە"),
          SentencesRow(
            englishText: "They were standing three-deep at the bar.",
            kurdishText: "لە ڕیزی سێیەم لە باڕەکە وەستابوو.",
            onPressedBritish: () => speakdeeps11("en-GB"),
            onPressedAmerican: () => speakdeeps11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ھاوەڵناو) ھەناسەی قووڵ"),
          SentencesRow(
            englishText: "She took a deep breath.",
            kurdishText: "ھەناسەیەکی قووڵی ھەڵمژی.",
            onPressedBritish: () => speakdeeps12("en-GB"),
            onPressedAmerican: () => speakdeeps12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He gave a deep sigh.",
            kurdishText: "ھەناسەیەکی قووڵی دایەوە.",
            onPressedBritish: () => speakdeeps13("en-GB"),
            onPressedAmerican: () => speakdeeps13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ھاوەڵناو) خەوێکی قووڵ"),
          SentencesRow(
            englishText: "She fell into a deep sleep.",
            kurdishText: "کەوتە خەوێکی قووڵەوە.",
            onPressedBritish: () => speakdeeps14("en-GB"),
            onPressedAmerican: () => speakdeeps14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ھاوەڵناو) ڕەنگێکی تۆخ و تاریک"),
          SentencesRow(
            englishText: "He had a pale face with deep blue eyes.",
            kurdishText: "ڕووخسارێکی ڕەنگ‌پەڕیو و چاوێکی شینی تۆخی ھەبوو.",
            onPressedBritish: () => speakdeeps15("en-GB"),
            onPressedAmerican: () => speakdeeps15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The colour is deeper when the grapes are dried.",
            kurdishText: "ڕەنگەکە تۆخترە کە ترێیەکان وشک دەبنەوە.",
            onPressedBritish: () => speakdeeps16("en-GB"),
            onPressedAmerican: () => speakdeeps16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (ھاوەڵناو) دەنگی نزم"),
          SentencesRow(
            englishText: "I heard his deep warm voice filling the room.",
            kurdishText: "گوێم لە دەنگە گڕەکەی بوو ژوورەکەی گرتبوو.",
            onPressedBritish: () => speakdeeps17("en-GB"),
            onPressedAmerican: () => speakdeeps17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We heard a deep roar in the distance.",
            kurdishText: "گوێم لە نەڕەیەکی قووڵ بوو لە دوورەوە.",
            onPressedBritish: () => speakdeeps18("en-GB"),
            onPressedAmerican: () => speakdeeps18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٠. (ھاوەڵناو) کە بە توندی ھەستی پێدەکرێت"),
          SentencesRow(
            englishText: "They expressed deep concern.",
            kurdishText: "نیگەرانی قووڵیان دەربڕی.",
            onPressedBritish: () => speakdeeps19("en-GB"),
            onPressedAmerican: () => speakdeeps19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We extend our deepest sympathies to his family.",
            kurdishText: "ھاوخەمی قووڵی خۆمان بۆ خێزانەکەی ڕادەگەیەنین.",
            onPressedBritish: () => speakdeeps20("en-GB"),
            onPressedAmerican: () => speakdeeps20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They have a deep respect for tradition.",
            kurdishText: "ڕێزێکی زۆرمان بۆ نەریتەکان ھەیە.",
            onPressedBritish: () => speakdeeps21("en-GB"),
            onPressedAmerican: () => speakdeeps21("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١١. (ھاوەڵناو) بە ئاستێکی زۆر"),
          SentencesRow(
            englishText: "He's in deep trouble.",
            kurdishText: "لە کێشەیەکی قووڵدایە.",
            onPressedBritish: () => speakdeeps22("en-GB"),
            onPressedAmerican: () => speakdeeps22("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The affair had exposed deep divisions within the party.",
            kurdishText: "بابەتەکە ناکۆکی قووڵی لەناو پارتەکەدا درووست کردبوو.",
            onPressedBritish: () => speakdeeps23("en-GB"),
            onPressedAmerican: () => speakdeeps23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٢. (ھاوەڵناو) پیشاندانی زانیاری و تێگەشتنی زۆر"),
          SentencesRow(
            englishText:
                "She had reached a deep understanding of the local culture.",
            kurdishText: "گەشتبوو بە تێگەشتنێکی زۆر بۆ کەلتوورە خۆجێییەکە.",
            onPressedBritish: () => speakdeeps24("en-GB"),
            onPressedAmerican: () => speakdeeps24("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We will need a deeper analysis of this problem.",
            kurdishText: "پێویستیمان بە شیکردنەوەیەکی زیاتری ئەم کێشەیە.",
            onPressedBritish: () => speakdeeps25("en-GB"),
            onPressedAmerican: () => speakdeeps25("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٣. (ھاوەڵناو) سەخت بۆ تێگەشتن"),
          SentencesRow(
            englishText: "This discussion's getting too deep for me.",
            kurdishText: "باسەکە زۆر قووڵ دەبێتەوە بۆ من.",
            onPressedBritish: () => speakdeeps26("en-GB"),
            onPressedAmerican: () => speakdeeps26("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He always sought for a deeper meaning in everything.",
            kurdishText: "ھەمیشە بۆ واتایەکی قووڵتر لە ھەموو شتێکدا دەگەڕا.",
            onPressedBritish: () => speakdeeps27("en-GB"),
            onPressedAmerican: () => speakdeeps27("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They spent hours discussing deep philosophical issues.",
            kurdishText:
                "چەندین کاتژمێریان بەسەر برد بە باسکردنی بابەتی قووڵی فەلسەفی.",
            onPressedBritish: () => speakdeeps28("en-GB"),
            onPressedAmerican: () => speakdeeps28("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٤. (ھاوەڵناو) بە تەواوی بەژدار لە چالاکییەک یان دۆخێک"),
          SentencesRow(
            englishText: "The firm ended up deep in debt.",
            kurdishText: "کۆمپانیەکە کۆتایی پێھات لە قەرزێکی خەستدا.",
            onPressedBritish: () => speakdeeps29("en-GB"),
            onPressedAmerican: () => speakdeeps29("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He is often so deep in his books that he forgets to eat.",
            kurdishText:
                "زۆرجار قووڵدەبێتەوە لە کتێبدا کە بیری دەچێت خواردن بخوات.",
            onPressedBritish: () => speakdeeps30("en-GB"),
            onPressedAmerican: () => speakdeeps30("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٥. (ھاوەڵناو) کەسێک کە ھەست و سۆزی دەشارێتەوە"),
          SentencesRow(
            englishText: "She's always been a deep one, trusting no one.",
            kurdishText: "ھەمیشە کەسێکی ئاڵۆز بووە، باوەڕی بە کەس نەبووە.",
            onPressedBritish: () => speakdeeps31("en-GB"),
            onPressedAmerican: () => speakdeeps31("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٦. (ھاوەڵکار) مەودایەکی زۆر لە ڕووی شتێک یان لە ناو شتێکدا"),
          SentencesRow(
            englishText: "Dig deeper!",
            kurdishText: "قووڵتر بکەنە!",
            onPressedBritish: () => speakdeeps32("en-GB"),
            onPressedAmerican: () => speakdeeps32("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The miners were trapped deep underground.",
            kurdishText: "کان ھەڵکەنەکان قووڵ لەژێر زەویدا گیریان خواردبوو.",
            onPressedBritish: () => speakdeeps33("en-GB"),
            onPressedAmerican: () => speakdeeps33("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He stood with his hands deep in his pockets.",
            kurdishText: "وەستابوو بە دەستەکانی قووڵ لە گیرفانیدا.",
            onPressedBritish: () => speakdeeps34("en-GB"),
            onPressedAmerican: () => speakdeeps34("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He gazed deep into her eyes.",
            kurdishText: "قووڵ ڕووانی لە چاوەکانی.",
            onPressedBritish: () => speakdeeps35("en-GB"),
            onPressedAmerican: () => speakdeeps35("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٧. (ناو) دەریا"),
          SentencesRow(
            englishText:
                "His body was committed to the deep (= he was buried at sea).",
            kurdishText: "جەستەی بە دەریا سپێردرا.",
            onPressedBritish: () => speakdeeps36("en-GB"),
            onPressedAmerican: () => speakdeeps36("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٨. (ناو) بەشێکی قووڵی شتێک"),
          SentencesRow(
            englishText:
                "In the deep of night, the city streets were deserted and silent.",
            kurdishText:
                "لە قوڵایی شەودا، شەقامەکانی شارەکە چۆڵ و بێ‌دەنگ بوون.",
            onPressedBritish: () => speakdeeps37("en-GB"),
            onPressedAmerican: () => speakdeeps37("en-US"),
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
- Adjective: deep (derived forms: deeper, deepest)
1. Marked by depth of thinking
"deep thoughts"; "a deep allegory"
 
2. Very distant in time or space
"deep in the past"; "deep in enemy territory"; "deep in the woods"; "a deep space probe"
 
3. Intense or extreme
"in deep trouble"; "deep happiness"
 
4. Not easily disturbed or changed; big or strong
"a deep breath"; "a deep sigh"; "deep concentration"; "deep emotion"; "a deep trance"; "in a deep sleep"
 
5. Having great spatial extension or penetration downward or inward from an outer surface or backward or laterally or outward from a centre; sometimes used in combination
"a deep well"; "a deep dive"; "deep water"; "a deep casserole"; "a deep gash"; "deep massage"; "deep pressure receptors in muscles"; "deep shelves"; "a deep closet"; "surrounded by a deep yard"; "hit the ball to deep centre field"; "in deep space"; "waist-deep"
 
6. Having or denoting a low vocal or instrumental range (= bass)
"a deep voice";
 
7. Strong; intense (= rich)
"deep purple";
 
8. Relatively thick from top to bottom
"deep carpets"; "deep snow"
 
9. Extending relatively far inward
"a deep border"
 
10. (of darkness) densely dark (= thick)
"a face in deep shadow"; "deep night";
 
11. Large in quantity or size
"deep cuts in the budget"
 
12. With head or back bent low
"a deep bow"
 
13. Of an obscure nature (= cryptic, cryptical, inscrutable, mysterious, mystifying)
"a deep dark secret";
 
14. Difficult to penetrate; incomprehensible to one of ordinary understanding or knowledge (= abstruse, recondite)
"a deep metaphysical theory";
 
15. Exhibiting great cunning usually with secrecy
"deep political machinations"; "a deep plot"

- Adverb: deep 
1. To a great depth; far down or in (= deeply)
"dug deep";
 
2. To an advanced time (= late)
"deep into the night";
 
3. To a great distance
"penetrated deep into enemy territory"; "went deep into the woods"

- Noun: deep (derived forms: deeps)
1. The central and most intense or profound part
"in the deep of night"; "in the deep of winter"
 
2. A long steep-sided depression in the ocean floor (= trench, oceanic abyss)
 
3. Literary term for an ocean
"denizens of the deep"
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

  final String _videoId = 'kHrjgWoy8qY';
  final double _startSeconds = 291;

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

  final String _videoId = '3cxHwQl9pNM';
  final double _startSeconds = 85;

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

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 1186;

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

  final String _videoId = '_Z0ZQT0FttM';
  final double _startSeconds = 2147;

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

  final String _videoId = 'VwPGtn9qJZ4';
  final double _startSeconds = 1039;

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

  final String _videoId = 'dThvyim4tbU';
  final double _startSeconds = 98;

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

  final String _videoId = 'H3YesThIu6w';
  final double _startSeconds = 269;

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