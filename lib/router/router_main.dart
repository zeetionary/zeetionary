// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/firebase/features/auth/screen/home_screen_logout/home_screen_logout.dart';
// import 'package:zeetionary/firebase/features/auth/screen/login_screen.dart';
import 'package:zeetionary/router/router_keys.dart';

import 'package:zeetionary/router/router_exports_one.dart';

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
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accidental.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accidentally.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acclaim.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acclimatize.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accolade.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aerospace.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aesthetic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aesthetically.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affably.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affair.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affect.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affectation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affected.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affection.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affectionate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affectionately.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affidavit.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affiliate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affiliation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affinity.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affirm.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affirmation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affirmative.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affix.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afflict.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affliction.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affluence.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affluent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afford.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affront.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afloat.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afoot.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_aforementioned.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afraid.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afresh.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_after.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_aftereffect.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_aftermath.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afternoon.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afterwards.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_again.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afterthought.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_against.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_age.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aged.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_ageing.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_ageism.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_ageist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agency.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agenda.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggravate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggravation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggregate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggression.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggressive.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggressively.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggressiveness.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggressor.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggrieved.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aghast.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agile.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agility.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aging.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agitate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agitation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agitator.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aglow.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agm.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agnostic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agonized.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agonizing.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agony.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agoraphobia.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agoraphobic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agrarian.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agree.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agreeable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agreeably.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agreement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agriculture.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agricultural.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agritourism.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agrochemical.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agronomist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agronomy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aground.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ah/en_entry_ahead.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_ai.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_aid.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_aide.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_aids.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_ailing.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_ailment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_aim.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_aimless.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_aimlessly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_aint.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_air.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airbag.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airborne.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_aircraft.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airfield.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airlift.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airline.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airliner.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airmail.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airplane.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airport.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airship.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airspace.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airstrip.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airtight.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airway.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airworthy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airing.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airless.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airily.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_aisle.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_aj/en_entry_ajar.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ak/en_entry_akin.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alacrity.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alarm.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alarming.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alas.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_albatross.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_albeit.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_albino.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_album.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alcohol.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alcoholic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alcoholism.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alcove.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_belch.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_belfry.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_belief.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_believe.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_believable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_believer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_belittle.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bell.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_belligerent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bellow.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bellows.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_belly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bellyache.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_belong.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_belongings.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_beloved.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_below.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_belt.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bemoan.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bench.dart';
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
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_besiege.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bespoke.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_best.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bestseller.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bestial.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bestiality.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bestow.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bet.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_better.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bettor.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_betray.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_betrayal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_betrayer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_betrothed.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_between.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bevelled.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_beverage.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bevy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_beware.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bewilder.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bewildering.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_bewitch.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_be/en_entry_beyond.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bias.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bib.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bible.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biblical.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bibliography.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bibliographer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bicentenary.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bicentennial.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biceps.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bicker.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bicycle.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bid.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bidder.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bidding.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bidet.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biennial.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bifocals.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bifocal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_big.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bigwig.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bigamy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bigamist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bigamous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bigot.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bigoted.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bigotry.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bikini.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bilateral.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bile.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bilge.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bilingual.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bilious.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bill.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_billet.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_billiards.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_billion.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_billow.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_billowy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bin.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_binary.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bind.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_binder.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_binding.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_binge.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bingo.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_binoculars.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biochemistry.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biochemist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biodata.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biodegradable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biodiversity.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biography.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biographer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biographical.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biohazard.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biology.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biological.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biologist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biometric.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bipolar.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_birch.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bird.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biro.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_birth.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_birthday.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_birthmark.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biscuit.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bisect.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bishop.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bishopric.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bison.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bistro.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bit.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bitch.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bite.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_biting.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bitmap.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bitter.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bitterly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bitterness.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bitumen.dart';
import "package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bivouac.dart";
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bi/en_entry_bizarre.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blab.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_black.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blackbird.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blackboard.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blackcurrant.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blacken.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blackhead.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blackleg.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blacklist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blackly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blackmail.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blackmailer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blackness.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blackout.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blacksmith.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_bladder.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blade.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blame.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blameless.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blameworthy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_b/letters_bl/en_entry_blanch.dart';
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
  "/english-accidental": (_) => _blP(const EnglishEntryaccidental()),
  "/english-accidentally": (_) => _blP(const EnglishEntryaccidentally()),
  "/english-acclaim": (_) => _blP(const EnglishEntryacclaim()),
  "/english-acclimatize": (_) => _blP(const EnglishEntryacclimatize()),
  "/english-accolade": (_) => _blP(const EnglishEntryaccolade()),
  "/english-aerospace": (_) => _blP(EnglishEntryaerospace()),
  "/english-aesthetic": (_) => _blP(EnglishEntryaesthetic()),
  "/english-aesthetically": (_) => _blP(EnglishEntryaesthetically()),
  "/english-affable": (_) => _blP(EnglishEntryaffable()),
  "/english-affably": (_) => _blP(EnglishEntryaffably()),
  "/english-affair": (_) => _blP(EnglishEntryaffair()),
  "/english-affect": (_) => _blP(EnglishEntryaffect()),
  "/english-affectation": (_) => _blP(EnglishEntryaffectation()),
  "/english-affected": (_) => _blP(EnglishEntryaffected()),
  "/english-affection": (_) => _blP(EnglishEntryaffection()),
  "/english-affectionate": (_) => _blP(EnglishEntryaffectionate()),
  "/english-affectionately": (_) => _blP(EnglishEntryaffectionately()),
  "/english-affidavit": (_) => _blP(EnglishEntryaffidavit()),
  "/english-affiliate": (_) => _blP(EnglishEntryaffiliate()),
  "/english-affiliation": (_) => _blP(EnglishEntryaffiliation()),
  "/english-affinity": (_) => _blP(EnglishEntryaffinity()),
  "/english-affirm": (_) => _blP(EnglishEntryaffirm()),
  "/english-affirmation": (_) => _blP(EnglishEntryaffirmation()),
  "/english-affirmative": (_) => _blP(EnglishEntryaffirmative()),
  "/english-affix": (_) => _blP(EnglishEntryaffix()),
  "/english-afflict": (_) => _blP(EnglishEntryafflict()),
  "/english-affliction": (_) => _blP(EnglishEntryaffliction()),
  "/english-affluence": (_) => _blP(EnglishEntryaffluence()),
  "/english-affluent": (_) => _blP(EnglishEntryaffluent()),
  "/english-afford": (_) => _blP(EnglishEntryafford()),
  "/english-affront": (_) => _blP(EnglishEntryaffront()),
  "/english-afloat": (_) => _blP(EnglishEntryafloat()),
  "/english-afoot": (_) => _blP(EnglishEntryafoot()),
  "/english-aforementioned": (_) => _blP(EnglishEntryaforementioned()),
  "/english-afraid": (_) => _blP(EnglishEntryafraid()),
  "/english-afresh": (_) => _blP(EnglishEntryafresh()),
  "/english-after": (_) => _blP(EnglishEntryafter()),
  "/english-aftereffect": (_) => _blP(EnglishEntryaftereffect()),
  "/english-aftermath": (_) => _blP(EnglishEntryaftermath()),
  "/english-afternoon": (_) => _blP(EnglishEntryafternoon()),
  "/english-afterthought": (_) => _blP(EnglishEntryafterthought()),
  "/english-afterwards": (_) => _blP(EnglishEntryafterwards()),
  "/english-again": (_) => _blP(EnglishEntryagain()),
  "/english-against": (_) => _blP(EnglishEntryagainst()),
  "/english-age": (_) => _blP(EnglishEntryage()),
  "/english-aged": (_) => _blP(EnglishEntryaged()),
  "/english-ageing": (_) => _blP(EnglishEntryageing()),
  "/english-ageism": (_) => _blP(EnglishEntryageism()),
  "/english-ageist": (_) => _blP(EnglishEntryageist()),
  "/english-agency": (_) => _blP(EnglishEntryagency()),
  "/english-agenda": (_) => _blP(EnglishEntryagenda()),
  "/english-agent": (_) => _blP(EnglishEntryagent()),
  "/english-aggravate": (_) => _blP(EnglishEntryaggravate()),
  "/english-aggravation": (_) => _blP(EnglishEntryaggravation()),
  "/english-aggregate": (_) => _blP(EnglishEntryaggregate()),
  "/english-aggression": (_) => _blP(EnglishEntryaggression()),
  "/english-aggressive": (_) => _blP(EnglishEntryaggressive()),
  "/english-aggressively": (_) => _blP(EnglishEntryaggressively()),
  "/english-aggressiveness": (_) => _blP(EnglishEntryaggressiveness()),
  "/english-aggressor": (_) => _blP(EnglishEntryaggressor()),
  "/english-aggrieved": (_) => _blP(EnglishEntryaggrieved()),
  "/english-aghast": (_) => _blP(EnglishEntryaghast()),
  "/english-agile": (_) => _blP(EnglishEntryagile()),
  "/english-agility": (_) => _blP(EnglishEntryagility()),
  "/english-aging": (_) => _blP(EnglishEntryaging()),
  "/english-agitate": (_) => _blP(EnglishEntryagitate()),
  "/english-agitation": (_) => _blP(EnglishEntryagitation()),
  "/english-agitator": (_) => _blP(EnglishEntryagitator()),
  "/english-aglow": (_) => _blP(EnglishEntryaglow()),
  "/english-agm": (_) => _blP(EnglishEntryagm()),
  "/english-agnostic": (_) => _blP(EnglishEntryagnostic()),
  "/english-agonized": (_) => _blP(EnglishEntryagonized()),
  "/english-agonizing": (_) => _blP(EnglishEntryagonizing()),
  "/english-agony": (_) => _blP(EnglishEntryagony()),
  "/english-agoraphobia": (_) => _blP(EnglishEntryagoraphobia()),
  "/english-agoraphobic": (_) => _blP(EnglishEntryagoraphobic()),
  "/english-agrarian": (_) => _blP(EnglishEntryagrarian()),
  "/english-agree": (_) => _blP(EnglishEntryagree()),
  "/english-agreeable": (_) => _blP(EnglishEntryagreeable()),
  "/english-agreeably": (_) => _blP(EnglishEntryagreeably()),
  "/english-agreement": (_) => _blP(EnglishEntryagreement()),
  "/english-agriculture": (_) => _blP(EnglishEntryagriculture()),
  "/english-agricultural": (_) => _blP(EnglishEntryagricultural()),
  "/english-agritourism": (_) => _blP(EnglishEntryagritourism()),
  "/english-agrochemical": (_) => _blP(EnglishEntryagrochemical()),
  "/english-agronomist": (_) => _blP(EnglishEntryagronomist()),
  "/english-agronomy": (_) => _blP(EnglishEntryagronomy()),
  "/english-aground": (_) => _blP(EnglishEntryaground()),
  "/english-ahead": (_) => _blP(EnglishEntryahead()),
  "/english-ai": (_) => _blP(EnglishEntryai()),
  "/english-aid": (_) => _blP(EnglishEntryaid()),
  "/english-aide": (_) => _blP(EnglishEntryaide()),
  "/english-aids": (_) => _blP(EnglishEntryaids()),
  "/english-ailing": (_) => _blP(EnglishEntryailing()),
  "/english-ailment": (_) => _blP(EnglishEntryailment()),
  "/english-aim": (_) => _blP(EnglishEntryaim()),
  "/english-aimless": (_) => _blP(EnglishEntryaimless()),
  "/english-aimlessly": (_) => _blP(EnglishEntryaimlessly()),
  "/english-aint": (_) => _blP(EnglishEntryaint()),
  "/english-air": (_) => _blP(EnglishEntryair()),
  "/english-airbag": (_) => _blP(EnglishEntryairbag()),
  "/english-airborne": (_) => _blP(EnglishEntryairborne()),
  "/english-aircraft": (_) => _blP(EnglishEntryaircraft()),
  "/english-airfield": (_) => _blP(EnglishEntryairfield()),
  "/english-airlift": (_) => _blP(EnglishEntryairlift()),
  "/english-airline": (_) => _blP(EnglishEntryairline()),
  "/english-airliner": (_) => _blP(EnglishEntryairliner()),
  "/english-airmail": (_) => _blP(EnglishEntryairmail()),
  "/english-airplane": (_) => _blP(EnglishEntryairplane()),
  "/english-airport": (_) => _blP(EnglishEntryairport()),
  "/english-airship": (_) => _blP(EnglishEntryairship()),
  "/english-airspace": (_) => _blP(EnglishEntryairspace()),
  "/english-airstrip": (_) => _blP(EnglishEntryairstrip()),
  "/english-airtight": (_) => _blP(EnglishEntryairtight()),
  "/english-airway": (_) => _blP(EnglishEntryairway()),
  "/english-airworthy": (_) => _blP(EnglishEntryairworthy()),
  "/english-airing": (_) => _blP(EnglishEntryairing()),
  "/english-airless": (_) => _blP(EnglishEntryairless()),
  "/english-airy": (_) => _blP(EnglishEntryairy()),
  "/english-airily": (_) => _blP(EnglishEntryairily()),
  "/english-aisle": (_) => _blP(EnglishEntryaisle()),
  "/english-ajar": (_) => _blP(EnglishEntryajar()),
  "/english-akin": (_) => _blP(EnglishEntryakin()),
  "/english-alacrity": (_) => _blP(EnglishEntryalacrity()),
  "/english-alarm": (_) => _blP(EnglishEntryalarm()),
  "/english-alarming": (_) => _blP(EnglishEntryalarming()),
  "/english-alas": (_) => _blP(EnglishEntryalas()),
  "/english-albatross": (_) => _blP(EnglishEntryalbatross()),
  "/english-albeit": (_) => _blP(EnglishEntryalbeit()),
  "/english-albino": (_) => _blP(EnglishEntryalbino()),
  "/english-album": (_) => _blP(EnglishEntryalbum()),
  "/english-alcohol": (_) => _blP(EnglishEntryalcohol()),
  "/english-alcoholic": (_) => _blP(EnglishEntryalcoholic()),
  "/english-alcoholism": (_) => _blP(EnglishEntryalcoholism()),
  "/english-alcove": (_) => _blP(EnglishEntryalcove()),
  "/english-belch": (_) => _blP(EnglishEntrybelch()),
  "/english-belfry": (_) => _blP(EnglishEntrybelfry()),
  "/english-belief": (_) => _blP(EnglishEntrybelief()),
  "/english-believe": (_) => _blP(EnglishEntrybelieve()),
  "/english-believable": (_) => _blP(EnglishEntrybelievable()),
  "/english-believer": (_) => _blP(EnglishEntrybeliever()),
  "/english-belittle": (_) => _blP(EnglishEntrybelittle()),
  "/english-bell": (_) => _blP(EnglishEntrybell()),
  "/english-belligerent": (_) => _blP(EnglishEntrybelligerent()),
  "/english-bellow": (_) => _blP(EnglishEntrybellow()),
  "/english-bellows": (_) => _blP(EnglishEntrybellows()),
  "/english-belly": (_) => _blP(EnglishEntrybelly()),
  "/english-bellyache": (_) => _blP(EnglishEntrybellyache()),
  "/english-belong": (_) => _blP(EnglishEntrybelong()),
  "/english-belongings": (_) => _blP(EnglishEntrybelongings()),
  "/english-beloved": (_) => _blP(EnglishEntrybeloved()),
  "/english-below": (_) => _blP(EnglishEntrybelow()),
  "/english-belt": (_) => _blP(EnglishEntrybelt()),
  "/english-bemoan": (_) => _blP(EnglishEntrybemoan()),
  "/english-bench": (_) => _blP(EnglishEntrybench()),
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
  "/english-besiege": (_) => _blP(EnglishEntrybesiege()),
  "/english-bespoke": (_) => _blP(EnglishEntrybespoke()),
  "/english-best": (_) => _blP(EnglishEntrybest()),
  "/english-bestseller": (_) => _blP(EnglishEntrybestseller()),
  "/english-bestial": (_) => _blP(EnglishEntrybestial()),
  "/english-bestiality": (_) => _blP(EnglishEntrybestiality()),
  "/english-bestow": (_) => _blP(EnglishEntrybestow()),
  "/english-bet": (_) => _blP(EnglishEntrybet()),
  "/english-better": (_) => _blP(EnglishEntrybetter()),
  "/english-bettor": (_) => _blP(EnglishEntrybettor()),
  "/english-betray": (_) => _blP(EnglishEntrybetray()),
  "/english-betrayal": (_) => _blP(EnglishEntrybetrayal()),
  "/english-betrayer": (_) => _blP(EnglishEntrybetrayer()),
  "/english-betrothed": (_) => _blP(EnglishEntrybetrothed()),
  "/english-between": (_) => _blP(EnglishEntrybetween()),
  "/english-bevelled": (_) => _blP(EnglishEntrybevelled()),
  "/english-beverage": (_) => _blP(EnglishEntrybeverage()),
  "/english-bevy": (_) => _blP(EnglishEntrybevy()),
  "/english-beware": (_) => _blP(EnglishEntrybeware()),
  "/english-bewilder": (_) => _blP(EnglishEntrybewilder()),
  "/english-bewildering": (_) => _blP(EnglishEntrybewildering()),
  "/english-bewitch": (_) => _blP(EnglishEntrybewitch()),
  "/english-beyond": (_) => _blP(EnglishEntrybeyond()),
  "/english-bias": (_) => _blP(EnglishEntrybias()),
  "/english-bib": (_) => _blP(EnglishEntrybib()),
  "/english-bible": (_) => _blP(EnglishEntrybible()),
  "/english-biblical": (_) => _blP(EnglishEntrybiblical()),
  "/english-bibliography": (_) => _blP(EnglishEntrybibliography()),
  "/english-bibliographer": (_) => _blP(EnglishEntrybibliographer()),
  "/english-bicentenary": (_) => _blP(EnglishEntrybicentenary()),
  "/english-bicentennial": (_) => _blP(EnglishEntrybicentennial()),
  "/english-biceps": (_) => _blP(EnglishEntrybiceps()),
  "/english-bicker": (_) => _blP(EnglishEntrybicker()),
  "/english-bicycle": (_) => _blP(EnglishEntrybicycle()),
  "/english-bid": (_) => _blP(EnglishEntrybid()),
  "/english-bidder": (_) => _blP(EnglishEntrybidder()),
  "/english-bidding": (_) => _blP(EnglishEntrybidding()),
  "/english-bidet": (_) => _blP(EnglishEntrybidet()),
  "/english-biennial": (_) => _blP(EnglishEntrybiennial()),
  "/english-bifocals": (_) => _blP(EnglishEntrybifocals()),
  "/english-bifocal": (_) => _blP(EnglishEntrybifocal()),
  "/english-big": (_) => _blP(EnglishEntrybig()),
  "/english-bigwig": (_) => _blP(EnglishEntrybigwig()),
  "/english-bigamy": (_) => _blP(EnglishEntrybigamy()),
  "/english-bigamist": (_) => _blP(EnglishEntrybigamist()),
  "/english-bigamous": (_) => _blP(EnglishEntrybigamous()),
  "/english-bigot": (_) => _blP(EnglishEntrybigot()),
  "/english-bigoted": (_) => _blP(EnglishEntrybigoted()),
  "/english-bigotry": (_) => _blP(EnglishEntrybigotry()),
  "/english-bikini": (_) => _blP(EnglishEntrybikini()),
  "/english-bilateral": (_) => _blP(EnglishEntrybilateral()),
  "/english-bile": (_) => _blP(EnglishEntrybile()),
  "/english-bilge": (_) => _blP(EnglishEntrybilge()),
  "/english-bilingual": (_) => _blP(EnglishEntrybilingual()),
  "/english-bilious": (_) => _blP(EnglishEntrybilious()),
  "/english-bill": (_) => _blP(EnglishEntrybill()),
  "/english-billet": (_) => _blP(EnglishEntrybillet()),
  "/english-billiards": (_) => _blP(EnglishEntrybilliards()),
  "/english-billion": (_) => _blP(EnglishEntrybillion()),
  "/english-billow": (_) => _blP(EnglishEntrybillow()),
  "/english-billowy": (_) => _blP(EnglishEntrybillowy()),
  "/english-bin": (_) => _blP(EnglishEntrybin()),
  "/english-binary": (_) => _blP(EnglishEntrybinary()),
  "/english-bind": (_) => _blP(EnglishEntrybind()),
  "/english-binder": (_) => _blP(EnglishEntrybinder()),
  "/english-binding": (_) => _blP(EnglishEntrybinding()),
  "/english-binge": (_) => _blP(EnglishEntrybinge()),
  "/english-bingo": (_) => _blP(EnglishEntrybingo()),
  "/english-binoculars": (_) => _blP(EnglishEntrybinoculars()),
  "/english-biochemistry": (_) => _blP(EnglishEntrybiochemistry()),
  "/english-biochemist": (_) => _blP(EnglishEntrybiochemist()),
  "/english-biodata": (_) => _blP(EnglishEntrybiodata()),
  "/english-biodegradable": (_) => _blP(EnglishEntrybiodegradable()),
  "/english-biodiversity": (_) => _blP(EnglishEntrybiodiversity()),
  "/english-biography": (_) => _blP(EnglishEntrybiography()),
  "/english-biographer": (_) => _blP(EnglishEntrybiographer()),
  "/english-biographical": (_) => _blP(EnglishEntrybiographical()),
  "/english-biohazard": (_) => _blP(EnglishEntrybiohazard()),
  "/english-biology": (_) => _blP(EnglishEntrybiology()),
  "/english-biological": (_) => _blP(EnglishEntrybiological()),
  "/english-biologist": (_) => _blP(EnglishEntrybiologist()),
  "/english-biometric": (_) => _blP(EnglishEntrybiometric()),
  "/english-bipolar": (_) => _blP(EnglishEntrybipolar()),
  "/english-birch": (_) => _blP(EnglishEntrybirch()),
  "/english-bird": (_) => _blP(EnglishEntrybird()),
  "/english-biro": (_) => _blP(EnglishEntrybiro()),
  "/english-birth": (_) => _blP(EnglishEntrybirth()),
  "/english-birthday": (_) => _blP(EnglishEntrybirthday()),
  "/english-birthmark": (_) => _blP(EnglishEntrybirthmark()),
  "/english-biscuit": (_) => _blP(EnglishEntrybiscuit()),
  "/english-bisect": (_) => _blP(EnglishEntrybisect()),
  "/english-bishop": (_) => _blP(EnglishEntrybishop()),
  "/english-bishopric": (_) => _blP(EnglishEntrybishopric()),
  "/english-bison": (_) => _blP(EnglishEntrybison()),
  "/english-bistro": (_) => _blP(EnglishEntrybistro()),
  "/english-bit": (_) => _blP(EnglishEntrybit()),
  "/english-bitch": (_) => _blP(EnglishEntrybitch()),
  "/english-bite": (_) => _blP(EnglishEntrybite()),
  "/english-biting": (_) => _blP(EnglishEntrybiting()),
  "/english-bitmap": (_) => _blP(EnglishEntrybitmap()),
  "/english-bitter": (_) => _blP(EnglishEntrybitter()),
  "/english-bitterly": (_) => _blP(EnglishEntrybitterly()),
  "/english-bitterness": (_) => _blP(EnglishEntrybitterness()),
  "/english-bitumen": (_) => _blP(EnglishEntrybitumen()),
  "/english-bivouac": (_) => _blP(EnglishEntrybivouac()),
  "/english-bizarre": (_) => _blP(EnglishEntrybizarre()),
  "/english-blab": (_) => _blP(EnglishEntryblab()),
  "/english-black": (_) => _blP(EnglishEntryblack()),
  "/english-blackbird": (_) => _blP(EnglishEntryblackbird()),
  "/english-blackboard": (_) => _blP(EnglishEntryblackboard()),
  "/english-blackcurrant": (_) => _blP(EnglishEntryblackcurrant()),
  "/english-blacken": (_) => _blP(EnglishEntryblacken()),
  "/english-blackhead": (_) => _blP(EnglishEntryblackhead()),
  "/english-blackleg": (_) => _blP(EnglishEntryblackleg()),
  "/english-blacklist": (_) => _blP(EnglishEntryblacklist()),
  "/english-blackly": (_) => _blP(EnglishEntryblackly()),
  "/english-blackmail": (_) => _blP(EnglishEntryblackmail()),
  "/english-blackmailer": (_) => _blP(EnglishEntryblackmailer()),
  "/english-blackness": (_) => _blP(EnglishEntryblackness()),
  "/english-blackout": (_) => _blP(EnglishEntryblackout()),
  "/english-blacksmith": (_) => _blP(EnglishEntryblacksmith()),
  "/english-bladder": (_) => _blP(EnglishEntrybladder()),
  "/english-blade": (_) => _blP(EnglishEntryblade()),
  "/english-blame": (_) => _blP(EnglishEntryblame()),
  "/english-blameless": (_) => _blP(EnglishEntryblameless()),
  "/english-blameworthy": (_) => _blP(EnglishEntryblameworthy()),
  "/english-blanch": (_) => _blP(EnglishEntryblanch()),
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
  "/english-disused": (_) => _blP(const EnglishEntrydisused()),
  "/english-ditch": (_) => _blP(const EnglishEntryditch()),
  "/english-dither": (_) => _blP(const EnglishEntrydither()),
  "/english-ditto": (_) => _blP(const EnglishEntryditto()),
  "/english-ditty": (_) => _blP(const EnglishEntryditty()),
  "/english-divan": (_) => _blP(const EnglishEntrydivan()),
  "/english-dive": (_) => _blP(const EnglishEntrydive()),
  "/english-diver": (_) => _blP(const EnglishEntrydiver()),
  "/english-diverge": (_) => _blP(const EnglishEntrydiverge()),
  "/english-divergence": (_) => _blP(const EnglishEntrydivergence()),
  "/english-divergent": (_) => _blP(const EnglishEntrydivergent()),
  "/english-diverse": (_) => _blP(const EnglishEntrydiverse()),
  "/english-diversity": (_) => _blP(const EnglishEntrydiversity()),
  "/english-diversification": (_) => _blP(const EnglishEntrydiversification()),
  "/english-diversify": (_) => _blP(const EnglishEntrydiversify()),
  "/english-diversion": (_) => _blP(const EnglishEntrydiversion()),
  "/english-diversionary": (_) => _blP(const EnglishEntrydiversionary()),
  "/english-divert": (_) => _blP(const EnglishEntrydivert()),
  "/english-divide": (_) => _blP(const EnglishEntrydivide()),
  "/english-divider": (_) => _blP(const EnglishEntrydivider()),
  "/english-dividend": (_) => _blP(const EnglishEntrydividend()),
  "/english-divine": (_) => _blP(const EnglishEntrydivine()),
  "/english-divinely": (_) => _blP(const EnglishEntrydivinely()),
  "/english-divinity": (_) => _blP(const EnglishEntrydivinity()),
  "/english-divisible": (_) => _blP(const EnglishEntrydivisible()),
  "/english-division": (_) => _blP(const EnglishEntrydivision()),
  "/english-divisional": (_) => _blP(const EnglishEntrydivisional()),
  "/english-divisive": (_) => _blP(const EnglishEntrydivisive()),
  "/english-divorce": (_) => _blP(const EnglishEntrydivorce()),
  "/english-divorcee": (_) => _blP(const EnglishEntrydivorcee()),
  "/english-doorbell": (_) => _blP(const EnglishEntrydoorbell()),
  "/english-doorstep": (_) => _blP(const EnglishEntrydoorstep()),
  "/english-doorway": (_) => _blP(const EnglishEntrydoorway()),
  "/english-dope": (_) => _blP(const EnglishEntrydope()),
  "/english-dopey": (_) => _blP(const EnglishEntrydopey()),
  "/english-dormant": (_) => _blP(const EnglishEntrydormant()),
  "/english-dormitory": (_) => _blP(const EnglishEntrydormitory()),
  "/english-dormouse": (_) => _blP(const EnglishEntrydormouse()),
  "/english-dosage": (_) => _blP(const EnglishEntrydosage()),
  "/english-dose": (_) => _blP(const EnglishEntrydose()),
  "/english-doss": (_) => _blP(const EnglishEntrydoss()),
  "/english-dosshouse": (_) => _blP(const EnglishEntrydosshouse()),
  "/english-dossier": (_) => _blP(const EnglishEntrydossier()),
  "/english-dot": (_) => _blP(const EnglishEntrydot()),
  "/english-dotage": (_) => _blP(const EnglishEntrydotage()),
  "/english-double": (_) => _blP(const EnglishEntrydouble()),
  "/english-doubly": (_) => _blP(const EnglishEntrydoubly()),
  "/english-doubt": (_) => _blP(const EnglishEntrydoubt()),
  "/english-doubtful": (_) => _blP(const EnglishEntrydoubtful()),
  "/english-doubtless": (_) => _blP(const EnglishEntrydoubtless()),
  "/english-dough": (_) => _blP(const EnglishEntrydough()),
  "/english-doughnut": (_) => _blP(const EnglishEntrydoughnut()),
  "/english-douse": (_) => _blP(const EnglishEntrydouse()),
  "/english-dove": (_) => _blP(const EnglishEntrydove()),
  "/english-dovecot": (_) => _blP(const EnglishEntrydovecot()),
  "/english-dovetail": (_) => _blP(const EnglishEntrydovetail()),
  "/english-dowdy": (_) => _blP(const EnglishEntrydowdy()),
  "/english-down": (_) => _blP(const EnglishEntrydown()),
  "/english-downcast": (_) => _blP(const EnglishEntrydowncast()),
  "/english-equipment": (_) => _blP(const EnglishEntryequipment()),
  "/english-equitable": (_) => _blP(const EnglishEntryequitable()),
  "/english-equity": (_) => _blP(const EnglishEntryequity()),
  "/english-equivalent": (_) => _blP(const EnglishEntryequivalent()),
  "/english-equivocal": (_) => _blP(const EnglishEntryequivocal()),
  "/english-equivocate": (_) => _blP(const EnglishEntryequivocate()),
  "/english-era": (_) => _blP(const EnglishEntryera()),
  "/english-eradicate": (_) => _blP(const EnglishEntryeradicate()),
  "/english-eradication": (_) => _blP(const EnglishEntryeradication()),
  "/english-erase": (_) => _blP(const EnglishEntryerase()),
  "/english-erect": (_) => _blP(const EnglishEntryerect()),
  "/english-erection": (_) => _blP(const EnglishEntryerection()),
  "/english-erode": (_) => _blP(const EnglishEntryerode()),
  "/english-erosion": (_) => _blP(const EnglishEntryerosion()),
  "/english-erotic": (_) => _blP(const EnglishEntryerotic()),
  "/english-err": (_) => _blP(const EnglishEntryerr()),
  "/english-errand": (_) => _blP(const EnglishEntryerrand()),
  "/english-erratic": (_) => _blP(const EnglishEntryerratic()),
  "/english-erratically": (_) => _blP(const EnglishEntryerratically()),
  "/english-erroneous": (_) => _blP(const EnglishEntryerroneous()),
  "/english-error": (_) => _blP(const EnglishEntryerror()),
  "/english-erudite": (_) => _blP(const EnglishEntryerudite()),
  "/english-erupt": (_) => _blP(const EnglishEntryerupt()),
  "/english-eruption": (_) => _blP(const EnglishEntryeruption()),
  "/english-escalate": (_) => _blP(const EnglishEntryescalate()),
  "/english-escalation": (_) => _blP(const EnglishEntryescalation()),
  "/english-escalator": (_) => _blP(const EnglishEntryescalator()),
  "/english-escapade": (_) => _blP(const EnglishEntryescapade()),
  "/english-escape": (_) => _blP(const EnglishEntryescape()),
  "/english-escapism": (_) => _blP(const EnglishEntryescapism()),
  "/english-escapist": (_) => _blP(const EnglishEntryescapist()),
  "/english-escort": (_) => _blP(const EnglishEntryescort()),
  "/english-esoteric": (_) => _blP(const EnglishEntryesoteric()),
  "/english-especially": (_) => _blP(const EnglishEntryespecially()),
  "/english-espionage": (_) => _blP(const EnglishEntryespionage()),
  "/english-essay": (_) => _blP(const EnglishEntryessay()),
  "/english-essayist": (_) => _blP(const EnglishEntryessayist()),
  "/english-essence": (_) => _blP(const EnglishEntryessence()),
  "/english-essential": (_) => _blP(const EnglishEntryessential()),
  "/english-essentially": (_) => _blP(const EnglishEntryessentially()),
  "/english-establish": (_) => _blP(const EnglishEntryestablish()),
  "/english-establishment": (_) => _blP(const EnglishEntryestablishment()),
  "/english-estate": (_) => _blP(const EnglishEntryestate()),
  "/english-estateagent": (_) => _blP(const EnglishEntryestateagent()), //// فففف estate agent
  "/english-estatecar": (_) => _blP(const EnglishEntryestatecar()), //// فففف estate car
  "/english-esteem": (_) => _blP(const EnglishEntryesteem()),
  "/english-estimate": (_) => _blP(const EnglishEntryestimate()),
  "/english-estimation": (_) => _blP(const EnglishEntryestimation()),
  "/english-estuary": (_) => _blP(const EnglishEntryestuary()),
  "/english-etc": (_) => _blP(const EnglishEntryetc()), //// فففف etc.
  "/english-etch": (_) => _blP(const EnglishEntryetch()),
  "/english-etching": (_) => _blP(const EnglishEntryetching()),
  "/english-eternal": (_) => _blP(const EnglishEntryeternal()),
  "/english-eternally": (_) => _blP(const EnglishEntryeternally()),
  "/english-eternity": (_) => _blP(const EnglishEntryeternity()),
  "/english-ether": (_) => _blP(const EnglishEntryether()),
  "/english-ethereal": (_) => _blP(const EnglishEntryethereal()),
  "/english-ethernet": (_) => _blP(const EnglishEntryethernet()), //// فففف Ethernet
  "/english-ethic": (_) => _blP(const EnglishEntryethic()),
  "/english-ethical": (_) => _blP(const EnglishEntryethical()),
  "/english-ethically": (_) => _blP(const EnglishEntryethically()),
  "/english-ethnic": (_) => _blP(const EnglishEntryethnic()),
  "/english-ethnically": (_) => _blP(const EnglishEntryethnically()),
  "/english-etiquette": (_) => _blP(const EnglishEntryetiquette()),
  "/english-etymology": (_) => _blP(const EnglishEntryetymology()),
  "/english-eucalyptus": (_) => _blP(const EnglishEntryeucalyptus()),
  "/english-euphemism": (_) => _blP(const EnglishEntryeuphemism()),
  "/english-euphemistic": (_) => _blP(const EnglishEntryeuphemistic()),
  "/english-euphoria": (_) => _blP(const EnglishEntryeuphoria()),
  "/english-euphoric": (_) => _blP(const EnglishEntryeuphoric()),
  "/english-euro": (_) => _blP(const EnglishEntryeuro()),
  "/english-european": (_) => _blP(const EnglishEntryeuropean()), //// ffff European
  "/english-theeuropeanunion": (_) => _blP(const EnglishEntrytheeuropeanunion()), //// ffff the European Union
  "/english-euthanasia": (_) => _blP(const EnglishEntryeuthanasia()),
  "/english-evacuate": (_) => _blP(const EnglishEntryevacuate()),
  "/english-evacuation": (_) => _blP(const EnglishEntryevacuation()),
  "/english-evade": (_) => _blP(const EnglishEntryevade()),
  "/english-evaluate": (_) => _blP(const EnglishEntryevaluate()),
  "/english-evaluation": (_) => _blP(const EnglishEntryevaluation()),
  "/english-evangelical": (_) => _blP(const EnglishEntryevangelical()),
  "/english-evangelist": (_) => _blP(const EnglishEntryevangelist()),
  "/english-evangelistic": (_) => _blP(const EnglishEntryevangelistic()),
  "/english-evaporate": (_) => _blP(const EnglishEntryevaporate()),
  "/english-evaporation": (_) => _blP(const EnglishEntryevaporation()),
  "/english-evasion": (_) => _blP(const EnglishEntryevasion()),
  "/english-evasive": (_) => _blP(const EnglishEntryevasive()),
  "/english-evasively": (_) => _blP(const EnglishEntryevasively()),
  "/english-eve": (_) => _blP(const EnglishEntryeve()),
  "/english-even": (_) => _blP(const EnglishEntryeven()),
  "/english-evenly": (_) => _blP(const EnglishEntryevenly()),
  "/english-evenness": (_) => _blP(const EnglishEntryevenness()),
  "/english-evening": (_) => _blP(const EnglishEntryevening()),
  "/english-eveningdress": (_) => _blP(const EnglishEntryeveningdress()), //// ffff evening dress
  "/english-event": (_) => _blP(const EnglishEntryevent()),
  "/english-eventful": (_) => _blP(const EnglishEntryeventful()),
  "/english-eventual": (_) => _blP(const EnglishEntryeventual()),
  "/english-eventuality": (_) => _blP(const EnglishEntryeventuality()),
  "/english-eventually": (_) => _blP(const EnglishEntryeventually()),
  "/english-ever": (_) => _blP(const EnglishEntryever()),
  "/english-evergreen": (_) => _blP(const EnglishEntryevergreen()),
  "/english-everlasting": (_) => _blP(const EnglishEntryeverlasting()),
  "/english-every": (_) => _blP(const EnglishEntryevery()),
  "/english-everybody": (_) => _blP(const EnglishEntryeverybody()),
  "/english-everyday": (_) => _blP(const EnglishEntryeveryday()),
  "/english-everything": (_) => _blP(const EnglishEntryeverything()),
  "/english-everywhere": (_) => _blP(const EnglishEntryeverywhere()),
  "/english-evict": (_) => _blP(const EnglishEntryevict()),
  "/english-eviction": (_) => _blP(const EnglishEntryeviction()),
  "/english-evidence": (_) => _blP(const EnglishEntryevidence()),
  "/english-evident": (_) => _blP(const EnglishEntryevident()),
  "/english-evidently": (_) => _blP(const EnglishEntryevidently()),
  "/english-evil": (_) => _blP(const EnglishEntryevil()),
  "/english-evilly": (_) => _blP(const EnglishEntryevilly()),
  "/english-evocative": (_) => _blP(const EnglishEntryevocative()),
  "/english-evoke": (_) => _blP(const EnglishEntryevoke()),
  "/english-evolution": (_) => _blP(const EnglishEntryevolution()),
  "/english-evolve": (_) => _blP(const EnglishEntryevolve()),
  "/english-ewe": (_) => _blP(const EnglishEntryewe()),
  "/english-exacerbate": (_) => _blP(const EnglishEntryexacerbate()),
  "/english-exact": (_) => _blP(const EnglishEntryexact()),
  "/english-exactitude": (_) => _blP(const EnglishEntryexactitude()),
  "/english-exactly": (_) => _blP(const EnglishEntryexactly()),
  "/english-exactness": (_) => _blP(const EnglishEntryexactness()),
  "/english-exaggerate": (_) => _blP(const EnglishEntryexaggerate()),
  "/english-exaggeration": (_) => _blP(const EnglishEntryexaggeration()),
  "/english-examination": (_) => _blP(const EnglishEntryexamination()),
  "/english-examine": (_) => _blP(const EnglishEntryexamine()),
  "/english-examiner": (_) => _blP(const EnglishEntryexaminer()),
  "/english-example": (_) => _blP(const EnglishEntryexample()),
  "/english-exasperate": (_) => _blP(const EnglishEntryexasperate()),
  "/english-exasperation": (_) => _blP(const EnglishEntryexasperation()),
  "/english-excavate": (_) => _blP(const EnglishEntryexcavate()),
  "/english-excavation": (_) => _blP(const EnglishEntryexcavation()),
  "/english-excavator": (_) => _blP(const EnglishEntryexcavator()),
  "/english-exceed": (_) => _blP(const EnglishEntryexceed()),
  "/english-exceedingly": (_) => _blP(const EnglishEntryexceedingly()),
  "/english-excel": (_) => _blP(const EnglishEntryexcel()),
  "/english-excellent": (_) => _blP(const EnglishEntryexcellent()),
  "/english-excellence": (_) => _blP(const EnglishEntryexcellence()),
  "/english-excellently": (_) => _blP(const EnglishEntryexcellently()),
  "/english-except": (_) => _blP(const EnglishEntryexcept()),
  "/english-exception": (_) => _blP(const EnglishEntryexception()),
  "/english-exceptional": (_) => _blP(const EnglishEntryexceptional()),
  "/english-exceptionally": (_) => _blP(const EnglishEntryexceptionally()),
  "/english-excerpt": (_) => _blP(const EnglishEntryexcerpt()),
  "/english-excess": (_) => _blP(const EnglishEntryexcess()),
  "/english-excessive": (_) => _blP(const EnglishEntryexcessive()),
  "/english-excessively": (_) => _blP(const EnglishEntryexcessively()),
  "/english-exchange": (_) => _blP(const EnglishEntryexchange()),
  "/english-exchequer": (_) => _blP(const EnglishEntryexchequer()),
  "/english-excise": (_) => _blP(const EnglishEntryexcise()),
  "/english-excitable": (_) => _blP(const EnglishEntryexcitable()),
  "/english-excite": (_) => _blP(const EnglishEntryexcite()),
  "/english-excited": (_) => _blP(const EnglishEntryexcited()),
  "/english-excitedly": (_) => _blP(const EnglishEntryexcitedly()),
  "/english-excitement": (_) => _blP(const EnglishEntryexcitement()),
  "/english-exciting": (_) => _blP(const EnglishEntryexciting()),
  "/english-exclaim": (_) => _blP(const EnglishEntryexclaim()),
  "/english-exclamation": (_) => _blP(const EnglishEntryexclamation()),
  "/english-exclamationmark": (_) => _blP(const EnglishEntryexclamationmark()), //// فففف exclamation mark
  "/english-exclude": (_) => _blP(const EnglishEntryexclude()),
  "/english-exclusion": (_) => _blP(const EnglishEntryexclusion()),
  "/english-exclusive": (_) => _blP(const EnglishEntryexclusive()),
  "/english-exclusively": (_) => _blP(const EnglishEntryexclusively()),
  "/english-excommunicate": (_) => _blP(const EnglishEntryexcommunicate()),
  "/english-excommunication": (_) => _blP(const EnglishEntryexcommunication()),
  "/english-excrement": (_) => _blP(const EnglishEntryexcrement()),
  "/english-excrete": (_) => _blP(const EnglishEntryexcrete()),
  "/english-excruciating": (_) => _blP(const EnglishEntryexcruciating()),
  "/english-excruciatingly": (_) => _blP(const EnglishEntryexcruciatingly()),
  "/english-excursion": (_) => _blP(const EnglishEntryexcursion()),
  "/english-excusable": (_) => _blP(const EnglishEntryexcusable()),
  "/english-excuse": (_) => _blP(const EnglishEntryexcuse()),
  "/english-execute": (_) => _blP(const EnglishEntryexecute()),
  "/english-execution": (_) => _blP(const EnglishEntryexecution()),
  "/english-executioner": (_) => _blP(const EnglishEntryexecutioner()),
  "/english-executive": (_) => _blP(const EnglishEntryexecutive()),
  "/english-executor": (_) => _blP(const EnglishEntryexecutor()),
  "/english-exemplification": (_) => _blP(const EnglishEntryexemplification()),
  "/english-exemplify": (_) => _blP(const EnglishEntryexemplify()),
  "/english-exempt": (_) => _blP(const EnglishEntryexempt()),
  "/english-exemption": (_) => _blP(const EnglishEntryexemption()),
  "/english-exercise": (_) => _blP(const EnglishEntryexercise()),
  "/english-exercisebook": (_) => _blP(const EnglishEntryexercisebook()), //// فففف exercise book
  "/english-notebook": (_) => _blP(const EnglishEntrynotebook()), 
  "/english-workbook": (_) => _blP(const EnglishEntryworkbook()), 
  "/english-exert": (_) => _blP(const EnglishEntryexert()),
  "/english-exertion": (_) => _blP(const EnglishEntryexertion()),
  "/english-exhale": (_) => _blP(const EnglishEntryexhale()),
  "/english-exhalation": (_) => _blP(const EnglishEntryexhalation()),
  "/english-exhaust": (_) => _blP(const EnglishEntryexhaust()),
  "/english-exhausted": (_) => _blP(const EnglishEntryexhausted()),
  "/english-exhaustion": (_) => _blP(const EnglishEntryexhaustion()),
  "/english-exhaustive": (_) => _blP(const EnglishEntryexhaustive()),
  "/english-exhibit": (_) => _blP(const EnglishEntryexhibit()),
  "/english-exhibitor": (_) => _blP(const EnglishEntryexhibitor()),
  "/english-exhibition": (_) => _blP(const EnglishEntryexhibition()),
  "/english-exhibitionism": (_) => _blP(const EnglishEntryexhibitionism()),
  "/english-exhibitionist": (_) => _blP(const EnglishEntryexhibitionist()),
  "/english-exhilarate": (_) => _blP(const EnglishEntryexhilarate()),
  "/english-exhilaration": (_) => _blP(const EnglishEntryexhilaration()),
  "/english-exhort": (_) => _blP(const EnglishEntryexhort()),
  "/english-exhortation": (_) => _blP(const EnglishEntryexhortation()),
  "/english-exile": (_) => _blP(const EnglishEntryexile()),
  "/english-exist": (_) => _blP(const EnglishEntryexist()),
  "/english-existence": (_) => _blP(const EnglishEntryexistence()),
  "/english-existent": (_) => _blP(const EnglishEntryexistent()),
  "/english-exit": (_) => _blP(const EnglishEntryexit()),
  "/english-exonerate": (_) => _blP(const EnglishEntryexonerate()),
  "/english-exoneration": (_) => _blP(const EnglishEntryexoneration()),
  "/english-exorbitant": (_) => _blP(const EnglishEntryexorbitant()),
  "/english-exorbitantly": (_) => _blP(const EnglishEntryexorbitantly()),
  "/english-exorcize": (_) => _blP(const EnglishEntryexorcize()),
  "/english-exorcism": (_) => _blP(const EnglishEntryexorcism()),
  "/english-exorcist": (_) => _blP(const EnglishEntryexorcist()),
  "/english-exotic": (_) => _blP(const EnglishEntryexotic()),
  "/english-expand": (_) => _blP(const EnglishEntryexpand()),
  "/english-expanse": (_) => _blP(const EnglishEntryexpanse()),
  "/english-expansion": (_) => _blP(const EnglishEntryexpansion()),
  "/english-expansionism": (_) => _blP(const EnglishEntryexpansionism()),
  "/english-expansionist": (_) => _blP(const EnglishEntryexpansionist()),
  "/english-expansive": (_) => _blP(const EnglishEntryexpansive()),
  "/english-expatriate": (_) => _blP(const EnglishEntryexpatriate()),
  "/english-expect": (_) => _blP(const EnglishEntryexpect()),
  "/english-expectancy": (_) => _blP(const EnglishEntryexpectancy()),
  "/english-expectant": (_) => _blP(const EnglishEntryexpectant()),
  "/english-expectation": (_) => _blP(const EnglishEntryexpectation()),
  "/english-expedient": (_) => _blP(const EnglishEntryexpedient()),
  "/english-expediency": (_) => _blP(const EnglishEntryexpediency()),
  "/english-expedition": (_) => _blP(const EnglishEntryexpedition()),
  "/english-expeditionary_force": (_) => _blP(const EnglishEntryexpeditionaryforce()),
  "/english-expel": (_) => _blP(const EnglishEntryexpel()),
  "/english-expend": (_) => _blP(const EnglishEntryexpend()),
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

final loggedInRoute = RouteMap(routes: routes);