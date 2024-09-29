import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydevelop extends StatefulWidget {
  const EnglishEntrydevelop({super.key});

  @override
  State<EnglishEntrydevelop> createState() => _EnglishEntrydevelopState();
}

class _EnglishEntrydevelopState extends State<EnglishEntrydevelop> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
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
    return const EntryTitle(word: "develop");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: develop");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈveləp/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdevelop(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("develop");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdevelop("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈveləp/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdevelop(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("develop");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdevelop("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdevelops1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("From birth to age 5, a child's brain develops rapidly.");
  }

  Future<void> speakdevelops2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Some children develop more slowly than others.");
  }

  Future<void> speakdevelops3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Gradually these settlements developed into cities.");
  }

  Future<void> speakdevelops4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Human beings developed from earlier species of animals.");
  }

  Future<void> speakdevelops5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The aim is to develop your personal skills.");
  }

  Future<void> speakdevelops6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She developed the company from nothing.");
  }

  Future<void> speakdevelops7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Their relationship has developed over a number of years.");
  }

  Future<void> speakdevelops8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He is trying hard to develop a loving relationship with his daughter.");
  }

  Future<void> speakdevelops9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Physicians need to develop a better understanding of this issue.");
  }

  Future<void> speakdevelops10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The company develops and markets new software.");
  }

  Future<void> speakdevelops11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It takes time to develop new technology.");
  }

  Future<void> speakdevelops12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We are developing products for different parts of the industry.");
  }

  Future<void> speakdevelops13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She developed lung cancer at the age of sixty.");
  }

  Future<void> speakdevelops14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The car developed engine trouble and we had to stop.");
  }

  Future<void> speakdevelops15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("If symptoms develop, seek help quickly.");
  }

  Future<void> speakdevelops16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A crisis was rapidly developing in the Gulf.");
  }

  Future<void> speakdevelops17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We need more time to see how things develop before we take action.");
  }

  Future<void> speakdevelops18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The conflict quickly developed into full-scale war.");
  }

  Future<void> speakdevelops19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The situation is developing into a crisis.");
  }

  Future<void> speakdevelops20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The site is being developed by a French company.");
  }

  Future<void> speakdevelops21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A lot of residents in town feel that it would be tragic if the land were developed for residential use.");
  }

  Future<void> speakdevelops22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The company is developing a chain of hotels.");
  }

  Future<void> speakdevelops23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He is enthusiastic about plans to develop factories at the site.");
  }

  Future<void> speakdevelops24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("For a country to develop, a good road network is essential.");
  }

  Future<void> speakdevelops25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Their economy was developing at an incredible pace.");
  }

  Future<void> speakdevelops26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She develops the theme more fully in her later books.");
  }

  Future<void> speakdevelops27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He began to develop these ideas in a series of paintings.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: پەرە پێدان، گەشە پێدان، پێکھێنان
"""),
          const DefinitionKurdish(
              text:
                  "١. (کردار) گەشەکردن و بەرەوپێشچوون، گەورەتر بوون، پێشکەوتووتر بوون، ھتد بە تێپەڕبوونی کات"),
          SentencesRow(
            englishText:
                "From birth to age 5, a child's brain develops rapidly.",
            kurdishText:
                "لە لەدایکبوونەوە تاوەکو پێنج ساڵی مێشکی منداڵ بە خێرایی بەرەوپێش دەچێت.",
            onPressedBritish: () => speakdevelops1("en-GB"),
            onPressedAmerican: () => speakdevelops1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Some children develop more slowly than others.",
            kurdishText: "ھەندێک منداڵ ھێواشتر گەشە دەکەن وەک لەوانی دیکە.",
            onPressedBritish: () => speakdevelops2("en-GB"),
            onPressedAmerican: () => speakdevelops2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        "Gradually these settlements developed into cities.",
                    kurdishText:
                        "کەم کەم ئەم کۆمەڵگەی نیشتەجێبوونانە بوون بە شار.",
                    onPressedBritish: () => speakdevelops3("en-GB"),
                    onPressedAmerican: () => speakdevelops3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "Human beings developed from earlier species of animals.",
                    kurdishText: "مرۆڤ لە جۆرەکانی دیکەی ئاژەڵانەوە گەشەی کرد.",
                    onPressedBritish: () => speakdevelops4("en-GB"),
                    onPressedAmerican: () => speakdevelops4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The aim is to develop your personal skills.",
                    kurdishText:
                        "ئامانجەکە بەرەوپێشبردنی شارەزاییە کەسییەکانتە.",
                    onPressedBritish: () => speakdevelops5("en-GB"),
                    onPressedAmerican: () => speakdevelops5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "She developed the company from nothing.",
                    kurdishText: "کۆمپانیاکەی لە ھیچەوە پەرەپێدا.",
                    onPressedBritish: () => speakdevelops6("en-GB"),
                    onPressedAmerican: () => speakdevelops6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) دەستپێکردن و پەرەپێدانی شتێک"),
          SentencesRow(
            englishText:
                "Their relationship has developed over a number of years.",
            kurdishText: "پەیوەندییەکەیان لە ماوەی چەند ساڵێکدا بەرەو پێشچوو.",
            onPressedBritish: () => speakdevelops7("en-GB"),
            onPressedAmerican: () => speakdevelops7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He is trying hard to develop a loving relationship with his daughter.",
            kurdishText:
                "بە ڕژدی ھەوڵ دەدات کە پەیوەندییەکی خۆشەویستانە لەگەڵ کچەکەی درووست بکات بکات.",
            onPressedBritish: () => speakdevelops8("en-GB"),
            onPressedAmerican: () => speakdevelops8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Physicians need to develop a better understanding of this issue.",
            kurdishText:
                "پزیشکە گشتییەکان دەبێت تێگەشتنی زیاتر پەرەپێبدەن بۆ ئەم بابەتە.",
            onPressedBritish: () => speakdevelops9("en-GB"),
            onPressedAmerican: () => speakdevelops9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) پەرەپێدانی بیرۆکەیەک، بەرھەمێک، ھتد و سەرخستنی"),
          SentencesRow(
            englishText: "The company develops and markets new software.",
            kurdishText:
                "کۆمپانیاکە ئەرمامێیر تازە گەشە پێدەدات و بەبازاڕیان دەکات.",
            onPressedBritish: () => speakdevelops10("en-GB"),
            onPressedAmerican: () => speakdevelops10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "It takes time to develop new technology.",
            kurdishText: "کاتی دەوێت تەکنەلۆژیای تازە درووست بکرێت.",
            onPressedBritish: () => speakdevelops11("en-GB"),
            onPressedAmerican: () => speakdevelops11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "We are developing products for different parts of the industry.",
            kurdishText: "بەرھەم گەشە پێدەدەین بۆ بەشە جیاوازەکانی پیشەسازی.",
            onPressedBritish: () => speakdevelops12("en-GB"),
            onPressedAmerican: () => speakdevelops12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) ھەبوونی شتێک، وەک نەخۆشییەک یان کێشەیەک"),
          SentencesRow(
            englishText: "She developed lung cancer at the age of sixty.",
            kurdishText: "لە تەمەنی شەست ساڵی تووشی شێرپەنجەی سینگ بوو.",
            onPressedBritish: () => speakdevelops13("en-GB"),
            onPressedAmerican: () => speakdevelops13("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        "The car developed engine trouble and we had to stop.",
                    kurdishText:
                        "ئۆتۆمبێلەکە تووشی کێشەی بزوێنەر بوو و پێویست بوو بوەستین.",
                    onPressedBritish: () => speakdevelops14("en-GB"),
                    onPressedAmerican: () => speakdevelops14("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "If symptoms develop, seek help quickly.",
                    kurdishText:
                        "ئەگەر نیشانەکانیت گرت بەخێرایی بۆ یارمەتی بچۆ.",
                    onPressedBritish: () => speakdevelops15("en-GB"),
                    onPressedAmerican: () => speakdevelops15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) دەستکردن بە ڕوودان یان گۆڕان، بەتایبەتی بەشێوەیەکی خراپ"),
          SentencesRow(
            englishText: "A crisis was rapidly developing in the Gulf.",
            kurdishText: "قەیرانێک بە خێرایی تەشەنەی دەکرد لە کەنداوی عەرەب.",
            onPressedBritish: () => speakdevelops16("en-GB"),
            onPressedAmerican: () => speakdevelops16("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        "We need more time to see how things develop before we take action.",
                    kurdishText:
                        "پێویستیمان بە کاتی زیاترە کە ببینین چۆن شتەکان تەشەنە دەکەن پێش ئەوەی ھەنگاو بنێین.",
                    onPressedBritish: () => speakdevelops17("en-GB"),
                    onPressedAmerican: () => speakdevelops17("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The conflict quickly developed into full-scale war.",
                    kurdishText: "پێکدادانەکە زوو بوو بە جەنگی تەواو.",
                    onPressedBritish: () => speakdevelops18("en-GB"),
                    onPressedAmerican: () => speakdevelops18("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The situation is developing into a crisis.",
                    kurdishText: "دۆخەکە تەشەنە دەسێنێت بۆ قەیران.",
                    onPressedBritish: () => speakdevelops19("en-GB"),
                    onPressedAmerican: () => speakdevelops19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) بنیادنانی خانوو، کارگە، ھتد ـی تازە لەسەر خاکێک کە پێشووتر بەکار نەدەھات"),
          SentencesRow(
            englishText: "The site is being developed by a French company.",
            kurdishText:
                "شوێنەکە لەلایەن کۆمپانیایەکی فەرەنسییەوە گەشەی پێ دەدرێت.",
            onPressedBritish: () => speakdevelops20("en-GB"),
            onPressedAmerican: () => speakdevelops20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "A lot of residents in town feel that it would be tragic if the land were developed for residential use.",
            kurdishText:
                "زۆر ھاوڵاتی ھەست دەکەن تراژیدیا دەبێت ئەگەر خاکەکە بۆ بەکارھێنانی نیشتەجێبوون گەشەی پێ بدرێت.",
            onPressedBritish: () => speakdevelops21("en-GB"),
            onPressedAmerican: () => speakdevelops21("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) بنیادنان یان باشترکردنی بینا یان کارگەیەک"),
          const DividerSentences(),
          SentencesRow(
            englishText: "The company is developing a chain of hotels.",
            kurdishText: "کۆمپانیاکە زنجیرە ھوتێلێک درووست دەکات.",
            onPressedBritish: () => speakdevelops22("en-GB"),
            onPressedAmerican: () => speakdevelops22("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He is enthusiastic about plans to develop factories at the site.",
            kurdishText: "بەجۆشە سەبارەت بە بنیادنانی کارگە لە شوێنەکە.",
            onPressedBritish: () => speakdevelops23("en-GB"),
            onPressedAmerican: () => speakdevelops23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (کردار) بەرەوپێشچوونی وڵاتێک"),
          SentencesRow(
            englishText:
                "For a country to develop, a good road network is essential.",
            kurdishText: "بۆ پێشکەوتنی وڵاتێک، تۆڕێکی ڕێگاوبانی باش سەرەکییە.",
            onPressedBritish: () => speakdevelops24("en-GB"),
            onPressedAmerican: () => speakdevelops24("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Their economy was developing at an incredible pace.",
            kurdishText: "کۆمپانیاکەیان بە خێراییەکی ناوازە بەرەوپێش دەچوو.",
            onPressedBritish: () => speakdevelops25("en-GB"),
            onPressedAmerican: () => speakdevelops25("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٩. (کردار) زیادکردنی وردەکاریی زیاتر بۆ چیرۆکێک، بیرۆکەیەک، ھتد"),
          SentencesRow(
            englishText:
                "She develops the theme more fully in her later books.",
            kurdishText:
                "لە پەرتووکەکانی داھاتووی زیاتر مژارەکە بەرەوپێش دەبات.",
            onPressedBritish: () => speakdevelops26("en-GB"),
            onPressedAmerican: () => speakdevelops26("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He began to develop these ideas in a series of paintings.",
            kurdishText:
                "دەستیکرد بە بەروپێشبردنی ئەم بیرۆکانە لە زنجیرە تابلۆیەکدا.",
            onPressedBritish: () => speakdevelops27("en-GB"),
            onPressedAmerican: () => speakdevelops27("en-US"),
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

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: develop (derived forms: developed, developing, develops)
1. Make something new, such as a product or a mental or artistic creation
"Her company developed a new kind of building material that withstands all kinds of weather"; "They developed a new technique"
 
2. Start and work to gradually produce or understand (= evolve, germinate)
"We have developed a new theory of evolution";
 
3. Gain through experience (= acquire, evolve)
"Children must develop a sense of right and wrong"; "Dave developed leadership qualities in his new position"; "develop a passion for painting";
 
4. Come to have or undergo a change of (physical features and attributes) (= grow, produce, get, acquire)
"The patient developed abdominal pains"; "Well-developed breasts";
 
5. Come into existence; take on form or shape (= originate, arise, rise, uprise, spring up, grow)
"A new religious movement developed in that country";
 
6. Change the use of and make available or usable (= build up)
"develop land"; "The country developed its natural resources";
 
7. Elaborate, as of theories and hypotheses (= explicate, formulate)
"Could you develop the ideas in your thesis";
 
8. Create by training and teaching (= train, prepare, educate)
"we develop the leaders for the future";
 
9. Be gradually disclosed or unfolded; become manifest
"The plot developed slowly"
 
10. Grow, progress, unfold, or evolve through a process of evolution, natural growth, differentiation, or a conducive environment
"A flower developed on the branch"; "The country developed into a mighty superpower"; "The embryo develops into a foetus"; "This situation has developed over a long time"
 
11. Become technologically advanced (= modernize, modernise [Brit])
"Many countries in Asia are now developing at a very fast pace";
 
12. Cause to grow and differentiate in ways conforming to its natural development (= make grow)
"The perfect climate here develops the grain"; "He developed a new kind of apple";
 
13. Generate gradually
"We must develop more potential customers"; "develop a market for the new mobile phone"
 
14. Grow emotionally or mature (= grow)
"The child developed beautifully in her new kindergarten";
 
15. (photography) make visible by means of chemical solutions
"Please develop this roll of film for me"
 
16. Superimpose a three-dimensional surface on a plane without stretching, in geometry
 
17. (chess) move one's pieces into strategically more advantageous positions
"Spassky developed quickly"
 
18. (chess) move into a strategically more advantageous position
"develop the rook"
 
19. Elaborate by the unfolding of a musical idea and by the working out of the rhythmic and harmonic changes in the theme
"develop the melody and change the key"
 
20. Happen (= break, recrudesce)
"Report the news as it develops";
 
21. (mathematics) expand in the form of a series
"Develop the function in the following form"
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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 1107;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 102;

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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 688;

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

  final String _videoId = 'ewLpXw6uN28';
  final double _startSeconds = 22;

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

  final String _videoId = 'dtp6b76pMak';
  final double _startSeconds = 2022;

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

  final String _videoId = 'iKv4oc2zbeA';
  final double _startSeconds = 2126;

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

  final String _videoId = 'ZO6ZDATLRmo';
  final double _startSeconds = 60;

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