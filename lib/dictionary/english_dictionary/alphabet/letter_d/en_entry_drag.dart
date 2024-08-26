import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydrag extends StatefulWidget {
  const EnglishEntrydrag({super.key});

  @override
  State<EnglishEntrydrag> createState() => _EnglishEntrydragState();
}

class _EnglishEntrydragState extends State<EnglishEntrydrag> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                    SentencesIconForTab(),
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
              const SentencesFromDatabase(),
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class SentencesFromDatabase extends StatefulWidget {
  const SentencesFromDatabase({super.key});

  @override
  State<SentencesFromDatabase> createState() => _SentencesFromDatabaseState();
}

class _SentencesFromDatabaseState extends State<SentencesFromDatabase> {
  final String keyword = "drag";
  late FlutterTts flutterTts;
  List<Map<String, dynamic>> filteredSentences = [];

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    fetchSentences();
  }

  Future<void> fetchSentences() async {
    final sentences =
        await DatabaseUtils.instance.fetchFilteredSentences(keyword: keyword);
    setState(() {
      filteredSentences = sentences;
    });
  }

  void speakEnglish(String text, {String? languageCode}) async {
    await flutterTts.setLanguage(languageCode ?? "en-GB");
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          if (filteredSentences.isEmpty) {
            return const NoSentencesFromDatabase();
          } else {
            return ListView.builder(
              itemCount: filteredSentences.length,
              itemBuilder: (context, index) {
                final sentence = filteredSentences[index];
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: DatabaseUtils.instance.highlightText(
                                      sentence['english'].toString(),
                                      keyword,
                                      ref,
                                      context,
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child:
                                          DatabaseUtils.instance.highlightText(
                                        sentence['french'].toString(),
                                        keyword,
                                        ref,
                                        context,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(),
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-GB",
                                  ),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-US",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1)
                          const DividerSentences(),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
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
    return const EntryTitle(word: "drag");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: drag");
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
    return const IPAofEnglish(text: "IpaUK: /dræɡ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrag(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("drag");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdrag("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dræɡ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrag(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("drag");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdrag("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrags1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The sack is too heavy to lift—you’ll have to drag it.");
  }

  Future<void> speakdrags2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I dragged the chair over to the window.");
  }

  Future<void> speakdrags3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They dragged her from her bed.");
  }

  Future<void> speakdrags4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He quickly dragged a comb through his hair.");
  }

  Future<void> speakdrags5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She managed to drag him clear of the wreckage.");
  }

  Future<void> speakdrags6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The child dragged at his mother's sleeve, begging her to stay.");
  }

  Future<void> speakdrags7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I managed to drag myself out of bed.");
  }

  Future<void> speakdrags8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She always drags behind when we walk anywhere.");
  }

  Future<void> speakdrags9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm sorry to drag you all this way in the heat.");
  }

  Future<void> speakdrags10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The party was so good I couldn't drag myself away.");
  }

  Future<void> speakdrags11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("My parents used to drag me to piano lessons when I was a kid.");
  }

  Future<void> speakdrags12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Time dragged terribly.");
  }

  Future<void> speakdrags13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The meeting really dragged.");
  }

  Future<void> speakdrags14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("This dress is too long—it drags on the ground when I walk.");
  }

  Future<void> speakdrags15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They dragged the canal for the murder weapon.");
  }

  Future<void> speakdrags16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Click on the file and drag it across.");
  }

  Future<void> speakdrags17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He's such a drag.");
  }

  Future<void> speakdrags18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Walking's a drag—let's drive there.");
  }

  Future<void> speakdrags19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He came to be seen as a drag on his own party's prospects.");
  }

  Future<void> speakdrags20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She took a long drag on her cigarette.");
  }

  Future<void> speakdrags21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He performed in drag.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: کێشان، ڕاکێشان، کێشمان، ڕاکێش‌کردن، کێش‌کردن،	مرۆی یان شتی ماندووکەر، شتی وەڕەزکەر،	ھێزی بەرگری ھەوا، ھێزی کشێنەرەوە، لەمپەر، کۆسپ، تەگەرە،	(پیاو) لەبەرکردنی جلی ژنانە، بە جلی ژنانەوە.	جووڵانەوەی خاو یان سووک،	مایەی دەردەسەر، مڵۆزم، مایەی گێروکێشە، مایەی زەحمەت یان کێشە،	مژ،	جۆرێ کالیسکەی چەپەری کە بە ٤ ئەسپ ڕادەکێشرا،	قولاپ،	ئامێرێ بۆ خاوکردنەوەی پێچکە یان چەرخ، ڕێگا، ڕێ، شەقام،	کاریگەری، باندۆر (لەسەر خەڵک)،	(مێژوویی) ماڵوو، زەویڕن، خێشک، لێسە، کوڵوکوت، جەنجەڕ
"""),
          const DefinitionKurdish(text: "١. (کردار) ڕاکێشانی کەسێک/شتێک"),
          SentencesRow(
            englishText:
                "The sack is too heavy to lift—you’ll have to drag it.",
            kurdishText:
                "فەردەکە زۆر قوورسە تا بەرزی بکەیتەوە ـ دەبێت ڕایبکێشیت.",
            onPressedBritish: () => speakdrags1("en-GB"),
            onPressedAmerican: () => speakdrags1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I dragged the chair over to the window.",
            kurdishText: "کورسییەکەم ڕاکێشا بۆ لای پەنجەرەکە.",
            onPressedBritish: () => speakdrags2("en-GB"),
            onPressedAmerican: () => speakdrags2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They dragged her from her bed.",
            kurdishText: "لە جێخەوەکەی ڕایانکێشا.",
            onPressedBritish: () => speakdrags3("en-GB"),
            onPressedAmerican: () => speakdrags3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He quickly dragged a comb through his hair.",
            kurdishText: "بەپەلە شانەیەکی ھێنا بە قژیدا.",
            onPressedBritish: () => speakdrags4("en-GB"),
            onPressedAmerican: () => speakdrags4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She managed to drag him clear of the wreckage.",
            kurdishText: "توانی لە وێرانەکە ڕایبکێشێت.",
            onPressedBritish: () => speakdrags5("en-GB"),
            onPressedAmerican: () => speakdrags5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (کردار) گرتنی شتێک و ڕاکێشانی"),
          SentencesRow(
            englishText:
                "The child dragged at his mother's sleeve, begging her to stay.",
            kurdishText:
                "منداڵەکە قۆڵی دایکی ڕاکێشا و لێی دەپاڕایەوە بمێنێتەوە.",
            onPressedBritish: () => speakdrags6("en-GB"),
            onPressedAmerican: () => speakdrags6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) ڕێکردن بە ھێواشی و سەختی"),
          SentencesRow(
            englishText: "I managed to drag myself out of bed.",
            kurdishText: "توانیم خۆم لە جێخەوەکە بێنمە دەرەوە.",
            onPressedBritish: () => speakdrags7("en-GB"),
            onPressedAmerican: () => speakdrags7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She always drags behind when we walk anywhere.",
            kurdishText: "ھەمیشە لە دواوە جێدەمێنیت کە دەچینە ھەر شوێنێک.",
            onPressedBritish: () => speakdrags8("en-GB"),
            onPressedAmerican: () => speakdrags8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) ڕازیکردنی کەسێک کە بێت یان بچێت بۆ شوێنێک کە نایەوێت"),
          SentencesRow(
            englishText: "I'm sorry to drag you all this way in the heat.",
            kurdishText: "بمبوورە کە ئەم ھەموو ڕێگایە لەبەر گەرمایەکە ھێناومی.",
            onPressedBritish: () => speakdrags9("en-GB"),
            onPressedAmerican: () => speakdrags9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The party was so good I couldn't drag myself away.",
            kurdishText: "ئاھەنگەکە ھێندە باش بوو نەمدەتوانی جێیبھێڵم.",
            onPressedBritish: () => speakdrags10("en-GB"),
            onPressedAmerican: () => speakdrags10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "My parents used to drag me to piano lessons when I was a kid.",
            kurdishText:
                "دایک و باوکم جاران دەیانبردمە وانەی پیانۆ کە نەمدەویست بچم.",
            onPressedBritish: () => speakdrags11("en-GB"),
            onPressedAmerican: () => speakdrags11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) تێپەڕبوون بە ھێواشی"),
          SentencesRow(
            englishText: "Time dragged terribly.",
            kurdishText: "کات زۆر ھێواش تێدەپەڕی.",
            onPressedBritish: () => speakdrags12("en-GB"),
            onPressedAmerican: () => speakdrags12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The meeting really dragged.",
            kurdishText: "چاوپێکەوتنەکە زۆری خایاند.",
            onPressedBritish: () => speakdrags13("en-GB"),
            onPressedAmerican: () => speakdrags13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) جوڵاندنی شتێک کە بە کەمی بەر زەوی بکەوێت"),
          SentencesRow(
            englishText:
                "This dress is too long—it drags on the ground when I walk.",
            kurdishText:
                "ئەم جلە زۆر درێژە ـ دەخشێت بە زەویدا کە بە ڕێگا دەچم.",
            onPressedBritish: () => speakdrags14("en-GB"),
            onPressedAmerican: () => speakdrags14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (کردار) گەڕان بە بنی ڕووبارێک، دەریاچەیەک، ھتد بە تۆڕ یان قولاپ"),
          SentencesRow(
            englishText: "They dragged the canal for the murder weapon.",
            kurdishText: "نۆکەندەکە گەڕان بۆ چەکی پیاوکوژی.",
            onPressedBritish: () => speakdrags15("en-GB"),
            onPressedAmerican: () => speakdrags15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) جوڵاندن لەسەر شاشەی کۆمپیوتەر بە ماوس"),
          SentencesRow(
            englishText: "Click on the file and drag it across.",
            kurdishText: "کلیک لەسەر فایلەکە بکە و ڕایبکێشە ئەمبەر.",
            onPressedBritish: () => speakdrags16("en-GB"),
            onPressedAmerican: () => speakdrags16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (ناو) شت یان کەسێکی بێزارکەر"),
          SentencesRow(
            englishText: "He's such a drag.",
            kurdishText: "زۆر بێزارکەرە.",
            onPressedBritish: () => speakdrags17("en-GB"),
            onPressedAmerican: () => speakdrags17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Walking's a drag—let's drive there.",
            kurdishText: "ڕێکردن ناخۆشە ـ با ئۆتۆمبێل ببەین.",
            onPressedBritish: () => speakdrags18("en-GB"),
            onPressedAmerican: () => speakdrags18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (ناو) کەسێک یان شتێک کە پەرەسەندن و چوونەپێشەوە سەخت دەکات"),
          SentencesRow(
            englishText:
                "He came to be seen as a drag on his own party's prospects.",
            kurdishText: "بە ئەرقەلەیەک بیندرا بۆ پاشەڕۆژی پارتەکە.",
            onPressedBritish: () => speakdrags19("en-GB"),
            onPressedAmerican: () => speakdrags19("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١١. (ناو) قومدان لە جگەرە"),
          // const DividerSentences(),
          const AlsoEnglishckb(word: "ھەروەھا: draw"),
          SentencesRow(
            englishText: "She took a long drag on her cigarette.",
            kurdishText: "قومێکی قووڵی لە جگەرەکەی دا.",
            onPressedBritish: () => speakdrags20("en-GB"),
            onPressedAmerican: () => speakdrags20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (ناو) ئەو جلانەی کە لەلایەن ڕەگەزی بەرامبەرەوە لەبەر دەکرێت"),
          SentencesRow(
            englishText: "He performed in drag.",
            kurdishText: "بە جلی ژنانەوە نمایشی کرد.",
            onPressedBritish: () => speakdrags21("en-GB"),
            onPressedAmerican: () => speakdrags21("en-US"),
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
- Verb: drag (derived forms: dragged, dragging, drags)
1. Pull, as against a resistance
"He dragged the big suitcase behind him"; "These worries were dragging at him"
 
2. Draw slowly or heavily (= haul, hale [archaic], cart)
"drag stones";
 
3. Force into some kind of situation, condition, or course of action (= embroil, tangle, sweep, sweep up, drag in)
"don't drag me into this business";
 
4. Move slowly and as if with great effort
 
5. To lag or linger behind (= trail, get behind, hang back, drop behind, drop back)
"But in so many other areas we still are dragging";
 
6. Suck in or take (air) (= puff, draw)
 
7. Use an input device to move objects on the screen, or to select items (such as commands from a menu); drag the slider to increase or decrease rate; drag the handles on the image to resize it
"drag this icon to the lower right hand corner of the screen"
 
8. Walk without lifting the feet (= scuff)
 
9. Search (as the bottom of a body of water) for something valuable or lost (= dredge)

10. Persuade to come away from something attractive or interesting
"He dragged me away from the television set"
 
11. Proceed for an extended period of time (= drag on, drag out)
"The speech dragged on for two hours";

- Noun: drag (derived forms: drags)
1. The phenomenon of resistance to motion through a fluid (= retarding force)
 
2. Something that slows or delays progress
"taxation is a drag on the economy"; "too many laws are a drag on the use of new land"
 
3. [informal] Something tedious and boring
"peeling potatoes is a drag"
 
4. Clothing that is conventionally worn by the opposite sex (especially women's clothing when worn by a man)
"he went to the party dressed in drag"; "the waitresses looked like missionaries in drag"
 
5. [informal] A slow inhalation (as of tobacco smoke) (= puff, pull)
"he took a drag on his cigarette and expelled the smoke slowly";
 
6. The act of dragging (pulling with force)
"the drag up the hill exhausted him"
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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 714;

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

  final String _videoId = '0zwNZJbM-Gw';
  final double _startSeconds = 119;

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

  final String _videoId = 'BZbChKzedEk';
  final double _startSeconds = 293;

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

  final String _videoId = 'dtp6b76pMak';
  final double _startSeconds = 600;

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

  final String _videoId = 'yRmOWcWdQAo';
  final double _startSeconds = 1400;

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

  final String _videoId = 'W2hRTTTpmr8';
  final double _startSeconds = 1394;

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

  final String _videoId = 'cqidD7kVnxY';
  final double _startSeconds = 320;

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