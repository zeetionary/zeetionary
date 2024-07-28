import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycool extends StatelessWidget {
// blank divider
  EnglishEntrycool({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcool(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cool");
  }

  Future<void> speakcools1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cooler weather is forecast for the weekend.");
  }

  Future<void> speakcools2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("These plants prefer cooler temperatures.");
  }

  Future<void> speakcools3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's sit in the shade and keep cool.");
  }

  Future<void> speakcools4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Store lemons in a cool dry place.");
  }

  Future<void> speakcools5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Wear light, cool clothing but try to avoid shorts.");
  }

  Future<void> speakcools6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bedroom was painted a lovely cool blue.");
  }

  Future<void> speakcools7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Doesn't she look cool in those sunglasses?");
  }

  Future<void> speakcools8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You look pretty cool with that new haircut.");
  }

  Future<void> speakcools9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's a cool movie.");
  }

  Future<void> speakcools10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She has lots of cool ideas.");
  }

  Future<void> speakcools11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I think their new song's really cool.");
  }

  Future<void> speakcools12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We had such a cool time with Ed and his friends.");
  }

  Future<void> speakcools13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I really hope you can come—it'd be so cool!");
  }

  Future<void> speakcools14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's really cool you came back!");
  }

  Future<void> speakcools15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I was surprised that she got the job, but I'm cool with it.");
  }

  Future<void> speakcools16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's completely cool about what happened.");
  }

  Future<void> speakcools17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you come at 10.30 tomorrow?’ ‘That's cool.’");
  }

  Future<void> speakcools18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Just stay cool and don't panic.");
  }

  Future<void> speakcools19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He has a cool head.");
  }

  Future<void> speakcools20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He forced himself to count to ten and act cool.");
  }

  Future<void> speakcools21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They gave the prime minister a cool reception.");
  }

  Future<void> speakcools22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He has been cool towards me ever since we had that argument.");
  }

  Future<void> speakcools23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The car cost a cool thirty thousand.");
  }

  Future<void> speakcools24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Glass contracts as it cools.");
  }

  Future<void> speakcools25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Melt the chocolate and allow it to cool slightly.");
  }

  Future<void> speakcools26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The evening breeze cooled her face.");
  }

  Future<void> speakcools27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I think we should wait until tempers have cooled.");
  }

  Future<void> speakcools28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Relations between them have definitely cooled.");
  }

  Future<void> speakcools29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her enthusiasm for the idea had cooled considerably.");
  }

  Future<void> speakcools30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He loved the cool of the early morning.");
  }

  Future<void> speakcools31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The best time to water your plants is during the relative cool of morning.");
  }

  Future<void> speakcools32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He really lost his cool when he heard about what happened.");
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
                            EntryTitle(word: "cool"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kuːl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcool("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kuːl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcool("en-US"),
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
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: فێنک، فێنکایی، سارد، ساردکە، ھوونک،	ئارام، لەسەرەخۆ، کەمتەرخەم، ساردوسڕ،	بێ‌شەرم، ڕوودار، بێ‌حەیا، بێ‌شەرمانە،	ھەوای فێنک، فێنکایی،	شوێن و جێی فێنک،	ئارامی، ھێمنی، لەسەرەخۆیی
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) فێنک؛ نە سارد و نە گەرم"),
                          SentencesRow(
                            englishText:
                                "Cooler weather is forecast for the weekend.",
                            kurdishText:
                                "کەشی فێنکتر بۆ کۆتایی ھەفتە پێشبینی دەکرێت.", // cool",
                            onPressedBritish: () => speakcools1("en-GB"),
                            onPressedAmerican: () => speakcools1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "These plants prefer cooler temperatures.",
                            kurdishText:
                                "ئەم ڕووەکانە پلەی گەرمی فێنکتریان بەدڵترە.",
                            onPressedBritish: () => speakcools2("en-GB"),
                            onPressedAmerican: () => speakcools2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Let's sit in the shade and keep cool.",
                            kurdishText:
                                "با لە سێبەرەکە دابنیشین و بە فێنکی بمێنین.",
                            onPressedBritish: () => speakcools3("en-GB"),
                            onPressedAmerican: () => speakcools3("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Store lemons in a cool dry place.",
                            kurdishText: "لیمۆ لە شوێنێکی فێنکی وشکدا ھەڵبگرە.",
                            onPressedBritish: () => speakcools4("en-GB"),
                            onPressedAmerican: () => speakcools4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) جلێک کە بە فێنکی دەیھێڵێتەوە"),
                          SentencesRow(
                            englishText:
                                "Wear light, cool clothing but try to avoid shorts.",
                            kurdishText:
                                "جلی سووکی فێنک لەبەربکە بەڵام ھەوڵ بدە لە شۆرت بەدوور بە.",
                            onPressedBritish: () => speakcools5("en-GB"),
                            onPressedAmerican: () => speakcools5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ھاوەڵناو) ڕەنگێک کە دڵخۆشت دەکات"),
                          SentencesRow(
                            englishText:
                                "The bedroom was painted a lovely cool blue.",
                            kurdishText:
                                "ژووری نووستنەکە بۆیەیەکی شینی جوانی ھێورکەرەوە کرابوو.",
                            onPressedBritish: () => speakcools6("en-GB"),
                            onPressedAmerican: () => speakcools6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) بۆ وتنی ئەوەی سەرسامی بە کەسێک یان شتێک کە بەدڵتە بەھۆی ئەوەی جوان و جیاوازن"),
                          SentencesRow(
                            englishText:
                                "Doesn't she look cool in those sunglasses?",
                            kurdishText: "کەشخە دیار نیەە بەو چاویلکانەوە؟",
                            onPressedBritish: () => speakcools7("en-GB"),
                            onPressedAmerican: () => speakcools7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You look pretty cool with that new haircut.",
                            kurdishText: "زۆر شۆخ دیاریت بەو قژە تازەوە.",
                            onPressedBritish: () => speakcools8("en-GB"),
                            onPressedAmerican: () => speakcools8("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText: "It's a cool movie.",
                                    kurdishText: "فیلمێکی خۆشە.",
                                    onPressedBritish: () =>
                                        speakcools9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcools9("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "She has lots of cool ideas.",
                                    kurdishText: "زۆر بیرۆکەی جوانی ھەیە.",
                                    onPressedBritish: () =>
                                        speakcools10("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcools10("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "I think their new song's really cool.",
                                    kurdishText:
                                        "پێموایە گۆرانییە تازەکەیان زۆر خۆشە.",
                                    onPressedBritish: () =>
                                        speakcools11("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcools11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ھاوەڵناو) بۆ باسکردنی شتێک کە حەزت لێیە و چێژی لێ دەبینی"),
                          SentencesRow(
                            englishText:
                                "We had such a cool time with Ed and his friends.",
                            kurdishText:
                                "کاتێکی بەچێژمان لەگەڵ ئێد و ھاوڕێکانی ھەبوو.",
                            onPressedBritish: () => speakcools12("en-GB"),
                            onPressedAmerican: () => speakcools12("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I really hope you can come—it'd be so cool!",
                            kurdishText: "زۆر بە ھیوام بێیت، زۆر ناوازە دەبێت.",
                            onPressedBritish: () => speakcools13("en-GB"),
                            onPressedAmerican: () => speakcools13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "It's really cool you came back!",
                            kurdishText: "زۆر خۆشە کە گەڕاویتەوە.",
                            onPressedBritish: () => speakcools14("en-GB"),
                            onPressedAmerican: () => speakcools14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ھاوەڵناو) بۆ پیشاندانی ئەوەی ڕازیت بە شتێک یان پێشنیازێک پەسەند دەکەیت"),
                          SentencesRow(
                            englishText:
                                "I was surprised that she got the job, but I'm cool with it (= it's not a problem for me).",
                            kurdishText:
                                "سەرسام بووم بەوەی کارەکەی وەرگرت، بەڵام ئاساییە لام.",
                            onPressedBritish: () => speakcools15("en-GB"),
                            onPressedAmerican: () => speakcools15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She's completely cool about what happened.",
                            kurdishText: "تەواو بێخەمە لەوەی ڕوویدا.",
                            onPressedBritish: () => speakcools16("en-GB"),
                            onPressedAmerican: () => speakcools16("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Can you come at 10.30 tomorrow?’ ‘That's cool.’",
                            kurdishText:
                                "'دەتوانیت سبەی لە ١٠:٣٠ بێیت؟' 'زۆرباشە.'",
                            onPressedBritish: () => speakcools17("en-GB"),
                            onPressedAmerican: () => speakcools17("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ھاوەڵناو) لەسەرەخۆ"),
                          SentencesRow(
                            englishText: "Just stay cool and don't panic.",
                            kurdishText: "تەنھا لەسەرەخۆ بمێنەوە و مەپەشۆکێ.",
                            onPressedBritish: () => speakcools18("en-GB"),
                            onPressedAmerican: () => speakcools18("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He has a cool head (= he stays calm in an emergency).",
                            kurdishText: "مێشکێکی لەسەرەخۆی ھەیە.",
                            onPressedBritish: () => speakcools19("en-GB"),
                            onPressedAmerican: () => speakcools19("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He forced himself to count to ten and act cool.",
                            kurdishText:
                                "زۆری لە خۆی کرد تاوەکو دە بژمێرێت و ھێمنانە ڕەفتار بکات.",
                            onPressedBritish: () => speakcools20("en-GB"),
                            onPressedAmerican: () => speakcools20("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ھاوەڵناو) سارد و سڕ؛ بەشێوەیەک کە ھاوڕێیانە و گەرموگوڕ نییە"),
                          SentencesRow(
                            englishText:
                                "They gave the prime minister a cool reception.",
                            kurdishText:
                                "پێشوازییەکی سارد و سڕیان لە سەرۆک وەزیران کرد.",
                            onPressedBritish: () => speakcools21("en-GB"),
                            onPressedAmerican: () => speakcools21("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He has been cool towards me ever since we had that argument.",
                            kurdishText:
                                "سارد و سڕ بووە لەگەڵم لەوەتەی ئەو مشتومڕەمان ھەبوو.",
                            onPressedBritish: () => speakcools22("en-GB"),
                            onPressedAmerican: () => speakcools22("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ھاوەڵناو) بۆ بڕە پارەیەک کە ئێجگار زۆرە"),
                          SentencesRow(
                            englishText: "The car cost a cool thirty thousand.",
                            kurdishText:
                                "ئۆتۆمبێلەکە سی ھەزار دۆلەری قەبەی تێدەچێت.",
                            onPressedBritish: () => speakcools23("en-GB"),
                            onPressedAmerican: () => speakcools23("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٠. (کردار) فێنک بوون یان فێنک کردن"),
                          SentencesRow(
                            englishText: "Glass contracts as it cools.",
                            kurdishText: "گڵاس دەچێتەوە یەک کە سارد دەبێت.",
                            onPressedBritish: () => speakcools24("en-GB"),
                            onPressedAmerican: () => speakcools24("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Melt the chocolate and allow it to cool slightly.",
                            kurdishText:
                                "چکلێتەکە بتاوێنەوە و بھێڵە کەمێک فێنک بێتەوە.",
                            onPressedBritish: () => speakcools25("en-GB"),
                            onPressedAmerican: () => speakcools25("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The evening breeze cooled her face.",
                            kurdishText:
                                "شنەبای ئێوارەکە ڕووخساری فێنک کردەوە.",
                            onPressedBritish: () => speakcools26("en-GB"),
                            onPressedAmerican: () => speakcools26("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) ھێوربوونەوە، ئارام بوونەوە، کەمتر بەجۆش"),
                          SentencesRow(
                            englishText:
                                "I think we should wait until tempers have cooled.",
                            kurdishText:
                                "پێموایە دەبێت چاوەڕێ بین تاوەکو تووڕەییەکان ھێور دەبنەوە.",
                            onPressedBritish: () => speakcools27("en-GB"),
                            onPressedAmerican: () => speakcools27("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Relations between them have definitely cooled (= they are not as friendly with each other as they were).",
                            kurdishText:
                                "پەیوەندییەکانی نێوانیان بەدڵنیاییەوە سارد بووەتەوە.",
                            onPressedBritish: () => speakcools28("en-GB"),
                            onPressedAmerican: () => speakcools28("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Her enthusiasm for the idea had cooled considerably.",
                            kurdishText:
                                "جۆشوخرۆشی بۆ بیرۆکەکە زۆر کەمی کردبوو.",
                            onPressedBritish: () => speakcools29("en-GB"),
                            onPressedAmerican: () => speakcools29("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (ناو) ھەوا یان شوێنی فێنک"),
                          SentencesRow(
                            englishText:
                                "He loved the cool of the early morning.",
                            kurdishText: "حەزی بە فێنکی بەیانییە شەبەقەکە بوو.",
                            onPressedBritish: () => speakcools30("en-GB"),
                            onPressedAmerican: () => speakcools30("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The best time to water your plants is during the relative cool of morning.",
                            kurdishText:
                                "باشترین کات بۆ ئاودانی ڕووەکەکانت لە ماوەی دەمی فێنکی بەیانییە.",
                            onPressedBritish: () => speakcools31("en-GB"),
                            onPressedAmerican: () => speakcools31("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (ناو) توانای کەسێک بۆ مانەوە بە لەسەرەخۆیی و ئارامی"),
                          SentencesRow(
                            englishText:
                                "He really lost his cool when he heard about what happened.",
                            kurdishText:
                                "تەواو ھێمنی خۆی لەدەستدا کە زانی چی ڕوویداوە.",
                            onPressedBritish: () => speakcools32("en-GB"),
                            onPressedAmerican: () => speakcools32("en-US"),
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
- Adjective: cool (derived forms: coolest, cooler)
1. Neither warm nor very cold; giving relief from heat
"a cool autumn day"; "a cool room"; "cool summer dresses"; "cool drinks"; "a cool breeze"
 
2. Marked by calm self-control (especially in trying circumstances); unemotional (= coolheaded, nerveless)
"play it cool"; "keep cool";
 
3. [informal] Being satisfactory or in satisfactory condition (= all right, fine, o.k., OK, okay, hunky-dory [informal], alright, jake [N. Amer, Austral, NZ, informal])
 
4. [informal] Used of a quantity or amount (especially of money) for emphasis
"a cool million bucks"
 
5. [informal] Fashionable and attractive at the time; often skilled or socially adept
"he's a cool dude"; "that's cool"; "Mary's dress is really cool"; "it's not cool to arrive at a party too early"
 
6. Inducing the impression of coolness; used especially of greens and blues and violets when referring to colour
"cool greens and blues and violets"; "the cool sound of rushing water"
 
7. Psychologically cool and unenthusiastic; unfriendly, unresponsive or showing dislike
"relations were cool and polite"; "a cool reception"; "cool to the idea of higher taxes"

- Verb: cool (derived forms: cooling, cools, cooled)
1. Make cool or cooler (= chill, cool down)
"cool the food"; "cool down the food";
 
2. Lose heat (= chill, cool down)
"The air cooled considerably after the thunderstorm";
 
3. Lose intensity (= cool off, cool down)
"His enthusiasm cooled considerably";

- Noun: cool (derived forms: cools)
1. The quality of being at a refreshingly low temperature
"the cool of early morning"
 
2. Great coolness and composure under strain (= aplomb, assuredness, poise, sang-froid, sangfroid)
"keep your cool";
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
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'rPe4yziWiOg';
  final double _startSeconds = 277;

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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 726;

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

  final String _videoId = 'DPZzrlFCD_I';
  final double _startSeconds = 221;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 606;

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

  final String _videoId = 'xkYved-ucGg';
  final double _startSeconds = 2766;

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

  final String _videoId = 'yBj9Qlpwjcs';
  final double _startSeconds = 940;

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

  final String _videoId = 'NCLZi2Rn_ug';
  final double _startSeconds = 30;

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