import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryclass extends StatelessWidget {
  // blank divider
  EnglishEntryclass({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclass(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("class"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss1(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We were in the same class at school."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss2(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is the youngest in her class in English."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss3(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He came top of the class in English."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss4(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The whole class was/were told to stay behind after school."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss5(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I have a history class at 9 o'clock."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss6(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I was late for (a) class."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss7(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("See me after class."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss8(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She works hard in class."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss9(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Are you still doing your French evening class?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss10(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The college offers classes in many subjects."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss11(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I decided to take a first-aid class."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss12(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The class of 2004 achieved the highest ever scores in this district."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss13(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The party tries to appeal to all classes of society."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss14(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was an age in which all classes of society were expanding."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss15(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government defends the interests of the capitalist class."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss16(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Nowadays, there are not so many clear distinctions between classes"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss17(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She belongs to a lower social class than him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss18(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The old class system is not appropriate in a modern age."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss19(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She recognises class as an important concept."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss20(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He always travels business class."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss21(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was good accommodation for a hotel of this class."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss22(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Dickens was in a different class from most of his contemporaries."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss23(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As a jazz singer she's in a class of her own."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss24(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is the most reliable model in its class."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss25(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He came first in his class at every event."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss26(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There's a real touch of class about this team."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss27(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's got real class."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss28(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Immigrant workers were classed as aliens."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss29(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I wouldn't have classed you as a Shakespeare fan."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss30(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "One in five people in the country are classed as poor."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss31(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Prisoners classed as illiterate were given a basic education."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss32(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'm 17, but I'm still classed as a child when I travel by bus."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss33(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I would class her among the top ten American novelists."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss34(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss35(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss36(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss37(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss38(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss39(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss40(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss41(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss42(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss43(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss44(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss45(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss46(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss47(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss48(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss49(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclasss50(String languageCode) async {
    // DOPSUM: CHANGE speakclass
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclasss5000"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          // EdgeInsets.zero,
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            EntryTitle(word: "class"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /klɑːs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclass("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /klæs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclass("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const CustomTabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: پۆل، چین، توێژ، توێ،	جۆر، چەشن، ئاوا،	دەست، دەستە،	ڕیز،	ئاست، ڕادە، پلە، نمرە، پایە،	پۆل (خوێندن)،	وانە،	شاگردەکان، هاودەورەکان، هاوپۆل،	پۆز، کلاس، تڕوتۆپ، تەشەخوس
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) کۆمەڵێک خوێندکار کە پێکەوە وانە دەخوێنن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We were in the same class at school."),
                                    ExampleSentenceKurdish(
                                        text: "لە هەمان پۆلین لە قوتابخانە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "class", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss1("en-US"),
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
                                            "She is the youngest in her class in English."),
                                    ExampleSentenceKurdish(
                                        text: "منداڵترینە لە پۆلەکەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss2("en-US"),
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
                                                    "He came top of the class in English."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "باشترینی پۆلەکە بوو لە ئینگلیزیدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclasss3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclasss3("en-US"),
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
                                                    "The whole class was/were told to stay behind after school."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تەواوی پۆلەکە پێی وترا لە دوای قوتابخانە بمێننەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclasss4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclasss4("en-US"),
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
                                  "٢. (ناو) بۆنەیەک کە تێیدا ژمارەیەک خوێندکار کۆدەبنەوە بۆ وانە خوێندن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I have a history class at 9 o'clock."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وانەی مێژووم هەیە لە کاتژمێر ٩."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss5("en-US"),
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
                                        text: "I was late for (a) class."),
                                    ExampleSentenceKurdish(
                                        text: "درەنگ کەوتم بۆ وانەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss6("en-US"),
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
                                                text: "See me after class."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لە دوای وانەکە وەرە بۆ لام."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclasss7("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclasss7("en-US"),
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
                                                    "She works hard in class (= during the class)."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "زۆر هەوڵ دەدات لە خوێندندا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclasss8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclasss8("en-US"),
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
                                  "٣. (ناو) ژمارەیەک وانە لە بابەتێکی دیاریکراودا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Are you still doing your French evening class?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هێشتا بەردەوامیت لە وانەی شەوانەی زمانی فەرەنسی؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss9("en-US"),
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
                                            "The college offers classes in many subjects."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆلێژەکە لە زۆر بابەتی جیاوازدا وانەی هەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss10("en-US"),
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
                                            "I decided to take a first-aid class."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بڕیارمدا فێرکاری فریاگوزاری سەرەتایی وەربگرم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ژمارەیەک خوێندکار کە پێکەوە قوتابخانە یان زانکۆ تەواو دەکەن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The class of 2004 achieved the highest ever scores in this district."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەرچووانی ٢٠٠٤ بەرزترین نمرەیان لەم ناوچەیە بەدەستهێنا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ناو) چینی کۆمەڵایەتی یان ئابووری"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The party tries to appeal to all classes of society."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پارتەکە هەوڵ دەدات دڵی هەموو چینەکانی کۆمەڵگا ڕابگرێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss13("en-US"),
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
                                            "It was an age in which all classes of society were expanding."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەردەمێک بوو کە تێیدا هەموو چینەکانی کۆمەڵگا لە هەڵکشاندا بوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss14("en-US"),
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
                                                    "The government defends the interests of the capitalist class."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "حکومەت بەرگری لە بەرژەوەندییەکانی چینی سەرمایەدار دەکات."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclasss15("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclasss15("en-US"),
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
                                                    "Nowadays, there are not so many clear distinctions between classes"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لەم ڕۆژانەدا، هێندە جیاوازی زۆر لە نێوان چینەکاندا نییە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclasss16("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclasss16("en-US"),
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
                                                    "She belongs to a lower social class than him."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "سەر بە چینێکی نزمترە وەک لە ئەو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclasss17("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclasss17("en-US"),
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
                                  "٦. (ناو) شێوازی دابەشکردنی خەڵکی بۆ چینی کۆمەڵایەتی و  ئابووری"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The old class system is not appropriate in a modern age."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سیستەمە کۆنە چینایەتییەکە گونجاو نییە بۆ ئەم چاخە سەردەمییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss18("en-US"),
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
                                            "She recognises class as an important concept."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چینایەتی وەک چەمکێکی گرنگ دەبینێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) ئاستەکانی فڕۆکەی گەشتیاری کە بەردەستن بۆ گەشتیاران و لە ڕووی ئاسوودەییەوە جیاوازن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He always travels business class."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هەمیشە لە کلاسی بازرگانی گەشت دەکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) ژمارەیەک خەڵک، ئاژەڵ، یان شت کە هەمان خاسیەتییان هەیە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "It was good accommodation for a hotel of this class."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "شوێنی مانەوەی باش بوو بۆ هوتێلێک لەم ئاستەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss21("en-US"),
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
                                            "Dickens was in a different class from (= was much better than) most of his contemporaries."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دیکنز لە ئاستێکی جیاوازتر بوو وەک لە هاوسەردەمەکانی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss22("en-US"),
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
                                            "As a jazz singer she's in a class of her own (= better than most others)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وەک گۆرانیبێژێکی جاز لە ئاستی تایبەت بە خۆیدا بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss23("en-US"),
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
                                            "It is the most reliable model in its class."),
                                    ExampleSentenceKurdish(
                                        text: "باشترن جۆرە لا ئاستەکەی خۆیدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss24("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ناو) یەکێک لە گرووپەکانی ڕکابەرییەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He came first in his class at every event."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە هەموو بۆنەیەکدا لە گرووپەکەیدا یەکەم بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss25("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ناو) خاسیەتێکی باش یان شارەزاییەکی ئاست بەرز کە سەرنجڕاکێشە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "There's a real touch of class about this team."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خاسیەتێکی تەواوی تایبەت هەبوو لەم تیمەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss26("en-US"),
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
                                        text: "He's got real class."),
                                    ExampleSentenceKurdish(
                                        text: "پۆزی خۆی هەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss27("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss27("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) پۆلێن کردن؛ بیرکردنەوە لە/دابەشکردنی کەسێک یان شتێک بەسەر جۆرێکی دیاریکراودا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Immigrant workers were classed as aliens."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کرێکارانی پەنابەر وەک بیانی مامەڵەیان لەگەڵ دەکرا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss28("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss28("en-US"),
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
                                            "I wouldn't have classed you as a Shakespeare fan."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وەک هەوادارێکی شکسپیر دام‌نەدەنایت (بەڵام دیارە هەڵەبووم)."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss29("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss29("en-US"),
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
                                            "One in five people in the country are classed as poor."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە پێنج کەسدا لە وڵاتەکە یەکێک بە هەژار دادەنرێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclasss30("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclasss30("en-US"),
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
                                                    "Prisoners classed as illiterate were given a basic education."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەو زیندانییانەی کە بە نەخوێندەوار دادەنران خوێندنی سەرەتاییان پێدرا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclasss31("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclasss31("en-US"),
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
                                                    "I'm 17, but I'm still classed as a child when I travel by bus."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تەمەنم ١٧ ساڵە، بەڵام بە منداڵ دادەنرێم کە بە پاس گەشت دەکەم."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclasss32("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclasss32("en-US"),
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
                                                    "I would class her among the top ten American novelists."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لە ڕیزی دە باشترین ڕۆماننووسە ئەمریکییەکان دایدەنێم."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclasss33("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclasss33("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(),
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
- Noun: class (Derived forms: classes)
1. A collection of things sharing a common attribute (= category, family)
"there are two classes of detergents";
 
2. A body of students who are taught together (= form, grade [N. Amer], course)
"early morning classes are always sleepy";
 
3. People having the same social, economic, or educational status (= stratum, social class, socio-economic class)
"an emerging professional class"; "the working class";
 
4. Education imparted in a series of lessons or meetings (= course, course of study, course of instruction)
"flirting is not unknown in college classes";
 
4. A league ranked by quality (= division)
"he played baseball in class D for two years";
 
4. A body of students who graduate together (= year)
"the class of '97";
 
5. Elegance in dress or behaviour
"she has a lot of class"
 
6. A category associated with a particular level of service, e.g. of seats in an aircraft, train, etc.
 
7. (biology) a taxonomic group containing one or more orders
 
8. (object-oriented programming) a template containing related functions, variables, properties etc. that is used to generate instances (where each objects instance may have different specific values of the class properties)

- Verb: class (Derived forms: classing, classes, classed)
1. Arrange or order by classes or categories (= classify, sort, assort, sort out, separate)
"How would you class these pottery shards--are they prehistoric?";
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
    videoId: 'https://youtu.be/kTQCbds8hsc?t=',
    startSeconds: 31,
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
    videoId: 'https://youtu.be/f4OrGE6rfMQ?t=',
    startSeconds: 247,
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
    videoId: 'https://youtu.be/RSgvp15hiWQ?t=',
    startSeconds: 255,
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
    videoId: 'https://youtu.be/E2_kRmS6y8A',
    // startSeconds: 222222222222222,
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
    videoId: 'https://youtu.be/Se3RKA9HrzI?t=',
    startSeconds: 223,
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
    videoId: 'https://youtu.be/kQPKi1O6qvI?t=',
    startSeconds: 28,
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
    videoId: 'https://youtu.be/HUXzbefQzWY?t=',
    startSeconds: 134,
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

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/hW69OIdAey0?t=',
    startSeconds: 95,
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

// end WORD_WEB