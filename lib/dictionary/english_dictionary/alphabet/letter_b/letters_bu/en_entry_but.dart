import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybut extends StatelessWidget {
// blank divider
  EnglishEntrybut({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbut(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("but"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts1(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I got it wrong. It wasn't the red one but the blue one."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts2(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His mother won't be there, but his father might."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts3(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It isn't that he lied exactly, but he does tend to exaggerate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts4(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The play's good, but not that good - I've seen better."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts5(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'd asked everybody but only two people came."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts6(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "By the end of the day we were tired but happy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts7(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'm sorry but I can't stay any longer."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts8(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("But that's not possible!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts9(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts99"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts10(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I had no choice but to sign the contract."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts11(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Nothing, but nothing would make him change his mind."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts12(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She never passed her old home but she thought of the happy years she had spent there."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts13(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We've had nothing but trouble with this car."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts14(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The problem is anything but easy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts15(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Who but Rosa could think of something like that?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts16(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Everyone was there but him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts17(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There were a lot of famous people there: Adele and Taylor Swift, to name but two."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts18(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's but a young girl!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts19(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "With so many ifs and buts, it is easier to wait and see."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts20(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts21(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts22(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts23(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts24(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts25(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts26(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts27(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts28(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts29(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts30(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts3030"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts31(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts3131"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts32(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts3232"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts33(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts3333"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts34(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts3434"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts35(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts3535"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts36(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts3636"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts37(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts3737"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts38(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts3838"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts39(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts3939"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbuts40(String languageCode) async {
    // DOPSUM: CHANGE speakbut
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbuts4040"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "but"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUK: /bət/, strong form  /bʌt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbut("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text: "IpaUS: /bət/, strong form  /bʌt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbut("en-US"),
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
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 12
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  // VideoIconForTab(), // 11
                  // VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
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
                          const DefinitionKurdish(text: """
کوردی: بەڵام، غایەتی، ئەمان، وەلی، لێ، هەر ئەوە، بەڵکوو، بێجگەلە، جگەلە، بێ، تەنیا، تەنها، فەقەت، کە، هیچ نەبێ، بەلای کەمەوە، وە ئەگینا، دەنا، هەرچۆنێ بێ، مەگەر ئەوەی کە، هێشتا، سەرەڕای ئەوەش

١. (لێکدەر) بەڵام؛ بەڵکو؛ بۆ وتنی شتێک کە پێچەوانەی ئەوەیە کە پێشتر وتراوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I got it wrong. It wasn't the red one but the blue one."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بە هەڵە تێگەشتم. سوورەکە نەبوو بەڵکو شینەکە بوو."),
                              const CustomSizedBoxForTTS(), // With short examples extensively define the word "but", follow LX strictly
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuts1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuts1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "His mother won't be there, but his father might."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "براکەی لەوێ نابێت، بەڵام باوکی ئەگەری هەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuts2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuts2("en-US"),
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
                                      const ExampleSentenceEnglish(
                                          text:
                                              "It isn't that he lied exactly, but he does tend to exaggerate."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ئەوە نییە کە درۆی کردبێت، بەڵام مەیلی هەیە مبالغە بکات."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbuts3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbuts3("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text:
                                              "The play's good, but not that good - I've seen better."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "شانۆکە باشە، بەڵام زۆر باش نا، باشترم بینیوە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbuts4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbuts4("en-US"),
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
                              text: "٢. (لێکدەر) سەرەڕای شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I'd asked everybody but only two people came."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "داوام لە هەمووان کردبوو بێن بەڵام دوو کەس هاتن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuts5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuts5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "By the end of the day we were tired but happy."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە کۆتایی ڕۆژەکەدا ماندوو بەڵام دڵخۆش بووین."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuts6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuts6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (لێکدەر) بۆ دەربڕینی لێبووردنخوازی سەبارەت بە شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I'm sorry but I can't stay any longer."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەداخەوەم بەڵام ناتوانم چی دیکە بمێنمەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuts7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuts7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (لێکدەر) بۆ وتنی شتێک کە پیشانی دەدات سەرسامی بە یان تووڕەی لە شتێک، یان دژ بە شتێکی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "But that's not possible!"),
                              const ExampleSentenceKurdish(
                                  text: "بەڵام ئەوە ناکرێت!"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuts8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuts8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (لێکدەر) جگە لە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "I had no choice but to sign the contract."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هیج هەڵبژاردەم نەبوو جگە لە واژۆکردنی ڕێککەوتنەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuts10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuts10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (لێکدەر) بەکاردێت پێش دووبارەکردنەوەی وشەیەک بۆ ئەوەی جەختی لێ بکەیتەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Nothing, but nothing would make him change his mind."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هیچ، هیچ شتێک ناتوانێت بیرکردنەوەی بگۆڕێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuts11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuts11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (لێکدەر) بۆ جەختکردنەوە لەوەی شتێک هەموو کات ڕاستە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She never passed her old home but she thought of the happy years she had spent there (= she always thought of them)."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هەرگیز بەلای خانووە کۆنەکەیدا تێنەپەڕی، بەڵام هەمیشە بیری لەو ڕۆژانە خۆشانە دەکردەوە کە لەوێ تێیپەڕاندن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuts12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuts12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٨. (ئامراز) جگە لە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We've had nothing but trouble with this car."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "هیچمان لەم ئۆتۆمبێلە نەدیوە جگە لە کێشە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuts13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuts13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The problem is anything but easy."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەم کێشەیە لە ئاسان زیاتر هیچی تر نییە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuts14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuts14("en-US"),
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
                                      const ExampleSentenceEnglish(
                                          text:
                                              "Who but Rosa could think of something like that?"),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "جگە لە ڕۆزا کێ دەیتوانی بیر لە شتێکی وەها بکاتەوە؟"),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbuts15("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbuts15("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text: "Everyone was there but him."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "هەمووان لەوێ بوون جگە لە ئەو."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbuts16("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbuts16("en-US"),
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
                          const DefinitionKurdish(text: "٩. (هاوەڵکار) تەنها"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There were a lot of famous people there: Adele and Taylor Swift, to name but two."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کەسانی بەناوبانگی زۆر لەوێ بوون: ئادێڵ و تایلەر سویفت، ئەگەر تەنها ناوی دووان بوترێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuts17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuts17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She's but a young girl!"),
                              const ExampleSentenceKurdish(
                                  text: "تەنها کچێکی گەنجە!"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuts18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuts18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ناو) هۆکارێک کە کەسێک هەیەتی بۆ نەکردنی شتێک یان دژبوون"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "With so many ifs and buts, it is easier to wait and see."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەم هەموو ئەگەر و نەگەرەوە، باشتر وایە چاوەڕێ بیت و ببینیت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbuts19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbuts19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(),
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
                    YoutubeEmbeddednine(),
                    YoutubeEmbeddedten(),
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
- Conjunction: but
1. Introduces something in contrast or unexpected; however, on the contrary
"went to bed, but did not sleep"; "poor but happy"
 
2. Except for, excluding
"all but one"

- Adverb: but 
1. And nothing more (= merely, simply, just, only)
"hopes that last but a moment";

- Noun: but
1. An objection
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

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'rPe4yziWiOg',
    startSeconds: 563,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'hFZFjoX2cGg',
    startSeconds: 12,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'w98l2EFR6dE',
    startSeconds: 41,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'dhgEpr87Yac',
    startSeconds: 41,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'gOxG6HSicwk',
    startSeconds: 47,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'L7APBWkgw50',
    startSeconds: 34,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
    videoId: 'XP9vHsmd_xM',
    startSeconds: 96,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '1_FyoPDsuGc',
    startSeconds: 33,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '3fRSQpC-ous',
    startSeconds: 452,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'SIzIB1Pukm0',
    startSeconds: 254,
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: false,
      enableCaption: true,
      mute: false,
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
