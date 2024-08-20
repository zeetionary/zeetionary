// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/firebase/features/auth/screen/home_screen_logout/home_screen_logout.dart';
// import 'package:zeetionary/firebase/features/auth/screen/login_screen.dart';
import 'package:zeetionary/router/router_keys.dart';
import 'package:zeetionary/router/router_keys_english_first.dart';
// import 'package:zeetionary/router/router_keys_three.dart';
// import 'package:zeetionary/router/router_keys_four.dart';
// import 'package:zeetionary/router/router_keys_five.dart';
import 'package:zeetionary/grammar/grammar_screen.dart';
import 'package:zeetionary/quiz/quiz_screen.dart';
import 'package:zeetionary/home/screens/bookmarks/bookmarks_screen.dart';
import 'package:zeetionary/home/screens/history_screens/history_screen.dart';
import 'package:zeetionary/home/screens/irregular_verbs/irregular_verbs.dart';
// import 'package:zeetionary/home/screens/reddit/reddit_notifier.dart';
import 'package:zeetionary/home/screens/reddit/reddit_pages.dart';
import 'package:zeetionary/home/screens/reddit/reddit_grammar.dart';
import 'package:zeetionary/home/screens/reddit/reddit_grammar_two.dart';
import 'package:zeetionary/home/screens/reddit/reddit_vocabulary.dart';
import 'package:zeetionary/home/screens/reddit/reddit_vocabulary_two.dart';
import 'package:zeetionary/home/screens/reddit/reddit_vocabulary_three.dart';
import 'package:zeetionary/home/screens/reddit/reddit_linguistics.dart';
import 'package:zeetionary/home/screens/reddit/reddit_discussion.dart';
import 'package:zeetionary/home/screens/reddit/reddit_etymology.dart';
// import 'package:zeetionary/main.dart';
import 'package:zeetionary/home/screens/text_to_speech/tts.dart';
import 'package:zeetionary/dictionary/sentences/sentences_page.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';
import 'package:zeetionary/home/screens/home_screen_three.dart';

//
//
//
import 'package:zeetionary/router/exports_english_first.dart';
import 'package:zeetionary/router/router_keys_english_history_first.dart';
//
//
//
//
//

import 'package:zeetionary/grammar/grammar_screen.dart';
import 'package:zeetionary/quiz/quiz_screen.dart';
import 'package:zeetionary/home/screens/bookmarks/bookmarks_screen.dart';
import 'package:zeetionary/home/screens/history_screens/history_screen.dart';
import 'package:zeetionary/home/screens/irregular_verbs/irregular_verbs.dart';
// import 'package:zeetionary/home/screens/reddit/reddit_notifier.dart';
import 'package:zeetionary/home/screens/reddit/reddit_pages.dart';
import 'package:zeetionary/home/screens/reddit/reddit_grammar.dart';
import 'package:zeetionary/home/screens/reddit/reddit_grammar_two.dart';
import 'package:zeetionary/home/screens/reddit/reddit_vocabulary.dart';
import 'package:zeetionary/home/screens/reddit/reddit_vocabulary_two.dart';
import 'package:zeetionary/home/screens/reddit/reddit_vocabulary_three.dart';
import 'package:zeetionary/home/screens/reddit/reddit_linguistics.dart';
import 'package:zeetionary/home/screens/reddit/reddit_discussion.dart';
import 'package:zeetionary/home/screens/reddit/reddit_etymology.dart';
// import 'package:zeetionary/main.dart';
import 'package:zeetionary/home/screens/text_to_speech/tts.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

//
//
//
//
//
//
//

import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_a.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aback.dart';
import 'package:zeetionary/dictionary/sentences/sentences_page.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abacus.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abandon.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abandoned.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abandonment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abashed.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abatement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abattoir.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abbess.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abbey.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abbot.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abbreviate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abbreviation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abdicate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abdication.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abdomen.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abdominal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abduct.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abduction.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aberration.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abet.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abhor.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abhorrence.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abhorrent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abide.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abiding.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_ability.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abject.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abjectly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_ablaze.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_able.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abnormal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abnormality.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abnormally.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aboard.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abode.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abolish.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abolition.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abominable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abominably.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aboriginal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aborigine.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abort.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abortion.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abortive.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abound.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_about.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_above.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abrasion.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abrasive.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abreast.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abridge.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abridgement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abroad.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abrupt.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abruptly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abruptness.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abscess.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abscond.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abseil.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absence.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absentee.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absolute.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absolutely.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absolve.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absorb.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absorbent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absorption.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abstain.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abstemious.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abstention.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abstinence.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abstract.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absurd.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absurdity.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absurdly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abundance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abundant.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abundantly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abuse.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abusive.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abysmal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abysmally.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abyss.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_academic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_academically.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_academy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accede.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accelerate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acceleration.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accelerator.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accentuate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accept.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acceptable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acceptance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_access.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accessible.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accession.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accessory.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accident.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_benchmark.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bend.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_beneath.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_benediction.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_benefactor.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_benefactress.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_beneficial.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_beneficiary.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_benefit.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_benevolent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_benevolence.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_benign.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bequeath.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bequest.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_berate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bereaved.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bereavement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bereft.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_beret.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_berry.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_berserk.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_berth.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_beseech.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_beset.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_beside.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_besides.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blancmange.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_bland.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blandly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blandness.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blank.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blankly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blanket.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blare.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blase.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blaspheme.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blasphemous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blasphemy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blast.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blatant.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blatantly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blaze.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blazing.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blazer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_bleach.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_bleak.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_bleakly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_bleary.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blearily.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_bleat.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_bleed.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blemish.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blend.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blender.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_bless.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blessed.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blessing.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blight.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blind.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chin.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_china.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chink.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chip.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chiropodist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chiropody.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chirp.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chirpy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chisel.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chit.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chivalry.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chivalrous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chlorine.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chlorophyll.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chocolate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_choice.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_choir.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_choke.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_cholera.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_cholesterol.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_choose.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chop.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chopper.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_choppy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chopstick.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_choral.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chord.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chore.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_choreography.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_choreographer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chorister.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chorus.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_christ.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_christen.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_christening.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_christian.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_christianity.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_christmas.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chrome.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chromium.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chromosome.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chronic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chronically.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chronicle.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chronology.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chronologically.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chronological.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chronometer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chrysalis.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chrysanthemum.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chubby.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chuck.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chuckle.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chum.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chummy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chunk.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chunky.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_church.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_churchyard.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_churn.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chute.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_chutney.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_ciabatta.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_cider.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_cigar.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_cigarette.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_cinder.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_cinema.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_cinnamon.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_cipher.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circa.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circle.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circuit.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circuitous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circular.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circulate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circulation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circumcise.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circumcision.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circumference.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circumflex.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circumnavigate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circumnavigation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circumspect.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circumstance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circumstantial.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_circus.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_cistern.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_cite.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_citizen.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_citizenship.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_citrus.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_city.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_civic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_civil.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_civility.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_civilly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_civilian.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_civilization.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_civilize.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_clad.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_claim.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_claimant.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_clairvoyance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_clairvoyant.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_clam.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_clamber.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/en_entry_clammy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dire.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_direct.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_directness.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_direction.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_directive.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_directly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_director.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_directorship.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_directory.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dirt.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dirty.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disability.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disabled.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disablement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disabuse.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disadvantage.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disadvantaged.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disadvantageous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disagree.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disagreeable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disagreeably.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disagreement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disappear.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disappearance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disappoint.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disappointed.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disappointing.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disappointingly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disappointment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disapprove.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disapproval.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disarm.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disarmament.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disarray.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disaster.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disastrous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disastrously.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disband.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disbelieve.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disbelief.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disc.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discard.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discern.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discernible.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discerning.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discernment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discharge.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disciple.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discipline.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disclaim.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disclose.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disclosure.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disco.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discolour.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discoloration.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discomfort.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disconcert.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disconnect.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disconnected.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disconsolate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disconsolately.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discontent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discontented.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discontinue.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discord.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discordant.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discount.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discourage.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discouragement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discourse.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discourteous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discourteously.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discourtesy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discover.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discoverer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discovery.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discredit.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discreet.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discreetly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discrepancy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discretion.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discriminate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discriminating.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discrimination.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discus.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discuss.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_discussion.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disdain.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disdainful.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disease.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_diseased.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disembark.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disembarkation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disenchanted.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disengage.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disentangle.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disfigure.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disfigurement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disgorge.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disgrace.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disgraceful.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disgruntled.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disguise.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disgust.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disgusted.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disgusting.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dish.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dishcloth.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dishwasher.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dishearten.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dishevelled.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dishonest.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dishonestly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dishonesty.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dishonour.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dishonourable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disillusion.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disillusioned.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disillusionment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disinclined.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disinfect.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disinfectant.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disinformation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disinherit.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disintegrate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disintegration.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disinterested.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_uninterested.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disjointed.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disk.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disk_drive.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dislike.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dislocate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dislocation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dislodge.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disloyal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disloyally.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_disloyalty.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dismal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dismally.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dismantle.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_d/en_entry_dismay.dart';



MaterialPage _blP(Widget child) => MaterialPage(child: child);

// "/tts-screen": (_) => const MaterialPage(child: TTSPage()),

final loggedOutRoute = RouteMap(routes: {
  "/": (_) => _blP(const HomeScreenThreeLogout()),


  '/english-subreddit': (_) => _blP(const RedditFeed()),
  '/english-subreddit/reddit-grammar': (_) => _blP(const RedditGrammar()),
  '/english-subreddit/reddit-grammar-two': (_) =>
      _blP(const RedditGrammarTwo()),
  '/english-subreddit/reddit-vocabulary': (_) => _blP(const RedditVocabulary()),
  '/english-subreddit/reddit-vocabulary-two': (_) =>
      _blP(const RedditVocabularyTwo()),
  '/english-subreddit/reddit-etymology': (_) => _blP(const RedditEtymology()),
  '/english-subreddit/reddit-vocabulary-three': (_) =>
      _blP(const RedditVocabularyThree()),
  '/english-subreddit/reddit-linguistics': (_) =>
      _blP(const RedditLinguistics()),
  '/english-subreddit/reddit-discussion': (_) => _blP(const RedditDiscussion()),
  //
  //
  //
  '/english-subreddit/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-grammar/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-grammar-two/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-vocabulary/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-vocabulary-two/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-vocabulary-three/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-etymology/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-linguistics/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-discussion/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  // others
  // others
  // others
  // others
  // '/english-post-details': (_) => _blP(const PostDetail(post: post, accessToken: accessToken)),
  // others
  // others
  // others
  // others
  "/history-screen": (_) => _blP(const HistoryScreen()),
  "/bookmarks-screen": (_) => _blP(const BookmarksScreen()),
  "/tts-screen": (_) => _blP(const TTSPage()),
  "/grammar-screen": (_) => _blP(const GrammarScreen()),
  "/english-sentences-page": (_) => _blP(const SentencesPage()),
  "/settings-screen": (_) => _blP(const SettingsPage()),
  '/quiz-screen': (_) => _blP(const QuizScreen()),
  '/irregular-verbs-screen': (_) => _blP(const IrregularVerbsScreen()),
// '/quiz-screen': (_) => _blP(const QuizScreen(currentTheme: ThemeData.light())),
// English dictionary starts here
// English dictionary starts here
// English dictionary starts here
// English dictionary starts here
  "/english-a": (_) => _blP(const EnglishEntrya()),
  "/english-aback": (_) => _blP(const EnglishEntryaback()),
  "/english/grammar/aback": (_) => _blP(const EnglishEntryaback()),
  "/english-abacus": (_) => _blP(const EnglishEntryabacus()),
  "/english-abandon": (_) => _blP(const EnglishEntryabandon()),
  "/english-abandoned": (_) => _blP(const EnglishEntryabandoned()),
  "/english-abandonment": (_) => _blP(const EnglishEntryabandonment()),
  "/english-abashed": (_) => _blP(const EnglishEntryabashed()),
  "/english-abate": (_) => _blP(const EnglishEntryabate()),
  "/english-abatement": (_) => _blP(const EnglishEntryabatement()),
  "/english-abattoir": (_) => _blP(const EnglishEntryabattoir()),
  "/english-abbess": (_) => _blP(const EnglishEntryabbess()),
  "/english-abbey": (_) => _blP(const EnglishEntryabbey()),
  "/english-abbot": (_) => _blP(const EnglishEntryabbot()),
  "/english-abbreviate": (_) => _blP(const EnglishEntryabbreviate()),
  "/english-abbreviation": (_) => _blP(const EnglishEntryabbreviation()),
  "/english-abdicate": (_) => _blP(const EnglishEntryabdicate()),
  "/english-abdication": (_) => _blP(const EnglishEntryabdication()),
  "/english-abdomen": (_) => _blP(const EnglishEntryabdomen()),
  "/english-abdominal": (_) => _blP(const EnglishEntryabdominal()),
  "/english-abduct": (_) => _blP(const EnglishEntryabduct()),
  "/english-abduction": (_) => _blP(const EnglishEntryabduction()),
  "/english-aberration": (_) => _blP(const EnglishEntryaberration()),
  "/english-abet": (_) => _blP(const EnglishEntryabet()),
  "/english-abhor": (_) => _blP(const EnglishEntryabhor()),
  "/english-abhorrence": (_) => _blP(const EnglishEntryabhorrence()),
  "/english-abhorrent": (_) => _blP(const EnglishEntryabhorrent()),
  "/english-abide": (_) => _blP(const EnglishEntryabide()),
  "/english-abiding": (_) => _blP(const EnglishEntryabiding()),
  "/english-ability": (_) => _blP(const EnglishEntryability()),
  "/english-abject": (_) => _blP(const EnglishEntryabject()),
  "/english-abjectly": (_) => _blP(const EnglishEntryabjectly()),
  "/english-ablaze": (_) => _blP(const EnglishEntryablaze()),
  "/english-able": (_) => _blP(const EnglishEntryable()),
  "/english-abnormal": (_) => _blP(const EnglishEntryabnormal()),
  "/english-abnormality": (_) => _blP(const EnglishEntryabnormality()),
  "/english-abnormally": (_) => _blP(const EnglishEntryabnormally()),
  "/english-aboard": (_) => _blP(const EnglishEntryaboard()),
  "/english-abode": (_) => _blP(const EnglishEntryabode()),
  "/english-abolish": (_) => _blP(const EnglishEntryabolish()),
  "/english-abolition": (_) => _blP(const EnglishEntryabolition()),
  "/english-abominable": (_) => _blP(const EnglishEntryabominable()),
  "/english-abominably": (_) => _blP(const EnglishEntryabominably()),
  "/english-aboriginal": (_) => _blP(const EnglishEntryaboriginal()),
  "/english-aborigine": (_) => _blP(const EnglishEntryaborigine()),
  "/english-abort": (_) => _blP(const EnglishEntryabort()),
  "/english-abortion": (_) => _blP(const EnglishEntryabortion()),
  "/english-abortive": (_) => _blP(const EnglishEntryabortive()),
  "/english-abound": (_) => _blP(const EnglishEntryabound()),
  "/english-about": (_) => _blP(const EnglishEntryabout()),
  "/english-above": (_) => _blP(const EnglishEntryabove()),
  "/english-abrasion": (_) => _blP(const EnglishEntryabrasion()),
  "/english-abrasive": (_) => _blP(const EnglishEntryabrasive()),
  "/english-abreast": (_) => _blP(const EnglishEntryabreast()),
  "/english-abridge": (_) => _blP(const EnglishEntryabridge()),
  "/english-abridgement": (_) => _blP(const EnglishEntryabridgement()),
  "/english-abroad": (_) => _blP(const EnglishEntryabroad()),
  "/english-abrupt": (_) => _blP(const EnglishEntryabrupt()),
  "/english-abruptly": (_) => _blP(const EnglishEntryabruptly()),
  "/english-abruptness": (_) => _blP(const EnglishEntryabruptness()),
  "/english-abscess": (_) => _blP(const EnglishEntryabscess()),
  "/english-abscond": (_) => _blP(const EnglishEntryabscond()),
  "/english-abseil": (_) => _blP(const EnglishEntryabseil()),
  "/english-absence": (_) => _blP(const EnglishEntryabsence()),
  "/english-absent": (_) => _blP(const EnglishEntryabsent()),
  "/english-absentee": (_) => _blP(const EnglishEntryabsentee()),
  "/english-absolute": (_) => _blP(const EnglishEntryabsolute()),
  "/english-absolutely": (_) => _blP(const EnglishEntryabsolutely()),
  "/english-absolve": (_) => _blP(const EnglishEntryabsolve()),
  "/english-absorb": (_) => _blP(const EnglishEntryabsorb()),
  "/english-absorbent": (_) => _blP(const EnglishEntryabsorbent()),
  "/english-absorption": (_) => _blP(const EnglishEntryabsorption()),
  "/english-abstain": (_) => _blP(const EnglishEntryabstain()),
  "/english-abstemious": (_) => _blP(const EnglishEntryabstemious()),
  "/english-abstention": (_) => _blP(const EnglishEntryabstention()),
  "/english-abstinence": (_) => _blP(const EnglishEntryabstinence()),
  "/english-abstract": (_) => _blP(const EnglishEntryabstract()),
  "/english-absurd": (_) => _blP(const EnglishEntryabsurd()),
  "/english-absurdity": (_) => _blP(const EnglishEntryabsurdity()),
  "/english-absurdly": (_) => _blP(const EnglishEntryabsurdly()),
  "/english-abundance": (_) => _blP(const EnglishEntryabundance()),
  "/english-abundant": (_) => _blP(const EnglishEntryabundant()),
  "/english-abundantly": (_) => _blP(const EnglishEntryabundantly()),
  "/english-abuse": (_) => _blP(const EnglishEntryabuse()),
  "/english-abusive": (_) => _blP(const EnglishEntryabusive()),
  "/english-abysmal": (_) => _blP(const EnglishEntryabysmal()),
  "/english-abysmally": (_) => _blP(const EnglishEntryabysmally()),
  "/english-abyss": (_) => _blP(const EnglishEntryabyss()),
  "/english-academic": (_) => _blP(const EnglishEntryacademic()),
  "/english-academically": (_) => _blP(const EnglishEntryacademically()),
  "/english-academy": (_) => _blP(const EnglishEntryacademy()),
  "/english-accede": (_) => _blP(const EnglishEntryaccede()),
  "/english-accelerate": (_) => _blP(const EnglishEntryaccelerate()),
  "/english-acceleration": (_) => _blP(const EnglishEntryacceleration()),
  "/english-accelerator": (_) => _blP(const EnglishEntryaccelerator()),
  "/english-accent": (_) => _blP(const EnglishEntryaccent()),
  "/english-accentuate": (_) => _blP(const EnglishEntryaccentuate()),
  "/english-accept": (_) => _blP(const EnglishEntryaccept()),
  "/english-acceptable": (_) => _blP(const EnglishEntryacceptable()),
  "/english-acceptance": (_) => _blP(const EnglishEntryacceptance()),
  "/english-access": (_) => _blP(const EnglishEntryaccess()),
  "/english-accessible": (_) => _blP(const EnglishEntryaccessible()),
  "/english-accession": (_) => _blP(const EnglishEntryaccession()),
  "/english-accessory": (_) => _blP(const EnglishEntryaccessory()),
  "/english-accident": (_) => _blP(const EnglishEntryaccident()),
  "/english-benchmark": (_) => _blP(EnglishEntrybenchmark()),
  "/english-bend": (_) => _blP(EnglishEntrybend()),
  "/english-beneath": (_) => _blP(EnglishEntrybeneath()),
  "/english-benediction": (_) => _blP(EnglishEntrybenediction()),
  "/english-benefactor": (_) => _blP(EnglishEntrybenefactor()),
  "/english-benefactress": (_) => _blP(EnglishEntrybenefactress()),
  "/english-beneficial": (_) => _blP(EnglishEntrybeneficial()),
  "/english-beneficiary": (_) => _blP(EnglishEntrybeneficiary()),
  "/english-benefit": (_) => _blP(EnglishEntrybenefit()),
  "/english-benevolent": (_) => _blP(EnglishEntrybenevolent()),
  "/english-benevolence": (_) => _blP(EnglishEntrybenevolence()),
  "/english-benign": (_) => _blP(EnglishEntrybenign()),
  "/english-bent": (_) => _blP(EnglishEntrybent()),
  "/english-bequeath": (_) => _blP(EnglishEntrybequeath()),
  "/english-bequest": (_) => _blP(EnglishEntrybequest()),
  "/english-berate": (_) => _blP(EnglishEntryberate()),
  "/english-bereaved": (_) => _blP(EnglishEntrybereaved()),
  "/english-bereavement": (_) => _blP(EnglishEntrybereavement()),
  "/english-bereft": (_) => _blP(EnglishEntrybereft()),
  "/english-beret": (_) => _blP(EnglishEntryberet()),
  "/english-berry": (_) => _blP(EnglishEntryberry()),
  "/english-berserk": (_) => _blP(EnglishEntryberserk()),
  "/english-berth": (_) => _blP(EnglishEntryberth()),
  "/english-beseech": (_) => _blP(EnglishEntrybeseech()),
  "/english-beset": (_) => _blP(EnglishEntrybeset()),
  "/english-beside": (_) => _blP(EnglishEntrybeside()),
  "/english-besides": (_) => _blP(EnglishEntrybesides()),
  "/english-blancmange": (_) => _blP(EnglishEntryblancmange()),
  "/english-bland": (_) => _blP(EnglishEntrybland()),
  "/english-blandly": (_) => _blP(EnglishEntryblandly()),
  "/english-blandness": (_) => _blP(EnglishEntryblandness()),
  "/english-blank": (_) => _blP(EnglishEntryblank()),
  "/english-blankly": (_) => _blP(EnglishEntryblankly()),
  "/english-blanket": (_) => _blP(EnglishEntryblanket()),
  "/english-blare": (_) => _blP(EnglishEntryblare()),
  "/english-blase": (_) => _blP(EnglishEntryblase()),
  "/english-blaspheme": (_) => _blP(EnglishEntryblaspheme()),
  "/english-blasphemous": (_) => _blP(EnglishEntryblasphemous()),
  "/english-blasphemy": (_) => _blP(EnglishEntryblasphemy()),
  "/english-blast": (_) => _blP(EnglishEntryblast()),
  "/english-blatant": (_) => _blP(EnglishEntryblatant()),
  "/english-blatantly": (_) => _blP(EnglishEntryblatantly()),
  "/english-blaze": (_) => _blP(EnglishEntryblaze()),
  "/english-blazer": (_) => _blP(EnglishEntryblazer()),
  "/english-blazing": (_) => _blP(EnglishEntryblazing()),
  "/english-bleach": (_) => _blP(EnglishEntrybleach()),
  "/english-bleak": (_) => _blP(EnglishEntrybleak()),
  "/english-bleakly": (_) => _blP(EnglishEntrybleakly()),
  "/english-bleary": (_) => _blP(EnglishEntrybleary()),
  "/english-blearily": (_) => _blP(EnglishEntryblearily()),
  "/english-bleat": (_) => _blP(EnglishEntrybleat()),
  "/english-bleed": (_) => _blP(EnglishEntrybleed()),
  "/english-blemish": (_) => _blP(EnglishEntryblemish()),
  "/english-blend": (_) => _blP(EnglishEntryblend()),
  "/english-blender": (_) => _blP(EnglishEntryblender()),
  "/english-bless": (_) => _blP(EnglishEntrybless()),
  "/english-blessed": (_) => _blP(EnglishEntryblessed()),
  "/english-blessing": (_) => _blP(EnglishEntryblessing()),
  "/english-blight": (_) => _blP(EnglishEntryblight()),
  "/english-blind": (_) => _blP(EnglishEntryblind()),
  "/english-chin": (_) => _blP(EnglishEntrychin()),
  "/english-china": (_) => _blP(EnglishEntrychina()),
  "/english-chink": (_) => _blP(EnglishEntrychink()),
  "/english-chip": (_) => _blP(EnglishEntrychip()),
  "/english-chiropodist": (_) => _blP(EnglishEntrychiropodist()),
  "/english-chiropody": (_) => _blP(EnglishEntrychiropody()),
  "/english-chirp": (_) => _blP(EnglishEntrychirp()),
  "/english-chirpy": (_) => _blP(EnglishEntrychirpy()),
  "/english-chisel": (_) => _blP(EnglishEntrychisel()),
  "/english-chit": (_) => _blP(EnglishEntrychit()),
  "/english-chivalry": (_) => _blP(EnglishEntrychivalry()),
  "/english-chivalrous": (_) => _blP(EnglishEntrychivalrous()),
  "/english-chlorine": (_) => _blP(EnglishEntrychlorine()),
  "/english-chlorophyll": (_) => _blP(EnglishEntrychlorophyll()),
  "/english-chocolate": (_) => _blP(EnglishEntrychocolate()),
  "/english-choice": (_) => _blP(EnglishEntrychoice()),
  "/english-choir": (_) => _blP(EnglishEntrychoir()),
  "/english-choke": (_) => _blP(EnglishEntrychoke()),
  "/english-cholera": (_) => _blP(EnglishEntrycholera()),
  "/english-cholesterol": (_) => _blP(EnglishEntrycholesterol()),
  "/english-choose": (_) => _blP(EnglishEntrychoose()),
  "/english-chop": (_) => _blP(EnglishEntrychop()),
  "/english-chopper": (_) => _blP(EnglishEntrychopper()),
  "/english-choppy": (_) => _blP(EnglishEntrychoppy()),
  "/english-chopstick": (_) => _blP(EnglishEntrychopstick()),
  "/english-choral": (_) => _blP(EnglishEntrychoral()),
  "/english-chord": (_) => _blP(EnglishEntrychord()),
  "/english-chore": (_) => _blP(EnglishEntrychore()),
  "/english-choreography": (_) => _blP(EnglishEntrychoreography()),
  "/english-choreographer": (_) => _blP(EnglishEntrychoreographer()),
  "/english-chorister": (_) => _blP(EnglishEntrychorister()),
  "/english-chorus": (_) => _blP(EnglishEntrychorus()),
  "/english-christ": (_) => _blP(EnglishEntrychrist()),
  "/english-christen": (_) => _blP(EnglishEntrychristen()),
  "/english-christening": (_) => _blP(EnglishEntrychristening()),
  "/english-christian": (_) => _blP(EnglishEntrychristian()),
  "/english-christianity": (_) => _blP(EnglishEntrychristianity()),
  "/english-christmas": (_) => _blP(EnglishEntrychristmas()),
  "/english-chrome": (_) => _blP(EnglishEntrychrome()),
  "/english-chromium": (_) => _blP(EnglishEntrychromium()),
  "/english-chromosome": (_) => _blP(EnglishEntrychromosome()),
  "/english-chronic": (_) => _blP(EnglishEntrychronic()),
  "/english-chronically": (_) => _blP(EnglishEntrychronically()),
  "/english-chronicle": (_) => _blP(EnglishEntrychronicle()),
  "/english-chronology": (_) => _blP(EnglishEntrychronology()),
  "/english-chronologically": (_) => _blP(EnglishEntrychronologically()),
  "/english-chronological": (_) => _blP(EnglishEntrychronological()),
  "/english-chronometer": (_) => _blP(EnglishEntrychronometer()),
  "/english-chrysalis": (_) => _blP(EnglishEntrychrysalis()),
  "/english-chrysanthemum": (_) => _blP(EnglishEntrychrysanthemum()),
  "/english-chubby": (_) => _blP(EnglishEntrychubby()),
  "/english-chuck": (_) => _blP(EnglishEntrychuck()),
  "/english-chuckle": (_) => _blP(EnglishEntrychuckle()),
  "/english-chum": (_) => _blP(EnglishEntrychum()),
  "/english-chummy": (_) => _blP(EnglishEntrychummy()),
  "/english-chunk": (_) => _blP(EnglishEntrychunk()),
  "/english-chunky": (_) => _blP(EnglishEntrychunky()),
  "/english-church": (_) => _blP(EnglishEntrychurch()),
  "/english-churchyard": (_) => _blP(EnglishEntrychurchyard()),
  "/english-churn": (_) => _blP(EnglishEntrychurn()),
  "/english-chute": (_) => _blP(EnglishEntrychute()),
  "/english-chutney": (_) => _blP(EnglishEntrychutney()),
  "/english-ciabatta": (_) => _blP(EnglishEntryciabatta()),
  "/english-cider": (_) => _blP(EnglishEntrycider()),
  "/english-cigar": (_) => _blP(EnglishEntrycigar()),
  "/english-cigarette": (_) => _blP(EnglishEntrycigarette()),
  "/english-cinder": (_) => _blP(EnglishEntrycinder()),
  "/english-cinema": (_) => _blP(EnglishEntrycinema()),
  "/english-cinnamon": (_) => _blP(EnglishEntrycinnamon()),
  "/english-cipher": (_) => _blP(EnglishEntrycipher()),
  "/english-circa": (_) => _blP(EnglishEntrycirca()),
  "/english-circle": (_) => _blP(EnglishEntrycircle()),
  "/english-circuit": (_) => _blP(EnglishEntrycircuit()),
  "/english-circuitous": (_) => _blP(EnglishEntrycircuitous()),
  "/english-circular": (_) => _blP(EnglishEntrycircular()),
  "/english-circulate": (_) => _blP(EnglishEntrycirculate()),
  "/english-circulation": (_) => _blP(EnglishEntrycirculation()),
  "/english-circumcise": (_) => _blP(EnglishEntrycircumcise()),
  "/english-circumcision": (_) => _blP(EnglishEntrycircumcision()),
  "/english-circumference": (_) => _blP(EnglishEntrycircumference()),
  "/english-circumflex": (_) => _blP(EnglishEntrycircumflex()),
  "/english-circumnavigate": (_) => _blP(EnglishEntrycircumnavigate()),
  "/english-circumnavigation": (_) => _blP(EnglishEntrycircumnavigation()),
  "/english-circumspect": (_) => _blP(EnglishEntrycircumspect()),
  "/english-circumstance": (_) => _blP(EnglishEntrycircumstance()),
  "/english-circumstantial": (_) => _blP(EnglishEntrycircumstantial()),
  "/english-circus": (_) => _blP(EnglishEntrycircus()),
  "/english-cistern": (_) => _blP(EnglishEntrycistern()),
  "/english-cite": (_) => _blP(EnglishEntrycite()),
  "/english-citizen": (_) => _blP(EnglishEntrycitizen()),
  "/english-citizenship": (_) => _blP(EnglishEntrycitizenship()),
  "/english-citrus": (_) => _blP(EnglishEntrycitrus()),
  "/english-city": (_) => _blP(EnglishEntrycity()),
  "/english-civic": (_) => _blP(EnglishEntrycivic()),
  "/english-civil": (_) => _blP(EnglishEntrycivil()),
  "/english-civility": (_) => _blP(EnglishEntrycivility()),
  "/english-civilly": (_) => _blP(EnglishEntrycivilly()),
  "/english-civilian": (_) => _blP(EnglishEntrycivilian()),
  "/english-civilization": (_) => _blP(EnglishEntrycivilization()),
  "/english-civilize": (_) => _blP(EnglishEntrycivilize()),
  "/english-clad": (_) => _blP(EnglishEntryclad()),
  "/english-claim": (_) => _blP(EnglishEntryclaim()),
  "/english-claimant": (_) => _blP(EnglishEntryclaimant()),
  "/english-clairvoyance": (_) => _blP(EnglishEntryclairvoyance()),
  "/english-clairvoyant": (_) => _blP(EnglishEntryclairvoyant()),
  "/english-clam": (_) => _blP(EnglishEntryclam()),
  "/english-clamber": (_) => _blP(EnglishEntryclamber()),
  "/english-clammy": (_) => _blP(EnglishEntryclammy()),
  "/english-dire": (_) => _blP(const EnglishEntrydire()),
  "/english-direct": (_) => _blP(const EnglishEntrydirect()),
  "/english-directness": (_) => _blP(const EnglishEntrydirectness()),
  "/english-direction": (_) => _blP(const EnglishEntrydirection()),
  "/english-directive": (_) => _blP(const EnglishEntrydirective()),
  "/english-directly": (_) => _blP(const EnglishEntrydirectly()),
  "/english-director": (_) => _blP(const EnglishEntrydirector()),
  "/english-directorship": (_) => _blP(const EnglishEntrydirectorship()),
  "/english-directory": (_) => _blP(const EnglishEntrydirectory()),
  "/english-dirt": (_) => _blP(const EnglishEntrydirt()),
  "/english-dirty": (_) => _blP(const EnglishEntrydirty()),
  "/english-disable": (_) => _blP(const EnglishEntrydisable()),
  "/english-disability": (_) => _blP(const EnglishEntrydisability()),
  "/english-disabled": (_) => _blP(const EnglishEntrydisabled()),
  "/english-disablement": (_) => _blP(const EnglishEntrydisablement()),
  "/english-disabuse": (_) => _blP(const EnglishEntrydisabuse()),
  "/english-disadvantage": (_) => _blP(const EnglishEntrydisadvantage()),
  "/english-disadvantaged": (_) => _blP(const EnglishEntrydisadvantaged()),
  "/english-disadvantageous": (_) => _blP(const EnglishEntrydisadvantageous()),
  "/english-disagree": (_) => _blP(const EnglishEntrydisagree()),
  "/english-disagreeable": (_) => _blP(const EnglishEntrydisagreeable()),
  "/english-disagreeably": (_) => _blP(const EnglishEntrydisagreeably()),
  "/english-disagreement": (_) => _blP(const EnglishEntrydisagreement()),
  "/english-disappear": (_) => _blP(const EnglishEntrydisappear()),
  "/english-disappearance": (_) => _blP(const EnglishEntrydisappearance()),
  "/english-disappoint": (_) => _blP(const EnglishEntrydisappoint()),
  "/english-disappointed": (_) => _blP(const EnglishEntrydisappointed()),
  "/english-disappointing": (_) => _blP(const EnglishEntrydisappointing()),
  "/english-disappointingly": (_) => _blP(const EnglishEntrydisappointingly()),
  "/english-disappointment": (_) => _blP(const EnglishEntrydisappointment()),
  "/english-disapprove": (_) => _blP(const EnglishEntrydisapprove()),
  "/english-disapproval": (_) => _blP(const EnglishEntrydisapproval()),
  "/english-disarm": (_) => _blP(const EnglishEntrydisarm()),
  "/english-disarmament": (_) => _blP(const EnglishEntrydisarmament()),
  "/english-disarray": (_) => _blP(const EnglishEntrydisarray()),
  "/english-disaster": (_) => _blP(const EnglishEntrydisaster()),
  "/english-disastrous": (_) => _blP(const EnglishEntrydisastrous()),
  "/english-disastrously": (_) => _blP(const EnglishEntrydisastrously()),
  "/english-disband": (_) => _blP(const EnglishEntrydisband()),
  "/english-disbelieve": (_) => _blP(const EnglishEntrydisbelieve()),
  "/english-disbelief": (_) => _blP(const EnglishEntrydisbelief()),
  "/english-disc": (_) => _blP(const EnglishEntrydisc()),
  "/english-discard": (_) => _blP(const EnglishEntrydiscard()),
  "/english-discern": (_) => _blP(const EnglishEntrydiscern()),
  "/english-discernible": (_) => _blP(const EnglishEntrydiscernible()),
  "/english-discerning": (_) => _blP(const EnglishEntrydiscerning()),
  "/english-discernment": (_) => _blP(const EnglishEntrydiscernment()),
  "/english-discharge": (_) => _blP(const EnglishEntrydischarge()),
  "/english-disciple": (_) => _blP(const EnglishEntrydisciple()),
  "/english-discipline": (_) => _blP(const EnglishEntrydiscipline()),
  "/english-disclaim": (_) => _blP(const EnglishEntrydisclaim()),
  "/english-disclose": (_) => _blP(const EnglishEntrydisclose()),
  "/english-disclosure": (_) => _blP(const EnglishEntrydisclosure()),
  "/english-disco": (_) => _blP(const EnglishEntrydisco()),
  "/english-discolour": (_) => _blP(const EnglishEntrydiscolour()),
  "/english-discoloration": (_) => _blP(const EnglishEntrydiscoloration()),
  "/english-discomfort": (_) => _blP(const EnglishEntrydiscomfort()),
  "/english-disconcert": (_) => _blP(const EnglishEntrydisconcert()),
  "/english-disconnect": (_) => _blP(const EnglishEntrydisconnect()),
  "/english-disconnected": (_) => _blP(const EnglishEntrydisconnected()),
  "/english-disconsolate": (_) => _blP(const EnglishEntrydisconsolate()),
  "/english-disconsolately": (_) => _blP(const EnglishEntrydisconsolately()),
  "/english-discontent": (_) => _blP(const EnglishEntrydiscontent()),
  "/english-discontented": (_) => _blP(const EnglishEntrydiscontented()),
  "/english-discontinue": (_) => _blP(const EnglishEntrydiscontinue()),
  "/english-discord": (_) => _blP(const EnglishEntrydiscord()),
  "/english-discordant": (_) => _blP(const EnglishEntrydiscordant()),
  "/english-discount": (_) => _blP(const EnglishEntrydiscount()),
  "/english-discourage": (_) => _blP(const EnglishEntrydiscourage()),
  "/english-discouragement": (_) => _blP(const EnglishEntrydiscouragement()),
  "/english-discourse": (_) => _blP(const EnglishEntrydiscourse()),
  "/english-discourteous": (_) => _blP(const EnglishEntrydiscourteous()),
  "/english-discourteously": (_) => _blP(const EnglishEntrydiscourteously()),
  "/english-discourtesy": (_) => _blP(const EnglishEntrydiscourtesy()),
  "/english-discover": (_) => _blP(const EnglishEntrydiscover()),
  "/english-discoverer": (_) => _blP(const EnglishEntrydiscoverer()),
  "/english-discovery": (_) => _blP(const EnglishEntrydiscovery()),
  "/english-discredit": (_) => _blP(const EnglishEntrydiscredit()),
  "/english-discreet": (_) => _blP(const EnglishEntrydiscreet()),
  "/english-discreetly": (_) => _blP(const EnglishEntrydiscreetly()),
  "/english-discrepancy": (_) => _blP(const EnglishEntrydiscrepancy()),
  "/english-discretion": (_) => _blP(const EnglishEntrydiscretion()),
  "/english-discriminate": (_) => _blP(const EnglishEntrydiscriminate()),
  "/english-discriminating": (_) => _blP(const EnglishEntrydiscriminating()),
  "/english-discrimination": (_) => _blP(const EnglishEntrydiscrimination()),
  "/english-discus": (_) => _blP(const EnglishEntrydiscus()),
  "/english-discuss": (_) => _blP(const EnglishEntrydiscuss()),
  "/english-discussion": (_) => _blP(const EnglishEntrydiscussion()),
  "/english-disdain": (_) => _blP(const EnglishEntrydisdain()),
  "/english-disdainful": (_) => _blP(const EnglishEntrydisdainful()),
  "/english-disease": (_) => _blP(const EnglishEntrydisease()),
  "/english-diseased": (_) => _blP(const EnglishEntrydiseased()),
  "/english-disembark": (_) => _blP(const EnglishEntrydisembark()),
  "/english-disembarkation": (_) => _blP(const EnglishEntrydisembarkation()),
  "/english-disenchanted": (_) => _blP(const EnglishEntrydisenchanted()),
  "/english-disengage": (_) => _blP(const EnglishEntrydisengage()),
  "/english-disentangle": (_) => _blP(const EnglishEntrydisentangle()),
  "/english-disfigure": (_) => _blP(const EnglishEntrydisfigure()),
  "/english-disfigurement": (_) => _blP(const EnglishEntrydisfigurement()),
  "/english-disgorge": (_) => _blP(const EnglishEntrydisgorge()),
  "/english-disgrace": (_) => _blP(const EnglishEntrydisgrace()),
  "/english-disgraceful": (_) => _blP(const EnglishEntrydisgraceful()),
  "/english-disgruntled": (_) => _blP(const EnglishEntrydisgruntled()),
  "/english-disguise": (_) => _blP(const EnglishEntrydisguise()),
  "/english-disgust": (_) => _blP(const EnglishEntrydisgust()),
  "/english-disgusted": (_) => _blP(const EnglishEntrydisgusted()),
  "/english-disgusting": (_) => _blP(const EnglishEntrydisgusting()),
  "/english-dish": (_) => _blP(const EnglishEntrydish()),
  "/english-dishcloth": (_) => _blP(const EnglishEntrydishcloth()),
  "/english-dishwasher": (_) => _blP(const EnglishEntrydishwasher()),
  "/english-dishearten": (_) => _blP(const EnglishEntrydishearten()),
  "/english-dishevelled": (_) => _blP(const EnglishEntrydishevelled()),
  "/english-dishonest": (_) => _blP(const EnglishEntrydishonest()),
  "/english-dishonestly": (_) => _blP(const EnglishEntrydishonestly()),
  "/english-dishonesty": (_) => _blP(const EnglishEntrydishonesty()),
  "/english-dishonour": (_) => _blP(const EnglishEntrydishonour()),
  "/english-dishonourable": (_) => _blP(const EnglishEntrydishonourable()),
  "/english-disillusion": (_) => _blP(const EnglishEntrydisillusion()),
  "/english-disillusioned": (_) => _blP(const EnglishEntrydisillusioned()),
  "/english-disillusionment": (_) => _blP(const EnglishEntrydisillusionment()),
  "/english-disinclined": (_) => _blP(const EnglishEntrydisinclined()),
  "/english-disinfect": (_) => _blP(const EnglishEntrydisinfect()),
  "/english-disinfectant": (_) => _blP(const EnglishEntrydisinfectant()),
  "/english-disinformation": (_) => _blP(const EnglishEntrydisinformation()),
  "/english-disinherit": (_) => _blP(const EnglishEntrydisinherit()),
  "/english-disintegrate": (_) => _blP(const EnglishEntrydisintegrate()),
  "/english-disintegration": (_) => _blP(const EnglishEntrydisintegration()),
  "/english-disinterested": (_) => _blP(const EnglishEntrydisinterested()),
  "/english-disinterested/uninterested": (_) => _blP(const EnglishEntryuninterested()),
  "/english-uninterested": (_) => _blP(const EnglishEntryuninterested()),
  "/english-disjointed": (_) => _blP(const EnglishEntrydisjointed()),
  "/english-disk": (_) => _blP(const EnglishEntrydisk()),
  "/english-disk/disc": (_) => _blP(const EnglishEntrydisc()),
  "/english-diskdrive": (_) => _blP(const EnglishEntrydiskdrive()),
  "/english-dislike": (_) => _blP(const EnglishEntrydislike()),
  "/english-dislocate": (_) => _blP(const EnglishEntrydislocate()),
  "/english-dislocation": (_) => _blP(const EnglishEntrydislocation()),
  "/english-dislodge": (_) => _blP(const EnglishEntrydislodge()),
  "/english-disloyal": (_) => _blP(const EnglishEntrydisloyal()),
  "/english-disloyally": (_) => _blP(const EnglishEntrydisloyally()),
  "/english-disloyalty": (_) => _blP(const EnglishEntrydisloyalty()),
  "/english-dismal": (_) => _blP(const EnglishEntrydismal()),
  "/english-dismally": (_) => _blP(const EnglishEntrydismally()),
  "/english-dismantle": (_) => _blP(const EnglishEntrydismantle()),
  "/english-dismay": (_) => _blP(const EnglishEntrydismay()),
  "/english-dismember": (_) => _blP(const EnglishEntrydismember()),
  "/english-distrustful": (_) => _blP(const EnglishEntrydistrustful()),
  "/english-disturb": (_) => _blP(const EnglishEntrydisturb()),
  "/english-disturbance": (_) => _blP(const EnglishEntrydisturbance()),
  "/english-disturbed": (_) => _blP(const EnglishEntrydisturbed()),
  "/english-disunity": (_) => _blP(const EnglishEntrydisunity()),
  "/english-disuse": (_) => _blP(const EnglishEntrydisuse()),
  "/english-expendable": (_) => _blP(const EnglishEntryexpendable()),
  "/english-expenditure": (_) => _blP(const EnglishEntryexpenditure()),
  "/english-expense": (_) => _blP(const EnglishEntryexpense()),
  "/english-expensive": (_) => _blP(const EnglishEntryexpensive()),
  "/english-expensively": (_) => _blP(const EnglishEntryexpensively()),
  "/english-experience": (_) => _blP(const EnglishEntryexperience()),
  "/english-experienced": (_) => _blP(const EnglishEntryexperienced()),
  "/english-experiment": (_) => _blP(const EnglishEntryexperiment()),
  "/english-experimental": (_) => _blP(const EnglishEntryexperimental()),
  "/english-experimentation": (_) => _blP(const EnglishEntryexperimentation()),
  "/english-expert": (_) => _blP(const EnglishEntryexpert()),
  "/english-expertise": (_) => _blP(const EnglishEntryexpertise()),
  "/english-expertly": (_) => _blP(const EnglishEntryexpertly()),
  "/english-expire": (_) => _blP(const EnglishEntryexpire()),
  "/english-expiry": (_) => _blP(const EnglishEntryexpiry()),
  "/english-explain": (_) => _blP(const EnglishEntryexplain()),
  "/english-explanation": (_) => _blP(const EnglishEntryexplanation()),
  "/english-explanatory": (_) => _blP(const EnglishEntryexplanatory()),
  "/english-explicit": (_) => _blP(const EnglishEntryexplicit()),
  "/english-explicitly": (_) => _blP(const EnglishEntryexplicitly()),
  "/english-explicitness": (_) => _blP(const EnglishEntryexplicitness()),
  "/english-explode": (_) => _blP(const EnglishEntryexplode()),
  "/english-exploit": (_) => _blP(const EnglishEntryexploit()),
  "/english-exploitation": (_) => _blP(const EnglishEntryexploitation()),
  "/english-explore": (_) => _blP(const EnglishEntryexplore()),
  "/english-exploration": (_) => _blP(const EnglishEntryexploration()),
  "/english-exploratory": (_) => _blP(const EnglishEntryexploratory()),
});

// final loggedInRoute = RouteMap(routes: routes);

final loggedInRoute = RouteMap(routes: allRoutes);

final Map<String, PageBuilder> allRoutes = {
  ...getRoutesMain(),
  ...getRoutesEnglishFirst(),
  ...getRoutesEnglishHistoryFirst(),
  // ...getRoutes(),
  // ...getRoutes(),
  // ...getRoutes(),
  // ...getRoutes(),
  // ...getRoutes(),
};

Map<String, PageBuilder> getRoutesMain() {
  return {
    "/": (_) => _blP(const HomeScreenThree()),
  //
  //
  //
  '/english-subreddit': (_) => _blP(const RedditFeed()),
  '/english-subreddit/reddit-grammar': (_) => _blP(const RedditGrammar()),
  '/english-subreddit/reddit-grammar-two': (_) =>
      _blP(const RedditGrammarTwo()),
  '/english-subreddit/reddit-vocabulary': (_) => _blP(const RedditVocabulary()),
  '/english-subreddit/reddit-vocabulary-two': (_) =>
      _blP(const RedditVocabularyTwo()),
  '/english-subreddit/reddit-etymology': (_) => _blP(const RedditEtymology()),
  '/english-subreddit/reddit-vocabulary-three': (_) =>
      _blP(const RedditVocabularyThree()),
  '/english-subreddit/reddit-linguistics': (_) =>
      _blP(const RedditLinguistics()),
  '/english-subreddit/reddit-discussion': (_) => _blP(const RedditDiscussion()),
  //
  //
  //
  '/english-subreddit/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-grammar/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-grammar-two/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-vocabulary/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-vocabulary-two/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-vocabulary-three/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-etymology/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-linguistics/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  '/english-subreddit/reddit-discussion/post/:id': (route) =>
      MaterialPage(child: RedditComments(postId: route.pathParameters['id']!)),
  //
  "/history-screen": (_) => _blP(const HistoryScreen()),
  //
  "/bookmarks-screen": (_) => _blP(const BookmarksScreen()),
  //
  "/tts-screen": (_) => _blP(const TTSPage()),
  //
  "/grammar-screen": (_) => _blP(const GrammarScreen()),
  //
  "/english-sentences-page": (_) => _blP(const SentencesPage()),
  //
  "/settings-screen": (_) => _blP(const SettingsPage()),
  //
  '/quiz-screen': (_) => _blP(const QuizScreen()),
  //
  '/irregular-verbs-screen': (_) => _blP(const IrregularVerbsScreen()),
  //
// '/quiz-screen': (_) => _blP(const QuizScreen(currentTheme: ThemeData.light())),
// English dictionary starts here
// English dictionary starts here
// English dictionary starts here
// English dictionary starts here
  };
}