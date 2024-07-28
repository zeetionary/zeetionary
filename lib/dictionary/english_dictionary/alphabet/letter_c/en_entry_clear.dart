import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclear extends StatelessWidget {
  // blank divider
  EnglishEntryclear({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclear(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("clear");
  }

  Future<void> speakclears1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She gave me clear and precise directions.");
  }

  Future<void> speakclears2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Are these instructions clear enough?");
  }

  Future<void> speakclears3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Your meaning needs to be clear.");
  }

  Future<void> speakclears4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You'll do as you're told—is that clear?");
  }

  Future<void> speakclears5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was quite clear about her reasons for leaving.");
  }

  Future<void> speakclears6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This is a clear case of fraud.");
  }

  Future<void> speakclears7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She won the election by a clear majority.");
  }

  Future<void> speakclears8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There is clear evidence that he was involved with the gang.");
  }

  Future<void> speakclears9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was quite clear to me that she was lying.");
  }

  Future<void> speakclears10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My memory is not clear on that point.");
  }

  Future<void> speakclears11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm still not clear what the job involves.");
  }

  Future<void> speakclears12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'm still not clear whether she wants to come or not.");
  }

  Future<void> speakclears13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Everyone must be clear about their responsibilities.");
  }

  Future<void> speakclears14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You'll need to keep a clear head for your interview.");
  }

  Future<void> speakclears15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The photo wasn't very clear.");
  }

  Future<void> speakclears16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The voice on the phone was clear and strong.");
  }

  Future<void> speakclears17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The water was so clear we could see the bottom of the lake.");
  }

  Future<void> speakclears18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Items must be carried in a clear plastic bag.");
  }

  Future<void> speakclears19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("On a clear day, you can see the mountains in the distance.");
  }

  Future<void> speakclears20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Proper hydration and a balanced diet can contribute to achieving clear skin.");
  }

  Future<void> speakclears21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Most roads are now clear of snow.");
  }

  Future<void> speakclears22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You won't get a clear view of the stage from here.");
  }

  Future<void> speakclears23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I have no regrets, and can leave the company with a clear conscience.");
  }

  Future<void> speakclears24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They were still not clear of all suspicion.");
  }

  Future<void> speakclears25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We are finally clear of debt.");
  }

  Future<void> speakclears26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The plane climbed until it was clear of the clouds.");
  }

  Future<void> speakclears27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Make sure you park your car clear of the entrance.");
  }

  Future<void> speakclears28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Allow three clear days for the letter to arrive.");
  }

  Future<void> speakclears29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They had made a clear profit of £2 000.");
  }

  Future<void> speakclears30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was several hours before the road was cleared after the accident.");
  }

  Future<void> speakclears31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's your turn to clear the table.");
  }

  Future<void> speakclears32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They started clearing a path through the dense jungle.");
  }

  Future<void> speakclears33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She cleared a space on the sofa for him to sit down.");
  }

  Future<void> speakclears34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I cleared my desk of papers.");
  }

  Future<void> speakclears35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The streets had been cleared of snow.");
  }

  Future<void> speakclears36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Security officials tried to clear the area, fearing more bomb attacks.");
  }

  Future<void> speakclears37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Police were still clearing the streets when the bomb went off.");
  }

  Future<void> speakclears38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The traffic took a long time to clear after the accident.");
  }

  Future<void> speakclears39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The boy's lungs cleared and he began to breathe more easily.");
  }

  Future<void> speakclears40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The mist will clear by afternoon.");
  }

  Future<void> speakclears41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("As the smoke cleared, two fighter planes came into view.");
  }

  Future<void> speakclears42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The next day the weather cleared.");
  }

  Future<void> speakclears43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The sky cleared after the storm.");
  }

  Future<void> speakclears44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The rain is clearing slowly.");
  }

  Future<void> speakclears45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The muddy water slowly cleared.");
  }

  Future<void> speakclears46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("As her mind cleared, she remembered what had happened.");
  }

  Future<void> speakclears47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I went for a walk to clear my head.");
  }

  Future<void> speakclears48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His face suddenly cleared as understanding dawned.");
  }

  Future<void> speakclears49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was cleared of all charges against her.");
  }

  Future<void> speakclears50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Throughout his years in prison, he fought to clear his name.");
  }

  Future<void> speakclears51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll have to clear it with the manager.");
  }

  Future<void> speakclears52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The plane had been cleared for take-off.");
  }

  Future<void> speakclears53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She hasn't been cleared by security.");
  }

  Future<void> speakclears54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cheques usually take three working days to clear.");
  }

  Future<void> speakclears55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She cleared £1 000 on the deal.");
  }

  Future<void> speakclears56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They sold £25 million in holdings in order to clear colossal bank debts.");
  }

  Future<void> speakclears57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The horse cleared the fence easily.");
  }

  Future<void> speakclears58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Stand clear of the train doors.");
  }

  Future<void> speakclears59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "By lap two Walker was two metres clear of the rest of the runners.");
  }

  Future<void> speakclears60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Make sure you park clear of the kerb.");
  }

  Future<void> speakclears61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She could see clear down the highway into the town.");
  }

  Future<void> speakclears62(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His parents warned him to steer clear of trouble.");
  }

  Future<void> speakclears63(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears6363");
  }

  Future<void> speakclears64(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears6464");
  }

  Future<void> speakclears65(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears6565");
  }

  Future<void> speakclears66(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears6666");
  }

  Future<void> speakclears67(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears6767");
  }

  Future<void> speakclears68(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears6868");
  }

  Future<void> speakclears69(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears69");
  }

  Future<void> speakclears70(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclears70");
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
                            EntryTitle(word: "clear"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /klɪə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclear("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /klɪr/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclear("en-US"),
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
کوردی: ڕوون، تەنک، ڕووتەنک، زوڵاڵ، ساف، ئەودیودیار،	سا، ساو، ساماڵ، تاووساو، تاووبان، تاو(کەوتوو)، بێ‌ھەورھەڵا، خۆرکەوتوو،	دیار، ئاشکرا، خۆیا، ڕۆشن، ڕوون، بەرچاو، ڕاشکاو،	ڕەوان،	دڵنیا،	تەواو، ڕەبەق، گشت، ھەموو،	ڕەھا، ئازاد، دانەخراو، نەگیراو، بێ‌لەمپەر، بێ‌کۆسپ،	کراوە، ئاواڵە،	چۆڵ، خاڵی، بەتاڵ،	خەڵوەت،	دوور، بە دوور لە،	پوختە (خەرج‌وبار لێ‌دەرکراو)، بە ڕاشکاوی، بە ڕوونی، بەتەواوەتی، دوور، بە دوور لە، دوور لە
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) ڕوون و ئاسان بۆ تێگەشتن"),
                          SentencesRow(
                            englishText:
                                "She gave me clear and precise directions.",
                            kurdishText:
                                "ئاراستەی ڕوون و وردی پێدام.", // clear",
                            onPressedBritish: () => speakclears1("en-GB"),
                            onPressedAmerican: () => speakclears1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Are these instructions clear enough?",
                            kurdishText: "ئەم ڕێنماییانە تەواو ڕوونن؟",
                            onPressedBritish: () => speakclears2("en-GB"),
                            onPressedAmerican: () => speakclears2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Your meaning needs to be clear.",
                                    kurdishText: "مەبەستت دەبێت ڕوون بێت.",
                                    onPressedBritish: () =>
                                        speakclears3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclears3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "You'll do as you're told—is that clear?",
                                    kurdishText:
                                        "ئەوە دەکەیت کە پێت دەوترێت، ڕوونە؟",
                                    onPressedBritish: () =>
                                        speakclears4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclears4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She was quite clear about her reasons for leaving.",
                                    kurdishText:
                                        "تەواو ڕوون بوو سەبارەت بە ھۆکارەکانی بۆ ڕۆشتن.",
                                    onPressedBritish: () =>
                                        speakclears5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclears5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ھاوەڵناو) ڕوون و ئاشکرا، بەبێ ھێشتنەوەی ھیچ گومانێک"),
                          SentencesRow(
                            englishText: "This is a clear case of fraud.",
                            kurdishText: "ئەمە کەیسێکی ڕوونی دەستبڕییە.",
                            onPressedBritish: () => speakclears6("en-GB"),
                            onPressedAmerican: () => speakclears6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She won the election by a clear majority.",
                            kurdishText:
                                "ھەڵبژاردنەکەی بردەوە بە زۆرینەیەکی ڕەھا.",
                            onPressedBritish: () => speakclears7("en-GB"),
                            onPressedAmerican: () => speakclears7("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "There is clear evidence that he was involved with the gang.",
                                    kurdishText:
                                        "بەڵگەی تەواو ھەیە کە بەشێک بوو لە گرووپە تاوانکارییەکە.",
                                    onPressedBritish: () =>
                                        speakclears8("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclears8("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "It was quite clear to me that she was lying.",
                                    kurdishText:
                                        "تەواو بوو ڕوون بوو بۆم کە درۆی دەکرد.",
                                    onPressedBritish: () =>
                                        speakclears9("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclears9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) بەبێ گومان، وتنی ئەوەی کە دەتەوێت"),
                          SentencesRow(
                            englishText:
                                "My memory is not clear on that point.",
                            kurdishText:
                                "یادەوەریم تەواو نییە سەبارەت بەو خاڵە.",
                            onPressedBritish: () => speakclears10("en-GB"),
                            onPressedAmerican: () => speakclears10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I'm still not clear what the job involves.",
                            kurdishText:
                                "ھێشتا دڵنیا نیم کە کارەکە چی لەخۆدەگرێت.",
                            onPressedBritish: () => speakclears11("en-GB"),
                            onPressedAmerican: () => speakclears11("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "I'm still not clear whether she wants to come or not.",
                                    kurdishText:
                                        "ھێشتا دڵنیانیم کە دەیەوێت بێت یان نا.",
                                    onPressedBritish: () =>
                                        speakclears12("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclears12("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Everyone must be clear about their responsibilities.",
                                    kurdishText:
                                        "ھەموان دەبێت بەرچاوڕوون بن سەبارەت بە ئەرکەکانیان.",
                                    onPressedBritish: () =>
                                        speakclears13("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclears13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ھاوەڵناو) بیرکردنەوە بە ڕوونی"),
                          SentencesRow(
                            englishText:
                                "You'll need to keep a clear head for your interview.",
                            kurdishText:
                                "پێویستە مێشکت ساف بێت بۆ چاوپێکەوتنەکەت.",
                            onPressedBritish: () => speakclears14("en-GB"),
                            onPressedAmerican: () => speakclears14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ھاوەڵناو) ئاسان بۆ بینین یان تێگەشتن"),
                          SentencesRow(
                            englishText: "The photo wasn't very clear.",
                            kurdishText: "وێنەکە زۆر ڕوون نەبوو.",
                            onPressedBritish: () => speakclears15("en-GB"),
                            onPressedAmerican: () => speakclears15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The voice on the phone was clear and strong.",
                            kurdishText:
                                "دەنگی ناو تەلەفۆنەکە ڕوون و بەھێز بوو.",
                            onPressedBritish: () => speakclears16("en-GB"),
                            onPressedAmerican: () => speakclears16("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ھاوەڵناو) شتێک کە دەتوانیت بە ناویدا ببینیت"),
                          SentencesRow(
                            englishText:
                                "The water was so clear we could see the bottom of the lake.",
                            kurdishText:
                                "ئاوەکە ھێندە ڕوون بوو کە دەتتوانی بنی دەریاچەکە ببینیت.",
                            onPressedBritish: () => speakclears17("en-GB"),
                            onPressedAmerican: () => speakclears17("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Items must be carried in a clear plastic bag.",
                            kurdishText:
                                "شت دەبێت لەناو کیسەی پلاستیکی ڕووندا ھەڵبگیردرێن.",
                            onPressedBritish: () => speakclears18("en-GB"),
                            onPressedAmerican: () => speakclears18("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ھاوەڵناو) ئاسمانی ساماڵ؛ بەبێ ھەور و تەم"),
                          SentencesRow(
                            englishText:
                                "On a clear day, you can see the mountains in the distance.",
                            kurdishText:
                                "لە ڕۆژێکی ساماڵدا دەتوانیت چیاکان لە دوورەوە ببینیت.",
                            onPressedBritish: () => speakclears19("en-GB"),
                            onPressedAmerican: () => speakclears19("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ھاوەڵناو) پێستێک کە برین و خاڵی پێوە نییە"),
                          SentencesRow(
                            englishText:
                                "Proper hydration and a balanced diet can contribute to achieving clear skin.",
                            kurdishText:
                                "ئاوخواردنەوەی گونجاو و نانخواردنی ھاوسەنگ دەکرێت یارمەتیدەر بێت لە ھەبوونی پێستێکی پاک.",
                            onPressedBritish: () => speakclears20("en-GB"),
                            onPressedAmerican: () => speakclears20("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ھاوەڵناو) بەبێ کۆسپ و ئاستەنگ؛ بەبێ ھیچ ڕێگرییەک"),
                          SentencesRow(
                            englishText: "Most roads are now clear of snow.",
                            kurdishText:
                                "زۆرێک لە ڕێگاکان ئێستا بێ‌کۆسپن لە بەفر.",
                            onPressedBritish: () => speakclears21("en-GB"),
                            onPressedAmerican: () => speakclears21("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You won't get a clear view of the stage from here.",
                            kurdishText:
                                "دیمەنێکی ڕوونی ستەیجەکەت لێرەوە نابێت.",
                            onPressedBritish: () => speakclears22("en-GB"),
                            onPressedAmerican: () => speakclears22("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١١. (ھاوەڵناو) ھەستنەکردن بە تاوان"),
                          SentencesRow(
                            englishText:
                                "I have no regrets, and can leave the company with a clear conscience.",
                            kurdishText:
                                "ھیچ داخێکم نییە، و دەتوانم کۆمپانیاکە بە دڵ‌ودەروونی ئاسوودەوە جێبھێڵم.",
                            onPressedBritish: () => speakclears23("en-GB"),
                            onPressedAmerican: () => speakclears23("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (ھاوەڵناو) بەبێ شتێکی ناخۆش"),
                          SentencesRow(
                            englishText:
                                "They were still not clear of all suspicion.",
                            kurdishText:
                                "ھێشتا بە تەواوی لە گومان پاکنەبووەوە.",
                            onPressedBritish: () => speakclears24("en-GB"),
                            onPressedAmerican: () => speakclears24("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "We are finally clear of debt.",
                            kurdishText: "لەکۆتاییدا لە قەرز پاکبووینەتەوە.",
                            onPressedBritish: () => speakclears25("en-GB"),
                            onPressedAmerican: () => speakclears25("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (ھاوەڵناو) دوور لە شتێک؛ دەستنەدان لێی"),
                          SentencesRow(
                            englishText:
                                "The plane climbed until it was clear of the clouds.",
                            kurdishText:
                                "فڕۆکەکە بەرزبووەوە تاوەکو لە ھەورەکان دوورکەوتەوە.",
                            onPressedBritish: () => speakclears26("en-GB"),
                            onPressedAmerican: () => speakclears26("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Make sure you park your car clear of the entrance.",
                            kurdishText:
                                "دڵنیابەرەوە ئۆتۆمبێلەکە دوور لە دەروازەکە دەوەستێنیت.",
                            onPressedBritish: () => speakclears27("en-GB"),
                            onPressedAmerican: () => speakclears27("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٤. (ھاوەڵناو) ھەموو، تەواو"),
                          SentencesRow(
                            englishText:
                                "Allow three clear days for the letter to arrive.",
                            kurdishText:
                                "ڕێگە بە سێ ڕۆژی تەواو بدە بۆ نامەکە تا بگات.",
                            onPressedBritish: () => speakclears28("en-GB"),
                            onPressedAmerican: () => speakclears28("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٥. (ناو) بڕە پارەی قازانج لە دوای ئەوەی باج، خەرجی، ھتد دەردەکرێت"),
                          SentencesRow(
                            englishText:
                                "They had made a clear profit of £2 000.",
                            kurdishText:
                                "قازانجی پوختەی ٢,٠٠٠ پاوەندیان کردبوو.",
                            onPressedBritish: () => speakclears29("en-GB"),
                            onPressedAmerican: () => speakclears29("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٦. (کردار) سڕینەوەی ئەو شتانەی کە نەویستراون یان پێویست نین"),
                          SentencesRow(
                            englishText:
                                "It was several hours before the road was cleared after the accident.",
                            kurdishText:
                                "چەند کاتژمێرێکی پێچوو تاوەکو ڕێگا پاککرایەوە لە دوای ڕووداوەکە.",
                            onPressedBritish: () => speakclears30("en-GB"),
                            onPressedAmerican: () => speakclears30("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It's your turn to clear the table (= to take away the dirty plates, etc. after a meal).",
                            kurdishText: "نۆرەی تۆیە مێزەکە پاکبکەیتەوە.",
                            onPressedBritish: () => speakclears31("en-GB"),
                            onPressedAmerican: () => speakclears31("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "They started clearing a path through the dense jungle.",
                                    kurdishText:
                                        "دەستیان کرد بە پاککردنەوەی ڕێگایەک بەناو جەنگەڵە چڕەکەدا.",
                                    onPressedBritish: () =>
                                        speakclears32("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclears32("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She cleared a space on the sofa for him to sit down.",
                                    kurdishText:
                                        "جێگایەکیان لەسەر قەنەفەکە کردەوە بۆ ئەو تا دابنیشێت.",
                                    onPressedBritish: () =>
                                        speakclears33("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclears33("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "I cleared my desk of papers.",
                                    kurdishText: "مێزەکەم لە کاغەز پاککردەوە.",
                                    onPressedBritish: () =>
                                        speakclears34("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclears34("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The streets had been cleared of snow.",
                                    kurdishText:
                                        "شەقامەکان لە بەفر پاککرابوونەوە.",
                                    onPressedBritish: () =>
                                        speakclears35("en-GB"),
                                    onPressedAmerican: () =>
                                        speakclears35("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٦. (کردار) دەرکردنی خەڵکی لە شوێنێک"),
                          SentencesRow(
                            englishText:
                                "Security officials tried to clear the area, fearing more bomb attacks.",
                            kurdishText:
                                "بەرپرسانی ئاسایش ھەوڵیان ناوچەکە چۆڵبکەن لە ترسی تەقینەوە.",
                            onPressedBritish: () => speakclears36("en-GB"),
                            onPressedAmerican: () => speakclears36("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Police were still clearing the streets when the bomb went off.",
                            kurdishText:
                                "پۆلیس ‌ێشتا شەقامەکانیان چۆڵ دەکرد کە بۆمبەکە تەقییەوە.",
                            onPressedBritish: () => speakclears37("en-GB"),
                            onPressedAmerican: () => speakclears37("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٧. (کردار) لابردنی ئاستەنگ و دووبارە دەستکردن بە جووڵە"),
                          SentencesRow(
                            englishText:
                                "The traffic took a long time to clear after the accident.",
                            kurdishText:
                                "ھاتووچۆ چەند کاتژمێرێکی پێچوو بۆ دووبارە دەستپێکردنەوە لە دوای ڕووداوەکە.",
                            onPressedBritish: () => speakclears38("en-GB"),
                            onPressedAmerican: () => speakclears38("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The boy's lungs cleared and he began to breathe more easily.",
                            kurdishText:
                                "سییەکانی کوڕەکە پاکبوویەوە و دەستیکردەوە بە ھەناسەدان بە ئاسانتر.",
                            onPressedBritish: () => speakclears39("en-GB"),
                            onPressedAmerican: () => speakclears39("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٨. (کردار) نەمانی دووکەڵ، تەم، ھتد"),
                          SentencesRow(
                            englishText: "The mist will clear by afternoon.",
                            kurdishText: "تەمەکە کۆتایی دێت تاوەکو نیوەڕۆ.",
                            onPressedBritish: () => speakclears40("en-GB"),
                            onPressedAmerican: () => speakclears40("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "As the smoke cleared, two fighter planes came into view.",
                            kurdishText:
                                "کە دووکەڵەکە نەما، دوو فڕۆکەی جەنگی دەرکەوتن.",
                            onPressedBritish: () => speakclears41("en-GB"),
                            onPressedAmerican: () => speakclears41("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٩. (کردار) ئارامبوونەوەی کەشوھەوا و نەمانی ھەور و باران"),
                          SentencesRow(
                            englishText: "The next day the weather cleared.",
                            kurdishText: "ڕۆژی دواتر کەشەکە ئارامبوویەوە.",
                            onPressedBritish: () => speakclears42("en-GB"),
                            onPressedAmerican: () => speakclears42("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The sky cleared after the storm.",
                            kurdishText: "لە دوای زریانەکە ئاسمان سایەقەی دا.",
                            onPressedBritish: () => speakclears43("en-GB"),
                            onPressedAmerican: () => speakclears43("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "The rain is clearing slowly.",
                            kurdishText: "بارانەکە بەھێواشی خۆش دەکات.",
                            onPressedBritish: () => speakclears44("en-GB"),
                            onPressedAmerican: () => speakclears44("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٠. (کردار) ڕوونبوونی شلە بەشێوەیەک بەناویدا ببینیت"),
                          SentencesRow(
                            englishText: "The muddy water slowly cleared.",
                            kurdishText: "ئاوە قوڕاوییەکە بەھێواشی ڕوونبووەوە.",
                            onPressedBritish: () => speakclears45("en-GB"),
                            onPressedAmerican: () => speakclears45("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢١. (کردار) ئارامبوونەوەی مێشک ھەبوونی توانای بیرکردنەوە بە ڕوونی و بەبێ نیگەرانی، یان ھەبوونی کاریگەری مادەی کحولی"),
                          SentencesRow(
                            englishText:
                                "As her mind cleared, she remembered what had happened.",
                            kurdishText:
                                "لە دوای ئەوەی مێشکی ئارامبوویەوە، کەوتەوە بیری چی ڕوویدا.",
                            onPressedBritish: () => speakclears46("en-GB"),
                            onPressedAmerican: () => speakclears46("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "I went for a walk to clear my head.",
                            kurdishText:
                                "ڕۆشتم بۆ پیاسەیەک بۆ ئەوەی مێشکم ساف بکەم.",
                            onPressedBritish: () => speakclears47("en-GB"),
                            onPressedAmerican: () => speakclears47("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٣. (کردار) وەستان لە تووڕەبوون و نیگەرانی"),
                          SentencesRow(
                            englishText:
                                "His face suddenly cleared as understanding dawned.",
                            kurdishText:
                                "ڕووخساری لەناکاو ھێوربوویەوە کە دەستی بە تێگەشتن کرد.",
                            onPressedBritish: () => speakclears48("en-GB"),
                            onPressedAmerican: () => speakclears48("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٣. (کردار) پاککردنەوە لە تاوان"),
                          SentencesRow(
                            englishText:
                                "She was cleared of all charges against her.",
                            kurdishText: "لە ھەموو تاوانەکانی دژی پاککرایەوە.",
                            onPressedBritish: () => speakclears49("en-GB"),
                            onPressedAmerican: () => speakclears49("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Throughout his years in prison, he fought to clear his name.",
                            kurdishText:
                                "لە ماوەی ساڵانی زیندانیی، ھەوڵیدا ناوی پاکبکاتەوە.",
                            onPressedBritish: () => speakclears50("en-GB"),
                            onPressedAmerican: () => speakclears50("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٤. (کردار) پێدان یان وەرگرتنی مۆڵەتی فەرمی بۆ ئەوەی شتێک بکرێت"),
                          SentencesRow(
                            englishText:
                                "I'll have to clear it with the manager.",
                            kurdishText: "دەبێت مۆڵەت لە بەڕێوبەر وەربگرم.",
                            onPressedBritish: () => speakclears51("en-GB"),
                            onPressedAmerican: () => speakclears51("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٥. (کردار) پێدانی مۆڵەت بە کەسێک، کەشتییەک، فڕۆکەیەک، ھتد بۆ جێھێشتن یان چوونە ناو شوێنێک"),
                          SentencesRow(
                            englishText:
                                "The plane had been cleared for take-off.",
                            kurdishText: "فڕۆکەکە مۆڵەتی فڕینی پێدرابوو.",
                            onPressedBritish: () => speakclears52("en-GB"),
                            onPressedAmerican: () => speakclears52("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٦. (کردار) بە فەرمی بڕیاردان، لە دوای دۆزینەوەی زانیاری لەسەر کەسێک، کە دەکرێت کاری تایبەتیان پێ بدرێت یان نووسراوی نھێنی ببینن"),
                          SentencesRow(
                            englishText: "She hasn't been cleared by security.",
                            kurdishText:
                                "لەلایەن بەشی پاراستنەوە ڕێگەی پێنەدراوە.",
                            onPressedBritish: () => speakclears53("en-GB"),
                            onPressedAmerican: () => speakclears53("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٧. (کردار) بەردەستبوونی پارە بۆ بەکارھێنان"),
                          SentencesRow(
                            englishText:
                                "Cheques usually take three working days to clear.",
                            kurdishText:
                                "چەکی بانکی بەزۆری سێ ڕۆژی کارکردنیان پێدەچێت بۆ بەردەستبوون.",
                            onPressedBritish: () => speakclears54("en-GB"),
                            onPressedAmerican: () => speakclears54("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٨. (کردار) قازانجکردنی بڕە پارەیەک"),
                          SentencesRow(
                            englishText: "She cleared £1 000 on the deal.",
                            kurdishText:
                                "١,٠٠٠ پاوەندی لە ڕێککەوتنەکە قازانجکرد.",
                            onPressedBritish: () => speakclears55("en-GB"),
                            onPressedAmerican: () => speakclears55("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢٩. (کردار) دانەوەی قەرز"),
                          SentencesRow(
                            englishText:
                                "They sold £25 million in holdings in order to clear colossal bank debts.",
                            kurdishText:
                                "بە بەھای ٢٥ ملیۆن دۆلار پشکیان فرۆشتووە بۆ دانەوەی قەرزی گەورەی بانکی.",
                            onPressedBritish: () => speakclears56("en-GB"),
                            onPressedAmerican: () => speakclears56("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣٠. (کردار) بازدان بەسەر شتێکدا بەبێ دەستدان لێی"),
                          SentencesRow(
                            englishText: "The horse cleared the fence easily.",
                            kurdishText:
                                "ئەسپەکە بە ئاسانی بەسەر پەرژینەکەدا بازی دا.",
                            onPressedBritish: () => speakclears57("en-GB"),
                            onPressedAmerican: () => speakclears57("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣١. (ھاوەڵکار) دوور لە شتێک؛ بەرنەکەوتوو بە شتێک"),
                          SentencesRow(
                            englishText: "Stand clear of the train doors.",
                            kurdishText:
                                "دوور لە دەرگاکانی شەمەندەفەرەکە بوەستە.",
                            onPressedBritish: () => speakclears58("en-GB"),
                            onPressedAmerican: () => speakclears58("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "By lap two Walker was two metres clear of the rest of the runners.",
                            kurdishText:
                                "تاوەکو دەورانی دووەم واڵکەر دوو مەتر دوور بوو لە ڕاکەرانی دیکەوە.",
                            onPressedBritish: () => speakclears59("en-GB"),
                            onPressedAmerican: () => speakclears59("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Make sure you park clear of the kerb.",
                            kurdishText:
                                "دڵنیابەرەوە دوور لە قەراغەکە ڕابوەستیت.",
                            onPressedBritish: () => speakclears60("en-GB"),
                            onPressedAmerican: () => speakclears60("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣٢. (ھاوەڵکار) بە تەواوی تاوەکو شتێکی دوور"),
                          SentencesRow(
                            englishText:
                                "She could see clear down the highway into the town.",
                            kurdishText:
                                "دەیتوانی لە شاڕێکەوە تاوەکو شارۆچکەکە ببینێت.",
                            onPressedBritish: () => speakclears61("en-GB"),
                            onPressedAmerican: () => speakclears61("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣٣. (ھاوەڵکار) دووربوون لە کەسێک یان شتێک"),
                          SentencesRow(
                            englishText:
                                "His parents warned him to steer clear of trouble.",
                            kurdishText:
                                "باوک و دایکی ئاگاداریان کردەوە لە کێشە بە دوور بێت.",
                            onPressedBritish: () => speakclears62("en-GB"),
                            onPressedAmerican: () => speakclears62("en-US"),
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
- Adjective: clear (derived forms: clearest, clearer)
1. Readily apparent to the mind
"a clear and present danger"; "a clear explanation"; "a clear case of murder"; "a clear indication that she was angry"; "gave us a clear idea of human nature"
 
2. Free from confusion or doubt
"a complex problem requiring a clear head"; "not clear about what is expected of us"
 
3. Affording free passage or view (= open)
"a clear view";
 
4. Allowing light to pass through
"clear water"; "clear plastic bags"; "clear glass"; "the air is clear and clean"
 
5. Accurately stated or described (= well-defined)
"a set of clear values";
 
6. (meteorology) free from clouds, mist or haze
"on a clear day"
 
7. Free from contact, proximity or connection
"we were clear of the danger"; "the ship was clear of the reef"
 
8. Characterized by freedom from troubling thoughts (especially guilt)
"a clear conscience"; "regarded her questioner with clear untroubled eyes"
 
9. (of sound or colour) free from anything that dulls or dims (= clean, light, unclouded)
"clear laughter like a waterfall"; "clear reds and blues";
 
10. (especially of a title) free from any encumbrance or limitation that presents a question of fact or law (= unmortgaged)
"I have clear title to this property";
 
11. Distinct to the senses; easily perceptible (= clean-cut, clear-cut)
"as clear as a whistle"; "clear footprints in the snow"; "the letter brought back a clear image of his grandfather"; "a clear-cut pattern";
 
12. Free from restrictions or qualifications (= clean)
"a clear winner";
 
13. Free from flaw, blemish or impurity
"a clear perfect diamond"; "the clear complexion of a healthy young woman"
 
14. Clear of charges or deductions
"a clear profit"
 
15. Easily read and understood (= decipherable, readable)
"James Boice provides a clear overview of Christian theology";
 
16. Freed from any question of guilt (= absolved, cleared, exculpated, exonerated, vindicated)
"was now clear of the charge of cowardice";
 
17. Characterized by ease and quickness in perceiving (= percipient)
"clear mind";

- Verb: clear (derived forms: clearing, clears, cleared)
1. Rid of obstructions (= unclutter)
"Clear your desk";
 
2. Make a way or path by removing objects
"Clear a path through the dense forest"
 
3. Become free from clouds or less cloudy; become brighter (= clear up, light up, brighten)
"The sky cleared after the storm";
 
4. Grant authorization or clearance for (= authorize, authorise [Brit], pass)
"Clear the manuscript for publication";
 
5. Remove so as to leave tidy or unobstructed
"clear the leaves from the lawn"; "Clear snow from the road"
 
6. Go unchallenged; be approved (= pass)
"The bill cleared the House";
 
7. Be debited and credited to the proper bank accounts
"The payment should clear within 2 business days"
 
8. Go away or disappear
"The fog cleared in the afternoon"
 
9. Pass by, over, or under without making contact (= top)
"the balloon cleared the tree tops";
 
10. Make free from confusion or ambiguity; make clear (= clear up, shed light on, crystallize, crystallise [Brit], crystalize, crystalise [Brit], straighten out, sort out, enlighten, illuminate, elucidate)
"Clear up the question of who is at fault";
 
11. Free from payment of customs duties, as of a shipment
"Clear the ship and let it dock"
 
12. Clear from impurities, blemishes, pollution, etc.
"clear the water before it can be drunk"
 
13. Yield as a net profit (= net)
"This sale cleared me £1 million";
 
14. Make as a net profit (= net, sack, sack up)
"The company cleared £1 million";
 
15. Receive money in return for work; make a profit as the result of some business transaction (= gain, take in, make, earn, realize, realise [Brit], pull in [informal], bring in)
"He clears £5,000 each month";
 
16. Sell to get rid of
"We cleared a lot of the old model cars"
 
17. Pass an inspection or receive authorization
"clear customs"
 
18. Pronounce not guilty of criminal charges (= acquit, assoil [archaic], discharge, exonerate, exculpate)
"The suspect was cleared of the murder charges";
 
19. Settle, as of a debt (= solve)
"clear a debt";
 
20. Make clear, bright, light, or translucent
"The water had to be cleared through filtering"
 
21. (computing) rid of instructions or data
"clear a memory buffer"
 
22. Remove (people) from a building
"clear the patrons from the theatre after the bomb threat"
 
23. Remove the occupants of
"Clear the building"
 
24. Free (the throat) by making a rasping sound (= clear up)
"Clear the throat";

- Adverb: clear 
1. Entirely (= all the way)
"slept clear through the night"; "there were open fields clear to the horizon"; "read the book clear to the end";
 
2. In an easily perceptible manner (= clearly)
"She cried loud and clear";

- Noun: clear (derived forms: clears)
1. The state of being free of suspicion
"investigation showed that he was in the clear"
 
2. A clear or unobstructed space or expanse of land or water (= open)
"finally broke out of the forest into the clear";
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

  final String _videoId = 'jgNoyfryIFI';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'QBz2Mvp-WlE';
  final double _startSeconds = 36;

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

  final String _videoId = 'Na8tL0Sq-rU';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '0UEfXsu1OVw';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'UlY4TnCdL0s';
  final double _startSeconds = 117;

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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 51;

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

  final String _videoId = '_wNsZEqpKUA';
  final double _startSeconds = 1128;

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

  final String _videoId = '8HEfIJlcFbs';
  final double _startSeconds = 410;

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