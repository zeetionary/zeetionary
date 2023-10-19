import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import 'package:zeetionary/firebase/features/auth/screen/login_screen.dart';
import 'package:zeetionary/home/screens/home_screen.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_a.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aback.dart';
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
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_able_bodied.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abnormal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abnormality.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abnormally.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aboard.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abode.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abolish.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abolition.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abominable.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abominably.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aboriginal.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aborigine.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abort.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abortion.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abortive.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abound.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abound_in.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abound_with.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_about.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_about_turn.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_above.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_the_above.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_above_all.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_above_yourself.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_above_below_the_fold.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_above_beyond_suspicion.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abrasion.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abrasive.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abreast.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abridge.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abridgement.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abroad.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abrupt.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abruptly.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abruptness.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abscess.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abscond.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abseil.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absence.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absent.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absent_minded.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absentee.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absolute.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absolutely.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absolute_majority.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absolute_zero.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absolve.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absorb.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absorbent.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absorption.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abstain.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abstemious.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abstention.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abstinence.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abstract.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absurd.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absurdity.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absurdly.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abundance.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abundant.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abundantly.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abuse.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abusive.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abysmal.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abysmally.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abyss.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_academic.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_academically.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_academy.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accede.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accelerate.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acceleration.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accelerator.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accent.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accentuate.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accept.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acceptable.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acceptance.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_access.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accessible.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accession.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accessory.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accident.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accidental.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accidentally.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acclaim.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acclimatize.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accolade.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accommodate.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accommodating.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accommodation.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accompaniment.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accompanist.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accompany.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accomplice.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accomplish.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accomplished.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accomplishment.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accord.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accordingly.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_according_to.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accordion.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accost.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_account.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_account_for.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accountable.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accountancy.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accountant.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accredited.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accreditation.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accrue.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accumulate.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accumulation.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accuracy.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accurate.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accurately.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accusation.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accuse.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_the_accused.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accuser.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accustom_to.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accustomed.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_ace.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_ache.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_achieve.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_achievement.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_achilles_heel.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acid.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acid_rain.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acid_test.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acknowledge.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acknowledgement.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acne.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acorn.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acoustic.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acoustics.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquaint.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquaintance.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquainted.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquiesce.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquiescence.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquire.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquisition.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquisitive.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquit.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquittal.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acre.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acreage.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acrid.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acrimonious.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acrimony.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acrobat.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acrobatic.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acrobatics.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acronym.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_across.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acrylic.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_act.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_action.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_activate.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_active.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_actively.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_activist.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_activity.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_actor.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_actress.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_actual.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_actually.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acumen.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acupuncture.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acute.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acute_accent.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acute_angle.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acutely.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acuteness.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_ad.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adamant.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adams_apple.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adapt.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adaptable.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adaptation.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adaptor.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_add.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adder.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_addict.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_addicted.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_addiction.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_addictive.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_addition.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_additional.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_additionally.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_additive.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_address.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adept.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adequate.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adequately.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adhere.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adhere_to.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adherence.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adherent.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adhesion.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adhesive.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_ad_hoc.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjacent.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjectival.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjective.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjoin.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjourn.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjournment.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjudicate.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjudication.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjudicator.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjunct.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjust.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjustable.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjustment.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_ad_lib.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_administer.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_administration.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_administrative.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_administrator.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admirable.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admirably.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admiral.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admiration.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admire.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admirer.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admiring.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admissible.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admission.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admit.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admittance.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admittedly.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admonish.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_ad_nauseam.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adolescence.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adolescent.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adopt.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adoption.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adoptive.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adorable.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adoration.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adore.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adorn.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adornment.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adrenaline.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adrift.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adulation.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adult.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adulthood.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adulterate.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adultery.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adulterer.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adulterous.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advance.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advanced.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advancement.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advantage.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advantageous.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advent.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adventure.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adventurer.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adventurous.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adverb.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adverbial.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adversary.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adverse.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adversely.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adversity.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advert.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advertise.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advertisement.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advertiser.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advertising.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advice.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advise.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adviser.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advisory.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advisable.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advocate.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aerial.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aerobatics.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aerobics.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aerodynamic.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aerodynamics.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aeronautics.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aeroplane.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aerosol.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aerospace.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aesthetic.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aesthetically.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affable.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affably.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affair.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affect.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affectation.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affected.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affection.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affectionate.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affectionately.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affidavit.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affiliate.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affiliation.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affinity.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affirm.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affirmation.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affirmative.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affix.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afflict.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affliction.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affluence.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affluent.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afford.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_affront.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afloat.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afoot.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_aforementioned.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afraid.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afresh.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_after.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_aftereffect.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_aftermath.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afternoon.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afterwards.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_again.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/letters_co/en_entry_come_of_age.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afterthought.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_against.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_age.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aged.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_age_group.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_ageing.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_ageism.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_ageist.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_age_limit.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_age_old.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agency.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agenda.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agent.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggravate.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggravation.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggregate.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggression.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggressive.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggressively.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggressiveness.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggressor.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aggrieved.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aghast.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agile.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agility.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aging.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agitate.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agitation.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_f/letters_fa/en_entry_far_afield.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_f/letters_fr/en_entry_from_afar.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_u/letters_un/en_entry_under_age.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginScreen()),
});

final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HomeScreen()),
  '/english-a': (_) => MaterialPage(child: EnglishEntrya()),
  '/english-aback': (_) => MaterialPage(child: EnglishEntryaback()),
  '/english-abacus': (_) => MaterialPage(child: EnglishEntryabacus()),
  '/english-abandon': (_) => MaterialPage(child: EnglishEntryabandon()),
  '/english-abandoned': (_) => MaterialPage(child: EnglishEntryabandoned()),
  '/english-abandonment': (_) => MaterialPage(child: EnglishEntryabandonment()),
  '/english-abashed': (_) => MaterialPage(child: EnglishEntryabashed()),
  '/english-abate': (_) => MaterialPage(child: EnglishEntryabate()),
  '/english-abatement': (_) => MaterialPage(child: EnglishEntryabatement()),
  '/english-abattoir': (_) => MaterialPage(child: EnglishEntryAbattoir()),
  '/english-abbess': (_) => MaterialPage(child: EnglishEntryAbbess()),
  '/english-abbey': (_) => MaterialPage(child: EnglishEntryabbey()),
  '/english-abbot': (_) => MaterialPage(child: EnglishEntryabbot()),
  '/english-abbreviate': (_) => MaterialPage(child: EnglishEntryAbbreviate()),
  '/english-abbreviation': (_) =>
      MaterialPage(child: EnglishEntryabbreviation()),
  '/english-abdicate': (_) => MaterialPage(child: EnglishEntryabdicate()),
  '/english-abdication': (_) => MaterialPage(child: EnglishEntryabdication()),
  '/english-abdomen': (_) => MaterialPage(child: EnglishEntryabdomen()),
  '/english-abdominal': (_) => MaterialPage(child: EnglishEntryabdominal()),
  '/english-abduct': (_) => MaterialPage(child: EnglishEntryabduct()),
  '/english-abduction': (_) => MaterialPage(child: EnglishEntryabduction()),
  '/english-aberration': (_) => MaterialPage(child: EnglishEntryaberration()),
  '/english-abet': (_) => MaterialPage(child: EnglishEntryabet()),
  '/english-abhor': (_) => MaterialPage(child: EnglishEntryabhor()),
  '/english-abhorrence': (_) => MaterialPage(child: EnglishEntryabhorrence()),
  '/english-abhorrent': (_) => MaterialPage(child: EnglishEntryabhorrent()),
  '/english-abide': (_) => MaterialPage(child: EnglishEntryabide()),
  '/english-abiding': (_) => MaterialPage(child: EnglishEntryabiding()),
  '/english-ability': (_) => MaterialPage(child: EnglishEntryability()),
  '/english-abject': (_) => MaterialPage(child: EnglishEntryabject()),
  '/english-abjectly': (_) => MaterialPage(child: EnglishEntryabjectly()),
  '/english-ablaze': (_) => MaterialPage(child: EnglishEntryablaze()),
  '/english-able': (_) => MaterialPage(child: EnglishEntryable()),
  '/english-able-bodied': (_) => MaterialPage(child: EnglishEntryablebodied()),
  '/english-abnormal': (_) => MaterialPage(child: EnglishEntryabnormal()),
  '/english-abnormality': (_) => MaterialPage(child: EnglishEntryabnormality()),
  '/english-abnormally': (_) => MaterialPage(child: EnglishEntryabnormally()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
  // '/english-dopsu': (_) => MaterialPage(child: EnglishEntrydopsum()),
});

// final routes = RouteMap(
//   routes: {
//     '/': (_) => const CupertinoTabPage(
//           child: HomePage(),
//           paths: ['feed', 'settings'],
//         ),
//     '/feed': (_) => const MaterialPage(child: FeedPage()),
//     '/feed/profile/:id': (_) => const MaterialPage(child: ProfilePage()),
//     '/settings': (_) => const MaterialPage(child: SettingsPage()),
//   },
// );