import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychange extends StatelessWidget {
  EnglishEntrychange({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchange(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("change");
  }

  Future<void> speakchanges1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Rick hasn't changed. He looks exactly the same as he did at school.");
  }

  Future<void> speakchanges2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The company failed to adapt to changing circumstances.");
  }

  Future<void> speakchanges3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Things have changed dramatically since then.");
  }

  Future<void> speakchanges4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Her life changed completely when she won the lottery.");
  }

  Future<void> speakchanges5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My attitude to life has changed with age.");
  }

  Future<void> speakchanges6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The internet has changed the way people work.");
  }

  Future<void> speakchanges7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("That experience changed my life.");
  }

  Future<void> speakchanges8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Fame hasn't really changed him.");
  }

  Future<void> speakchanges9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It can be hard to get people to change their habits.");
  }

  Future<void> speakchanges10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Wait for the traffic lights to change.");
  }

  Future<void> speakchanges11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The lights changed from red to green.");
  }

  Future<void> speakchanges12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Caracas changed from a small town into a busy city.");
  }

  Future<void> speakchanges13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Leaves change colour in autumn.");
  }

  Future<void> speakchanges14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The wind has changed direction.");
  }

  Future<void> speakchanges15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I want to change my doctor.");
  }

  Future<void> speakchanges16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I didn't change my name when I got married.");
  }

  Future<void> speakchanges17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("That back tyre needs changing.");
  }

  Future<void> speakchanges18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We change our car every two years.");
  }

  Future<void> speakchanges19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("At half-time the teams change ends.");
  }

  Future<void> speakchanges20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Can I change seats with you?");
  }

  Future<void> speakchanges21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I need to change some euros.");
  }

  Future<void> speakchanges22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Can you change a £20 note?");
  }

  Future<void> speakchanges23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This shirt I bought's too small—I'll have to change it for a bigger one.");
  }

  Future<void> speakchanges24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Of course we'll change it for a larger size, Madam.");
  }

  Future<void> speakchanges25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I stopped in Moscow only to change planes.");
  }

  Future<void> speakchanges26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I went into the bedroom to change.");
  }

  Future<void> speakchanges27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She changed into her swimsuit.");
  }

  Future<void> speakchanges29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I didn't have time to change clothes before the party.");
  }

  Future<void> speakchanges30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The baby needs changing.");
  }

  Future<void> speakchanges31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Could you help me change the bed?");
  }

  Future<void> speakchanges32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We're hoping for a change in the weather.");
  }

  Future<void> speakchanges33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There was no change in the patient's condition overnight.");
  }

  Future<void> speakchanges34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I need to make some major changes in my life.");
  }

  Future<void> speakchanges35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We need to inform you of significant changes to the tax system.");
  }

  Future<void> speakchanges36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Let's get away for the weekend. A change of scene will do you good.");
  }

  Future<void> speakchanges37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There will be a crew change when we land at Dubai.");
  }

  Future<void> speakchanges38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He made a rapid gear change as he approached the bend.");
  }

  Future<void> speakchanges39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I made a couple of minor changes to my opening paragraph.");
  }

  Future<void> speakchanges40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It makes a change to read some good news for once.");
  }

  Future<void> speakchanges41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It made a pleasant change not having to work.");
  }

  Future<void> speakchanges42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Don't forget your change!");
  }

  Future<void> speakchanges43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The ticket machine doesn't give change.");
  }

  Future<void> speakchanges44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I have two dollars in change.");
  }

  Future<void> speakchanges45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I keep a change of shoes in the car.");
  }

  Future<void> speakchanges46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The journey involved three changes.");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
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
                            EntryTitle(word: "change"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃeɪndʒ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchange("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃeɪndʒ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchange("en-US"),
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
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const KurdishVocabulary(text: """
کوردی: گۆڕان، ھەڵگەڕان، گۆھارتن، گۆڕین، گۆڕینەوە، بازاڕی ئاڵ‌وگۆڕ، جۆربەجۆری، جۆراوجۆری، فرەجۆری، پووڵەوردە، قەرەپووڵ، پاشماوەی پووڵ، باقی پووڵ، دەستی زیادی، گۆڕاو، گۆھارتی
"""),
                          const DefinitionKurdish(text: "١. (کردار) گۆڕان"),
                          SentencesRow(
                            englishText:
                                "Rick hasn't changed. He looks exactly the same as he did at school.",
                            kurdishText:
                                "ڕیک ھیچ نەگۆڕاوە. ڕێک وەک ئەو کاتەیە کە لە قوتابخانە بوو.",
                            onPressedBritish: () => speakchanges1("en-GB"),
                            onPressedAmerican: () => speakchanges1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The company failed to adapt to changing circumstances.",
                            kurdishText:
                                "کۆمپانیاکە شکستی ھێنا لە خۆگونجاندن لەگەڵ دۆخە گۆڕاوەکان.",
                            onPressedBritish: () => speakchanges2("en-GB"),
                            onPressedAmerican: () => speakchanges2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Things have changed dramatically since then.",
                                    kurdishText:
                                        "شتەکان لەو کاتەوە زۆر گۆڕاون.",
                                    onPressedBritish: () =>
                                        speakchanges3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Her life changed completely when she won the lottery.",
                                    kurdishText:
                                        "ژیانی تەواو گۆڕا کە تیروپشکەکەی بردەوە.",
                                    onPressedBritish: () =>
                                        speakchanges4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "My attitude to life has changed with age.",
                                    kurdishText:
                                        "تێڕوانینم بۆ ژیان لەگەڵ تەمەندا گۆڕاوە.",
                                    onPressedBritish: () =>
                                        speakchanges5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) گۆڕینی شتێک یان کەسێک"),
                          SentencesRow(
                            englishText:
                                "The internet has changed the way people work.",
                            kurdishText:
                                "ئینتەرنێت شێوەی کارکردنی خەڵکی گۆڕیوە.",
                            onPressedBritish: () => speakchanges6("en-GB"),
                            onPressedAmerican: () => speakchanges6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "That experience changed my life.",
                            kurdishText: "ئەو ئەزموونە ژیانمی گۆڕی.",
                            onPressedBritish: () => speakchanges7("en-GB"),
                            onPressedAmerican: () => speakchanges7("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Fame hasn't really changed him.",
                                    kurdishText:
                                        "ناوبانگ لە ڕاستیدا نەیگۆڕیوە.",
                                    onPressedBritish: () =>
                                        speakchanges8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges8("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "It can be hard to get people to change their habits.",
                                    kurdishText:
                                        "دەکرێت قورس بێت خووەکانی خەڵکی بگۆڕیت.",
                                    onPressedBritish: () =>
                                        speakchanges9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) گۆان لە دۆخ یان شێوەیەکەوە بۆ جۆرێکی دیکە"),
                          SentencesRow(
                            englishText:
                                "Wait for the traffic lights to change.",
                            kurdishText: "بوەستە ترافیک لایتەکان بگۆڕێن.",
                            onPressedBritish: () => speakchanges10("en-GB"),
                            onPressedAmerican: () => speakchanges10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The lights changed from red to green.",
                            kurdishText: "لایتەکان لە سوورەوە بۆ سەوز گۆڕان.",
                            onPressedBritish: () => speakchanges11("en-GB"),
                            onPressedAmerican: () => speakchanges11("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Caracas changed from a small town into a busy city.",
                                    kurdishText:
                                        "کاراکاس لە شارۆچکەیەکی بچووکەوە بوو بە شارێکی قەرەباڵغ.",
                                    onPressedBritish: () =>
                                        speakchanges12("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) وەستان لە ھەبوونی دۆخ، ئاراستە، یان پێگە و ھەبوونی یەکێکی دیکە"),
                          SentencesRow(
                            englishText: "Leaves change colour in autumn.",
                            kurdishText: "گەڵاکان لە پاییزدا ڕەنگیان دەگۆڕن.",
                            onPressedBritish: () => speakchanges13("en-GB"),
                            onPressedAmerican: () => speakchanges13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The wind has changed direction.",
                            kurdishText: "بایەکە ئاراستەی گۆڕی.",
                            onPressedBritish: () => speakchanges14("en-GB"),
                            onPressedAmerican: () => speakchanges14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) گۆڕینی شتێک، کەسێک، خزمەتگوزارییەک بە یەکێکی جیاوازتر یان تازەتر"),
                          SentencesRow(
                            englishText: "I want to change my doctor.",
                            kurdishText: "دەمەوێت پزیشکەکەم بگۆڕم.",
                            kurdishNote:
                                "لە ئەمریکا زۆرکەس پزیشکی تایبەتی خۆی ھەیە کە ماوە ماوە سەردانی دەکات بۆ پشکنین",
                            onPressedBritish: () => speakchanges15("en-GB"),
                            onPressedAmerican: () => speakchanges15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I didn't change my name when I got married.",
                            kurdishText: "ناومم نەگۆڕی کە ھاوسەرگیریم کرد.",
                            onPressedBritish: () => speakchanges16("en-GB"),
                            onPressedAmerican: () => speakchanges16("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "That back tyre needs changing.",
                                    kurdishText:
                                        "ئەو تایەی دواوە پێویستی بە گۆڕینە.",
                                    onPressedBritish: () =>
                                        speakchanges17("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges17("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We change our car every two years.",
                                    kurdishText:
                                        "ھەر دوو ساڵ جارێک ئۆتۆمبێلەکەمان دەگۆڕین.",
                                    onPressedBritish: () =>
                                        speakchanges18("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges18("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text: "٦. (کردار) گۆڕینەوە"),
                                  SentencesRow(
                                    englishText:
                                        "At half-time the teams change ends.",
                                    kurdishText:
                                        "لە نیوەی کاتدا تیمەکان سەریان گۆڕی.",
                                    onPressedBritish: () =>
                                        speakchanges19("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges19("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "Can I change seats with you?",
                                    kurdishText:
                                        "دەتوانم جێگاکەم لەگەڵت بگۆڕمەوە؟",
                                    onPressedBritish: () =>
                                        speakchanges20("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges20("en-US"),
                                  ),
                                  const DividerDefinition(),
                                  const DefinitionKurdish(
                                      text: "٧. (کردار) گۆڕینەوەی پارە"),
                                  SentencesRow(
                                    englishText: "I need to change some euros.",
                                    kurdishText: "دەبێت ھەندێک یۆرۆ بگۆڕمەوە.",
                                    onPressedBritish: () =>
                                        speakchanges21("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges21("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) وردکردنەوەی پارە"),
                          SentencesRow(
                            englishText: "Can you change a £20 note?",
                            kurdishText: "دەتوانیت ٢٠ پاوەندییەک وردبکەیتەوە؟",
                            onPressedBritish: () => speakchanges22("en-GB"),
                            onPressedAmerican: () => speakchanges22("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) گۆڕینەوەی شتێک بە شتێکی دیکە، بەتایبەتی بەھۆی ئەوەی کە خراپە"),
                          SentencesRow(
                            englishText:
                                "This shirt I bought's too small—I'll have to change it for a bigger one.",
                            kurdishText:
                                "ئەم فانیلە کە کڕیومە زۆر بچووکە، دەبێت بیگۆڕمەوە بە یەکێکی گەورەتر.",
                            onPressedBritish: () => speakchanges23("en-GB"),
                            onPressedAmerican: () => speakchanges23("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Of course we'll change it for a larger size, Madam.",
                            kurdishText:
                                "بەدڵنیاییەوە دەیگۆڕینەوە بە یەکێکی گەورەتر، خاتوون.",
                            onPressedBritish: () => speakchanges24("en-GB"),
                            onPressedAmerican: () => speakchanges24("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) چوون لە پاسێک، شەمەندەفەرێک، ھتد بۆ یەکێکی دیکە بۆ بەردەوامیدان بە گەشتێک"),
                          SentencesRow(
                            englishText:
                                "I stopped in Moscow only to change planes.",
                            kurdishText:
                                "لە مۆسکۆ وەستام تەنھا بۆ گۆڕینی فڕۆکە.",
                            onPressedBritish: () => speakchanges25("en-GB"),
                            onPressedAmerican: () => speakchanges25("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١١. (کردار) لەبەرکردنی جلێکی دیکە"),
                          SentencesRow(
                            englishText: "I went into the bedroom to change.",
                            kurdishText: "چووم بۆ ژووری نووستنەکە بۆ خۆگۆڕین.",
                            onPressedBritish: () => speakchanges26("en-GB"),
                            onPressedAmerican: () => speakchanges26("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She changed into her swimsuit.",
                            kurdishText: "جلەمەلەکەیی لەبەرکرد.",
                            onPressedBritish: () => speakchanges27("en-GB"),
                            onPressedAmerican: () => speakchanges27("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I didn't have time to change clothes before the party.",
                            kurdishText:
                                "پێویستی نەکرد جل بگۆڕم پێش ئاھەنگەکە.",
                            onPressedBritish: () => speakchanges29("en-GB"),
                            onPressedAmerican: () => speakchanges29("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (کردار) گۆڕینی جل یان دایبی منداڵ"),
                          SentencesRow(
                            englishText: "The baby needs changing.",
                            kurdishText: "منداڵەکە پێویستی بە گۆڕینە.",
                            onPressedBritish: () => speakchanges30("en-GB"),
                            onPressedAmerican: () => speakchanges30("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (کردار) دانانی پێخەف و شتی دیکەی تازە لەسەر جێگای نووستن"),
                          SentencesRow(
                            englishText: "Could you help me change the bed?",
                            kurdishText:
                                "دەتوانی یارمەتیم بدەیت لە پاککردنەوەی جێخەوەکە؟",
                            onPressedBritish: () => speakchanges31("en-GB"),
                            onPressedAmerican: () => speakchanges31("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٤. (ناو) گۆڕان"),
                          SentencesRow(
                            englishText:
                                "We're hoping for a change in the weather.",
                            kurdishText: "بە ھیوای گۆڕانێکین لە کەشوھەوادا.",
                            onPressedBritish: () => speakchanges32("en-GB"),
                            onPressedAmerican: () => speakchanges32("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There was no change in the patient's condition overnight.",
                            kurdishText:
                                "بە درێژایی شەو ھیچ گۆڕانێک لە دۆخی نەخۆشەکە نەبوو.",
                            onPressedBritish: () => speakchanges33("en-GB"),
                            onPressedAmerican: () => speakchanges33("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "I need to make some major changes in my life.",
                                    kurdishText:
                                        "پێویستە ھەندێک گۆڕانکاری گەورە بکەم لە ژیانمدا.",
                                    onPressedBritish: () =>
                                        speakchanges34("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges34("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We need to inform you of significant changes to the tax system.",
                                    kurdishText:
                                        "دەبێت ئاگادارت بکەینەوە لە گۆڕانی گەورە لە سیستەمی باجدان.",
                                    onPressedBritish: () =>
                                        speakchanges35("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges35("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٥. (ناو) پڕۆسەی شوێنگرتنەوەی شتێک بە شتێکی تازە یان جیاواز"),
                          SentencesRow(
                            englishText:
                                "Let's get away for the weekend. A change of scene (= time in a different place) will do you good.",
                            kurdishText:
                                "با دووربکەوینەوە بۆ کۆتایی ھەفتە. گۆڕانێکی دەورووبەر باش دەبێت بۆت.",
                            onPressedBritish: () => speakchanges36("en-GB"),
                            onPressedAmerican: () => speakchanges36("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "There will be a crew change when we land at Dubai.",
                                    kurdishText:
                                        "گۆڕانێک لە تیمەکە دەبێت کە لە دووبەی دەنیشینەوە.",
                                    onPressedBritish: () =>
                                        speakchanges37("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges37("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He made a rapid gear change as he approached the bend.",
                                    kurdishText:
                                        "بە خێرایی گێڕی گۆڕی کە گەشتە پێچەکە.",
                                    onPressedBritish: () =>
                                        speakchanges38("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges38("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "I made a couple of minor changes to my opening paragraph.",
                                    kurdishText:
                                        "ھەندێک گۆڕانکاری بچووکم لە پەرەگرافی یەکەمم ئەنجامدا.",
                                    onPressedBritish: () =>
                                        speakchanges39("en-GB"),
                                    onPressedAmerican: () =>
                                        speakchanges39("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٦. (ناو) جیاوازبوونی دۆخێک، شوێنێک، یان ئەزموونێک و ئەمە وابکات خۆش یان سەرنجڕاکێش بێت بێت"),
                          SentencesRow(
                            englishText:
                                "It makes a change to read some good news for once.",
                            kurdishText:
                                "گۆڕانێک دەبێت کە ھەواڵێکی باش بۆ جارێک بخوێنمەوە.",
                            onPressedBritish: () => speakchanges40("en-GB"),
                            onPressedAmerican: () => speakchanges40("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It made a pleasant change not having to work.",
                            kurdishText: "کەسێکی خۆش بوو کە کار نەبوو.",
                            onPressedBritish: () => speakchanges41("en-GB"),
                            onPressedAmerican: () => speakchanges41("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٧. (ناو) ئەو پارەیەی وەریدەگریتەوە کاتێک پارەی زیادت داوە بۆ شتێک"),
                          SentencesRow(
                            englishText: "Don't forget your change!",
                            kurdishText: "باقییەکەتت بیرنەچێت!",
                            onPressedBritish: () => speakchanges42("en-GB"),
                            onPressedAmerican: () => speakchanges42("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The ticket machine doesn't give change.",
                            kurdishText: "ئامێری بلیتەکە باقی ناداتەوە.",
                            onPressedBritish: () => speakchanges43("en-GB"),
                            onPressedAmerican: () => speakchanges43("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٨. (ناو) پارەی سکە نەک کاغەز"),
                          SentencesRow(
                            englishText:
                                "I have two dollars in change (= coins that together are worth two dollars).",
                            kurdishText: "دوو دۆلارم بە سکە ھەیە.",
                            onPressedBritish: () => speakchanges44("en-GB"),
                            onPressedAmerican: () => speakchanges44("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٩. (ناو) دەستەیەک لە شتێکی زیادە، بۆ نموونە جلی زیادە"),
                          SentencesRow(
                            englishText: "I keep a change of shoes in the car.",
                            kurdishText:
                                "جووتێک پێڵاوی زیادە لە ئۆتۆمبێلەکە دادەنێم.",
                            onPressedBritish: () => speakchanges45("en-GB"),
                            onPressedAmerican: () => speakchanges45("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٠. (ناو) گواستنەوە لە پاسێک، شەمەندەفەرێک، یان فڕۆکەیەک بۆ یەکێکی دیکە لا کاتی گەشتێکدا"),
                          SentencesRow(
                            englishText: "The journey involved three changes.",
                            kurdishText: "گەشتەکە سێ گواستنەوەی تێدا بوو.",
                            onPressedBritish: () => speakchanges46("en-GB"),
                            onPressedAmerican: () => speakchanges46("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(),
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        // YoutubeEmbeddedeight(), //
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
- Verb: change (derived forms: changing, changed, changes)
1. Make different; cause a transformation (= alter, modify)
"The discussion has changed my thinking about the issue";
 
2. Undergo a change; become different in essence; losing one's or its original nature
"She changed completely as she grew older"; "The weather changed last night"
 
3. Become different in some particular way (= alter, vary)
"her mood changes in accordance with the weather";
 
4. Lay aside, abandon, or leave for another (= switch, shift)
"The car changed lanes";

5. Put on different clothes
"Change before you go to the opera"
 
6. Exchange or replace with another, usually of the same kind or category (= exchange, commute, convert)
"He changed his name";
 
7. Give to, and receive from, one another (= exchange, interchange)
"Would you change places with me?";

8. Change from one vehicle or transportation line to another (= transfer)
"She changed in Chicago on her way to the East coast";
 
9. Become deeper in tone (= deepen)
"His voice began to change when he was 12 years old";
 
10. Remove or replace the coverings of
"Father had to learn how to change the baby"; "After each guest we changed the bed linens"

- Noun: change (derived forms: changes)
1. An event that occurs when something passes from one state or phase to another (= alteration, modification)
"the change was intended to increase sales"; "this storm is certainly a change for the worse";
 
2. A relational difference between states; especially between states before and after some event
"he attributed the change to their marriage"
 
3. The action of changing something
"the change of government had no impact on the economy"; "his change on abortion cost him the election"
 
4. The result of alteration or modification
"there were marked changes in the lining of the lungs"; "there had been no change in the mountains"
 
5. The balance of money received when the amount you tender is greater than the amount due
"I paid with a twenty and pocketed the change"
 
6. A thing that is different
"he inspected several changes before selecting one"
 
7. A different or fresh set of clothes
"she brought a change in her overnight bag"
 
8. Coins of small denomination regarded collectively
"he had a pocketful of change"
 
9. Money received in return for its equivalent in a larger denomination or a different currency
"he got change for a twenty and used it to pay the taxi driver"
 
10. A difference that is usually pleasant (= variety)
"it is a refreshing change to meet a woman mechanic";
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

  final String _videoId = 'xDSFlRunlrU';
  final double _startSeconds = 12;

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

  final String _videoId = 'n-m-SmqQZTU';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = '1_mp1zOHaSQ';
  final double _startSeconds = 279;

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

  final String _videoId = 'nThPwzI2-Rs';
  final double _startSeconds = 15;

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

  final String _videoId = 'orKd7GVtAB0';
  final double _startSeconds = 43;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 72;

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

  final String _videoId = 'khOUvmOQExc';
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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'pFEB0chiuJA';
  final double _startSeconds = 501;

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

// end WORD_WEB
