import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycry extends StatefulWidget {
  const EnglishEntrycry({super.key});

  @override
  State<EnglishEntrycry> createState() => _EnglishEntrycryState();
}

class _EnglishEntrycryState extends State<EnglishEntrycry> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EntryAndIPA(),
                          ],
                        ),
                      ],
                    ),
                  ),
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
    return const EntryTitle(word: "cry");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cry");
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
    return const IPAofEnglish(text: "IpaUK: /kraɪ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcry(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("cry");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcry("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kraɪ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcry(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("cry");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcry("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrys1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It's all right. Don't cry.");
  }

  Future<void> speakcrys2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I just couldn't stop crying.");
  }

  Future<void> speakcrys3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The little boy fell over and started to cry.");
  }

  Future<void> speakcrys4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The baby was crying for its mother.");
  }

  Future<void> speakcrys5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There's nothing to cry about.");
  }

  Future<void> speakcrys6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She threw her arms around his neck crying tears of joy.");
  }

  Future<void> speakcrys7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("That night she cried herself to sleep.");
  }

  Future<void> speakcrys8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She ran to the window and cried for help.");
  }

  Future<void> speakcrys9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He cried for help as the fire spread.");
  }

  Future<void> speakcrys10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Seagulls followed the boat, crying loudly.");
  }

  Future<void> speakcrys11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A pair of eagles cried out to each other as they circled above the trees.");
  }

  Future<void> speakcrys12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He fell to the ground with a cry.");
  }

  Future<void> speakcrys13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He was too weak to raise even the smallest of cries.");
  }

  Future<void> speakcrys14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He gave a loud cry of despair.");
  }

  Future<void> speakcrys15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("With a cry of ‘Stop thief!’ he ran after the boy.");
  }

  Future<void> speakcrys16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her answer was greeted with cries of outrage.");
  }

  Future<void> speakcrys17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She heard cries in the distance.");
  }

  Future<void> speakcrys18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The eagle gave a cry as it circled overhead.");
  }

  Future<void> speakcrys19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Her behaviour at school was really a cry for help.");
  }

  Future<void> speakcrys20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We need a new leader who's ready to hear the cry of the people.");
  }

  Future<void> speakcrys21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I felt a lot better after a good long cry.");
  }

  Future<void> speakcrys22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You'll feel better when you've had a good cry.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: ھەرا، نەڕە، گوڕە، بانگ، گازی، ھاوار، زریوەزریو، بۆڕە، قاو، قیژە، زیکە، جیکە، زیقە،	گریان، ماوەی گریان،	لوورە،	جاڕ، بانگەواز،	دروشم،	داخوازی، داوا،	سکاڵا، شکات
"""),
          const DefinitionKurdish(text: "١. (کردار) گریان"),
          SentencesRow(
            englishText: "It's all right. Don't cry.",
            kurdishText: "ھیچ نییە، مەگری.",
            onPressedBritish: () => speakcrys1("en-GB"),
            onPressedAmerican: () => speakcrys1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I just couldn't stop crying.",
            kurdishText: "نەمدەتوانی لە گریان بوەستم.",
            onPressedBritish: () => speakcrys2("en-GB"),
            onPressedAmerican: () => speakcrys2("en-US"),
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
                                    "The little boy fell over and started to cry."),
                            ExampleSentenceKurdish(
                                text:
                                    "کوڕە بچووکەکە کەوت و دەستیکرد بە گریان."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrys3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrys3("en-US"),
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
                                    "The baby was crying for (= because it wanted) its mother."),
                            ExampleSentenceKurdish(
                                text: "منداڵەکە بۆ دایکی دەگریا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrys4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrys4("en-US"),
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
                                text: "There's nothing to cry about."),
                            ExampleSentenceKurdish(
                                text: "ھیچ شتێک نییە لەسەری بگریت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrys5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrys5("en-US"),
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
                                    "She threw her arms around his neck crying tears of joy."),
                            ExampleSentenceKurdish(
                                text: "دەستی لە ملی کرد و فرمێسکی شادیی ڕشت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrys6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrys6("en-US"),
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
                                text: "That night she cried herself to sleep."),
                            ExampleSentenceKurdish(
                                text: "ئەو شەوە بە گریانە خەوت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrys7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrys7("en-US"),
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
          const DefinitionKurdish(text: "٢. (کردار) ھاوارکردن بە دەنگی بەرز"),
          SentencesRow(
            englishText: "She ran to the window and cried for help.",
            kurdishText: "بەرەو پەنجەرەکە ڕایکرد و ھاواری کرد بۆ یارمەتی.",
            onPressedBritish: () => speakcrys8("en-GB"),
            onPressedAmerican: () => speakcrys8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He cried for help as the fire spread.",
            kurdishText: "کە ئاگرەکە بڵاوبوویەوە قیژاندی بۆ یارمەتی.",
            onPressedBritish: () => speakcrys9("en-GB"),
            onPressedAmerican: () => speakcrys9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) درووستکردنی دەنگێکی بەرز لەلایەن ئاژەڵێکەوە"),
          SentencesRow(
            englishText: "Seagulls followed the boat, crying loudly.",
            kurdishText: "نەورەس شوێنی بەلەمەکە کەوتن و بە بەرزی دەیانقڕیواند.",
            onPressedBritish: () => speakcrys10("en-GB"),
            onPressedAmerican: () => speakcrys10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "A pair of eagles cried out to each other as they circled above the trees.",
            kurdishText:
                "جووتێک داڵ بۆ یەکتری دەیانزیقاند کە بە دەوری دارەکاندا دەسووڕانەوە.",
            onPressedBritish: () => speakcrys11("en-GB"),
            onPressedAmerican: () => speakcrys11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ناو) ھاوارێکی بەرز"),
          SentencesRow(
            englishText: "He fell to the ground with a cry.",
            kurdishText: "بە ھاوارێکی بەرزەوە دای بە زەویدا.",
            onPressedBritish: () => speakcrys12("en-GB"),
            onPressedAmerican: () => speakcrys12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He was too weak to raise even the smallest of cries.",
            kurdishText: "زۆر لاواز بوو کە تەنانەت بچووکترین ھاواریش بکات.",
            onPressedBritish: () => speakcrys13("en-GB"),
            onPressedAmerican: () => speakcrys13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He gave a loud cry of despair.",
            kurdishText: "ھاوارێکی بەرزی لە نائومێدیدا کرد.",
            onPressedBritish: () => speakcrys14("en-GB"),
            onPressedAmerican: () => speakcrys14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) ھاوارکردنێکی بەرز"),
          SentencesRow(
            englishText: "With a cry of ‘Stop thief!’ he ran after the boy.",
            kurdishText: "بە ھاوارکردنی 'بوەستە دز!' ڕایکرد بە دوای کوڕەکەدا.",
            onPressedBritish: () => speakcrys15("en-GB"),
            onPressedAmerican: () => speakcrys15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Her answer was greeted with cries of outrage.",
            kurdishText: "وەڵامەکەی بە ھاوارکردنی تووڕەییەوە پێشوازی لێکرا.",
            onPressedBritish: () => speakcrys16("en-GB"),
            onPressedAmerican: () => speakcrys16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She heard cries in the distance.",
            kurdishText: "گوێی لە ھاوارکردن بوو لە دوورەوە.",
            onPressedBritish: () => speakcrys17("en-GB"),
            onPressedAmerican: () => speakcrys17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ناو) دەنگی باڵندە یان ئاژەڵێک"),
          SentencesRow(
            englishText: "The eagle gave a cry as it circled overhead.",
            kurdishText: "داڵەکە زیقەیەکی کرد لە کە لەسەرەوە دەسووڕایەوە.",
            onPressedBritish: () => speakcrys18("en-GB"),
            onPressedAmerican: () => speakcrys18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ناو) داوا یان داخوازی بۆ شتێک کە زوو پێویستە"),
          SentencesRow(
            englishText: "Her behaviour at school was really a cry for help.",
            kurdishText: "ڕەفتاری لە قوتابخانە تەواو داوایەک بوو بۆ یارمەتی.",
            onPressedBritish: () => speakcrys19("en-GB"),
            onPressedAmerican: () => speakcrys19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "We need a new leader who's ready to hear the cry of the people.",
            kurdishText:
                "پێویستیمان بە سەرکردەیەکی تازەیە کە ئامادەیە گوێ لە ھاواری خەڵکی بگرێت.",
            onPressedBritish: () => speakcrys20("en-GB"),
            onPressedAmerican: () => speakcrys20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ناو) گریان یان ماوەیەک لە گریان"),
          SentencesRow(
            englishText: "I felt a lot better after a good long cry.",
            kurdishText: "ھەستم زۆر بە باشتر کرد لە دوای ماوەیەک لە گریان.",
            onPressedBritish: () => speakcrys21("en-GB"),
            onPressedAmerican: () => speakcrys21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "You'll feel better when you've had a good cry.",
            kurdishText:
                "ھەست زۆر بە باشتر دەکەیت لە دوای ئەوەی ماوەیەک بە باشی گریاویت.",
            onPressedBritish: () => speakcrys22("en-GB"),
            onPressedAmerican: () => speakcrys22("en-US"),
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
- Verb: cry (derived forms: cried, crying, cries)
1. Utter a sudden loud cry (= shout, shout out, call, yell, scream, holler [informal], hollo [non-standard], squall)
"she cried with pain when the doctor inserted the needle";
 
2. Shed tears because of sadness, rage, or pain (= weep)
"She cried bitterly when she heard the news of his death";
 
3. Utter aloud; often with surprise, horror, or joy (= exclaim, cry out, outcry, call out, shout)
"'Help!' she cried"; "'I won!' he cried out";
 
4. Proclaim or announce in public (= blazon out)
"He cried his merchandise in the market square"; "before we had newspapers, a town crier would cry the news";
 
5. Demand immediate action
"This situation is crying for attention"
 
6. Utter a characteristic sound
"The cat was crying"
 
7. Bring into a particular state by crying
"The little boy cried himself to sleep"

- Noun: cry (derived forms: cries)
1. A loud utterance; often in protest or opposition (= outcry, call, yell, shout, vociferation)
"the speaker was interrupted by loud cries from the rear of the audience";
 
2. A loud utterance of emotion (especially when inarticulate) (= yell)
"a cry of rage";
 
3. A slogan used to rally support for a cause (= war cry, rallying cry, battle cry, watchword)
"a cry to arms"; "a war cry to arms"; "a rallying cry to arms"; "a battle cry to arms";
 
4. A fit of weeping
"had a good cry"
 
5. The characteristic utterance of an animal
"animal cries filled the night"
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

  final String _videoId = '_spuxXnul0U';
  final double _startSeconds = 109;

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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 423;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 267;

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

  final String _videoId = 'R_fZjGm2OrM';
  final double _startSeconds = 197;

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

  final String _videoId = 'NCLZi2Rn_ug';
  final double _startSeconds = 82;

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

  final String _videoId = 'ozsgl_sLnHQ';
  final double _startSeconds = 1782;

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

  final String _videoId = 'nITZooG6ij8';
  final double _startSeconds = 19;

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