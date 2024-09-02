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
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("but");
  }

  Future<void> speakbuts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I got it wrong. It wasn't the red one but the blue one.");
  }

  Future<void> speakbuts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His mother won't be there, but his father might.");
  }

  Future<void> speakbuts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "It isn't that he lied exactly, but he does tend to exaggerate.");
  }

  Future<void> speakbuts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The play's good, but not that good - I've seen better.");
  }

  Future<void> speakbuts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'd asked everybody but only two people came.");
  }

  Future<void> speakbuts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("By the end of the day we were tired but happy.");
  }

  Future<void> speakbuts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm sorry but I can't stay any longer.");
  }

  Future<void> speakbuts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("But that's not possible!");
  }

  Future<void> speakbuts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts99");
  }

  Future<void> speakbuts10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I had no choice but to sign the contract.");
  }

  Future<void> speakbuts11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Nothing, but nothing would make him change his mind.");
  }

  Future<void> speakbuts12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She never passed her old home but she thought of the happy years she had spent there.");
  }

  Future<void> speakbuts13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We've had nothing but trouble with this car.");
  }

  Future<void> speakbuts14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The problem is anything but easy.");
  }

  Future<void> speakbuts15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Who but Rosa could think of something like that?");
  }

  Future<void> speakbuts16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Everyone was there but him.");
  }

  Future<void> speakbuts17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There were a lot of famous people there: Adele and Taylor Swift, to name but two.");
  }

  Future<void> speakbuts18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She's but a young girl!");
  }

  Future<void> speakbuts19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("With so many ifs and buts, it is easier to wait and see.");
  }

  Future<void> speakbuts20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts2020");
  }

  Future<void> speakbuts21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts2121");
  }

  Future<void> speakbuts22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts2222");
  }

  Future<void> speakbuts23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts2323");
  }

  Future<void> speakbuts24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts2424");
  }

  Future<void> speakbuts25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts2525");
  }

  Future<void> speakbuts26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts2626");
  }

  Future<void> speakbuts27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts2727");
  }

  Future<void> speakbuts28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts2828");
  }

  Future<void> speakbuts29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts2929");
  }

  Future<void> speakbuts30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts3030");
  }

  Future<void> speakbuts31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts3131");
  }

  Future<void> speakbuts32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts3232");
  }

  Future<void> speakbuts33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts3333");
  }

  Future<void> speakbuts34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts3434");
  }

  Future<void> speakbuts35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts3535");
  }

  Future<void> speakbuts36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts3636");
  }

  Future<void> speakbuts37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts3737");
  }

  Future<void> speakbuts38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts3838");
  }

  Future<void> speakbuts39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts3939");
  }

  Future<void> speakbuts40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakbuts4040");
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
کوردی: بەڵام، غایەتی، ئەمان، وەلی، لێ، ھەر ئەوە، بەڵکوو، بێجگەلە، جگەلە، بێ، تەنیا، تەنھا، فەقەت، کە، ھیچ نەبێ، بەلای کەمەوە، وە ئەگینا، دەنا، ھەرچۆنێ بێ، مەگەر ئەوەی کە، ھێشتا، سەرەڕای ئەوەش
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (لێکدەر) بەڵام؛ بەڵکو؛ بۆ وتنی شتێک کە پێچەوانەی ئەوەیە کە پێشتر وتراوە"),
                          SentencesRow(
                            englishText:
                                "I got it wrong. It wasn't the red one but the blue one.",
                            kurdishText:
                                "بە ھەڵە تێگەشتم. سوورەکە نەبوو بەڵکو شینەکە بوو.",
                            onPressedBritish: () => speakbuts1("en-GB"),
                            onPressedAmerican: () => speakbuts1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "His mother won't be there, but his father might.",
                            kurdishText:
                                "براکەی لەوێ نابێت، بەڵام باوکی ئەگەری ھەیە.",
                            onPressedBritish: () => speakbuts2("en-GB"),
                            onPressedAmerican: () => speakbuts2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "It isn't that he lied exactly, but he does tend to exaggerate.",
                                    kurdishText:
                                        "ئەوە نییە کە درۆی کردبێت، بەڵام مەیلی ھەیە مبالغە بکات.",
                                    onPressedBritish: () => speakbuts3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbuts3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The play's good, but not that good - I've seen better.",
                                    kurdishText:
                                        "شانۆکە باشە، بەڵام زۆر باش نا، باشترم بینیوە.",
                                    onPressedBritish: () => speakbuts4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbuts4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (لێکدەر) سەرەڕای شتێک"),
                          SentencesRow(
                            englishText:
                                "I'd asked everybody but only two people came.",
                            kurdishText:
                                "داوام لە ھەمووان کردبوو بێن بەڵام دوو کەس ھاتن.",
                            onPressedBritish: () => speakbuts5("en-GB"),
                            onPressedAmerican: () => speakbuts5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "By the end of the day we were tired but happy.",
                            kurdishText:
                                "لە کۆتایی ڕۆژەکەدا ماندوو بەڵام دڵخۆش بووین.",
                            onPressedBritish: () => speakbuts6("en-GB"),
                            onPressedAmerican: () => speakbuts6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (لێکدەر) بۆ دەربڕینی لێبووردنخوازی سەبارەت بە شتێک"),
                          SentencesRow(
                            englishText:
                                "I'm sorry but I can't stay any longer.",
                            kurdishText:
                                "بەداخەوەم بەڵام ناتوانم چی دیکە بمێنمەوە.",
                            onPressedBritish: () => speakbuts7("en-GB"),
                            onPressedAmerican: () => speakbuts7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (لێکدەر) بۆ وتنی شتێک کە پیشانی دەدات سەرسامی بە یان تووڕەی لە شتێک، یان دژ بە شتێکی"),
                          SentencesRow(
                            englishText: "But that's not possible!",
                            kurdishText: "بەڵام ئەوە ناکرێت!",
                            onPressedBritish: () => speakbuts8("en-GB"),
                            onPressedAmerican: () => speakbuts8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (لێکدەر) جگە لە"),
                          SentencesRow(
                            englishText:
                                "I had no choice but to sign the contract.",
                            kurdishText:
                                "ھیج ھەڵبژاردەم نەبوو جگە لە واژۆکردنی ڕێککەوتنەکە.",
                            onPressedBritish: () => speakbuts10("en-GB"),
                            onPressedAmerican: () => speakbuts10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (لێکدەر) بەکاردێت پێش دووبارەکردنەوەی وشەیەک بۆ ئەوەی جەختی لێ بکەیتەوە"),
                          SentencesRow(
                            englishText:
                                "Nothing, but nothing would make him change his mind.",
                            kurdishText:
                                "ھیچ، ھیچ شتێک ناتوانێت بیرکردنەوەی بگۆڕێت.",
                            onPressedBritish: () => speakbuts11("en-GB"),
                            onPressedAmerican: () => speakbuts11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (لێکدەر) بۆ جەختکردنەوە لەوەی شتێک ھەموو کات ڕاستە"),
                          SentencesRow(
                            englishText:
                                "She never passed her old home but she thought of the happy years she had spent there (= she always thought of them).",
                            kurdishText:
                                "ھەرگیز بەلای خانووە کۆنەکەیدا تێنەپەڕی، بەڵام ھەمیشە بیری لەو ڕۆژانە خۆشانە دەکردەوە کە لەوێ تێیپەڕاندن.",
                            onPressedBritish: () => speakbuts12("en-GB"),
                            onPressedAmerican: () => speakbuts12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٨. (ئامراز) جگە لە"),
                          SentencesRow(
                            englishText:
                                "We've had nothing but trouble with this car.",
                            kurdishText:
                                "ھیچمان لەم ئۆتۆمبێلە نەدیوە جگە لە کێشە.",
                            onPressedBritish: () => speakbuts13("en-GB"),
                            onPressedAmerican: () => speakbuts13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The problem is anything but easy.",
                            kurdishText:
                                "ئەم کێشەیە لە ئاسان زیاتر ھیچی تر نییە.",
                            onPressedBritish: () => speakbuts14("en-GB"),
                            onPressedAmerican: () => speakbuts14("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Who but Rosa could think of something like that?",
                                    kurdishText:
                                        "جگە لە ڕۆزا کێ دەیتوانی بیر لە شتێکی وەھا بکاتەوە؟",
                                    onPressedBritish: () =>
                                        speakbuts15("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbuts15("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "Everyone was there but him.",
                                    kurdishText:
                                        "ھەمووان لەوێ بوون جگە لە ئەو.",
                                    onPressedBritish: () =>
                                        speakbuts16("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbuts16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٩. (ھاوەڵکار) تەنھا"),
                          SentencesRow(
                            englishText:
                                "There were a lot of famous people there: Adele and Taylor Swift, to name but two.",
                            kurdishText:
                                "کەسانی بەناوبانگی زۆر لەوێ بوون: ئادێڵ و تایلەر سویفت، ئەگەر تەنھا ناوی دووان بوترێت.",
                            onPressedBritish: () => speakbuts17("en-GB"),
                            onPressedAmerican: () => speakbuts17("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She's but a young girl!",
                            kurdishText: "تەنھا کچێکی گەنجە!",
                            onPressedBritish: () => speakbuts18("en-GB"),
                            onPressedAmerican: () => speakbuts18("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ناو) ھۆکارێک کە کەسێک ھەیەتی بۆ نەکردنی شتێک یان دژبوون"),
                          SentencesRow(
                            englishText:
                                "With so many ifs and buts, it is easier to wait and see.",
                            kurdishText:
                                "بەم ھەموو ئەگەر و نەگەرەوە، باشتر وایە چاوەڕێ بیت و ببینیت.",
                            onPressedBritish: () => speakbuts19("en-GB"),
                            onPressedAmerican: () => speakbuts19("en-US"),
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'rPe4yziWiOg';
  final double _startSeconds = 563;

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

  final String _videoId = 'hFZFjoX2cGg';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'w98l2EFR6dE';
  final double _startSeconds = 41;

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

  final String _videoId = 'dhgEpr87Yac';
  final double _startSeconds = 41;

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

  final String _videoId = 'gOxG6HSicwk';
  final double _startSeconds = 47;

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

  final String _videoId = 'L7APBWkgw50';
  final double _startSeconds = 34;

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

  final String _videoId = 'XP9vHsmd_xM';
  final double _startSeconds = 96;

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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = '1_FyoPDsuGc';
  final double _startSeconds = 33;

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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = '3fRSQpC-ous';
  final double _startSeconds = 452;

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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'SIzIB1Pukm0';
  final double _startSeconds = 254;

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

// end WORD_WEB
