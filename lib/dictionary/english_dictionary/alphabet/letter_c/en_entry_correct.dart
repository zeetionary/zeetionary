import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycorrect extends StatefulWidget {
  const EnglishEntrycorrect({super.key});

  @override
  State<EnglishEntrycorrect> createState() => _EnglishEntrycorrectState();
}

class _EnglishEntrycorrectState extends State<EnglishEntrycorrect> {
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
    return const EntryTitle(word: "correct");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: correct");
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
    return const IPAofEnglish(text: "IpaUK: /kəˈrekt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorrect(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("correct");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcorrect("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kəˈrekt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorrect(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("correct");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcorrect("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorrects1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Do you have the correct time?");
  }

  Future<void> speakcorrects2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Please check that these details are correct.");
  }

  Future<void> speakcorrects3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("As always, your grandmother is absolutely correct.");
  }

  Future<void> speakcorrects4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They were correct in their assessment of the situation.");
  }

  Future<void> speakcorrects5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "It is correct to say that Camus's philosophy can be divided into two periods.");
  }

  Future<void> speakcorrects6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "It is correct that there are some similarities between the two cases.");
  }

  Future<void> speakcorrects7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Do you know the correct way to shut the machine down?");
  }

  Future<void> speakcorrects8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I think you've made the correct decision.");
  }

  Future<void> speakcorrects9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He is always very correct in his speech.");
  }

  Future<void> speakcorrects10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Read through your work and correct any mistakes that you find.");
  }

  Future<void> speakcorrects11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I thought we had corrected the problem.");
  }

  Future<void> speakcorrects12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Their eyesight can be corrected in just a few minutes by the use of a laser.");
  }

  Future<void> speakcorrects13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "They issued a statement correcting the one they had made earlier.");
  }

  Future<void> speakcorrects14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "At this stage you should be able to correct at least some of your own mistakes.");
  }

  Future<void> speakcorrects15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I spent all evening correcting essays.");
  }

  Future<void> speakcorrects16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "It's simply not true that teachers no longer correct bad spellings.");
  }

  Future<void> speakcorrects17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Yes, you're right—I stand corrected.");
  }

  Future<void> speakcorrects18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Correct me if I'm wrong, but isn't he Jane's brother??");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: دروست، ڕاست، بێ‌ھەڵە، ساغ، ورد،	بەجێ، بەڕێ‌وجێ، شیاو، گونجاو، باش، ژیرانە
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵناو) ڕاست، درووست؛ بەبێ ھەڵە"),
          SentencesRow(
            englishText: "Do you have the correct time?",
            kurdishText: "کاتی درووست دەزانی؟",
            kurdishNote:
                "کاتژمێرەکەت کاتی درووست دەخوێنێتەوە؟", // correct", please follow LX instructions
            onPressedBritish: () => speakcorrects1("en-GB"),
            onPressedAmerican: () => speakcorrects1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Please check that these details are correct.",
            kurdishText: "تکایە ئەوە بپشکنە کە وردەکارییەکان درووستن.",
            onPressedBritish: () => speakcorrects2("en-GB"),
            onPressedAmerican: () => speakcorrects2("en-US"),
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
                                    "As always, your grandmother is absolutely correct."),
                            ExampleSentenceKurdish(
                                text: "وەک ھەمیشە، داپیرەت بە تەواوی ڕاستە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcorrects3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcorrects3("en-US"),
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
                                    "They were correct in their assessment of the situation."),
                            ExampleSentenceKurdish(
                                text: "ڕاست بوون لە ھەڵسەنگاندنیان بۆ دۆخەکە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcorrects4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcorrects4("en-US"),
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
                                    "It is correct to say that Camus's philosophy can be divided into two periods."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئەوە درووستە کە بگوترێت فەلسەفەی کامۆ دەکرێت دابەش بکرێتە سەر دوو ماوەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcorrects5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcorrects5("en-US"),
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
                                    "It is correct that there are some similarities between the two cases."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئەوە درووستە کە ھەندێک لێکچوون لە نێوان دوو دۆخەکەدا ھەیە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcorrects6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcorrects6("en-US"),
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
                  "٢. (ھاوەڵناو) ڕاست و گونجاو، بەو شێوەیەی کە دەبێت شتێل بکرێت"),
          SentencesRow(
            englishText:
                "Do you know the correct way to shut the machine down?",
            kurdishText: "شێوازی گونجاو دەزانیت بۆ کوژاندنەوەی ئامێرەکە؟",
            onPressedBritish: () => speakcorrects7("en-GB"),
            onPressedAmerican: () => speakcorrects7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I think you've made the correct decision.",
            kurdishText: "پێموایە بڕیاری درووستت داوە.",
            onPressedBritish: () => speakcorrects8("en-GB"),
            onPressedAmerican: () => speakcorrects8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ھاوەڵناو) بەئاگابوون لەوەی بەشێوەیەک قسە یان ڕەفتار بکەیت کە گونجاو و پەسەندکراو بێت"),
          SentencesRow(
            englishText: "He is always very correct in his speech.",
            kurdishText: "ھەمیشە زۆر ژیرە لە قسەکردنیدا.",
            onPressedBritish: () => speakcorrects9("en-GB"),
            onPressedAmerican: () => speakcorrects9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) ڕاستکردنەوە یان درووستکردنی شتێک، بۆ نموونە بە لابردن یان چاککردنی ھەڵەکانی"),
          SentencesRow(
            englishText:
                "Read through your work and correct any mistakes that you find.",
            kurdishText:
                "کارەکەت بخوێنەوە و ھەر ھەڵەیەک ڕاست بکەوە کە دەیدۆزیتەوە.",
            onPressedBritish: () => speakcorrects10("en-GB"),
            onPressedAmerican: () => speakcorrects10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I thought we had corrected the problem.",
            kurdishText: "پێموابوو ھەڵەکەمان ڕاستکردبووەوە.",
            onPressedBritish: () => speakcorrects11("en-GB"),
            onPressedAmerican: () => speakcorrects11("en-US"),
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
                                    "Their eyesight can be corrected in just a few minutes by the use of a laser."),
                            ExampleSentenceKurdish(
                                text:
                                    "بینایی دەکرێت ڕاست بکرێتەوە بە تەنھا چەند خولەکێک بە بەکارھێنانی لەیزەر."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcorrects12("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcorrects12("en-US"),
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
                                    "They issued a statement correcting the one they had made earlier."),
                            ExampleSentenceKurdish(
                                text:
                                    "بەیاننامەیەکیان بڵاوکردەوە بۆ ڕاستکردنەوەی ئەوەی پێشووتر بڵاویان کردبوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcorrects13("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcorrects13("en-US"),
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
                                    "At this stage you should be able to correct at least some of your own mistakes."),
                            ExampleSentenceKurdish(
                                text:
                                    "لەم قۆناغەدا دەبێت بتوانیت ھیچ نەبێت ھەندێک لە ھەڵەکانی خۆت ڕاست بکەیتەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcorrects14("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcorrects14("en-US"),
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
                  "٥. (کردار) دیاریکردنی ھەڵە و پێدانی نمرە بە وەڵامی تاقیکردنەوەی خوێندکار"),
          SentencesRow(
            englishText: "I spent all evening correcting essays.",
            kurdishText: "تەواوی ئێوارەکەم بەسەربرد بە تەسریحدانی داڕشتنەکان.",
            onPressedBritish: () => speakcorrects15("en-GB"),
            onPressedAmerican: () => speakcorrects15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "It's simply not true that teachers no longer correct bad spellings.",
            kurdishText:
                "ئەوە تەواو ڕاست نییە کە مامۆستایان چی دیکە ڕێنووسی ھەڵە ڕاست ناکەنەوە.",
            onPressedBritish: () => speakcorrects16("en-GB"),
            onPressedAmerican: () => speakcorrects16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) گوتن بە کەسێک کە ھەڵەیەکی کردووە"),
          SentencesRow(
            englishText:
                "Yes, you're right—I stand corrected (= I accept that I made a mistake).",
            kurdishText: "بەڵێ ڕاست دەکەیت، من ھەڵە بووم.",
            onPressedBritish: () => speakcorrects17("en-GB"),
            onPressedAmerican: () => speakcorrects17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Correct me if I'm wrong, but isn't he Jane's brother??",
            kurdishText: "ڕاستم بکەوە ئەگەر ھەڵەم، بەڵام ئەو برای جەین نییە؟",
            onPressedBritish: () => speakcorrects18("en-GB"),
            onPressedAmerican: () => speakcorrects18("en-US"),
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
- Verb: correct (derived forms: corrected, correcting, corrects) 
1. Make right or correct (= rectify, right)
"Correct the mistakes";
 
2. Make reparations or amends for (= right, compensate, redress)
"correct a wrong done to the victims of the Holocaust";
 
3. Censure severely (= chastise, castigate, objurgate, chasten)
"She corrected him for his insensitive remarks";
 
4. Adjust for (= compensate, counterbalance, make up, even out, even off, even up)
"engineers will work to correct the effects of air resistance";
 
5. Punish in order to gain control or enforce obedience (= discipline, sort out)
"The teacher corrected the pupils rather frequently";
 
6. Fall in value (= decline, slump)
"the stock market corrected";
 
7. Alter or regulate so as to achieve accuracy or conform to a standard (= adjust, set)
"correct the alignment of the front wheels";
 
8. Treat a defect
"The new contact lenses will correct for his myopia"

- Adjective: correct 
1. Free from error; especially conforming to fact or truth (= right)
"the correct version";
 
2. Having truthful opinions or making the right judgment (= right)
"time proved him correct";
 
3. Socially appropriate or approved (= right, done [Brit])
"correct behaviour";
 
4. In accord with accepted standards of usage or procedure (= right)
"what's the correct word for this?";
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

  final String _videoId = 'XDSiEX5jwbs';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'AOfIm5YZzVo';
  final double _startSeconds = 170;

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

  final String _videoId = 'iKv4oc2zbeA';
  final double _startSeconds = 1865;

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

  final String _videoId = 'lqF2yyRR6fA';
  final double _startSeconds = 172;

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

  final String _videoId = 'E72wnbus4aE';
  final double _startSeconds = 100;

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

  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 236;

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

  final String _videoId = 'MGO4_8YRKro';
  final double _startSeconds = 230;

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