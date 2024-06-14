import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydesperate extends StatefulWidget {
  const EnglishEntrydesperate({super.key});

  @override
  State<EnglishEntrydesperate> createState() => _EnglishEntrydesperateState();
}

class _EnglishEntrydesperateState extends State<EnglishEntrydesperate> {
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
    return const EntryTitle(word: "desperate");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: desperate");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdespərət/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdesperate(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("desperate"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdesperate("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdespərət/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdesperate(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("desperate"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdesperate("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdesperates1(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The prisoners grew increasingly desperate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates2(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Stores are getting desperate after two years of poor sales."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates3(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I heard sounds of a desperate struggle in the next room."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates4(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I was starting to get desperate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates5(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She felt utterly desperate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates6(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The sudden loss of his money had made him desperate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates7(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He made a desperate bid for freedom."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates8(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She clung to the edge in a desperate attempt to save herself."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates9(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Doctors were fighting a desperate battle to save the little girl's life."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates10(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'm desperate for a coffee."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates11(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was so desperate for a job he would have done anything."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates12(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I was absolutely desperate to see her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates13(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They face a desperate shortage of clean water."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates14(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His financial situation was desperate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates15(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He had died in desperate poverty."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates16(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdesperates1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates17(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdesperates1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates18(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdesperates1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates19(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdesperates1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates20(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Stores are getting desperate after two years of poor sales.0"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates21(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdesperates2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdesperates22(String languageCode) async {
    // DOPSUM: CHANGE speakdesperate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdesperates2200"); // DOPSUM: CHANGE TEXT
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
کوردی: دەس‌لەگیان‌بەرداو، چارەنەماو، بێچارە، زۆربۆھاتوو، گیرکردوو، ناچار، داماو،	لە حەیبەتا، لە ڕووی ناچاری‌یەوە یان داماوی‌یەوە،	مەترسی‌دار، پڕمەترسی،	یەکجار خراپ، زۆر، شپرزە، سەخت، ئاستەم، توند، توندوتیژ، بەزەبروزەنگ، بێ‌بەزەیی‌یانە، توندوتیژانە،	چاولەدەس، موحتاج، حەوەجێ‌تێ‌کەوتوو،	ھیوابڕاو، دڵسارد، دەس‌شواردوو، دلساردانە، لە حەیبەت،	(تێکۆشان) بێ‌ئەنجام، بێھوودە
"""),
          const DefinitionKurdish(
              text:
                  "١. (ھاوەڵناو) بێ‌ھیوا و ئامادەیی بۆ کردنی ھەر شتێک بەبێ گرنگیدان بە مەترسی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The prisoners grew increasingly desperate."),
                    ExampleSentenceKurdish(
                        text: "زیندانییەکان کەم‌کەم ھیوابڕاو بوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "desperate", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesperates1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesperates1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Stores are getting desperate after two years of poor sales."),
                    ExampleSentenceKurdish(
                        text:
                            "فرۆشگاکان موحتاج بوونە لە دوای دوو ساڵ لە فرۆشی خراپ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesperates2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesperates2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I heard sounds of a desperate struggle in the next room."),
                    ExampleSentenceKurdish(
                        text:
                            "گوێم لە دەنگی ھەوڵدانێکی ناچاری بوو لە ژوورەکەی دیکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesperates3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesperates3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I was starting to get desperate."),
                    ExampleSentenceKurdish(
                        text: "دەستم دەکرد بەوەی بێچارە بم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesperates4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesperates4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "She felt utterly desperate."),
                    ExampleSentenceKurdish(
                        text: "تەواو ھەستی بە بێھوودەیی دەکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesperates5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesperates5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The sudden loss of his money had made him desperate."),
                    ExampleSentenceKurdish(
                        text: "لەدەستدانی لەناکاوی پارەکەی بێچارەی کردبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesperates6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesperates6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) کارێک کە ھیوای سەرکەوتنی کەمە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He made a desperate bid for freedom."),
                    ExampleSentenceKurdish(
                        text: "ھەوڵێکی بێھوودەی دا بۆ سەرکەوتن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesperates7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesperates7("en-US"),
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
                            "She clung to the edge in a desperate attempt to save herself."),
                    ExampleSentenceKurdish(
                        text:
                            "خۆی بە قەراغەکەدا ڕاگرت لە ھەوڵێکی بێھوودەدا بۆ ڕزگارکردنی خۆی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesperates8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesperates8("en-US"),
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
                            "Doctors were fighting a desperate battle to save the little girl's life."),
                    ExampleSentenceKurdish(
                        text:
                            "پزیشکان لە ھەوڵێکی بێھوودەدا ھەوڵیان دەدا ژیانی کچە بچووکەکە ڕزگاربکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesperates9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesperates9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ھاوەڵناو) ویستنی زۆری شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "I'm desperate for a coffee."),
                    ExampleSentenceKurdish(text: "موحتاجی کارێکم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesperates10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesperates10("en-US"),
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
                            "He was so desperate for a job he would have done anything."),
                    ExampleSentenceKurdish(
                        text:
                            "زۆر چاولەدەست بوو بۆ کارێک کە ھەموو شتێکی دەکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesperates11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesperates11("en-US"),
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
                        text: "I was absolutely desperate to see her."),
                    ExampleSentenceKurdish(text: "تەواو موحتاجی بینینی بووم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesperates12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesperates12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ھاوەڵناو) تەواو جدی یان مەترسیدار"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They face a desperate shortage of clean water."),
                    ExampleSentenceKurdish(
                        text: "تووشی کەماسییەکی توندی ئاوی پاک بوونەتەوە.-"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesperates13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesperates13("en-US"),
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
                        text: "His financial situation was desperate."),
                    ExampleSentenceKurdish(text: "دۆخی دارایی شلۆق بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesperates14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesperates14("en-US"),
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
                        text: "He had died in desperate poverty."),
                    ExampleSentenceKurdish(text: "لە ھەژارییەکی سەختدا مرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdesperates15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdesperates15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdesperates1600"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdesperates16("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdesperates16("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdesperates1700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdesperates17("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdesperates17("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdesperates1800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdesperates18("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdesperates18("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdesperates1900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdesperates19("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdesperates19("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "Stores are getting desperate after two years of poor sales.0"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdesperates20("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdesperates20("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdesperates2100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdesperates21("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdesperates21("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdesperates2200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdesperates22("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdesperates22("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

// DOPSUM: ENGLISH MEANING

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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
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
- Adjective: desperate 
1. Arising from or marked by despair or loss of hope (= despairing)
"a desperate cry for help"; "helpless and desperate--as if at the end of his tether"; "her desperate screams";
 
2. Desperately determined (= do-or-die)
"desperate revolutionaries";
 
3. (of persons) dangerously reckless or violent as from urgency or despair
"a desperate criminal"; "taken hostage of desperate men"
 
4. Showing extreme courage; especially of actions courageously undertaken in desperation as a last resort (= heroic)
"made a last desperate attempt to reach the climber"; "the desperate gallantry of our naval task forces marked the turning point in the Pacific war";
 
5. Showing extreme urgency or intensity especially because of great need or desire
"felt a desperate urge to confess"; "a desperate need for recognition"
 
6. Fraught with extreme danger; nearly hopeless (= dire)
"a desperate illness"; "on all fronts the Allies were in a desperate situation due to lack of materiel";

- Noun: desperate (derived forms: desperates)
1. A person who is frightened and in need of help
"they prey on the hopes of the desperate"
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

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'AF8d72mA41M',
    startSeconds: 928,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '-CJ4eUhE3Lw',
    startSeconds: 596,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'mY3SEMTROas',
    startSeconds: 1028,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'SrDEtSlqJC4',
    startSeconds: 873,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'wknSc6HRUMI',
    startSeconds: 195,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'sV6uuMAnJUE',
    startSeconds: 420,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'yRmOWcWdQAo',
    startSeconds: 1582,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
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
    return YouTubeScroller(
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