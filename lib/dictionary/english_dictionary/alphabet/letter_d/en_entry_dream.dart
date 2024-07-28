import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydream extends StatefulWidget {
  const EnglishEntrydream({super.key});

  @override
  State<EnglishEntrydream> createState() => _EnglishEntrydreamState();
}

class _EnglishEntrydreamState extends State<EnglishEntrydream> {
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
  final String keyword = "dream";
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
    return const EntryTitle(word: "dream");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dream");
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
    return const IPAofEnglish(text: "IpaUK: /driːm/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdream(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dream");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdream("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /driːm/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdream(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dream");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdream("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdreams1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I had a really weird dream last night.");
  }

  Future<void> speakdreams2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I thought someone came into the bedroom, but it was just a dream.");
  }

  Future<void> speakdreams3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Don't think about it. You'll only give yourself bad dreams.");
  }

  Future<void> speakdreams4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I had a dream that we were getting married at the airport.");
  }

  Future<void> speakdreams5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His dead mother appeared to him in a dream.");
  }

  Future<void> speakdreams6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her lifelong dream was to be a famous writer.");
  }

  Future<void> speakdreams7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He wanted to be rich but it was an impossible dream.");
  }

  Future<void> speakdreams8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("If I win, it will be a dream come true.");
  }

  Future<void> speakdreams9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was the end of all my hopes and dreams.");
  }

  Future<void> speakdreams10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The chance to study in Australia had always been a dream for her.");
  }

  Future<void> speakdreams11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He left his job to pursue his dream of opening a restaurant.");
  }

  Future<void> speakdreams12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She walked around in a dream all day.");
  }

  Future<void> speakdreams13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("As if slowly emerging from a dream, she raised her head.");
  }

  Future<void> speakdreams14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That meal was an absolute dream.");
  }

  Future<void> speakdreams15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Did I talk in my sleep? I must have been dreaming.");
  }

  Future<void> speakdreams16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I dreamed about you last night.");
  }

  Future<void> speakdreams17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I keep dreaming of my old school.");
  }

  Future<void> speakdreams18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Did it really happen or did I just dream it?");
  }

  Future<void> speakdreams19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was the kind of trip most of us only dream about.");
  }

  Future<void> speakdreams20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She dreams of running her own business.");
  }

  Future<void> speakdreams21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I wouldn't dream of going without you.");
  }

  Future<void> speakdreams22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I never dreamt (that) I’d actually get the job.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: خەون، خەو،	ئاوات، ھیوا، خەیاڵ، خەون‌وخەیاڵ
"""),
          const DefinitionKurdish(text: "١. (ناو) خەوبینین لەکاتی خەودا"),
          SentencesRow(
            englishText: "I had a really weird dream last night.",
            kurdishText: "شەوی ڕابردوو خەونێکی نامۆم بینی.", // dream
            onPressedBritish: () => speakdreams1("en-GB"),
            onPressedAmerican: () => speakdreams1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I thought someone came into the bedroom, but it was just a dream.",
            kurdishText:
                "وام بیرکردەوە کەسێک ھاتە ژووری خەوەکەم، بەڵام تەنھا خەونێک بوو.",
            onPressedBritish: () => speakdreams2("en-GB"),
            onPressedAmerican: () => speakdreams2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Don't think about it. You'll only give yourself bad dreams.",
            kurdishText: "بیری لێ مەکەرەوە، تەنھا خەونی خراپ بە خۆت دەدەیت.",
            onPressedBritish: () => speakdreams3("en-GB"),
            onPressedAmerican: () => speakdreams3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I had a dream that we were getting married at the airport.",
            kurdishText:
                "خەونی ئەوەم دی کە لە فڕۆکەخانەکە ھاوسەرگیریمان دەکرد.",
            onPressedBritish: () => speakdreams4("en-GB"),
            onPressedAmerican: () => speakdreams4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "His dead mother appeared to him in a dream.",
            kurdishText: "دایکە کۆچکردووەکەی ھاتە لای لە خەونێکدا.",
            onPressedBritish: () => speakdreams5("en-GB"),
            onPressedAmerican: () => speakdreams5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) ھیوا و ئاواتێک کە ھەتە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Her lifelong dream was to be a famous writer.",
            kurdishText: "خەونی لەمێژینەی ئەوە بوو ببێت بە نووسەر.",
            onPressedBritish: () => speakdreams6("en-GB"),
            onPressedAmerican: () => speakdreams6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He wanted to be rich but it was an impossible dream.",
            kurdishText: "دەیویست دەوڵەمەند بێت بەڵام ئەستەم بوو.",
            onPressedBritish: () => speakdreams7("en-GB"),
            onPressedAmerican: () => speakdreams7("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: "If I win, it will be a dream come true.",
                    kurdishText: "ئەگەر ببەمەوە، بەدیھاتنی ئاواتێک دەبێت.",
                    onPressedBritish: () => speakdreams8("en-GB"),
                    onPressedAmerican: () => speakdreams8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "It was the end of all my hopes and dreams.",
                    kurdishText: "ئەوە کۆتایی ھەموو ھیوا و خەونەکانم بوو.",
                    onPressedBritish: () => speakdreams9("en-GB"),
                    onPressedAmerican: () => speakdreams9("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The chance to study in Australia had always been a dream for her.",
                    kurdishText:
                        "شانسی خوێندن لە ئوسترالیا ھەمیشە خەونێکی بووە.",
                    onPressedBritish: () => speakdreams10("en-GB"),
                    onPressedAmerican: () => speakdreams10("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "He left his job to pursue his dream of opening a restaurant.",
                    kurdishText:
                        "کارەکەی جێھێشت بۆ بەدیھێنانی خەونی کردنەوەی چێشتخانەیەک.",
                    onPressedBritish: () => speakdreams11("en-GB"),
                    onPressedAmerican: () => speakdreams11("en-US"),
                  ),
                ],
              ),
            ],
          ),

          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) دۆخێک کە تێیدا شتەکان ڕاستی نین یان بەشێک نین لە ژیانی ئاسایی"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "She walked around in a dream all day.",
            kurdishText: "تەواوی ڕۆژەکە بە خەیاڵەوە بە ڕێگادا دەچوو.",
            onPressedBritish: () => speakdreams12("en-GB"),
            onPressedAmerican: () => speakdreams12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "As if slowly emerging from a dream, she raised her head.",
            kurdishText:
                "وەک ئەوەی بەھێواشی لە خەیاڵ دەربچێت، سەری بەرزکردەوە.",
            onPressedBritish: () => speakdreams13("en-GB"),
            onPressedAmerican: () => speakdreams13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ناو) کەسێک یان شتێکی جوان"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "That meal was an absolute dream.",
            kurdishText: "چێشتەکە تەواو ناوازە بوو.",
            onPressedBritish: () => speakdreams14("en-GB"),
            onPressedAmerican: () => speakdreams14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) خەوبینین"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "Did I talk in my sleep? I must have been dreaming.",
            kurdishText: "لە خەوەکەمدا قسەم کرد؟ دەبێت خەونم بینیبێت.",
            onPressedBritish: () => speakdreams15("en-GB"),
            onPressedAmerican: () => speakdreams15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I dreamed about you last night.",
            kurdishText: "دوێنێ شەو خەونم پێتەوە بینی.",
            onPressedBritish: () => speakdreams16("en-GB"),
            onPressedAmerican: () => speakdreams16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I keep dreaming of my old school.",
            kurdishText: "بەردەوا، خەون بە قوتابخانە کۆنەکەمەوە دەبینم.",
            onPressedBritish: () => speakdreams17("en-GB"),
            onPressedAmerican: () => speakdreams17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Did it really happen or did I just dream it?",
            kurdishText: "بەڕاستی ڕوویدا یان تەنھا خەونم پێوە بینی؟",
            onPressedBritish: () => speakdreams18("en-GB"),
            onPressedAmerican: () => speakdreams18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) خەیاڵکردن بەو شتانەی کە دەتەوێت ڕووبدەن"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "It was the kind of trip most of us only dream about.",
            kurdishText:
                "ئەو جۆرە گەشتانە بوو کە زۆرینەمان تەنھا خەونی پێوە دەبینین.",
            onPressedBritish: () => speakdreams19("en-GB"),
            onPressedAmerican: () => speakdreams19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She dreams of running her own business.",
            kurdishText: "خەون بە بەڕێوەبردنی بازرگانیی خۆیەوە دەبینێت.",
            onPressedBritish: () => speakdreams20("en-GB"),
            onPressedAmerican: () => speakdreams20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I wouldn't dream of going without you (= I would never go without you).",
            kurdishText: "خەیاڵی ئەوە ناکەم بەبێ تۆ بچم.",
            onPressedBritish: () => speakdreams21("en-GB"),
            onPressedAmerican: () => speakdreams21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I never dreamt (that) I’d actually get the job.",
            kurdishText:
                "ھەرگیز خەونم بەوەوە نەبینی کە بەڕاستی ئەو کارە وەردەگرم.",
            onPressedBritish: () => speakdreams22("en-GB"),
            onPressedAmerican: () => speakdreams22("en-US"),
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
- Noun: dream (derived forms: dreams)
1. A series of mental images and emotions occurring during sleep (= dreaming)
"I had a dream about you last night";
 
2. Imaginative thoughts indulged in while awake (= dreaming)
"he lives in a dream that has nothing to do with reality";
 
3. A cherished desire (= ambition, aspiration)
"his dream is to own his own business";
 
4. A fantastic but vain hope (from fantasies induced by the opium pipe) (= pipe dream)
"I have this pipe dream about being emperor of the universe";
 
5. A state of mind characterized by abstraction and release from reality
"he went about his work as if in a dream"
 
6. Someone or something wonderful
"this dessert is a dream"

- Verb: dream (derived forms: dreamt, dreams, dreaming)
1. Have a daydream; indulge in a fantasy (= daydream, woolgather, stargaze)
 
2. Experience while sleeping
"She claims to never dream"; "He dreamt a strange scene"
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

  final String _videoId = 'CZJvBfoHDk0';
  final double _startSeconds = 21;

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

  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 756;

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

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 647;

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

  final String _videoId = 'hTqtGJwsJVE';
  final double _startSeconds = 1512;

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

  final String _videoId = 'dfuPBC-v5NE';
  final double _startSeconds = 1020;

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

  final String _videoId = 'GNf1MAMK6ak';
  final double _startSeconds = 99;

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

  final String _videoId = 'hYE5Lipyh_Q';
  final double _startSeconds = 227;

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