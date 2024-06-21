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
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
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
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
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
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do you have the correct time?");
  }

  Future<void> speakcorrects2(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Please check that these details are correct.");
  }

  Future<void> speakcorrects3(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("As always, your grandmother is absolutely correct.");
  }

  Future<void> speakcorrects4(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They were correct in their assessment of the situation.");
  }

  Future<void> speakcorrects5(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is correct to say that Camus's philosophy can be divided into two periods.");
  }

  Future<void> speakcorrects6(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is correct that there are some similarities between the two cases.");
  }

  Future<void> speakcorrects7(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Do you know the correct way to shut the machine down?");
  }

  Future<void> speakcorrects8(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I think you've made the correct decision.");
  }

  Future<void> speakcorrects9(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He is always very correct in his speech.");
  }

  Future<void> speakcorrects10(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Read through your work and correct any mistakes that you find.");
  }

  Future<void> speakcorrects11(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I thought we had corrected the problem.");
  }

  Future<void> speakcorrects12(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their eyesight can be corrected in just a few minutes by the use of a laser.");
  }

  Future<void> speakcorrects13(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They issued a statement correcting the one they had made earlier.");
  }

  Future<void> speakcorrects14(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "At this stage you should be able to correct at least some of your own mistakes.");
  }

  Future<void> speakcorrects15(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I spent all evening correcting essays.");
  }

  Future<void> speakcorrects16(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's simply not true that teachers no longer correct bad spellings.");
  }

  Future<void> speakcorrects17(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Yes, you're right—I stand corrected.");
  }

  Future<void> speakcorrects18(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Correct me if I'm wrong, but isn't he Jane's brother??");
  }

  Future<void> speakcorrects19(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects1900");
  }

  Future<void> speakcorrects20(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects2000");
  }

  Future<void> speakcorrects21(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects2100");
  }

  Future<void> speakcorrects22(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects2200");
  }

  Future<void> speakcorrects23(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects2300");
  }

  Future<void> speakcorrects24(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects2400");
  }

  Future<void> speakcorrects25(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects2500");
  }

  Future<void> speakcorrects26(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects2600");
  }

  Future<void> speakcorrects27(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects2700");
  }

  Future<void> speakcorrects28(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects2800");
  }

  Future<void> speakcorrects29(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects2900");
  }

  Future<void> speakcorrects30(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects3000");
  }

  Future<void> speakcorrects31(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects3100");
  }

  Future<void> speakcorrects32(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects3200");
  }

  Future<void> speakcorrects33(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects3300");
  }

  Future<void> speakcorrects34(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects3400");
  }

  Future<void> speakcorrects35(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects3500");
  }

  Future<void> speakcorrects36(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects3600");
  }

  Future<void> speakcorrects37(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects3700");
  }

  Future<void> speakcorrects38(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects3800");
  }

  Future<void> speakcorrects39(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects3900");
  }

  Future<void> speakcorrects40(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects4000");
  }

  Future<void> speakcorrects41(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects4100");
  }

  Future<void> speakcorrects42(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects4200");
  }

  Future<void> speakcorrects43(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects4300");
  }

  Future<void> speakcorrects44(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects4400");
  }

  Future<void> speakcorrects45(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects4500");
  }

  Future<void> speakcorrects46(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects4600");
  }

  Future<void> speakcorrects47(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects4700");
  }

  Future<void> speakcorrects48(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects4800");
  }

  Future<void> speakcorrects49(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects4900");
  }

  Future<void> speakcorrects50(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects5000");
  }

  Future<void> speakcorrects51(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects5100");
  }

  Future<void> speakcorrects52(String languageCode) async {
    // DOPSUM: CHANGE speakcorrect
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcorrects5200");
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
کوردی: دروست، ڕاست، بێ‌ھەڵە، ساغ، ورد،	بەجێ، بەڕێ‌وجێ، شیاو، گونجاو، باش، ژیرانە
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵناو) ڕاست، درووست؛ بەبێ ھەڵە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Do you have the correct time?"),
                    ExampleSentenceKurdish(
                      text: "کاتی درووست دەزانی؟",
                      note: "کاتژمێرەکەت کاتی درووست دەخوێنێتەوە؟",
                    ),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "correct", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrects1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrects1("en-US"),
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
                        text: "Please check that these details are correct."),
                    ExampleSentenceKurdish(
                        text: "تکایە ئەوە بپشکنە کە وردەکارییەکان درووستن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrects2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrects2("en-US"),
                  ),
                ],
              ),
            ],
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
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Do you know the correct way to shut the machine down?"),
                    ExampleSentenceKurdish(
                        text: "شێوازی گونجاو دەزانیت بۆ کوژاندنەوەی ئامێرەکە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrects7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrects7("en-US"),
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
                        text: "I think you've made the correct decision."),
                    ExampleSentenceKurdish(
                        text: "پێموایە بڕیاری درووستت داوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrects8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrects8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ھاوەڵناو) بەئاگابوون لەوەی بەشێوەیەک قسە یان ڕەفتار بکەیت کە گونجاو و پەسەندکراو بێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He is always very correct in his speech."),
                    ExampleSentenceKurdish(
                        text: "ھەمیشە زۆر ژیرە لە قسەکردنیدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrects9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrects9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) ڕاستکردنەوە یان درووستکردنی شتێک، بۆ نموونە بە لابردن یان چاککردنی ھەڵەکانی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Read through your work and correct any mistakes that you find."),
                    ExampleSentenceKurdish(
                        text:
                            "کارەکەت بخوێنەوە و ھەر ھەڵەیەک ڕاست بکەوە کە دەیدۆزیتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrects10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrects10("en-US"),
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
                        text: "I thought we had corrected the problem."),
                    ExampleSentenceKurdish(
                        text: "پێموابوو ھەڵەکەمان ڕاستکردبووەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrects11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrects11("en-US"),
                  ),
                ],
              ),
            ],
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
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I spent all evening correcting essays."),
                    ExampleSentenceKurdish(
                        text:
                            "تەواوی ئێوارەکەم بەسەربرد بە تەسریحدانی داڕشتنەکان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrects15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrects15("en-US"),
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
                            "It's simply not true that teachers no longer correct bad spellings."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەوە تەواو ڕاست نییە کە مامۆستایان چی دیکە ڕێنووسی ھەڵە ڕاست ناکەنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrects16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrects16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) گوتن بە کەسێک کە ھەڵەیەکی کردووە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Yes, you're right—I stand corrected (= I accept that I made a mistake)."),
                    ExampleSentenceKurdish(
                        text: "بەڵێ ڕاست دەکەیت، من ھەڵە بووم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrects17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrects17("en-US"),
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
                            "Correct me if I'm wrong, but isn't he Jane's brother??"),
                    ExampleSentenceKurdish(
                        text:
                            "ڕاستم بکەوە ئەگەر ھەڵەم، بەڵام ئەو برای جەین نییە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcorrects18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcorrects18("en-US"),
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
          // Using the EnglishButtonTTS class
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

class YoutubeEmbeddedend extends StatefulWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  State<YoutubeEmbeddedend> createState() => _YoutubeEmbeddedendState();
}

class _YoutubeEmbeddedendState extends State<YoutubeEmbeddedend> {
  late YoutubePlayerController _controller;
  final String _videoId = 'XDSiEX5jwbs';
  final double _startSeconds = 93;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainerEnd(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatefulWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  State<YoutubeEmbeddedone> createState() => _YoutubeEmbeddedoneState();
}

class _YoutubeEmbeddedoneState extends State<YoutubeEmbeddedone> {
  late YoutubePlayerController _controller;
  final String _videoId = 'AOfIm5YZzVo';
  final double _startSeconds = 170;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatefulWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  State<YoutubeEmbeddedtwo> createState() => _YoutubeEmbeddedtwoState();
}

class _YoutubeEmbeddedtwoState extends State<YoutubeEmbeddedtwo> {
  late YoutubePlayerController _controller;
  final String _videoId = 'iKv4oc2zbeA';
  final double _startSeconds = 1865;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatefulWidget {
  const YoutubeEmbeddedthree({super.key});

  @override
  State<YoutubeEmbeddedthree> createState() => _YoutubeEmbeddedthreeState();
}

class _YoutubeEmbeddedthreeState extends State<YoutubeEmbeddedthree> {
  late YoutubePlayerController _controller;
  final String _videoId = 'lqF2yyRR6fA';
  final double _startSeconds = 172;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatefulWidget {
  const YoutubeEmbeddedfour({super.key});

  @override
  State<YoutubeEmbeddedfour> createState() => _YoutubeEmbeddedfourState();
}

class _YoutubeEmbeddedfourState extends State<YoutubeEmbeddedfour> {
  late YoutubePlayerController _controller;
  final String _videoId = 'E72wnbus4aE';
  final double _startSeconds = 100;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatefulWidget {
  const YoutubeEmbeddedfive({super.key});

  @override
  State<YoutubeEmbeddedfive> createState() => _YoutubeEmbeddedfiveState();
}

class _YoutubeEmbeddedfiveState extends State<YoutubeEmbeddedfive> {
  late YoutubePlayerController _controller;
  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 236;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatefulWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  State<YoutubeEmbeddedsix> createState() => _YoutubeEmbeddedsixState();
}

class _YoutubeEmbeddedsixState extends State<YoutubeEmbeddedsix> {
  late YoutubePlayerController _controller;
  final String _videoId = 'MGO4_8YRKro';
  final double _startSeconds = 230;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
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