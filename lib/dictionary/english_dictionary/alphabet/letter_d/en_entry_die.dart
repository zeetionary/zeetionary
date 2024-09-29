import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydie extends StatefulWidget {
  const EnglishEntrydie({super.key});

  @override
  State<EnglishEntrydie> createState() => _EnglishEntrydieState();
}

class _EnglishEntrydieState extends State<EnglishEntrydie> {
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
    return const EntryTitle(word: "die");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: die");
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
    return const IPAofEnglish(text: "IpaUK: /daɪ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdie(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("die");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdie("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /daɪ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdie(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("die");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdie("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdies1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My father died suddenly at the age of 48.");
  }

  Future<void> speakdies2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("At least six people have died in the accident.");
  }

  Future<void> speakdies3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("That plant's going to die if you don't water it!");
  }

  Future<void> speakdies4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He later died in hospital.");
  }

  Future<void> speakdies5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They died fighting for their country.");
  }

  Future<void> speakdies6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She died peacefully after a long illness.");
  }

  Future<void> speakdies7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A further 156 people have died with Covid-19.");
  }

  Future<void> speakdies8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was ready to die for his cause.");
  }

  Future<void> speakdies9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'll never forget it to my dying day.");
  }

  Future<void> speakdies10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I nearly died when I saw him there.");
  }

  Future<void> speakdies11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She died young.");
  }

  Future<void> speakdies12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("At least they died happy.");
  }

  Future<void> speakdies13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He died a hero.");
  }

  Future<void> speakdies14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He died a poor man.");
  }

  Future<void> speakdies15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her husband died suddenly last week.");
  }

  Future<void> speakdies16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her father died tragically in a car crash.");
  }

  Future<void> speakdies17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("That plant's died.");
  }

  Future<void> speakdies18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He died for his beliefs.");
  }

  Future<void> speakdies19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The old customs are dying.");
  }

  Future<void> speakdies20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His secret died with him.");
  }

  Future<void> speakdies21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The words died on my lips.");
  }

  Future<void> speakdies22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My phone died and I had no way to contact you.");
  }

  Future<void> speakdies23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The engine spluttered and died.");
  }

  Future<void> speakdies24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The worker placed the metal under the die.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: مردن، قاڵب، داڕێژگە، مۆر، نەرد، مۆرە، زار، دار،	قومار، بەخت، شانس،	قاڵاوێز
"""),
          const DefinitionKurdish(text: "١. (کردار) وەستان لە ژیان"),
          SentencesRow(
            englishText: "My father died suddenly at the age of 48.",
            kurdishText: "باوکم lەناکاو لە تەمەنی ٤٨ ساڵیدا گیانی سپارد.",
            onPressedBritish: () => speakdies1("en-GB"),
            onPressedAmerican: () => speakdies1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "At least six people have died in the accident.",
            kurdishText:
                "بە لایەنی کەمەوە شەش کەس لە ڕووداوەکە گیانیان لەدەستداوە.",
            onPressedBritish: () => speakdies2("en-GB"),
            onPressedAmerican: () => speakdies2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        "That plant's going to die if you don't water it!",
                    kurdishText: "ڕووەکەکان دەمرن ئەگەر ئاویان نەدەیت.",
                    onPressedBritish: () => speakdies3("en-GB"),
                    onPressedAmerican: () => speakdies3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "He later died in hospital.",
                    kurdishText: "دواتر لە نەخۆشخانە گیانی لەدەستدا.",
                    onPressedBritish: () => speakdies4("en-GB"),
                    onPressedAmerican: () => speakdies4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "They died fighting for their country.",
                    kurdishText: "مردن لەکاتی شەڕدا بۆ وڵاتەکەیان.",
                    onPressedBritish: () => speakdies5("en-GB"),
                    onPressedAmerican: () => speakdies5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "She died peacefully after a long illness.",
                    kurdishText:
                        "لە دوای نەخۆشییەکی درێژخایەن بە ئاسوودەیی مرد.",
                    onPressedBritish: () => speakdies6("en-GB"),
                    onPressedAmerican: () => speakdies6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "A further 156 people have died with Covid-19 (= they had the disease when they died).",
                    kurdishText: "١٥٦ کەسی دیکە بە کۆرۆنا گیانیان لەدەستداوە.",
                    onPressedBritish: () => speakdies7("en-GB"),
                    onPressedAmerican: () => speakdies7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "He was ready to die for his cause.",
                    kurdishText: "ئامادەبوو گیان بەخت بکات بۆ ئەم دۆزە.",
                    onPressedBritish: () => speakdies8("en-GB"),
                    onPressedAmerican: () => speakdies8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "I'll never forget it to my dying day (= until I die).",
                    kurdishText: "تاوەکو کۆتا ڕۆژەکانم لەبیری ناکەم.",
                    onPressedBritish: () => speakdies9("en-GB"),
                    onPressedAmerican: () => speakdies9("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "I nearly died when I saw him there (= it was very embarrassing).",
                    kurdishText: "خەریک بوو بمرم کە لەوێ بینیم.",
                    onPressedBritish: () => speakdies10("en-GB"),
                    onPressedAmerican: () => speakdies10("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "She died young.",
                    kurdishText: "بە گەنجی مرد.",
                    onPressedBritish: () => speakdies11("en-GB"),
                    onPressedAmerican: () => speakdies11("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "At least they died happy.",
                    kurdishText: "ھیچ نەبێت بە خۆشی مردن.",
                    onPressedBritish: () => speakdies12("en-GB"),
                    onPressedAmerican: () => speakdies12("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "He died a hero.",
                    kurdishText: "وەک پاڵەوانێک مرد.",
                    onPressedBritish: () => speakdies13("en-GB"),
                    onPressedAmerican: () => speakdies13("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "He died a poor man.",
                    kurdishText: "وەک پیاوێکی ھەژار مرد.",
                    onPressedBritish: () => speakdies14("en-GB"),
                    onPressedAmerican: () => speakdies14("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "Her husband died suddenly last week.",
                    kurdishText: "ھاوسەرەکەی ھەفتەی پێشوو لەناکاو مرد.",
                    onPressedBritish: () => speakdies15("en-GB"),
                    onPressedAmerican: () => speakdies15("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "Her father died tragically in a car crash.",
                    kurdishText: "باوکی بە تراژیدیایەک لە پێکدادانێکدا مرد.",
                    onPressedBritish: () => speakdies16("en-GB"),
                    onPressedAmerican: () => speakdies16("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "That plant's died.",
                    kurdishText: "ڕووەکەکە مردووە.",
                    onPressedBritish: () => speakdies17("en-GB"),
                    onPressedAmerican: () => speakdies17("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "He died for his beliefs.",
                    kurdishText: "بۆ ئامانجەکانی مرد.",
                    onPressedBritish: () => speakdies18("en-GB"),
                    onPressedAmerican: () => speakdies18("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The engine spluttered and died.",
                    kurdishText: "بزوێنەرەکە بڵتەیەکی کرد و کوژایەوە.",
                    onPressedBritish: () => speakdies23("en-GB"),
                    onPressedAmerican: () => speakdies23("en-US"),
                  ),

                  const DividerDefinition(),
                  const DefinitionKurdish(
                      text: "٤. (ناو) پارچە کانزایەک کە وەک قاڵب بەکاردێت"),
                  // const DividerSentences(),
                  SentencesRow(
                    englishText: "The worker placed the metal under the die.",
                    kurdishText: "کرێکارەکە کانزاکەی خستە ژێر قاڵبەکەوە.",
                    onPressedBritish: () => speakdies24("en-GB"),
                    onPressedAmerican: () => speakdies24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (کردار) وەستان لە بوون"),
          SentencesRow(
            englishText: "The old customs are dying.",
            kurdishText: "نەریتە کۆنەکان دەپووکێنەوە.",
            onPressedBritish: () => speakdies19("en-GB"),
            onPressedAmerican: () => speakdies19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "His secret died with him (= he never told anyone).",
            kurdishText: "نھێنییەکەی لەگەڵ خۆی بردە گۆڕ.",
            onPressedBritish: () => speakdies20("en-GB"),
            onPressedAmerican: () => speakdies20("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "٣. (کردار) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "The words died on my lips (= I stopped speaking).",
            kurdishText: "وشەکان لە قوڕگم گیران.",
            onPressedBritish: () => speakdies21("en-GB"),
            onPressedAmerican: () => speakdies21("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) وەستان لە کارکردن"),
          SentencesRow(
            englishText: "My phone died and I had no way to contact you.",
            kurdishText:
                "موبایلەکەم کوژایەوە و ھیچ ڕێگایەکم نەبوو پەیوەندیت پێوە بکەم.",
            onPressedBritish: () => speakdies22("en-GB"),
            onPressedAmerican: () => speakdies22("en-US"),
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

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: die (derived forms: died, dying, dies)
1. Cease to live; lose all bodily attributes and functions necessary to sustain life (= decease [archaic], perish, go, exit, pass away, expire, pass, kick the bucket [informal], cash in one's chips [informal], buy the farm [N. Amer, informal], conk [informal], give-up the ghost [informal], drop dead, pop off [informal], choke, croak [informal], snuff it [informal], flatline [informal], cop it [Brit, informal], cash in [informal], pop one's clogs [informal])
"She died from cancer";
 
2. Suffer or face the pain of death
"Martyrs may die every day for their faith"
 
3. Be brought to or as if to the point of death by an intense emotion such as embarrassment, amusement, or shame
"I was dying with embarrassment when my little lie was discovered"; "We almost died laughing during the show"
 
4. Stop operating or functioning (= fail, go bad, give way, give out, conk out [informal], go, break, break down, pack up [Brit, informal])
"The car died on the road";
 
5. Feel indifferent towards
"She died to worldly things and eventually entered a monastery"
 
6. Languish as with love or desire
"She dying for a cigarette"; "I was dying to leave"
 
7. Cut or shape with a die (= die out)
"Die out leather for belts";
 
8. (baseball) to be on base at the end of an inning, of a player
 
9. Lose sparkle or bouquet (= pall, become flat)
 
10. Disappear or come to an end
"Their anger died"; "My secret will die with me!"
 
11. (religion) suffer spiritual death; be damned (in the religious sense)
"Whosoever..believes in me shall never die"

- Noun: die
1. A small cube with 1 to 6 spots on the six faces; used in gambling to generate random numbers (= dice)
 
2. A device used for shaping metal
 
3. A cutting tool that is fitted into a diestock and used for cutting male (external) screw threads on screws, bolts, pipes or rods
 
4. An embossed block of metal or wood used for stamping a design on coins, medals, etc.
 
5. (architecture) a cube-shaped part of a pedestal
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

  final String _videoId = 'VZrw3cLD59M';
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

  final String _videoId = 'drFkWpbTlcQ';
  final double _startSeconds = 25;

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

  final String _videoId = 'A4FvI1r3rIg';
  final double _startSeconds = 26;

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

  final String _videoId = 'XeWNo_edf6Q';
  final double _startSeconds = 26;

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

  final String _videoId = 'FBmlde9ymIA';
  final double _startSeconds = 23;

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

  final String _videoId = 'R_fZjGm2OrM';
  final double _startSeconds = 0;

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

  final String _videoId = 'kXShLPXfWZA';
  final double _startSeconds = 314;

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