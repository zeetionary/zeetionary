import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylong extends StatefulWidget {
  const EnglishEntrylong({super.key});

  @override
  State<EnglishEntrylong> createState() => _EnglishEntrylongState();
}

class _EnglishEntrylongState extends State<EnglishEntrylong> {
  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    flutterTts.setLanguage("en-US");
    fetchSentences();
  }

  FlutterTts flutterTts = FlutterTts();

  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(textToSpeak);

    setState(() {
      isSpeaking = true;
    });
  }

  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adjective: long (Derived forms: longest, longer)
1. Primarily temporal sense; being or indicating a relatively great or greater than average duration or passage of time or a duration as specified
"a long life"; "a long boring speech"; "a long time"; "a long friendship"; "a long game"; "long ago"; "an hour long"
 
2. Primarily spatial sense; of relatively great or greater than average spatial extension or extension as specified
"a long road"; "a long distance"; "contained many long words"; "ten miles long"
 
3. Good at remembering (- retentive, recollective, tenacious)
"a long mind";
 
4. (finance) holding securities or commodities in expectation of a rise in prices
"is long on coffee"; "a long position in gold"
 
5. (of speech sounds or syllables) of relatively long duration
"the English vowel sounds in 'bate', 'beat', 'bite', 'boat', 'boot' are long"
 
6. Of relatively great height
"a race of long gaunt men"; "looked out the long French windows"
 
7. Involving substantial risk
"long odds"
 
8. Planning prudently for the future (- farseeing, farsighted, foresighted, foresightful, prospicient, long-sighted [Brit])
"took a long view of the geopolitical issues"; "large goals that required long-sighted policies";
 
9. Having or being more than normal or necessary
"long on brains"; "in long supply"

- Adverb: long
1. For an extended time or at a distant time
"a promotion long overdue"; "something long hoped for"; "his name has long been forgotten"; "talked all night long"; "how long will you be gone?"; "arrived long before he was expected"; "it is long after your bedtime"
 
2. For an extended distance

- Verb: long (Derived forms: longs, longing, longed)
1. Desire strongly or persistently (- hanker, yearn, pant [informal])
""",
  );

  final String keyword = "long";
  List<Map<String, dynamic>> filteredSentences = [];

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

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""long""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She had long dark hair.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He walked down the long corridor.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was the world's longest bridge.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's a long way away.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He had long, thin fingers.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There was a long queue for tickets.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""How long is the River Nile?""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The table is six feet long.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The report is only three pages long.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He’s been ill (for) a long time.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There was a long silence before she spoke.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I like it now the days are getting longer.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Nurses have to work long hours.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Chicago has a long history of pop music.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""How long is the course?""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I think it's only three weeks long.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm tired. It's been a long day.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We were married for ten long years.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She usually wears long skirts.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""A long ball from out of defence led to a goal.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The government is long on ideas but short on performance.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Compare the long vowel in ‘beat’ and the short vowel in ‘bit’.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Have you been here long?""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Stay as long as you like.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The party went on long into the night.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You shouldn't have to wait too long.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Now we're living longer and retiring later.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I won't be long.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""How long have you been waiting?""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""These reforms are long overdue.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He retired long before the war.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It wasn't long before she had persuaded him.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We'll be home before long.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was long past midnight.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We had to wait all day long.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The baby was crying all night long.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Lucy had always longed for a brother.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He longed for Pat to phone.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm longing to see you again.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_4000""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence4100""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence4200""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence4300""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence4400""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence4500""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence4600""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence4700""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence4800""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence4900""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_5000""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence5100""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence5200""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence5300""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence5400""");
  }

  Future<void> speaksentence55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence5500""");
  }

  Future<void> speaksentence56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence5600""");
  }

  Future<void> speaksentence57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence5700""");
  }

  Future<void> speaksentence58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence5800""");
  }

  Future<void> speaksentence59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence5900""");
  }

  Future<void> speaksentence60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_6000""");
  }

  Future<void> speaksentence61(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6100""");
  }

  Future<void> speaksentence62(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6200""");
  }

  Future<void> speaksentence63(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6300""");
  }

  Future<void> speaksentence64(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6400""");
  }

  Future<void> speaksentence65(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6500""");
  }

  Future<void> speaksentence66(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6600""");
  }

  Future<void> speaksentence67(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6700""");
  }

  Future<void> speaksentence68(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6800""");
  }

  Future<void> speaksentence69(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence6900""");
  }

  Future<void> speaksentence70(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_7000""");
  }

  Future<void> speaksentence71(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7100""");
  }

  Future<void> speaksentence72(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7200""");
  }

  Future<void> speaksentence73(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7300""");
  }

  Future<void> speaksentence74(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7400""");
  }

  Future<void> speaksentence75(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7500""");
  }

  Future<void> speaksentence76(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7600""");
  }

  Future<void> speaksentence77(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7700""");
  }

  Future<void> speaksentence78(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7800""");
  }

  Future<void> speaksentence79(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence7900""");
  }

  Future<void> speaksentence80(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_8000""");
  }

  Future<void> speaksentence81(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8100""");
  }

  Future<void> speaksentence82(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8200""");
  }

  Future<void> speaksentence83(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8300""");
  }

  Future<void> speaksentence84(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8400""");
  }

  Future<void> speaksentence85(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8500""");
  }

  Future<void> speaksentence86(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8600""");
  }

  Future<void> speaksentence87(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8700""");
  }

  Future<void> speaksentence88(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8800""");
  }

  Future<void> speaksentence89(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence8900""");
  }

  Future<void> speaksentence90(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_9000""");
  }

  Future<void> speaksentence91(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9100""");
  }

  Future<void> speaksentence92(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9200""");
  }

  Future<void> speaksentence93(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9300""");
  }

  Future<void> speaksentence94(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9400""");
  }

  Future<void> speaksentence95(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9500""");
  }

  Future<void> speaksentence96(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9600""");
  }

  Future<void> speaksentence97(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9700""");
  }

  Future<void> speaksentence98(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9800""");
  }

  Future<void> speaksentence99(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence9900""");
  }

  Future<void> speaksentence100(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence__10000""");
  }

  Future<void> speaksentence101(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10100""");
  }

  Future<void> speaksentence102(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10200""");
  }

  Future<void> speaksentence103(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10300""");
  }

  Future<void> speaksentence104(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10400""");
  }

  Future<void> speaksentence105(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10500""");
  }

  Future<void> speaksentence106(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10600""");
  }

  Future<void> speaksentence107(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10700""");
  }

  Future<void> speaksentence108(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10800""");
  }

  Future<void> speaksentence109(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_10900""");
  }

  Future<void> speaksentence110(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11000""");
  }

  Future<void> speaksentence111(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11100""");
  }

  Future<void> speaksentence112(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11200""");
  }

  Future<void> speaksentence113(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11300""");
  }

  Future<void> speaksentence114(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11400""");
  }

  Future<void> speaksentence115(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11500""");
  }

  Future<void> speaksentence116(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11600""");
  }

  Future<void> speaksentence117(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11700""");
  }

  Future<void> speaksentence118(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11800""");
  }

  Future<void> speaksentence119(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_11900""");
  }

  Future<void> speaksentence120(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""speaksentence_12000""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'jNQXAC9IVRw';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/hS2x1zl4rn0?t=1416';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/hFZFjoX2cGg?t=463';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/k3aAl92_VDE?t=30';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/BxWw8AO4ZmI?t=11';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/_spuxXnul0U?t=904';
    const double startSecondsfive = 0;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """long""",
                      // alsoEnglishWord: "also: long",
                      britshText: """IpaUK: /lɒŋ/""",
                      americanText: """IpaUS: /lɔːŋ/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const CustomTabBarNew(
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
              SingleChildScrollView(
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
              ),
              SingleChildScrollView(
                child: CustomColumnWidget(
                  children: [
                    const KurdishVocabulary(text: """
کوردی: درێژ، دوورودرێژ، کۆن، لەمێژینە،	(لە جل‌وبەرگ‌دا) درێژ،	(دەنگ‌ناسی) درێژ، (بە) ماوەی، زۆر دەمێکە، ماوەیەکی زۆر،	ماوەیەکی زۆر، ماوەیەکی دوورودرێژ،	بڕگە، بزوێن یان دەنگی درێژ
"""),
// With short examples define "long", please follow LX instructions
                    const DefinitionKurdish(text: """١. (ھاوەڵناو) درێژ"""),
                    SentencesRow(
                      englishText: """She had long dark hair.""",
                      kurdishText: """قژی ڕەشی درێژی هەبوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He walked down the long corridor.""",
                      kurdishText: """بە ڕاڕەوە درێژەکەدا چوو.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It was the world's longest bridge.""",
                      kurdishText: """درێژترین پردی جیهان بوو.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It's a long way away.""",
                      kurdishText: """ڕێگایەکی درێژ دوورە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He had long, thin fingers.""",
                      kurdishText: """پەنجەی باریکی درێژی هەبوو.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """There was a long queue for tickets.""",
                      kurdishText: """ڕیزێکی درێژ هەبوو بۆ بلیت.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) بۆ پرسیارکردن لەسەر مەودا یان دووری"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """How long is the River Nile?""",
                      kurdishText: """ڕووباری نیل چەند درێژە؟""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The table is six feet long.""",
                      kurdishText: """مێزەکە شەش پێ درێژە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The report is only three pages long.""",
                      kurdishText: """ڕاپۆرتەکە تەنها سێ لاپەڕە درێژە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) کە کاتێکی زۆری پێدەچێت، یان زیاتر لەوەی کە چاوەڕوانکراوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He’s been ill (for) a long time.""",
                      kurdishText: """بۆ کاتێکی زۆر دەبێت نەخۆشە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There was a long silence before she spoke.""",
                      kurdishText:
                          """بێ دەنگییەکی زۆر هەبوو پێش ئەوەی قسەی کرد.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I like it now the days are getting longer (= it stays light for more time each day).""",
                      kurdishText: """حەزم لێیە کە ڕۆژان درێژ دەبێت.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Nurses have to work long hours (= for more hours in the day than is usual).""",
                      kurdishText: """پەرستاران دەبێت ماوەی زۆر کار بکەن.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Chicago has a long history of pop music.""",
                      kurdishText:
                          """شیکاگۆ مێژوویەکی درێژی هەیە لە میوزیکی پۆپ.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) بۆ پرسیارکردن یان قسەکردن لەسەر ماوەیەکی دیاریکراو لە کات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """How long is the course?""",
                      kurdishText: """کۆرسەکە چەندە درێژە؟""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I think it's only three weeks long.""",
                      kurdishText: """پێموایە تەنها سێ ڕۆژ درێژە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ھاوەڵناو) کە وەها دەردەکەوێت کاتێکی زیاتر بخایەنێت وەک لەوەی دەردەکەوێت، بۆ نموونە بەهۆی ئەوەی سەرقاڵیت یان بێزاریت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'm tired. It's been a long day.""",
                      kurdishText: """ماندووم. ڕۆژێکی درێژ بوو.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We were married for ten long years.""",
                      kurdishText: """بۆ دە ساڵی دوورودرێژ هاوسەر بووین.""",
                      englishNote:
                          """This means the marriage lasted for a decade, and the word **long** suggests that the time felt slow, possibly difficult, or emotionally heavy.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ھاوەڵناو) کە زۆرینەی باڵ یان لاق دادەپۆشێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She usually wears long skirts.""",
                      kurdishText: """زۆرجار تەنوورەی درێژ دەپۆشێت.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ھاوەڵناو) کە بۆ مەودایەکی زۆر دەچێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A long ball from out of defence led to a goal.""",
                      kurdishText:
                          """تۆپێکی درێژ لە ناوچەی بەرگرییەوە بوو بە گۆڵ.""",
                      englishNote:
                          """This means a powerful or far-reaching pass from the defensive area started an attacking move that resulted in a goal.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ھاوەڵناو) هەبوونی ڕێژەیەکی زۆر لە خاسیەتێکی دیاریکراو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The government is long on ideas but short on performance.""",
                      kurdishText: """حکومەت دەمی درێژە و دەستی کورتە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ھاوەڵناو) بزوێنێکی درێژ بۆ ماوەیەکی زیاتر دەخوێندرێتەوە وەک لە بزوێنی دیکە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Compare the long vowel in ‘beat’ and the short vowel in ‘bit’.""",
                      kurdishText:
                          """بەراورد بکە لە نێوان بزوێنی درێژ لە ‘beat’ ـدا بزوێنی کورت لە ‘bit’ ـدا.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (ھاوەڵکار) بۆ ماوەیەکی زۆر"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Have you been here long?""",
                      kurdishText: """بۆ ماوەیەکی زۆر دەبێت لێرە بوونە؟""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: """Stay as long as you like.""",
                              kurdishText:
                                  """هەرچەندە زۆر بتەوێت دەمێنێتەوە.""",
                              onPressedBritish: () => speaksentence24("en-GB"),
                              onPressedAmerican: () => speaksentence24("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵکار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The party went on long into the night.""",
                              kurdishText:
                                  """ئاهەنگەکە درێژەی خایاند بۆ شەو.""",
                              onPressedBritish: () => speaksentence25("en-GB"),
                              onPressedAmerican: () => speaksentence25("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵکار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """You shouldn't have to wait too long.""",
                              kurdishText: """نابێت زۆر چاوەڕێ بیت.""",
                              onPressedBritish: () => speaksentence26("en-GB"),
                              onPressedAmerican: () => speaksentence26("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵکار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Now we're living longer and retiring later.""",
                              kurdishText:
                                  """ئێستا زیاتر دەژین و درەنگتر خانەنشین دەبین.""",
                              onPressedBritish: () => speaksentence27("en-GB"),
                              onPressedAmerican: () => speaksentence27("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵکار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I won't be long (= I'll return, be ready, etc. soon).""",
                              kurdishText: """زۆرم پێناچێت.""",
                              onPressedBritish: () => speaksentence28("en-GB"),
                              onPressedAmerican: () => speaksentence28("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵکار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """How long have you been waiting?""",
                              kurdishText: """چەند دەبێت چاوەڕێیت؟""",
                              onPressedBritish: () => speaksentence29("en-GB"),
                              onPressedAmerican: () => speaksentence29("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵکار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """These reforms are long overdue.""",
                              kurdishText:
                                  """ئەم چاکسازییانە زۆریان بەسەردا تێپەڕیوە.""",
                              onPressedBritish: () => speaksentence30("en-GB"),
                              onPressedAmerican: () => speaksentence30("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """١١. (ھاوەڵکار) ماوەیەکی زۆر لە پێش یان پاشی کاتێک یان ڕووداوێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He retired long before the war.""",
                      kurdishText: """ماوەیەکی زۆر دوای جەنگەکە خانەنشین بوو.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It wasn't long before she had persuaded him (= it only took a short time).""",
                      kurdishText: """زۆری پێنەچوو کە قەناعەتی پێکرد.""",
                      englishNote: """This means she convinced him quickly, without much delay.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We'll be home before long (= soon).""",
                      kurdishText: """زۆر ناخایەنێت لە ماڵ دەبین.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It was long past midnight.""",
                      kurdishText: """زۆر لە نیوەشەو لای دابوو.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """١٢. (ھاوەڵکار) لە دوای ناوێک بەکاردێت بۆ جەختکردنەوە لەوەی کە شتێک بۆ تەواوی ماوەیەک ڕوودەدات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We had to wait all day long.""",
                      kurdishText: """پێویست بوو بۆ تەواوی ڕۆژەکە بوەستین.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The baby was crying all night long.""",
                      kurdishText: """منداڵەکە تەواوی شەوەکە دەگریا.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """١٣. (کردار) ئەوەی شتێکت بە ئاستێکی زۆر بوێت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: yearn"),
                    SentencesRow(
                      englishText: """Lucy had always longed for a brother.""",
                      kurdishText: """لووسی هەمیشە تامەزرۆی برایەک بوو.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He longed for Pat to phone.""",
                      kurdishText: """با ئاوات بوو پات تەلەفۆن بکات.""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'm longing to see you again.""",
                      kurdishText: """بە هیوام دووبارە بتبینمەوە.""",
                      onPressedBritish: () => speaksentence39("en-GB"),
                      onPressedAmerican: () => speaksentence39("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_4000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence40("en-GB"),
                      onPressedAmerican: () => speaksentence40("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence4100""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence41("en-GB"),
                      onPressedAmerican: () => speaksentence41("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence4200""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence42("en-GB"),
                      onPressedAmerican: () => speaksentence42("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence4300""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence4400""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence44("en-GB"),
                      onPressedAmerican: () => speaksentence44("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence4500""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence45("en-GB"),
                      onPressedAmerican: () => speaksentence45("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence4600""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence4700""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence47("en-GB"),
                      onPressedAmerican: () => speaksentence47("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence4800""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence48("en-GB"),
                      onPressedAmerican: () => speaksentence48("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence4900""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence49("en-GB"),
                      onPressedAmerican: () => speaksentence49("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_5000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence50("en-GB"),
                      onPressedAmerican: () => speaksentence50("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence5100""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence51("en-GB"),
                      onPressedAmerican: () => speaksentence51("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence5200""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence52("en-GB"),
                      onPressedAmerican: () => speaksentence52("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence5300""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence53("en-GB"),
                      onPressedAmerican: () => speaksentence53("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence5400""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence54("en-GB"),
                      onPressedAmerican: () => speaksentence54("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence5500""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence55("en-GB"),
                      onPressedAmerican: () => speaksentence55("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence5600""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence56("en-GB"),
                      onPressedAmerican: () => speaksentence56("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence5700""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence57("en-GB"),
                      onPressedAmerican: () => speaksentence57("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence5800""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence58("en-GB"),
                      onPressedAmerican: () => speaksentence58("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence5900""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence59("en-GB"),
                      onPressedAmerican: () => speaksentence59("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_6000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence60("en-GB"),
                      onPressedAmerican: () => speaksentence60("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6100""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence61("en-GB"),
                      onPressedAmerican: () => speaksentence61("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6200""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence62("en-GB"),
                      onPressedAmerican: () => speaksentence62("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6300""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence63("en-GB"),
                      onPressedAmerican: () => speaksentence63("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6400""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence64("en-GB"),
                      onPressedAmerican: () => speaksentence64("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6500""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence65("en-GB"),
                      onPressedAmerican: () => speaksentence65("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6600""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence66("en-GB"),
                      onPressedAmerican: () => speaksentence66("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6700""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence67("en-GB"),
                      onPressedAmerican: () => speaksentence67("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6800""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence68("en-GB"),
                      onPressedAmerican: () => speaksentence68("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence6900""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence69("en-GB"),
                      onPressedAmerican: () => speaksentence69("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_7000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence70("en-GB"),
                      onPressedAmerican: () => speaksentence70("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7100""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence71("en-GB"),
                      onPressedAmerican: () => speaksentence71("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7200""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence72("en-GB"),
                      onPressedAmerican: () => speaksentence72("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7300""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence73("en-GB"),
                      onPressedAmerican: () => speaksentence73("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7400""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence74("en-GB"),
                      onPressedAmerican: () => speaksentence74("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7500""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence75("en-GB"),
                      onPressedAmerican: () => speaksentence75("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7600""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence76("en-GB"),
                      onPressedAmerican: () => speaksentence76("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7700""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence77("en-GB"),
                      onPressedAmerican: () => speaksentence77("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7800""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence78("en-GB"),
                      onPressedAmerican: () => speaksentence78("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence7900""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence79("en-GB"),
                      onPressedAmerican: () => speaksentence79("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_8000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence80("en-GB"),
                      onPressedAmerican: () => speaksentence80("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8100""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence81("en-GB"),
                      onPressedAmerican: () => speaksentence81("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8200""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence82("en-GB"),
                      onPressedAmerican: () => speaksentence82("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8300""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence83("en-GB"),
                      onPressedAmerican: () => speaksentence83("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8400""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence84("en-GB"),
                      onPressedAmerican: () => speaksentence84("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8500""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence85("en-GB"),
                      onPressedAmerican: () => speaksentence85("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8600""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence86("en-GB"),
                      onPressedAmerican: () => speaksentence86("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8700""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence87("en-GB"),
                      onPressedAmerican: () => speaksentence87("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8800""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence88("en-GB"),
                      onPressedAmerican: () => speaksentence88("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence8900""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence89("en-GB"),
                      onPressedAmerican: () => speaksentence89("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_9000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence90("en-GB"),
                      onPressedAmerican: () => speaksentence90("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9100""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence91("en-GB"),
                      onPressedAmerican: () => speaksentence91("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9200""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence92("en-GB"),
                      onPressedAmerican: () => speaksentence92("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9300""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence93("en-GB"),
                      onPressedAmerican: () => speaksentence93("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9400""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence94("en-GB"),
                      onPressedAmerican: () => speaksentence94("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9500""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence95("en-GB"),
                      onPressedAmerican: () => speaksentence95("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9600""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence96("en-GB"),
                      onPressedAmerican: () => speaksentence96("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9700""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence97("en-GB"),
                      onPressedAmerican: () => speaksentence97("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9800""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence98("en-GB"),
                      onPressedAmerican: () => speaksentence98("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence9900""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence99("en-GB"),
                      onPressedAmerican: () => speaksentence99("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence__10000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence100("en-GB"),
                      onPressedAmerican: () => speaksentence100("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10100""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence101("en-GB"),
                      onPressedAmerican: () => speaksentence101("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10200""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence102("en-GB"),
                      onPressedAmerican: () => speaksentence102("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10300""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence103("en-GB"),
                      onPressedAmerican: () => speaksentence103("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10400""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence104("en-GB"),
                      onPressedAmerican: () => speaksentence104("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10500""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence105("en-GB"),
                      onPressedAmerican: () => speaksentence105("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10600""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence106("en-GB"),
                      onPressedAmerican: () => speaksentence106("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10700""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence107("en-GB"),
                      onPressedAmerican: () => speaksentence107("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10800""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence108("en-GB"),
                      onPressedAmerican: () => speaksentence108("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_10900""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence109("en-GB"),
                      onPressedAmerican: () => speaksentence109("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence110("en-GB"),
                      onPressedAmerican: () => speaksentence110("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11100""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence111("en-GB"),
                      onPressedAmerican: () => speaksentence111("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11200""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence112("en-GB"),
                      onPressedAmerican: () => speaksentence112("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11300""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence113("en-GB"),
                      onPressedAmerican: () => speaksentence113("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11400""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence114("en-GB"),
                      onPressedAmerican: () => speaksentence114("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11500""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence115("en-GB"),
                      onPressedAmerican: () => speaksentence115("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11600""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence116("en-GB"),
                      onPressedAmerican: () => speaksentence116("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11700""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence117("en-GB"),
                      onPressedAmerican: () => speaksentence117("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11800""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence118("en-GB"),
                      onPressedAmerican: () => speaksentence118("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_11900""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence119("en-GB"),
                      onPressedAmerican: () => speaksentence119("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵکار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """speaksentence_12000""",
                      kurdishText: """رستە_رستە_رستە_رستە.""",
                      onPressedBritish: () => speaksentence120("en-GB"),
                      onPressedAmerican: () => speaksentence120("en-US"),
                    ),
                  ],
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  if (filteredSentences.isEmpty) {
                    return const NoSentencesFromDatabase();
                  } else {
                    return ListView.builder(
                      itemCount: filteredSentences.length,
                      itemBuilder: (context, index) {
                        final sentence = filteredSentences[index];
                        final showDivider = filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1;
                        return CustomSentenceWidget(
                          englishText: sentence['english'].toString(),
                          frenchText: sentence['french'].toString(),
                          keyword: keyword,
                          onPressedBritish: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-GB",
                          ),
                          onPressedAmerican: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-US",
                          ),
                          showDivider: showDivider,
                        );
                      },
                    );
                  }
                },
              ),
              const YouTubeScroller(
                children: [
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdend),
                    videoId: videoIdend,
                    startSeconds: startSecondsend,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdone),
                    videoId: videoIdone,
                    startSeconds: startSecondsone,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdtwo),
                    videoId: videoIdtwo,
                    startSeconds: startSecondstwo,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdthree),
                    videoId: videoIdthree,
                    startSeconds: startSecondsthree,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfour),
                    videoId: videoIdfour,
                    startSeconds: startSecondsfour,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfive),
                    videoId: videoIdfive,
                    startSeconds: startSecondsfive,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// end WORD_WEB
// end long