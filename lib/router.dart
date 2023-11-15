import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import 'package:zeetionary/firebase/features/auth/screen/login_screen.dart';
import 'package:zeetionary/home/screens/history_screen.dart';
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
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abound_in.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_abound_with.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_about.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_about_turn.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_above.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_the_above.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_above_all.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_above_yourself.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_above_below_the_fold.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_above_beyond_suspicion.dart';
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
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absent_minded.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absentee.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absolute.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absolutely.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absolute_majority.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_absolute_zero.dart';
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
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accommodate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accommodating.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accommodation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accompaniment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accompanist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accompany.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accomplice.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accomplish.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accomplished.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accomplishment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accord.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accordingly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_according_to.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accordion.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accost.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_account.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_account_for.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accountable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accountancy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accountant.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accredited.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accreditation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accrue.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accumulate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accumulation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accuracy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accurate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accurately.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accusation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accuse.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_the_accused.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accuser.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accustom_to.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_accustomed.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_ace.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_ache.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_achieve.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_achievement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_achilles_heel.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acid.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acid_rain.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acid_test.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acknowledge.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acknowledgement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acne.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acorn.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acoustic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acoustics.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquaint.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquaintance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquainted.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquiesce.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquiescence.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquire.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquisition.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquisitive.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquit.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acquittal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acre.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acreage.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acrid.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acrimonious.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acrimony.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acrobat.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acrobatic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acrobatics.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acronym.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_across.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acrylic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_act.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_action.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_activate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_active.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_actively.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_activist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_activity.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_actor.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_actress.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_actual.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_actually.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acumen.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acupuncture.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acute.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acute_accent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acute_angle.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acutely.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ac/en_entry_acuteness.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_ad.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adamant.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adams_apple.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adapt.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adaptable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adaptation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adaptor.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_add.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adder.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_addict.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_addicted.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_addiction.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_addictive.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_addition.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_additional.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_additionally.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_additive.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_address.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adept.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adequate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adequately.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adhere.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adhere_to.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adherence.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adherent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adhesion.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adhesive.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_ad_hoc.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjacent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjectival.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjective.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjoin.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjourn.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjournment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjudicate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjudication.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjudicator.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjunct.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjust.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjustable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adjustment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_ad_lib.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_administer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_administration.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_administrative.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_administrator.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admirable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admirably.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admiral.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admiration.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admire.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admirer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admiring.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admissible.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admission.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admit.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admittance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admittedly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_admonish.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_ad_nauseam.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adolescence.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adolescent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adopt.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adoption.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adoptive.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adorable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adoration.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adore.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adorn.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adornment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adrenaline.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adrift.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adulation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adult.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adulthood.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adulterate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adultery.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adulterer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adulterous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advanced.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advancement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advantage.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advantageous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adventure.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adventurer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adventurous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adverb.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adverbial.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adversary.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adverse.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adversely.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adversity.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advert.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advertise.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advertisement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advertiser.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advertising.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advice.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advise.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_adviser.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advisory.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advisable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ad/en_entry_advocate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aerial.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aerobatics.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aerobics.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aerodynamic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aerodynamics.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aeronautics.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aeroplane.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ae/en_entry_aerosol.dart';
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
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/letters_co/en_entry_come_of_age.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_af/en_entry_afterthought.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_against.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_age.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_aged.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_age_group.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_ageing.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_ageism.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_ageist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_age_limit.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_age_old.dart';
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
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ag/en_entry_agony_aunt.dart';
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
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ah/en_entry_ahead_of.dart';
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
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_air_conditioner.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_air_conditioned.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_aircraft.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_aircraft_carrier.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airfield.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_air_force.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_air_hostess.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airlift.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airline.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airliner.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airmail.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_air_marshal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airplane.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airport.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_air_raid.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airship.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airspace.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airstrip.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_air_terminal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airtight.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_air_to_air.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_air_traffic_controller.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airway.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airworthy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airing.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airing_cupboard.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airless.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_airily.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ai/en_entry_aisle.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_aj/en_entry_ajar.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ak/en_entry_akin.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_a_la_carte.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alacrity.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alarm.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alarm_clock.dart';
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
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_ale.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alert.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_algae.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_algebra.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_algorithm.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alias.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alibi.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alien.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alienate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alienation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alight.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_align.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alignment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alike.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alimentary_canal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alimony.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alive.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alkali.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_all.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_all_clear.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_all_in.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_all_out.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_all_rounder.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allah.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allay.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allegation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allege.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alleged.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allegedly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allegiance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allegory.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allegorical.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alleluia.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allergy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allergic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alleviate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alleviation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alley.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alliance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allied.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alligator.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alliteration.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allocate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allocation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allot.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allotment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allow.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allowable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allowance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alloy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_all_right.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allude_to.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_allusion.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alluring.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_ally.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_almanac.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_almighty.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_almond.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_almost.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alms.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_aloft.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alone.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_along.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alongside.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_aloof.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_aloofness.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_aloud.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alphabet.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alphabetical.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alphabetically.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_already.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alright.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alsatian.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_also.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_altar.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alteration.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alternate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alternately.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alternating_current.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alternation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alternative.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alternatively.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alternator.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_although.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_altitude.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alto.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_c/letters_co/en_entry_contralto.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_altogether.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_altruism.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_altruistic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_aluminium.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_always.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_alzheimers_disease.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_am.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_am_two.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amalgamate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amalgamation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amass.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amateur.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amateurish.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amaze.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amazement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amazing.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_ambassador.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amber.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_ambidextrous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_ambiguous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_ambiguity.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_ambition.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_ambitious.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_ambivalent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_ambivalence.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amble.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_ambulance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_ambush.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_ameba.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amen.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amenable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amend.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amendment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_m/letters_ma/en_entry_make_amends.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amenity.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_american.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_f/letters_fa/en_entry_far_afield.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_f/letters_fr/en_entry_from_afar.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_u/letters_un/en_entry_under_age.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_american_football.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amethyst.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amiable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amiably.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amicable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amicably.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amid.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amidst.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amiss.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_n/letters_no/en_entry_not_come_go_amiss.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_t/letters_ta/en_entry_take_something_amiss.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_ammonia.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_ammunition.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amnesia.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amnesty.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amniocentesis.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amoeba.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_m/letters_am/en_entry_amok.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_among.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amongst.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amorous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amorously.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amount.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amp.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amp_up.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_ampersand.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amphetamine.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amphibian.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amphibious.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amphitheatre.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_ample.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amply.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amplify.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amplification.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amplifier.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amplitude.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amputate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amputation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amulet.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amuse.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amusement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_am/en_entry_amusing.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_an.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anachronism.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anaemia.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anaemic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anaerobic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anaesthesia.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anaesthetic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anaesthetist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anaesthetize.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anagram.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_analgesic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_analogue.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_analog.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_analogy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_analogous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_analyse.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_analysis.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_analyst.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_analytical.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_analytic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_analyze.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anarchy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anarchist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anatomy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anatomical.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_ancestor.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_ancestral.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_ancestry.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anchor.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anchorage.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anchovy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_ancient.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_ancillary.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_and.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anecdote.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anemia.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anemic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anemone.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anesthesia.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anesthetic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anesthetist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anesthetize.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anew.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_angel.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_angelic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anger.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_angina.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_angle.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_angler.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_angling.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anglicize.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anglo.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_angry.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_angrily.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_angst.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anguish.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anguished.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_angular.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_animal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_animate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_animated.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_animation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_animatronics.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_animosity.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_ankle.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_annals.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_annex.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_annexation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_annexe.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_annihilate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_annihilation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anniversary.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_annotate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_annotation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_announce.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_announcement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_announcer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_annoy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_annoyance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_annual.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_annually.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_annuity.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_annul.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_annulment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anode.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anoint.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anomaly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anomalous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anonymous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anonymity.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anon_two.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anon.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anorak.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anorexia.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anorexia_nervosa.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anorexic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_another.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_answer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_answerable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_ant.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antagonism.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antagonist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antagonistic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antagonize.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antarctic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antarctic_circle.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antecedent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antediluvian.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antelope.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antenatal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antenna.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anthem.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anthology.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anthrax.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anthropology.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anthropologist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anti.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anti_two.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antibiotic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antibody.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anticipate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anticipation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anticlimax.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anticlockwise.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anticyclone.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antidepressant.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antidote.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antifreeze.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antihistamine.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antiperspirant.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antiquated.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antique.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antiquity.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antiretroviral.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antiseptic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antisocial.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antithesis.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antler.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_antonym.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anus.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anvil.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anxiety.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anxious.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anxiously.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_any.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anybody.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anyhow.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anyway.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anyone.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anywhere.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anyplace.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_an/en_entry_anything.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ao/en_entry_aorta.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apart.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apart_from.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apartheid.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apartment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apathy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apathetic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_ape.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_aperitif.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_aperture.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apex.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_aphid.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apiece.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_aplomb.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apologetic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apologetically.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apologize.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apology.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apostle.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apostrophe.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appalling.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apparatus.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apparent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apparently.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apparition.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appeal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appealing.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appear.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appearance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appease.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appeasement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_append.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appendage.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appendicitis.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appendix.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appetite.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appetizer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appetizing.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_applaud.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_applause.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apple.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_applet.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appliance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_applicable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_applicant.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_application.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apply.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_applied.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appoint.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appointment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appraise.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appraisal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appreciable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appreciably.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appreciate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appreciation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appreciative.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apprehend.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apprehension.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apprehensive.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apprentice.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apprenticeship.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_approach.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_approachable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appropriate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appropriately.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_appropriation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_approval.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_approve.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_approvingly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_approximate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_approximately.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_approximation.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apricot.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_april.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apron.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_apt.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_aptly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_aptness.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ap/en_entry_aptitude.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_aq/en_entry_aqualung.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_aq/en_entry_aquamarine.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_aq/en_entry_aquarium.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_aq/en_entry_aquatic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_aq/en_entry_aqueduct.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arabic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arabic_numeral.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arbitrage.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arbitrageur.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arbitrary.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arbitrarily.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arbitrate.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arbitration.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arbitrator.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arc.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arcade.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arch.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arch_two.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_archaeology.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_archaeological.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_archaeologist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_archaic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_archbishop.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_archer.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_archery.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_archipelago.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_architect.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_architecture.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_architectural.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_archive.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arctic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arctic_circle.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_ardent.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_ardently.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arduous.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arduously.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_area.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arena.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_argue.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arguable.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arguably.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_argument.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_argumentative.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_aria.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arid.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arise.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_aristocracy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_aristocrat.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_aristocratic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arithmetic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arithmetical.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_ark.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arm.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_armed_forces.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_armchair.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_armpit.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_armada.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_armadillo.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_armament.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_armistice.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_armour.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_armoured.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_armoury.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arms.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_army.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arnica.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_aroma.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_aromatic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_aromatherapy.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_aromatherapist.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_around.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arouse.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arraign.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arraignment.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arrange.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arrangement.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_array.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arrears.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arrest.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arrival.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arrive.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arrogant.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arrogance.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arrogantly.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arrow.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arse.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arsenal.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arsenic.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arson.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_art.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_art_gallery.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_artefact.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_artery.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_arterial.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_artful.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_DOPSUM.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_DOPSUM.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_DOPSUM.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_DOPSUM.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_DOPSUM.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_DOPSUM.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_DOPSUM.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_DOPSUM.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_DOPSUM.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ar/en_entry_DOPSUM.dart';

final loggedOutRoute = RouteMap(routes: {
  "/": (_) => const MaterialPage(child: LoginScreen()),
});

final loggedInRoute = RouteMap(routes: {
  "/": (_) => const MaterialPage(child: HomeScreen()),
  // others // others // others
  // others // others // others
  // others // others // others
  "/history-screen": (_) => const MaterialPage(child: HistoryScreen()),
  // English dictionary starts here
  // English dictionary starts here
  // English dictionary starts here
  // English dictionary starts here
  "/english-a": (_) => MaterialPage(child: EnglishEntrya()),
  "/english-aback": (_) => MaterialPage(child: EnglishEntryaback()),
  "/english-abacus": (_) => MaterialPage(child: EnglishEntryabacus()),
  "/english-abandon": (_) => MaterialPage(child: EnglishEntryabandon()),
  "/english-abandoned": (_) => MaterialPage(child: EnglishEntryabandoned()),
  "/english-abandonment": (_) => MaterialPage(child: EnglishEntryabandonment()),
  "/english-abashed": (_) => MaterialPage(child: EnglishEntryabashed()),
  "/english-abate": (_) => MaterialPage(child: EnglishEntryabate()),
  "/english-abatement": (_) => MaterialPage(child: EnglishEntryabatement()),
  "/english-abattoir": (_) => MaterialPage(child: EnglishEntryAbattoir()),
  "/english-abbess": (_) => MaterialPage(child: EnglishEntryAbbess()),
  "/english-abbey": (_) => MaterialPage(child: EnglishEntryabbey()),
  "/english-abbot": (_) => MaterialPage(child: EnglishEntryabbot()),
  "/english-abbreviate": (_) => MaterialPage(child: EnglishEntryAbbreviate()),
  "/english-abbreviation": (_) =>
      MaterialPage(child: EnglishEntryabbreviation()),
  "/english-abdicate": (_) => MaterialPage(child: EnglishEntryabdicate()),
  "/english-abdication": (_) => MaterialPage(child: EnglishEntryabdication()),
  "/english-abdomen": (_) => MaterialPage(child: EnglishEntryabdomen()),
  "/english-abdominal": (_) => MaterialPage(child: EnglishEntryabdominal()),
  "/english-abduct": (_) => MaterialPage(child: EnglishEntryabduct()),
  "/english-abduction": (_) => MaterialPage(child: EnglishEntryabduction()),
  "/english-aberration": (_) => MaterialPage(child: EnglishEntryaberration()),
  "/english-abet": (_) => MaterialPage(child: EnglishEntryabet()),
  "/english-abhor": (_) => MaterialPage(child: EnglishEntryabhor()),
  "/english-abhorrence": (_) => MaterialPage(child: EnglishEntryabhorrence()),
  "/english-abhorrent": (_) => MaterialPage(child: EnglishEntryabhorrent()),
  "/english-abide": (_) => MaterialPage(child: EnglishEntryabide()),
  "/english-abiding": (_) => MaterialPage(child: EnglishEntryabiding()),
  "/english-ability": (_) => MaterialPage(child: EnglishEntryability()),
  "/english-abject": (_) => MaterialPage(child: EnglishEntryabject()),
  "/english-abjectly": (_) => MaterialPage(child: EnglishEntryabjectly()),
  "/english-ablaze": (_) => MaterialPage(child: EnglishEntryablaze()),
  "/english-able": (_) => MaterialPage(child: EnglishEntryable()),
  "/english-able-bodied": (_) => MaterialPage(child: EnglishEntryablebodied()),
  "/english-abnormal": (_) => MaterialPage(child: EnglishEntryabnormal()),
  "/english-abnormality": (_) => MaterialPage(child: EnglishEntryabnormality()),
  "/english-abnormally": (_) => MaterialPage(child: EnglishEntryabnormally()),
  "/english-aboard": (_) => MaterialPage(child: EnglishEntryaboard()),
  "/english-abode": (_) => MaterialPage(child: EnglishEntryabode()),
  "/english-abolish": (_) => MaterialPage(child: EnglishEntryabolish()),
  "/english-abolition": (_) => MaterialPage(child: EnglishEntryabolition()),
  "/english-abominable": (_) => MaterialPage(child: EnglishEntryabominable()),
  "/english-abominably": (_) => MaterialPage(child: EnglishEntryabominably()),
  "/english-aboriginal": (_) => MaterialPage(child: EnglishEntryaboriginal()),
  "/english-aborigine": (_) => MaterialPage(child: EnglishEntryaborigine()),
  "/english-abort": (_) => MaterialPage(child: EnglishEntryabort()),
  "/english-abortion": (_) => MaterialPage(child: EnglishEntryabortion()),
  "/english-abortive": (_) => MaterialPage(child: EnglishEntryabortive()),
  "/english-abound": (_) => MaterialPage(child: EnglishEntryabound()),
  "/english-abound-in": (_) => MaterialPage(child: EnglishEntryaboundin()),
  "/english-abound-with": (_) => MaterialPage(child: EnglishEntryaboundwith()),
  "/english-about": (_) => MaterialPage(child: EnglishEntryabout()),
  "/english-about-turn": (_) => MaterialPage(child: EnglishEntryaboutturn()),
  "/english-above": (_) => MaterialPage(child: EnglishEntryabove()),
  "/english-the-above": (_) => MaterialPage(child: EnglishEntrytheabove()),
  "/english-above-all": (_) => MaterialPage(child: EnglishEntryaboveall()),
  "/english-above-below-the-fold": (_) =>
      MaterialPage(child: EnglishEntryabovebelowthefold()),
  "/english-above-beyond-suspicion": (_) =>
      MaterialPage(child: EnglishEntryabovebeyondsuspicion()),
  "/english-above-yourself": (_) =>
      MaterialPage(child: EnglishEntryaboveyourself()),
  "/english-abrasion": (_) => MaterialPage(child: EnglishEntryabrasion()),
  "/english-abrasive": (_) => MaterialPage(child: EnglishEntryabrasive()),
  "/english-abreast": (_) => MaterialPage(child: EnglishEntryabreast()),
  "/english-abridge": (_) => MaterialPage(child: EnglishEntryabridge()),
  "/english-abridgement": (_) => MaterialPage(child: EnglishEntryabridgement()),
  "/english-abroad": (_) => MaterialPage(child: EnglishEntryabroad()),
  "/english-abrupt": (_) => MaterialPage(child: EnglishEntryabrupt()),
  "/english-abruptly": (_) => MaterialPage(child: EnglishEntryabruptly()),
  "/english-abruptness": (_) => MaterialPage(child: EnglishEntryabruptness()),
  "/english-abscess": (_) => MaterialPage(child: EnglishEntryabscess()),
  "/english-abscond": (_) => MaterialPage(child: EnglishEntryabscond()),
  "/english-abseil": (_) => MaterialPage(child: EnglishEntryabseil()),
  "/english-absence": (_) => MaterialPage(child: EnglishEntryabsence()),
  "/english-absent": (_) => MaterialPage(child: EnglishEntryabsent()),
  "/english-absentee": (_) => MaterialPage(child: EnglishEntryabsentee()),
  "/english-absent-minded": (_) =>
      MaterialPage(child: EnglishEntryabsentminded()),
  "/english-absolute": (_) => MaterialPage(child: EnglishEntryabsolute()),
  "/english-absolutely": (_) => MaterialPage(child: EnglishEntryabsolutely()),
  "/english-absolute-majority": (_) =>
      MaterialPage(child: EnglishEntryabsolutemajority()),
  "/english-absolute-zero": (_) =>
      MaterialPage(child: EnglishEntryabsolutezero()),
  "/english-absolve": (_) => MaterialPage(child: EnglishEntryabsolve()),
  "/english-absorb": (_) => MaterialPage(child: EnglishEntryabsorb()),
  "/english-absorbent": (_) => MaterialPage(child: EnglishEntryabsorbent()),
  "/english-absorption": (_) => MaterialPage(child: EnglishEntryabsorption()),
  "/english-abstain": (_) => MaterialPage(child: EnglishEntryabstain()),
  "/english-abstemious": (_) => MaterialPage(child: EnglishEntryabstemious()),
  "/english-abstention": (_) => MaterialPage(child: EnglishEntryabstention()),
  "/english-abstinence": (_) => MaterialPage(child: EnglishEntryabstinence()),
  "/english-abstract": (_) => MaterialPage(child: EnglishEntryabstract()),
  "/english-absurd": (_) => MaterialPage(child: EnglishEntryabsurd()),
  "/english-absurdity": (_) => MaterialPage(child: EnglishEntryabsurdity()),
  "/english-absurdly": (_) => MaterialPage(child: EnglishEntryabsurdly()),
  "/english-abundance": (_) => MaterialPage(child: EnglishEntryabundance()),
  "/english-abundant": (_) => MaterialPage(child: EnglishEntryabundant()),
  "/english-abundantly": (_) => MaterialPage(child: EnglishEntryabundantly()),
  "/english-abuse": (_) => MaterialPage(child: EnglishEntryabuse()),
  "/english-abusive": (_) => MaterialPage(child: EnglishEntryabusive()),
  "/english-abysmal": (_) => MaterialPage(child: EnglishEntryabysmal()),
  "/english-abysmally": (_) => MaterialPage(child: EnglishEntryabysmally()),
  "/english-abyss": (_) => MaterialPage(child: EnglishEntryabyss()),
  "/english-academic": (_) => MaterialPage(child: EnglishEntryacademic()),
  "/english-academically": (_) =>
      MaterialPage(child: EnglishEntryacademically()),
  "/english-academy": (_) => MaterialPage(child: EnglishEntryacademy()),
  "/english-accede": (_) => MaterialPage(child: EnglishEntryaccede()),
  "/english-accelerate": (_) => MaterialPage(child: EnglishEntryaccelerate()),
  "/english-acceleration": (_) =>
      MaterialPage(child: EnglishEntryacceleration()),
  "/english-accelerator": (_) => MaterialPage(child: EnglishEntryaccelerator()),
  "/english-accent": (_) => MaterialPage(child: EnglishEntryaccent()),
  "/english-accentuate": (_) => MaterialPage(child: EnglishEntryaccentuate()),
  "/english-accept": (_) => MaterialPage(child: EnglishEntryaccept()),
  "/english-acceptable": (_) => MaterialPage(child: EnglishEntryacceptable()),
  "/english-acceptance": (_) => MaterialPage(child: EnglishEntryacceptance()),
  "/english-access": (_) => MaterialPage(child: EnglishEntryaccess()),
  "/english-accessible": (_) => MaterialPage(child: EnglishEntryaccessible()),
  "/english-accession": (_) => MaterialPage(child: EnglishEntryaccession()),
  "/english-accessory": (_) => MaterialPage(child: EnglishEntryaccessory()),
  "/english-accident": (_) => MaterialPage(child: EnglishEntryaccident()),
  "/english-accidental": (_) => MaterialPage(child: EnglishEntryaccidental()),
  "/english-accidentally": (_) =>
      MaterialPage(child: EnglishEntryaccidentally()),
  "/english-acclaim": (_) => MaterialPage(child: EnglishEntryacclaim()),
  "/english-acclimatize": (_) => MaterialPage(child: EnglishEntryacclimatize()),
  "/english-accolade": (_) => MaterialPage(child: EnglishEntryaccolade()),
  "/english-accommodate": (_) => MaterialPage(child: EnglishEntryaccommodate()),
  "/english-accommodating": (_) =>
      MaterialPage(child: EnglishEntryaccommodating()),
  "/english-accommodation": (_) =>
      MaterialPage(child: EnglishEntryaccommodation()),
  "/english-accompaniment": (_) =>
      MaterialPage(child: EnglishEntryaccompaniment()),
  "/english-accompanist": (_) => MaterialPage(child: EnglishEntryaccompanist()),
  "/english-accompany": (_) => MaterialPage(child: EnglishEntryaccompany()),
  "/english-accomplice": (_) => MaterialPage(child: EnglishEntryaccomplice()),
  "/english-accomplish": (_) => MaterialPage(child: EnglishEntryaccomplish()),
  "/english-accomplished": (_) =>
      MaterialPage(child: EnglishEntryaccomplished()),
  "/english-accomplishment": (_) =>
      MaterialPage(child: EnglishEntryaccomplishment()),
  "/english-accord": (_) => MaterialPage(child: EnglishEntryaccord()),
  "/english-accordingly": (_) => MaterialPage(child: EnglishEntryaccordingly()),
  "/english-according-to": (_) =>
      MaterialPage(child: EnglishEntryaccordingto()),
  "/english-accordion": (_) => MaterialPage(child: EnglishEntryaccordion()),
  "/english-accost": (_) => MaterialPage(child: EnglishEntryaccost()),
  "/english-account": (_) => MaterialPage(child: EnglishEntryaccount()),
  "/english-account-for": (_) => MaterialPage(child: EnglishEntryaccountfor()),
  "/english-accountable": (_) => MaterialPage(child: EnglishEntryaccountable()),
  "/english-accountancy": (_) => MaterialPage(child: EnglishEntryaccountancy()),
  "/english-accountant": (_) => MaterialPage(child: EnglishEntryaccountant()),
  "/english-accredited": (_) => MaterialPage(child: EnglishEntryaccredited()),
  "/english-accreditation": (_) =>
      MaterialPage(child: EnglishEntryaccreditation()),
  "/english-accrue": (_) => MaterialPage(child: EnglishEntryaccrue()),
  "/english-accumulate": (_) => MaterialPage(child: EnglishEntryaccumulate()),
  "/english-accumulation": (_) =>
      MaterialPage(child: EnglishEntryaccumulation()),
  "/english-accuracy": (_) => MaterialPage(child: EnglishEntryaccuracy()),
  "/english-accurate": (_) => MaterialPage(child: EnglishEntryaccurate()),
  "/english-accurately": (_) => MaterialPage(child: EnglishEntryaccurately()),
  "/english-accusation": (_) => MaterialPage(child: EnglishEntryaccusation()),
  "/english-accuse": (_) => MaterialPage(child: EnglishEntryaccuse()),
  "/english-the-accused": (_) => MaterialPage(child: EnglishEntrytheaccused()),
  "/english-accuser": (_) => MaterialPage(child: EnglishEntryaccuser()),
  "/english-accustom-to": (_) => MaterialPage(child: EnglishEntryaccustomto()),
  "/english-accustomed": (_) => MaterialPage(child: EnglishEntryaccustomed()),
  "/english-ace": (_) => MaterialPage(child: EnglishEntryace()),
  "/english-ache": (_) => MaterialPage(child: EnglishEntryache()),
  "/english-achieve": (_) => MaterialPage(child: EnglishEntryachieve()),
  "/english-achievement": (_) => MaterialPage(child: EnglishEntryachievement()),
  "/english-achilles-heel": (_) =>
      MaterialPage(child: EnglishEntryachillesheel()),
  "/english-acid": (_) => MaterialPage(child: EnglishEntryacid()),
  "/english-acid-rain": (_) => MaterialPage(child: EnglishEntryacidrain()),
  "/english-acid-test": (_) => MaterialPage(child: EnglishEntryacidtest()),
  "/english-acknowledge": (_) => MaterialPage(child: EnglishEntryacknowledge()),
  "/english-acknowledgement": (_) =>
      MaterialPage(child: EnglishEntryacknowledgement()),
  "/english-acne": (_) => MaterialPage(child: EnglishEntryacne()),
  "/english-acorn": (_) => MaterialPage(child: EnglishEntryacorn()),
  "/english-acoustic": (_) => MaterialPage(child: EnglishEntryacoustic()),
  "/english-acoustics": (_) => MaterialPage(child: EnglishEntryacoustics()),
  "/english-acquaint": (_) => MaterialPage(child: EnglishEntryacquaint()),
  "/english-acquaintance": (_) =>
      MaterialPage(child: EnglishEntryacquaintance()),
  "/english-acquainted": (_) => MaterialPage(child: EnglishEntryacquainted()),
  "/english-acquiesce": (_) => MaterialPage(child: EnglishEntryacquiesce()),
  "/english-acquiescence": (_) =>
      MaterialPage(child: EnglishEntryacquiescence()),
  "/english-acquire": (_) => MaterialPage(child: EnglishEntryacquire()),
  "/english-acquisition": (_) => MaterialPage(child: EnglishEntryacquisition()),
  "/english-acquisitive": (_) => MaterialPage(child: EnglishEntryacquisitive()),
  "/english-acquit": (_) => MaterialPage(child: EnglishEntryacquit()),
  "/english-acquittal": (_) => MaterialPage(child: EnglishEntryacquittal()),
  "/english-acre": (_) => MaterialPage(child: EnglishEntryacre()),
  "/english-acreage": (_) => MaterialPage(child: EnglishEntryacreage()),
  "/english-acrid": (_) => MaterialPage(child: EnglishEntryacrid()),
  "/english-acrimonious": (_) => MaterialPage(child: EnglishEntryacrimonious()),
  "/english-acrimony": (_) => MaterialPage(child: EnglishEntryacrimony()),
  "/english-acrobat": (_) => MaterialPage(child: EnglishEntryacrobat()),
  "/english-acrobatic": (_) => MaterialPage(child: EnglishEntryacrobatic()),
  "/english-acrobatics": (_) => MaterialPage(child: EnglishEntryacrobatics()),
  "/english-acronym": (_) => MaterialPage(child: EnglishEntryacronym()),
  "/english-across": (_) => MaterialPage(child: EnglishEntryacross()),
  "/english-acrylic": (_) => MaterialPage(child: EnglishEntryacrylic()),
  "/english-act": (_) => MaterialPage(child: EnglishEntryact()),
  "/english-action": (_) => MaterialPage(child: EnglishEntryaction()),
  "/english-activate": (_) => MaterialPage(child: EnglishEntryactivate()),
  "/english-active": (_) => MaterialPage(child: EnglishEntryactive()),
  "/english-actively": (_) => MaterialPage(child: EnglishEntryactively()),
  "/english-activist": (_) => MaterialPage(child: EnglishEntryactivist()),
  "/english-activity": (_) => MaterialPage(child: EnglishEntryactivity()),
  "/english-actor": (_) => MaterialPage(child: EnglishEntryactor()),
  "/english-actress": (_) => MaterialPage(child: EnglishEntryactress()),
  "/english-actual": (_) => MaterialPage(child: EnglishEntryactual()),
  "/english-actually": (_) => MaterialPage(child: EnglishEntryactually()),
  "/english-acumen": (_) => MaterialPage(child: EnglishEntryacumen()),
  "/english-acupuncture": (_) => MaterialPage(child: EnglishEntryacupuncture()),
  "/english-acute": (_) => MaterialPage(child: EnglishEntryacute()),
  "/english-acute-accent": (_) =>
      MaterialPage(child: EnglishEntryacuteaccent()),
  "/english-acute-angle": (_) => MaterialPage(child: EnglishEntryacuteangle()),
  "/english-acutely": (_) => MaterialPage(child: EnglishEntryacutely()),
  "/english-acuteness": (_) => MaterialPage(child: EnglishEntryacuteness()),
  "/english-ad": (_) => MaterialPage(child: EnglishEntryad()),
  "/english-adamant": (_) => MaterialPage(child: EnglishEntryadamant()),
  "/english-adams-apple": (_) => MaterialPage(child: EnglishEntryadamsapple()),
  "/english-adapt": (_) => MaterialPage(child: EnglishEntryadapt()),
  "/english-adaptable": (_) => MaterialPage(child: EnglishEntryadaptable()),
  "/english-adaptation": (_) => MaterialPage(child: EnglishEntryadaptation()),
  "/english-adaptor": (_) => MaterialPage(child: EnglishEntryadaptor()),
  "/english-add": (_) => MaterialPage(child: EnglishEntryadd()),
  "/english-adder": (_) => MaterialPage(child: EnglishEntryadder()),
  "/english-addict": (_) => MaterialPage(child: EnglishEntryaddict()),
  "/english-addicted": (_) => MaterialPage(child: EnglishEntryaddicted()),
  "/english-addiction": (_) => MaterialPage(child: EnglishEntryaddiction()),
  "/english-addictive": (_) => MaterialPage(child: EnglishEntryaddictive()),
  "/english-addition": (_) => MaterialPage(child: EnglishEntryaddition()),
  "/english-additional": (_) => MaterialPage(child: EnglishEntryadditional()),
  "/english-additionally": (_) =>
      MaterialPage(child: EnglishEntryadditionally()),
  "/english-additive": (_) => MaterialPage(child: EnglishEntryadditive()),
  "/english-address": (_) => MaterialPage(child: EnglishEntryaddress()),
  "/english-adept": (_) => MaterialPage(child: EnglishEntryadept()),
  "/english-adequate": (_) => MaterialPage(child: EnglishEntryadequate()),
  "/english-adequately": (_) => MaterialPage(child: EnglishEntryadequately()),
  "/english-adhere": (_) => MaterialPage(child: EnglishEntryadhere()),
  "/english-adhere-to": (_) => MaterialPage(child: EnglishEntryadhereto()),
  "/english-adherence": (_) => MaterialPage(child: EnglishEntryadherence()),
  "/english-adherent": (_) => MaterialPage(child: EnglishEntryadherent()),
  "/english-adhesion": (_) => MaterialPage(child: EnglishEntryadhesion()),
  "/english-adhesive": (_) => MaterialPage(child: EnglishEntryadhesive()),
  "/english-ad-hoc": (_) => MaterialPage(child: EnglishEntryadhoc()),
  "/english-adjacent": (_) => MaterialPage(child: EnglishEntryadjacent()),
  "/english-adjectival": (_) => MaterialPage(child: EnglishEntryadjectival()),
  "/english-adjective": (_) => MaterialPage(child: EnglishEntryadjective()),
  "/english-adjoin": (_) => MaterialPage(child: EnglishEntryadjoin()),
  "/english-adjourn": (_) => MaterialPage(child: EnglishEntryadjourn()),
  "/english-adjournment": (_) => MaterialPage(child: EnglishEntryadjournment()),
  "/english-adjudicate": (_) => MaterialPage(child: EnglishEntryadjudicate()),
  "/english-adjudication": (_) =>
      MaterialPage(child: EnglishEntryadjudication()),
  "/english-adjudicator": (_) => MaterialPage(child: EnglishEntryadjudicator()),
  "/english-adjunct": (_) => MaterialPage(child: EnglishEntryadjunct()),
  "/english-adjust": (_) => MaterialPage(child: EnglishEntryadjust()),
  "/english-adjustable": (_) => MaterialPage(child: EnglishEntryadjustable()),
  "/english-adjustment": (_) => MaterialPage(child: EnglishEntryadjustment()),
  "/english-ad-lib": (_) => MaterialPage(child: EnglishEntryadlib()),
  "/english-administer": (_) => MaterialPage(child: EnglishEntryadminister()),
  "/english-administration": (_) =>
      MaterialPage(child: EnglishEntryadministration()),
  "/english-administrative": (_) =>
      MaterialPage(child: EnglishEntryadministrative()),
  "/english-administrator": (_) =>
      MaterialPage(child: EnglishEntryadministrator()),
  "/english-admirable": (_) => MaterialPage(child: EnglishEntryadmirable()),
  "/english-admirably": (_) => MaterialPage(child: EnglishEntryadmirably()),
  "/english-admiral": (_) => MaterialPage(child: EnglishEntryadmiral()),
  "/english-admiration": (_) => MaterialPage(child: EnglishEntryadmiration()),
  "/english-admire": (_) => MaterialPage(child: EnglishEntryadmire()),
  "/english-admirer": (_) => MaterialPage(child: EnglishEntryadmirer()),
  "/english-admiring": (_) => MaterialPage(child: EnglishEntryadmiring()),
  "/english-admissible": (_) => MaterialPage(child: EnglishEntryadmissible()),
  "/english-admission": (_) => MaterialPage(child: EnglishEntryadmission()),
  "/english-admit": (_) => MaterialPage(child: EnglishEntryadmit()),
  "/english-admittance": (_) => MaterialPage(child: EnglishEntryadmittance()),
  "/english-admittedly": (_) => MaterialPage(child: EnglishEntryadmittedly()),
  "/english-admonish": (_) => MaterialPage(child: EnglishEntryadmonish()),
  "/english-ad-nauseam": (_) => MaterialPage(child: EnglishEntryadnauseam()),
  "/english-adolescence": (_) => MaterialPage(child: EnglishEntryadolescence()),
  "/english-adolescent": (_) => MaterialPage(child: EnglishEntryadolescent()),
  "/english-adopt": (_) => MaterialPage(child: EnglishEntryadopt()),
  "/english-adoption": (_) => MaterialPage(child: EnglishEntryadoption()),
  "/english-adoptive": (_) => MaterialPage(child: EnglishEntryadoptive()),
  "/english-adorable": (_) => MaterialPage(child: EnglishEntryadorable()),
  "/english-adoration": (_) => MaterialPage(child: EnglishEntryadoration()),
  "/english-adore": (_) => MaterialPage(child: EnglishEntryadore()),
  "/english-adorn": (_) => MaterialPage(child: EnglishEntryadorn()),
  "/english-adornment": (_) => MaterialPage(child: EnglishEntryadornment()),
  "/english-adrenaline": (_) => MaterialPage(child: EnglishEntryadrenaline()),
  "/english-adrift": (_) => MaterialPage(child: EnglishEntryadrift()),
  "/english-adulation": (_) => MaterialPage(child: EnglishEntryadulation()),
  "/english-adult": (_) => MaterialPage(child: EnglishEntryadult()),
  "/english-adulterate": (_) => MaterialPage(child: EnglishEntryadulterate()),
  "/english-adulterer": (_) => MaterialPage(child: EnglishEntryadulterer()),
  "/english-adulterous": (_) => MaterialPage(child: EnglishEntryadulterous()),
  "/english-adultery": (_) => MaterialPage(child: EnglishEntryadultery()),
  "/english-adulthood": (_) => MaterialPage(child: EnglishEntryadulthood()),
  "/english-advance": (_) => MaterialPage(child: EnglishEntryadvance()),
  "/english-advanced": (_) => MaterialPage(child: EnglishEntryadvanced()),
  "/english-advancement": (_) => MaterialPage(child: EnglishEntryadvancement()),
  "/english-advantage": (_) => MaterialPage(child: EnglishEntryadvantage()),
  "/english-advantageous": (_) =>
      MaterialPage(child: EnglishEntryadvantageous()),
  "/english-advent": (_) => MaterialPage(child: EnglishEntryadvent()),
  "/english-adventure": (_) => MaterialPage(child: EnglishEntryadventure()),
  "/english-adventurer": (_) => MaterialPage(child: EnglishEntryadventurer()),
  "/english-adventurous": (_) => MaterialPage(child: EnglishEntryadventurous()),
  "/english-adverb": (_) => MaterialPage(child: EnglishEntryadverb()),
  "/english-adverbial": (_) => MaterialPage(child: EnglishEntryadverbial()),
  "/english-adversary": (_) => MaterialPage(child: EnglishEntryadversary()),
  "/english-adverse": (_) => MaterialPage(child: EnglishEntryadverse()),
  "/english-adversely": (_) => MaterialPage(child: EnglishEntryadversely()),
  "/english-adversity": (_) => MaterialPage(child: EnglishEntryadversity()),
  "/english-advert": (_) => MaterialPage(child: EnglishEntryadvert()),
  "/english-advertise": (_) => MaterialPage(child: EnglishEntryadvertise()),
  "/english-advertisement": (_) =>
      MaterialPage(child: EnglishEntryadvertisement()),
  "/english-advertiser": (_) => MaterialPage(child: EnglishEntryadvertiser()),
  "/english-advertising": (_) => MaterialPage(child: EnglishEntryadvertising()),
  "/english-advice": (_) => MaterialPage(child: EnglishEntryadvice()),
  "/english-advisable": (_) => MaterialPage(child: EnglishEntryadvisable()),
  "/english-advise": (_) => MaterialPage(child: EnglishEntryadvise()),
  "/english-adviser": (_) => MaterialPage(child: EnglishEntryadviser()),
  "/english-advisory": (_) => MaterialPage(child: EnglishEntryadvisory()),
  "/english-advocate": (_) => MaterialPage(child: EnglishEntryadvocate()),
  "/english-aerial": (_) => MaterialPage(child: EnglishEntryaerial()),
  "/english-aerobatics": (_) => MaterialPage(child: EnglishEntryaerobatics()),
  "/english-aerobics": (_) => MaterialPage(child: EnglishEntryaerobics()),
  "/english-aerodynamic": (_) => MaterialPage(child: EnglishEntryaerodynamic()),
  "/english-aerodynamics": (_) =>
      MaterialPage(child: EnglishEntryaerodynamics()),
  "/english-aeronautics": (_) => MaterialPage(child: EnglishEntryaeronautics()),
  "/english-aeroplane": (_) => MaterialPage(child: EnglishEntryaeroplane()),
  "/english-aerosol": (_) => MaterialPage(child: EnglishEntryaerosol()),
  "/english-aerospace": (_) => MaterialPage(child: EnglishEntryaerospace()),
  "/english-aesthetic": (_) => MaterialPage(child: EnglishEntryaesthetic()),
  "/english-aesthetically": (_) =>
      MaterialPage(child: EnglishEntryaesthetically()),
  "/english-affable": (_) => MaterialPage(child: EnglishEntryaffable()),
  "/english-affably": (_) => MaterialPage(child: EnglishEntryaffably()),
  "/english-affair": (_) => MaterialPage(child: EnglishEntryaffair()),
  "/english-affect": (_) => MaterialPage(child: EnglishEntryaffect()),
  "/english-affectation": (_) => MaterialPage(child: EnglishEntryaffectation()),
  "/english-affected": (_) => MaterialPage(child: EnglishEntryaffected()),
  "/english-affection": (_) => MaterialPage(child: EnglishEntryaffection()),
  "/english-affectionate": (_) =>
      MaterialPage(child: EnglishEntryaffectionate()),
  "/english-affectionately": (_) =>
      MaterialPage(child: EnglishEntryaffectionately()),
  "/english-affidavit": (_) => MaterialPage(child: EnglishEntryaffidavit()),
  "/english-affiliate": (_) => MaterialPage(child: EnglishEntryaffiliate()),
  "/english-affiliation": (_) => MaterialPage(child: EnglishEntryaffiliation()),
  "/english-affinity": (_) => MaterialPage(child: EnglishEntryaffinity()),
  "/english-affirm": (_) => MaterialPage(child: EnglishEntryaffirm()),
  "/english-affirmation": (_) => MaterialPage(child: EnglishEntryaffirmation()),
  "/english-affirmative": (_) => MaterialPage(child: EnglishEntryaffirmative()),
  "/english-affix": (_) => MaterialPage(child: EnglishEntryaffix()),
  "/english-afflict": (_) => MaterialPage(child: EnglishEntryafflict()),
  "/english-affliction": (_) => MaterialPage(child: EnglishEntryaffliction()),
  "/english-affluence": (_) => MaterialPage(child: EnglishEntryaffluence()),
  "/english-affluent": (_) => MaterialPage(child: EnglishEntryaffluent()),
  "/english-afford": (_) => MaterialPage(child: EnglishEntryafford()),
  "/english-affront": (_) => MaterialPage(child: EnglishEntryaffront()),
  "/english-afloat": (_) => MaterialPage(child: EnglishEntryafloat()),
  "/english-afoot": (_) => MaterialPage(child: EnglishEntryafoot()),
  "/english-aforementioned": (_) =>
      MaterialPage(child: EnglishEntryaforementioned()),
  "/english-afraid": (_) => MaterialPage(child: EnglishEntryafraid()),
  "/english-afresh": (_) => MaterialPage(child: EnglishEntryafresh()),
  "/english-after": (_) => MaterialPage(child: EnglishEntryafter()),
  "/english-aftereffect": (_) => MaterialPage(child: EnglishEntryaftereffect()),
  "/english-aftermath": (_) => MaterialPage(child: EnglishEntryaftermath()),
  "/english-afternoon": (_) => MaterialPage(child: EnglishEntryafternoon()),
  "/english-afterthought": (_) =>
      MaterialPage(child: EnglishEntryafterthought()),
  "/english-afterwards": (_) => MaterialPage(child: EnglishEntryafterwards()),
  "/english-again": (_) => MaterialPage(child: EnglishEntryagain()),
  "/english-against": (_) => MaterialPage(child: EnglishEntryagainst()),
  "/english-age": (_) => MaterialPage(child: EnglishEntryage()),
  "/english-aged": (_) => MaterialPage(child: EnglishEntryaged()),
  "/english-age-group": (_) => MaterialPage(child: EnglishEntryagegroup()),
  "/english-ageing": (_) => MaterialPage(child: EnglishEntryageing()),
  "/english-ageism": (_) => MaterialPage(child: EnglishEntryageism()),
  "/english-ageist": (_) => MaterialPage(child: EnglishEntryageist()),
  "/english-age-limit": (_) => MaterialPage(child: EnglishEntryagelimit()),
  "/english-agency": (_) => MaterialPage(child: EnglishEntryagency()),
  "/english-agenda": (_) => MaterialPage(child: EnglishEntryagenda()),
  "/english-agent": (_) => MaterialPage(child: EnglishEntryagent()),
  "/english-age-old": (_) => MaterialPage(child: EnglishEntryageold()),
  "/english-aggravate": (_) => MaterialPage(child: EnglishEntryaggravate()),
  "/english-aggravation": (_) => MaterialPage(child: EnglishEntryaggravation()),
  "/english-aggregate": (_) => MaterialPage(child: EnglishEntryaggregate()),
  "/english-aggression": (_) => MaterialPage(child: EnglishEntryaggression()),
  "/english-aggressive": (_) => MaterialPage(child: EnglishEntryaggressive()),
  "/english-aggressively": (_) =>
      MaterialPage(child: EnglishEntryaggressively()),
  "/english-aggressiveness": (_) =>
      MaterialPage(child: EnglishEntryaggressiveness()),
  "/english-aggressor": (_) => MaterialPage(child: EnglishEntryaggressor()),
  "/english-aggrieved": (_) => MaterialPage(child: EnglishEntryaggrieved()),
  "/english-aghast": (_) => MaterialPage(child: EnglishEntryaghast()),
  "/english-agile": (_) => MaterialPage(child: EnglishEntryagile()),
  "/english-agility": (_) => MaterialPage(child: EnglishEntryagility()),
  "/english-aging": (_) => MaterialPage(child: EnglishEntryaging()),
  "/english-agitate": (_) => MaterialPage(child: EnglishEntryagitate()),
  "/english-agitation": (_) => MaterialPage(child: EnglishEntryagitation()),
  "/english-agitator": (_) => MaterialPage(child: EnglishEntryagitator()),
  "/english-aglow": (_) => MaterialPage(child: EnglishEntryaglow()),
  "/english-agm": (_) => MaterialPage(child: EnglishEntryagm()),
  "/english-agnostic": (_) => MaterialPage(child: EnglishEntryagnostic()),
  "/english-agonized": (_) => MaterialPage(child: EnglishEntryagonized()),
  "/english-agonizing": (_) => MaterialPage(child: EnglishEntryagonizing()),
  "/english-agony": (_) => MaterialPage(child: EnglishEntryagony()),
  "/english-agony-aunt": (_) => MaterialPage(child: EnglishEntryagonyaunt()),
  "/english-agoraphobia": (_) => MaterialPage(child: EnglishEntryagoraphobia()),
  "/english-agoraphobic": (_) => MaterialPage(child: EnglishEntryagoraphobic()),
  "/english-agrarian": (_) => MaterialPage(child: EnglishEntryagrarian()),
  "/english-agree": (_) => MaterialPage(child: EnglishEntryagree()),
  "/english-agreeable": (_) => MaterialPage(child: EnglishEntryagreeable()),
  "/english-agreeably": (_) => MaterialPage(child: EnglishEntryagreeably()),
  "/english-agreement": (_) => MaterialPage(child: EnglishEntryagreement()),
  "/english-agriculture": (_) => MaterialPage(child: EnglishEntryagriculture()),
  "/english-agricultural": (_) =>
      MaterialPage(child: EnglishEntryagricultural()),
  "/english-agritourism": (_) => MaterialPage(child: EnglishEntryagritourism()),
  "/english-agrochemical": (_) =>
      MaterialPage(child: EnglishEntryagrochemical()),
  "/english-agronomist": (_) => MaterialPage(child: EnglishEntryagronomist()),
  "/english-agronomy": (_) => MaterialPage(child: EnglishEntryagronomy()),
  "/english-aground": (_) => MaterialPage(child: EnglishEntryaground()),
  "/english-ahead": (_) => MaterialPage(child: EnglishEntryahead()),
  "/english-ahead-of": (_) => MaterialPage(child: EnglishEntryaheadof()),
  "/english-ai": (_) => MaterialPage(child: EnglishEntryai()),
  "/english-aid": (_) => MaterialPage(child: EnglishEntryaid()),
  "/english-aide": (_) => MaterialPage(child: EnglishEntryaide()),
  "/english-aids": (_) => MaterialPage(child: EnglishEntryaids()),
  "/english-ailing": (_) => MaterialPage(child: EnglishEntryailing()),
  "/english-ailment": (_) => MaterialPage(child: EnglishEntryailment()),
  "/english-aim": (_) => MaterialPage(child: EnglishEntryaim()),
  "/english-aimless": (_) => MaterialPage(child: EnglishEntryaimless()),
  "/english-aimlessly": (_) => MaterialPage(child: EnglishEntryaimlessly()),
  "/english-aint": (_) => MaterialPage(child: EnglishEntryaint()),
  "/english-air": (_) => MaterialPage(child: EnglishEntryair()),
  "/english-airbag": (_) => MaterialPage(child: EnglishEntryairbag()),
  "/english-airborne": (_) => MaterialPage(child: EnglishEntryairborne()),
  "/english-air-conditioner": (_) =>
      MaterialPage(child: EnglishEntryairconditioner()),
  "/english-air-conditioned": (_) =>
      MaterialPage(child: EnglishEntryairconditioned()),
  "/english-aircraft": (_) => MaterialPage(child: EnglishEntryaircraft()),
  "/english-aircraft-carrier": (_) =>
      MaterialPage(child: EnglishEntryaircraftcarrier()),
  "/english-airfield": (_) => MaterialPage(child: EnglishEntryairfield()),
  "/english-air-force": (_) => MaterialPage(child: EnglishEntryairforce()),
  "/english-air-hostess": (_) => MaterialPage(child: EnglishEntryairhostess()),
  "/english-airlift": (_) => MaterialPage(child: EnglishEntryairlift()),
  "/english-airline": (_) => MaterialPage(child: EnglishEntryairline()),
  "/english-airliner": (_) => MaterialPage(child: EnglishEntryairliner()),
  "/english-airmail": (_) => MaterialPage(child: EnglishEntryairmail()),
  "/english-air-marshal": (_) => MaterialPage(child: EnglishEntryairmarshal()),
  "/english-airplane": (_) => MaterialPage(child: EnglishEntryairplane()),
  "/english-airport": (_) => MaterialPage(child: EnglishEntryairport()),
  "/english-air-raid": (_) => MaterialPage(child: EnglishEntryairraid()),
  "/english-airship": (_) => MaterialPage(child: EnglishEntryairship()),
  "/english-airspace": (_) => MaterialPage(child: EnglishEntryairspace()),
  "/english-airstrip": (_) => MaterialPage(child: EnglishEntryairstrip()),
  "/english-air-terminal": (_) =>
      MaterialPage(child: EnglishEntryairterminal()),
  "/english-airtight": (_) => MaterialPage(child: EnglishEntryairtight()),
  "/english-air-to-air": (_) => MaterialPage(child: EnglishEntryairtoair()),
  "/english-air-traffic-controller": (_) =>
      MaterialPage(child: EnglishEntryairtrafficcontroller()),
  "/english-airway": (_) => MaterialPage(child: EnglishEntryairway()),
  "/english-airworthy": (_) => MaterialPage(child: EnglishEntryairworthy()),
  "/english-airing": (_) => MaterialPage(child: EnglishEntryairing()),
  "/english-airing-cupboard": (_) =>
      MaterialPage(child: EnglishEntryairingcupboard()),
  "/english-airless": (_) => MaterialPage(child: EnglishEntryairless()),
  "/english-airy": (_) => MaterialPage(child: EnglishEntryairy()),
  "/english-airily": (_) => MaterialPage(child: EnglishEntryairily()),
  "/english-aisle": (_) => MaterialPage(child: EnglishEntryaisle()),
  "/english-ajar": (_) => MaterialPage(child: EnglishEntryajar()),
  "/english-akin": (_) => MaterialPage(child: EnglishEntryakin()),
  "/english-a-la-carte": (_) => MaterialPage(child: EnglishEntryalacarte()),
  "/english-alacrity": (_) => MaterialPage(child: EnglishEntryalacrity()),
  "/english-alarm": (_) => MaterialPage(child: EnglishEntryalarm()),
  "/english-alarm-clock": (_) => MaterialPage(child: EnglishEntryalarmclock()),
  "/english-alarming": (_) => MaterialPage(child: EnglishEntryalarming()),
  "/english-alas": (_) => MaterialPage(child: EnglishEntryalas()),
  "/english-albatross": (_) => MaterialPage(child: EnglishEntryalbatross()),
  "/english-albeit": (_) => MaterialPage(child: EnglishEntryalbeit()),
  "/english-albino": (_) => MaterialPage(child: EnglishEntryalbino()),
  "/english-album": (_) => MaterialPage(child: EnglishEntryalbum()),
  "/english-alcohol": (_) => MaterialPage(child: EnglishEntryalcohol()),
  "/english-alcoholic": (_) => MaterialPage(child: EnglishEntryalcoholic()),
  "/english-alcoholism": (_) => MaterialPage(child: EnglishEntryalcoholism()),
  "/english-alcove": (_) => MaterialPage(child: EnglishEntryalcove()),
  "/english-ale": (_) => MaterialPage(child: EnglishEntryale()),
  "/english-alert": (_) => MaterialPage(child: EnglishEntryalert()),
  "/english-algae": (_) => MaterialPage(child: EnglishEntryalgae()),
  "/english-algebra": (_) => MaterialPage(child: EnglishEntryalgebra()),
  "/english-algorithm": (_) => MaterialPage(child: EnglishEntryalgorithm()),
  "/english-alias": (_) => MaterialPage(child: EnglishEntryalias()),
  "/english-alibi": (_) => MaterialPage(child: EnglishEntryalibi()),
  "/english-alien": (_) => MaterialPage(child: EnglishEntryalien()),
  "/english-alienate": (_) => MaterialPage(child: EnglishEntryalienate()),
  "/english-alienation": (_) => MaterialPage(child: EnglishEntryalienation()),
  "/english-alight": (_) => MaterialPage(child: EnglishEntryalight()),
  "/english-align": (_) => MaterialPage(child: EnglishEntryalign()),
  "/english-alignment": (_) => MaterialPage(child: EnglishEntryalignment()),
  "/english-alike": (_) => MaterialPage(child: EnglishEntryalike()),
  "/english-alimentary-canal": (_) =>
      MaterialPage(child: EnglishEntryalimentarycanal()),
  "/english-alimony": (_) => MaterialPage(child: EnglishEntryalimony()),
  "/english-alive": (_) => MaterialPage(child: EnglishEntryalive()),
  "/english-alkali": (_) => MaterialPage(child: EnglishEntryalkali()),
  "/english-all": (_) => MaterialPage(child: EnglishEntryall()),
  "/english-all-clear": (_) => MaterialPage(child: EnglishEntryallclear()),
  "/english-all-in": (_) => MaterialPage(child: EnglishEntryallin()),
  "/english-all-out": (_) => MaterialPage(child: EnglishEntryallout()),
  "/english-all-rounder": (_) => MaterialPage(child: EnglishEntryallrounder()),
  "/english-allah": (_) => MaterialPage(child: EnglishEntryallah()),
  "/english-allay": (_) => MaterialPage(child: EnglishEntryallay()),
  "/english-allegation": (_) => MaterialPage(child: EnglishEntryallegation()),
  "/english-allege": (_) => MaterialPage(child: EnglishEntryallege()),
  "/english-alleged": (_) => MaterialPage(child: EnglishEntryalleged()),
  "/english-allegedly": (_) => MaterialPage(child: EnglishEntryallegedly()),
  "/english-allegiance": (_) => MaterialPage(child: EnglishEntryallegiance()),
  "/english-allegory": (_) => MaterialPage(child: EnglishEntryallegory()),
  "/english-allegorical": (_) => MaterialPage(child: EnglishEntryallegorical()),
  "/english-alleluia": (_) => MaterialPage(child: EnglishEntryalleluia()),
  "/english-allergy": (_) => MaterialPage(child: EnglishEntryallergy()),
  "/english-allergic": (_) => MaterialPage(child: EnglishEntryallergic()),
  "/english-alleviate": (_) => MaterialPage(child: EnglishEntryalleviate()),
  "/english-alleviation": (_) => MaterialPage(child: EnglishEntryalleviation()),
  "/english-alley": (_) => MaterialPage(child: EnglishEntryalley()),
  "/english-alliance": (_) => MaterialPage(child: EnglishEntryalliance()),
  "/english-allied": (_) => MaterialPage(child: EnglishEntryallied()),
  "/english-alligator": (_) => MaterialPage(child: EnglishEntryalligator()),
  "/english-alliteration": (_) =>
      MaterialPage(child: EnglishEntryalliteration()),
  "/english-allocate": (_) => MaterialPage(child: EnglishEntryallocate()),
  "/english-allocation": (_) => MaterialPage(child: EnglishEntryallocation()),
  "/english-allot": (_) => MaterialPage(child: EnglishEntryallot()),
  "/english-allotment": (_) => MaterialPage(child: EnglishEntryallotment()),
  "/english-allow": (_) => MaterialPage(child: EnglishEntryallow()),
  "/english-allowable": (_) => MaterialPage(child: EnglishEntryallowable()),
  "/english-allowance": (_) => MaterialPage(child: EnglishEntryallowance()),
  "/english-alloy": (_) => MaterialPage(child: EnglishEntryalloy()),
  "/english-all-right": (_) => MaterialPage(child: EnglishEntryallright()),
  "/english-allude-to": (_) => MaterialPage(child: EnglishEntryalludeto()),
  "/english-allusion": (_) => MaterialPage(child: EnglishEntryallusion()),
  "/english-alluring": (_) => MaterialPage(child: EnglishEntryalluring()),
  "/english-ally": (_) => MaterialPage(child: EnglishEntryally()),
  "/english-almanac": (_) => MaterialPage(child: EnglishEntryalmanac()),
  "/english-almighty": (_) => MaterialPage(child: EnglishEntryalmighty()),
  "/english-almond": (_) => MaterialPage(child: EnglishEntryalmond()),
  "/english-almost": (_) => MaterialPage(child: EnglishEntryalmost()),
  "/english-alms": (_) => MaterialPage(child: EnglishEntryalms()),
  "/english-aloft": (_) => MaterialPage(child: EnglishEntryaloft()),
  "/english-alone": (_) => MaterialPage(child: EnglishEntryalone()),
  "/english-along": (_) => MaterialPage(child: EnglishEntryalong()),
  "/english-alongside": (_) => MaterialPage(child: EnglishEntryalongside()),
  "/english-aloof": (_) => MaterialPage(child: EnglishEntryaloof()),
  "/english-aloofness": (_) => MaterialPage(child: EnglishEntryaloofness()),
  "/english-aloud": (_) => MaterialPage(child: EnglishEntryaloud()),
  "/english-alphabet": (_) => MaterialPage(child: EnglishEntryalphabet()),
  "/english-alphabetical": (_) =>
      MaterialPage(child: EnglishEntryalphabetical()),
  "/english-alphabetically": (_) =>
      MaterialPage(child: EnglishEntryalphabetically()),
  "/english-already": (_) => MaterialPage(child: EnglishEntryalready()),
  "/english-alright": (_) => MaterialPage(child: EnglishEntryalright()),
  "/english-alsatian": (_) => MaterialPage(child: EnglishEntryalsatian()),
  "/english-also": (_) => MaterialPage(child: EnglishEntryalso()),
  "/english-altar": (_) => MaterialPage(child: EnglishEntryaltar()),
  "/english-alteration": (_) => MaterialPage(child: EnglishEntryalteration()),
  "/english-alternate": (_) => MaterialPage(child: EnglishEntryalternate()),
  "/english-alternately": (_) => MaterialPage(child: EnglishEntryalternately()),
  "/english-alternating-current": (_) =>
      MaterialPage(child: EnglishEntryalternatingcurrent()),
  "/english-alternation": (_) => MaterialPage(child: EnglishEntryalternation()),
  "/english-alternative": (_) => MaterialPage(child: EnglishEntryalternative()),
  "/english-alternatively": (_) =>
      MaterialPage(child: EnglishEntryalternatively()),
  "/english-alternator": (_) => MaterialPage(child: EnglishEntryalternator()),
  "/english-although": (_) => MaterialPage(child: EnglishEntryalthough()),
  "/english-altitude": (_) => MaterialPage(child: EnglishEntryaltitude()),
  "/english-alto": (_) => MaterialPage(child: EnglishEntryalto()),
  "/english-contralto": (_) => MaterialPage(child: EnglishEntrycontralto()),
  "/english-altogether": (_) => MaterialPage(child: EnglishEntryaltogether()),
  "/english-altruism": (_) => MaterialPage(child: EnglishEntryaltruism()),
  "/english-altruistic": (_) => MaterialPage(child: EnglishEntryaltruistic()),
  "/english-aluminium": (_) => MaterialPage(child: EnglishEntryaluminium()),
  "/english-always": (_) => MaterialPage(child: EnglishEntryalways()),
  "/english-alzheimers-disease": (_) =>
      MaterialPage(child: EnglishEntryalzheimersdisease()),
  "/english-am-radio": (_) => MaterialPage(child: EnglishEntryam()),
  "/english-am-time": (_) => MaterialPage(child: EnglishEntryamtwo()),
  // "/english-be": (_) => MaterialPage(child: EnglishEntrybe()),
  "/english-amalgamate": (_) => MaterialPage(child: EnglishEntryamalgamate()),
  "/english-amalgamation": (_) =>
      MaterialPage(child: EnglishEntryamalgamation()),
  "/english-amass": (_) => MaterialPage(child: EnglishEntryamass()),
  "/english-amateur": (_) => MaterialPage(child: EnglishEntryamateur()),
  "/english-amateurish": (_) => MaterialPage(child: EnglishEntryamateurish()),
  "/english-amaze": (_) => MaterialPage(child: EnglishEntryamaze()),
  "/english-amazement": (_) => MaterialPage(child: EnglishEntryamazement()),
  "/english-amazing": (_) => MaterialPage(child: EnglishEntryamazing()),
  "/english-ambassador": (_) => MaterialPage(child: EnglishEntryambassador()),
  "/english-amber": (_) => MaterialPage(child: EnglishEntryamber()),
  "/english-ambidextrous": (_) =>
      MaterialPage(child: EnglishEntryambidextrous()),
  "/english-ambiguous": (_) => MaterialPage(child: EnglishEntryambiguous()),
  "/english-ambiguity": (_) => MaterialPage(child: EnglishEntryambiguity()),
  "/english-ambition": (_) => MaterialPage(child: EnglishEntryambition()),
  "/english-ambitious": (_) => MaterialPage(child: EnglishEntryambitious()),
  "/english-ambivalent": (_) => MaterialPage(child: EnglishEntryambivalent()),
  "/english-ambivalence": (_) => MaterialPage(child: EnglishEntryambivalence()),
  "/english-amble": (_) => MaterialPage(child: EnglishEntryamble()),
  "/english-ambulance": (_) => MaterialPage(child: EnglishEntryambulance()),
  "/english-ambush": (_) => MaterialPage(child: EnglishEntryambush()),
  "/english-ameba": (_) => MaterialPage(child: EnglishEntryameba()),
  "/english-amen": (_) => MaterialPage(child: EnglishEntryamen()),
  "/english-amenable": (_) => MaterialPage(child: EnglishEntryamenable()),
  "/english-amend": (_) => MaterialPage(child: EnglishEntryamend()),
  "/english-amendment": (_) => MaterialPage(child: EnglishEntryamendment()),
  "/english-make-amends": (_) => MaterialPage(child: EnglishEntrymakeamends()),
  "/english-amenity": (_) => MaterialPage(child: EnglishEntryamenity()),
  "/english-american": (_) => MaterialPage(child: EnglishEntryamerican()),
  "/english-come-of-age": (_) => MaterialPage(child: EnglishEntrycomeofage()),
  "/english-far-afield": (_) => MaterialPage(child: EnglishEntryfarafield()),
  "/english-from-afar": (_) => MaterialPage(child: EnglishEntryafar()),
  "/english-under-age": (_) => MaterialPage(child: EnglishEntryunderage()),
  "/english-american-football": (_) =>
      MaterialPage(child: EnglishEntryamericanfootball()),
  "/english-amethyst": (_) => MaterialPage(child: EnglishEntryamethyst()),
  "/english-amiable": (_) => MaterialPage(child: EnglishEntryamiable()),
  "/english-amiably": (_) => MaterialPage(child: EnglishEntryamiably()),
  "/english-amicable": (_) => MaterialPage(child: EnglishEntryamicable()),
  "/english-amicably": (_) => MaterialPage(child: EnglishEntryamicably()),
  "/english-amid": (_) => MaterialPage(child: EnglishEntryamid()),
  "/english-amidst": (_) => MaterialPage(child: EnglishEntryamidst()),
  "/english-amiss": (_) => MaterialPage(child: EnglishEntryamiss()),
  "/english-not-come-go-amiss": (_) =>
      MaterialPage(child: EnglishEntrynotcomegoamiss()),
  "/english-take-something-amiss": (_) =>
      MaterialPage(child: EnglishEntrytakesomethingamiss()),
  "/english-ammonia": (_) => MaterialPage(child: EnglishEntryammonia()),
  "/english-ammunition": (_) => MaterialPage(child: EnglishEntryammunition()),
  "/english-amnesia": (_) => MaterialPage(child: EnglishEntryamnesia()),
  "/english-amnesty": (_) => MaterialPage(child: EnglishEntryamnesty()),
  "/english-amniocentesis": (_) =>
      MaterialPage(child: EnglishEntryamniocentesis()),
  "/english-amoeba": (_) => MaterialPage(child: EnglishEntryamoeba()),
  "/english-amok": (_) => MaterialPage(child: EnglishEntryamok()),
  "/english-among": (_) => MaterialPage(child: EnglishEntryamong()),
  "/english-amongst": (_) => MaterialPage(child: EnglishEntryamongst()),
  "/english-amorous": (_) => MaterialPage(child: EnglishEntryamorous()),
  "/english-amorously": (_) => MaterialPage(child: EnglishEntryamorously()),
  "/english-amount": (_) => MaterialPage(child: EnglishEntryamount()),
  "/english-amp": (_) => MaterialPage(child: EnglishEntryamp()),
  "/english-amp-up": (_) => MaterialPage(child: EnglishEntryampup()),
  "/english-ampersand": (_) => MaterialPage(child: EnglishEntryampersand()),
  "/english-amphetamine": (_) => MaterialPage(child: EnglishEntryamphetamine()),
  "/english-amphibian": (_) => MaterialPage(child: EnglishEntryamphibian()),
  "/english-amphibious": (_) => MaterialPage(child: EnglishEntryamphibious()),
  "/english-amphitheatre": (_) =>
      MaterialPage(child: EnglishEntryamphitheatre()),
  "/english-ample": (_) => MaterialPage(child: EnglishEntryample()),
  "/english-amply": (_) => MaterialPage(child: EnglishEntryamply()),
  "/english-amplify": (_) => MaterialPage(child: EnglishEntryamplify()),
  "/english-amplification": (_) =>
      MaterialPage(child: EnglishEntryamplification()),
  "/english-amplifier": (_) => MaterialPage(child: EnglishEntryamplifier()),
  "/english-amplitude": (_) => MaterialPage(child: EnglishEntryamplitude()),
  "/english-amputate": (_) => MaterialPage(child: EnglishEntryamputate()),
  "/english-amputation": (_) => MaterialPage(child: EnglishEntryamputation()),
  "/english-amulet": (_) => MaterialPage(child: EnglishEntryamulet()),
  "/english-amuse": (_) => MaterialPage(child: EnglishEntryamuse()),
  "/english-amusement": (_) => MaterialPage(child: EnglishEntryamusement()),
  "/english-amusing": (_) => MaterialPage(child: EnglishEntryamusing()),
  "/english-an": (_) => MaterialPage(child: EnglishEntryan()),
  "/english-anachronism": (_) => MaterialPage(child: EnglishEntryanachronism()),
  "/english-anaemia": (_) => MaterialPage(child: EnglishEntryanaemia()),
  "/english-anaemic": (_) => MaterialPage(child: EnglishEntryanaemic()),
  "/english-anaerobic": (_) => MaterialPage(child: EnglishEntryanaerobic()),
  "/english-anaesthesia": (_) => MaterialPage(child: EnglishEntryanaesthesia()),
  "/english-anaesthetic": (_) => MaterialPage(child: EnglishEntryanaesthetic()),
  "/english-anaesthetist": (_) =>
      MaterialPage(child: EnglishEntryanaesthetist()),
  "/english-anaesthetize": (_) =>
      MaterialPage(child: EnglishEntryanaesthetize()),
  "/english-anagram": (_) => MaterialPage(child: EnglishEntryanagram()),
  "/english-analgesic": (_) => MaterialPage(child: EnglishEntryanalgesic()),
  "/english-analogue": (_) => MaterialPage(child: EnglishEntryanalogue()),
  "/english-analog": (_) => MaterialPage(child: EnglishEntryanalog()),
  "/english-analogy": (_) => MaterialPage(child: EnglishEntryanalogy()),
  "/english-analogous": (_) => MaterialPage(child: EnglishEntryanalogous()),
  "/english-analyse": (_) => MaterialPage(child: EnglishEntryanalyse()),
  "/english-analysis": (_) => MaterialPage(child: EnglishEntryanalysis()),
  "/english-analyst": (_) => MaterialPage(child: EnglishEntryanalyst()),
  "/english-analytical": (_) => MaterialPage(child: EnglishEntryanalytical()),
  "/english-analytic": (_) => MaterialPage(child: EnglishEntryanalytic()),
  "/english-analyze": (_) => MaterialPage(child: EnglishEntryanalyze()),
  "/english-anarchy": (_) => MaterialPage(child: EnglishEntryanarchy()),
  "/english-anarchist": (_) => MaterialPage(child: EnglishEntryanarchist()),
  "/english-anatomy": (_) => MaterialPage(child: EnglishEntryanatomy()),
  "/english-anatomical": (_) => MaterialPage(child: EnglishEntryanatomical()),
  "/english-ancestor": (_) => MaterialPage(child: EnglishEntryancestor()),
  "/english-ancestral": (_) => MaterialPage(child: EnglishEntryancestral()),
  "/english-ancestry": (_) => MaterialPage(child: EnglishEntryancestry()),
  "/english-anchor": (_) => MaterialPage(child: EnglishEntryanchor()),
  "/english-anchorage": (_) => MaterialPage(child: EnglishEntryanchorage()),
  "/english-anchovy": (_) => MaterialPage(child: EnglishEntryanchovy()),
  "/english-ancient": (_) => MaterialPage(child: EnglishEntryancient()),
  "/english-ancillary": (_) => MaterialPage(child: EnglishEntryancillary()),
  "/english-and": (_) => MaterialPage(child: EnglishEntryand()),
  "/english-anecdote": (_) => MaterialPage(child: EnglishEntryanecdote()),
  "/english-anemia": (_) => MaterialPage(child: EnglishEntryanemia()),
  "/english-anemic": (_) => MaterialPage(child: EnglishEntryanemic()),
  "/english-anemone": (_) => MaterialPage(child: EnglishEntryanemone()),
  "/english-anesthesia": (_) => MaterialPage(child: EnglishEntryanesthesia()),
  "/english-anesthetic": (_) => MaterialPage(child: EnglishEntryanesthetic()),
  "/english-anesthetist": (_) => MaterialPage(child: EnglishEntryanesthetist()),
  "/english-anesthetize": (_) => MaterialPage(child: EnglishEntryanesthetize()),
  "/english-anew": (_) => MaterialPage(child: EnglishEntryanew()),
  "/english-angel": (_) => MaterialPage(child: EnglishEntryangel()),
  "/english-angelic": (_) => MaterialPage(child: EnglishEntryangelic()),
  "/english-anger": (_) => MaterialPage(child: EnglishEntryanger()),
  "/english-angina": (_) => MaterialPage(child: EnglishEntryangina()),
  "/english-angle": (_) => MaterialPage(child: EnglishEntryangle()),
  "/english-angler": (_) => MaterialPage(child: EnglishEntryangler()),
  "/english-angling": (_) => MaterialPage(child: EnglishEntryangling()),
  "/english-anglicize": (_) => MaterialPage(child: EnglishEntryanglicize()),
  "/english-anglo": (_) => MaterialPage(child: EnglishEntryanglo()),
  "/english-angry": (_) => MaterialPage(child: EnglishEntryangry()),
  "/english-angrily": (_) => MaterialPage(child: EnglishEntryangrily()),
  "/english-angst": (_) => MaterialPage(child: EnglishEntryangst()),
  "/english-anguish": (_) => MaterialPage(child: EnglishEntryanguish()),
  "/english-anguished": (_) => MaterialPage(child: EnglishEntryanguished()),
  "/english-angular": (_) => MaterialPage(child: EnglishEntryangular()),
  "/english-animal": (_) => MaterialPage(child: EnglishEntryanimal()),
  "/english-animate": (_) => MaterialPage(child: EnglishEntryanimate()),
  "/english-animated": (_) => MaterialPage(child: EnglishEntryanimated()),
  "/english-animation": (_) => MaterialPage(child: EnglishEntryanimation()),
  "/english-animatronics": (_) =>
      MaterialPage(child: EnglishEntryanimatronics()),
  "/english-animosity": (_) => MaterialPage(child: EnglishEntryanimosity()),
  "/english-ankle": (_) => MaterialPage(child: EnglishEntryankle()),
  "/english-annals": (_) => MaterialPage(child: EnglishEntryannals()),
  "/english-annex": (_) => MaterialPage(child: EnglishEntryannex()),
  "/english-annexation": (_) => MaterialPage(child: EnglishEntryannexation()),
  "/english-annexe": (_) => MaterialPage(child: EnglishEntryannexe()),
  "/english-annihilate": (_) => MaterialPage(child: EnglishEntryannihilate()),
  "/english-annihilation": (_) =>
      MaterialPage(child: EnglishEntryannihilation()),
  "/english-anniversary": (_) => MaterialPage(child: EnglishEntryanniversary()),
  "/english-annotate": (_) => MaterialPage(child: EnglishEntryannotate()),
  "/english-annotation": (_) => MaterialPage(child: EnglishEntryannotation()),
  "/english-announce": (_) => MaterialPage(child: EnglishEntryannounce()),
  "/english-announcement": (_) =>
      MaterialPage(child: EnglishEntryannouncement()),
  "/english-announcer": (_) => MaterialPage(child: EnglishEntryannouncer()),
  "/english-annoy": (_) => MaterialPage(child: EnglishEntryannoy()),
  "/english-annoyance": (_) => MaterialPage(child: EnglishEntryannoyance()),
  "/english-annual": (_) => MaterialPage(child: EnglishEntryannual()),
  "/english-annually": (_) => MaterialPage(child: EnglishEntryannually()),
  "/english-annuity": (_) => MaterialPage(child: EnglishEntryannuity()),
  "/english-annul": (_) => MaterialPage(child: EnglishEntryannul()),
  "/english-annulment": (_) => MaterialPage(child: EnglishEntryannulment()),
  "/english-anode": (_) => MaterialPage(child: EnglishEntryanode()),
  "/english-anoint": (_) => MaterialPage(child: EnglishEntryanoint()),
  "/english-anomaly": (_) => MaterialPage(child: EnglishEntryanomaly()),
  "/english-anomalous": (_) => MaterialPage(child: EnglishEntryanomalous()),
  "/english-anonymous": (_) => MaterialPage(child: EnglishEntryanonymous()),
  "/english-anonymity": (_) => MaterialPage(child: EnglishEntryanonymity()),
  "/english-anon-two": (_) => MaterialPage(child: EnglishEntryanontwo()),
  "/english-anon": (_) => MaterialPage(child: EnglishEntryanon()),
  "/english-anorak": (_) => MaterialPage(child: EnglishEntryanorak()),
  "/english-anorexia": (_) => MaterialPage(child: EnglishEntryanorexia()),
  "/english-anorexia-nervosa": (_) =>
      MaterialPage(child: EnglishEntryanorexianervosa()),
  "/english-anorexic": (_) => MaterialPage(child: EnglishEntryanorexic()),
  "/english-another": (_) => MaterialPage(child: EnglishEntryanother()),
  "/english-answer": (_) => MaterialPage(child: EnglishEntryanswer()),
  "/english-answerable": (_) => MaterialPage(child: EnglishEntryanswerable()),
  "/english-ant": (_) => MaterialPage(child: EnglishEntryant()),
  "/english-antagonism": (_) => MaterialPage(child: EnglishEntryantagonism()),
  "/english-antagonist": (_) => MaterialPage(child: EnglishEntryantagonist()),
  "/english-antagonistic": (_) =>
      MaterialPage(child: EnglishEntryantagonistic()),
  "/english-antagonize": (_) => MaterialPage(child: EnglishEntryantagonize()),
  "/english-antarctic": (_) => MaterialPage(child: EnglishEntryantarctic()),
  "/english-antarctic-circle": (_) =>
      MaterialPage(child: EnglishEntryantarcticcircle()),
  "/english-antecedent": (_) => MaterialPage(child: EnglishEntryantecedent()),
  "/english-antediluvian": (_) =>
      MaterialPage(child: EnglishEntryantediluvian()),
  "/english-antelope": (_) => MaterialPage(child: EnglishEntryantelope()),
  "/english-antenatal": (_) => MaterialPage(child: EnglishEntryantenatal()),
  "/english-antenna": (_) => MaterialPage(child: EnglishEntryantenna()),
  "/english-anthem": (_) => MaterialPage(child: EnglishEntryanthem()),
  "/english-anthology": (_) => MaterialPage(child: EnglishEntryanthology()),
  "/english-anthrax": (_) => MaterialPage(child: EnglishEntryanthrax()),
  "/english-anthropology": (_) =>
      MaterialPage(child: EnglishEntryanthropology()),
  "/english-anthropologist": (_) =>
      MaterialPage(child: EnglishEntryanthropologist()),
  "/english-anti": (_) => MaterialPage(child: EnglishEntryanti()),
  "/english-anti-two": (_) => MaterialPage(child: EnglishEntryantitwo()),
  "/english-antibiotic": (_) => MaterialPage(child: EnglishEntryantibiotic()),
  "/english-antibody": (_) => MaterialPage(child: EnglishEntryantibody()),
  "/english-anticipate": (_) => MaterialPage(child: EnglishEntryanticipate()),
  "/english-anticipation": (_) =>
      MaterialPage(child: EnglishEntryanticipation()),
  "/english-anticlimax": (_) => MaterialPage(child: EnglishEntryanticlimax()),
  "/english-anticlockwise": (_) =>
      MaterialPage(child: EnglishEntryanticlockwise()),
  "/english-antic": (_) => MaterialPage(child: EnglishEntryantic()),
  "/english-anticyclone": (_) => MaterialPage(child: EnglishEntryanticyclone()),
  "/english-antidepressant": (_) =>
      MaterialPage(child: EnglishEntryantidepressant()),
  "/english-antidote": (_) => MaterialPage(child: EnglishEntryantidote()),
  "/english-antifreeze": (_) => MaterialPage(child: EnglishEntryantifreeze()),
  "/english-antihistamine": (_) =>
      MaterialPage(child: EnglishEntryantihistamine()),
  "/english-antiperspirant": (_) =>
      MaterialPage(child: EnglishEntryantiperspirant()),
  "/english-antiquated": (_) => MaterialPage(child: EnglishEntryantiquated()),
  "/english-antique": (_) => MaterialPage(child: EnglishEntryantique()),
  "/english-antiquity": (_) => MaterialPage(child: EnglishEntryantiquity()),
  "/english-antiretroviral": (_) =>
      MaterialPage(child: EnglishEntryantiretroviral()),
  "/english-antiseptic": (_) => MaterialPage(child: EnglishEntryantiseptic()),
  "/english-antisocial": (_) => MaterialPage(child: EnglishEntryantisocial()),
  "/english-antithesis": (_) => MaterialPage(child: EnglishEntryantithesis()),
  "/english-antler": (_) => MaterialPage(child: EnglishEntryantler()),
  "/english-antonym": (_) => MaterialPage(child: EnglishEntryantonym()),
  "/english-anus": (_) => MaterialPage(child: EnglishEntryanus()),
  "/english-anvil": (_) => MaterialPage(child: EnglishEntryanvil()),
  "/english-anxiety": (_) => MaterialPage(child: EnglishEntryanxiety()),
  "/english-anxious": (_) => MaterialPage(child: EnglishEntryanxious()),
  "/english-anxiously": (_) => MaterialPage(child: EnglishEntryanxiously()),
  "/english-any": (_) => MaterialPage(child: EnglishEntryany()),
  "/english-anybody": (_) => MaterialPage(child: EnglishEntryanybody()),
  "/english-anyhow": (_) => MaterialPage(child: EnglishEntryanyhow()),
  "/english-anyway": (_) => MaterialPage(child: EnglishEntryanyway()),
  "/english-anyone": (_) => MaterialPage(child: EnglishEntryanyone()),
  "/english-anywhere": (_) => MaterialPage(child: EnglishEntryanywhere()),
  "/english-anyplace": (_) => MaterialPage(child: EnglishEntryanyplace()),
  "/english-anything": (_) => MaterialPage(child: EnglishEntryanything()),
  "/english-aorta": (_) => MaterialPage(child: EnglishEntryaorta()),
  "/english-apart": (_) => MaterialPage(child: EnglishEntryapart()),
  "/english-apart-from": (_) => MaterialPage(child: EnglishEntryapartfrom()),
  "/english-apartheid": (_) => MaterialPage(child: EnglishEntryapartheid()),
  "/english-apartment": (_) => MaterialPage(child: EnglishEntryapartment()),
  "/english-apathy": (_) => MaterialPage(child: EnglishEntryapathy()),
  "/english-apathetic": (_) => MaterialPage(child: EnglishEntryapathetic()),
  "/english-ape": (_) => MaterialPage(child: EnglishEntryape()),
  "/english-aperitif": (_) => MaterialPage(child: EnglishEntryaperitif()),
  "/english-aperture": (_) => MaterialPage(child: EnglishEntryaperture()),
  "/english-apex": (_) => MaterialPage(child: EnglishEntryapex()),
  "/english-aphid": (_) => MaterialPage(child: EnglishEntryaphid()),
  "/english-apiece": (_) => MaterialPage(child: EnglishEntryapiece()),
  "/english-aplomb": (_) => MaterialPage(child: EnglishEntryaplomb()),
  "/english-apologetic": (_) => MaterialPage(child: EnglishEntryapologetic()),
  "/english-apologetically": (_) =>
      MaterialPage(child: EnglishEntryapologetically()),
  "/english-apologize": (_) => MaterialPage(child: EnglishEntryapologize()),
  "/english-apology": (_) => MaterialPage(child: EnglishEntryapology()),
  "/english-apostle": (_) => MaterialPage(child: EnglishEntryapostle()),
  "/english-apostrophe": (_) => MaterialPage(child: EnglishEntryapostrophe()),
  "/english-appal": (_) => MaterialPage(child: EnglishEntryappal()),
  "/english-appalling": (_) => MaterialPage(child: EnglishEntryappalling()),
  "/english-apparatus": (_) => MaterialPage(child: EnglishEntryapparatus()),
  "/english-apparent": (_) => MaterialPage(child: EnglishEntryapparent()),
  "/english-apparently": (_) => MaterialPage(child: EnglishEntryapparently()),
  "/english-apparition": (_) => MaterialPage(child: EnglishEntryapparition()),
  "/english-appeal": (_) => MaterialPage(child: EnglishEntryappeal()),
  "/english-appealing": (_) => MaterialPage(child: EnglishEntryappealing()),
  "/english-appear": (_) => MaterialPage(child: EnglishEntryappear()),
  "/english-appearance": (_) => MaterialPage(child: EnglishEntryappearance()),
  "/english-appease": (_) => MaterialPage(child: EnglishEntryappease()),
  "/english-appeasement": (_) => MaterialPage(child: EnglishEntryappeasement()),
  "/english-append": (_) => MaterialPage(child: EnglishEntryappend()),
  "/english-appendage": (_) => MaterialPage(child: EnglishEntryappendage()),
  "/english-appendicitis": (_) =>
      MaterialPage(child: EnglishEntryappendicitis()),
  "/english-appendix": (_) => MaterialPage(child: EnglishEntryappendix()),
  "/english-appetite": (_) => MaterialPage(child: EnglishEntryappetite()),
  "/english-appetizer": (_) => MaterialPage(child: EnglishEntryappetizer()),
  "/english-appetizing": (_) => MaterialPage(child: EnglishEntryappetizing()),
  "/english-applaud": (_) => MaterialPage(child: EnglishEntryapplaud()),
  "/english-applause": (_) => MaterialPage(child: EnglishEntryapplause()),
  "/english-apple": (_) => MaterialPage(child: EnglishEntryapple()),
  "/english-applet": (_) => MaterialPage(child: EnglishEntryapplet()),
  "/english-appliance": (_) => MaterialPage(child: EnglishEntryappliance()),
  "/english-applicable": (_) => MaterialPage(child: EnglishEntryapplicable()),
  "/english-applicant": (_) => MaterialPage(child: EnglishEntryapplicant()),
  "/english-application": (_) => MaterialPage(child: EnglishEntryapplication()),
  "/english-apply": (_) => MaterialPage(child: EnglishEntryapply()),
  "/english-applied": (_) => MaterialPage(child: EnglishEntryapplied()),
  "/english-appoint": (_) => MaterialPage(child: EnglishEntryappoint()),
  "/english-appointment": (_) => MaterialPage(child: EnglishEntryappointment()),
  "/english-appraise": (_) => MaterialPage(child: EnglishEntryappraise()),
  "/english-appraisal": (_) => MaterialPage(child: EnglishEntryappraisal()),
  "/english-appreciable": (_) => MaterialPage(child: EnglishEntryappreciable()),
  "/english-appreciably": (_) => MaterialPage(child: EnglishEntryappreciably()),
  "/english-appreciate": (_) => MaterialPage(child: EnglishEntryappreciate()),
  "/english-appreciation": (_) =>
      MaterialPage(child: EnglishEntryappreciation()),
  "/english-appreciative": (_) =>
      MaterialPage(child: EnglishEntryappreciative()),
  "/english-apprehend": (_) => MaterialPage(child: EnglishEntryapprehend()),
  "/english-apprehension": (_) =>
      MaterialPage(child: EnglishEntryapprehension()),
  "/english-apprehensive": (_) =>
      MaterialPage(child: EnglishEntryapprehensive()),
  "/english-apprentice": (_) => MaterialPage(child: EnglishEntryapprentice()),
  "/english-apprenticeship": (_) =>
      MaterialPage(child: EnglishEntryapprenticeship()),
  "/english-approach": (_) => MaterialPage(child: EnglishEntryapproach()),
  "/english-approachable": (_) =>
      MaterialPage(child: EnglishEntryapproachable()),
  "/english-appropriate": (_) => MaterialPage(child: EnglishEntryappropriate()),
  "/english-appropriately": (_) =>
      MaterialPage(child: EnglishEntryappropriately()),
  "/english-appropriation": (_) =>
      MaterialPage(child: EnglishEntryappropriation()),
  "/english-approval": (_) => MaterialPage(child: EnglishEntryapproval()),
  "/english-approve": (_) => MaterialPage(child: EnglishEntryapprove()),
  "/english-approvingly": (_) => MaterialPage(child: EnglishEntryapprovingly()),
  "/english-approximate": (_) => MaterialPage(child: EnglishEntryapproximate()),
  "/english-approximately": (_) =>
      MaterialPage(child: EnglishEntryapproximately()),
  "/english-approximation": (_) =>
      MaterialPage(child: EnglishEntryapproximation()),
  "/english-apricot": (_) => MaterialPage(child: EnglishEntryapricot()),
  "/english-april": (_) => MaterialPage(child: EnglishEntryapril()),
  "/english-apron": (_) => MaterialPage(child: EnglishEntryapron()),
  "/english-apt": (_) => MaterialPage(child: EnglishEntryapt()),
  "/english-aptly": (_) => MaterialPage(child: EnglishEntryaptly()),
  "/english-aptness": (_) => MaterialPage(child: EnglishEntryaptness()),
  "/english-aptitude": (_) => MaterialPage(child: EnglishEntryaptitude()),
  "/english-aqualung": (_) => MaterialPage(child: EnglishEntryaqualung()),
  "/english-aquamarine": (_) => MaterialPage(child: EnglishEntryaquamarine()),
  "/english-aquarium": (_) => MaterialPage(child: EnglishEntryaquarium()),
  "/english-aquatic": (_) => MaterialPage(child: EnglishEntryaquatic()),
  "/english-aqueduct": (_) => MaterialPage(child: EnglishEntryaqueduct()),
  "/english-Arabic": (_) => MaterialPage(child: EnglishEntryarabic()),
  "/english-Arabic numeral": (_) =>
      MaterialPage(child: EnglishEntryarabicnumeral()),
  "/english-arable": (_) => MaterialPage(child: EnglishEntryarable()),
  "/english-arbitrage": (_) => MaterialPage(child: EnglishEntryarbitrage()),
  "/english-arbitrageur": (_) => MaterialPage(child: EnglishEntryarbitrageur()),
  "/english-arbitrary": (_) => MaterialPage(child: EnglishEntryarbitrary()),
  "/english-arbitrarily": (_) => MaterialPage(child: EnglishEntryarbitrarily()),
  "/english-arbitrate": (_) => MaterialPage(child: EnglishEntryarbitrate()),
  "/english-arbitration": (_) => MaterialPage(child: EnglishEntryarbitration()),
  "/english-arbitrator": (_) => MaterialPage(child: EnglishEntryarbitrator()),
  "/english-arc": (_) => MaterialPage(child: EnglishEntryarc()),
  "/english-arcade": (_) => MaterialPage(child: EnglishEntryarcade()),
  "/english-arch": (_) => MaterialPage(child: EnglishEntryarch()),
  "/english-arch-two": (_) => MaterialPage(child: EnglishEntryarchtwo()),
  "/english-archaeology": (_) => MaterialPage(child: EnglishEntryarchaeology()),
  "/english-archaeological": (_) =>
      MaterialPage(child: EnglishEntryarchaeological()),
  "/english-archaeologist": (_) =>
      MaterialPage(child: EnglishEntryarchaeologist()),
  "/english-archaic": (_) => MaterialPage(child: EnglishEntryarchaic()),
  "/english-archbishop": (_) => MaterialPage(child: EnglishEntryarchbishop()),
  "/english-archer": (_) => MaterialPage(child: EnglishEntryarcher()),
  "/english-archery": (_) => MaterialPage(child: EnglishEntryarchery()),
  "/english-archipelago": (_) => MaterialPage(child: EnglishEntryarchipelago()),
  "/english-architect": (_) => MaterialPage(child: EnglishEntryarchitect()),
  "/english-architecture": (_) =>
      MaterialPage(child: EnglishEntryarchitecture()),
  "/english-architectural": (_) =>
      MaterialPage(child: EnglishEntryarchitectural()),
  "/english-archive": (_) => MaterialPage(child: EnglishEntryarchive()),
  "/english-arctic": (_) => MaterialPage(child: EnglishEntryarctic()),
  "/english-arctic-circle": (_) =>
      MaterialPage(child: EnglishEntryarcticcircle()),
  "/english-ardent": (_) => MaterialPage(child: EnglishEntryardent()),
  "/english-ardently": (_) => MaterialPage(child: EnglishEntryardently()),
  "/english-arduous": (_) => MaterialPage(child: EnglishEntryarduous()),
  "/english-arduously": (_) => MaterialPage(child: EnglishEntryarduously()),
  "/english-area": (_) => MaterialPage(child: EnglishEntryarea()),
  "/english-arena": (_) => MaterialPage(child: EnglishEntryarena()),
  "/english-argue": (_) => MaterialPage(child: EnglishEntryargue()),
  "/english-arguable": (_) => MaterialPage(child: EnglishEntryarguable()),
  "/english-arguably": (_) => MaterialPage(child: EnglishEntryarguably()),
  "/english-argument": (_) => MaterialPage(child: EnglishEntryargument()),
  "/english-argumentative": (_) =>
      MaterialPage(child: EnglishEntryargumentative()),
  "/english-aria": (_) => MaterialPage(child: EnglishEntryaria()),
  "/english-arid": (_) => MaterialPage(child: EnglishEntryarid()),
  "/english-arise": (_) => MaterialPage(child: EnglishEntryarise()),
  "/english-aristocracy": (_) => MaterialPage(child: EnglishEntryaristocracy()),
  "/english-aristocrat": (_) => MaterialPage(child: EnglishEntryaristocrat()),
  "/english-aristocratic": (_) =>
      MaterialPage(child: EnglishEntryaristocratic()),
  "/english-arithmetic": (_) => MaterialPage(child: EnglishEntryarithmetic()),
  "/english-arithmetical": (_) =>
      MaterialPage(child: EnglishEntryarithmetical()),
  "/english-ark": (_) => MaterialPage(child: EnglishEntryark()),
  "/english-arm": (_) => MaterialPage(child: EnglishEntryarm()),
  "/english-armed-forces": (_) =>
      MaterialPage(child: EnglishEntryarmedforces()),
  "/english-armchair": (_) => MaterialPage(child: EnglishEntryarmchair()),
  "/english-armpit": (_) => MaterialPage(child: EnglishEntryarmpit()),
  "/english-armada": (_) => MaterialPage(child: EnglishEntryarmada()),
  "/english-armadillo": (_) => MaterialPage(child: EnglishEntryarmadillo()),
  "/english-armament": (_) => MaterialPage(child: EnglishEntryarmament()),
  "/english-armistice": (_) => MaterialPage(child: EnglishEntryarmistice()),
  "/english-armour": (_) => MaterialPage(child: EnglishEntryarmour()),
  "/english-armoured": (_) => MaterialPage(child: EnglishEntryarmoured()),
  "/english-armoury": (_) => MaterialPage(child: EnglishEntryarmoury()),
  "/english-arms": (_) => MaterialPage(child: EnglishEntryarms()),
  "/english-army": (_) => MaterialPage(child: EnglishEntryarmy()),
  "/english-arnica": (_) => MaterialPage(child: EnglishEntryarnica()),
  "/english-aroma": (_) => MaterialPage(child: EnglishEntryaroma()),
  "/english-aromatic": (_) => MaterialPage(child: EnglishEntryaromatic()),
  "/english-aromatherapy": (_) =>
      MaterialPage(child: EnglishEntryaromatherapy()),
  "/english-aromatherapist": (_) =>
      MaterialPage(child: EnglishEntryaromatherapist()),
  "/english-around": (_) => MaterialPage(child: EnglishEntryaround()),
  "/english-arouse": (_) => MaterialPage(child: EnglishEntryarouse()),
  "/english-arraign": (_) => MaterialPage(child: EnglishEntryarraign()),
  "/english-arraignment": (_) => MaterialPage(child: EnglishEntryarraignment()),
  "/english-arrange": (_) => MaterialPage(child: EnglishEntryarrange()),
  "/english-arrangement": (_) => MaterialPage(child: EnglishEntryarrangement()),
  "/english-array": (_) => MaterialPage(child: EnglishEntryarray()),
  "/english-arrears": (_) => MaterialPage(child: EnglishEntryarrears()),
  "/english-arrest": (_) => MaterialPage(child: EnglishEntryarrest()),
  "/english-arrival": (_) => MaterialPage(child: EnglishEntryarrival()),
  "/english-arrive": (_) => MaterialPage(child: EnglishEntryarrive()),
  "/english-arrogant": (_) => MaterialPage(child: EnglishEntryarrogant()),
  "/english-arrogance": (_) => MaterialPage(child: EnglishEntryarrogance()),
  "/english-arrogantly": (_) => MaterialPage(child: EnglishEntryarrogantly()),
  "/english-arrow": (_) => MaterialPage(child: EnglishEntryarrow()),
  "/english-arse": (_) => MaterialPage(child: EnglishEntryarse()),
  "/english-arsenal": (_) => MaterialPage(child: EnglishEntryarsenal()),
  "/english-arsenic": (_) => MaterialPage(child: EnglishEntryarsenic()),
  "/english-arson": (_) => MaterialPage(child: EnglishEntryarson()),
  "/english-art": (_) => MaterialPage(child: EnglishEntryart()),
  "/english-art gallery": (_) => MaterialPage(child: EnglishEntryartgallery()),
  "/english-artefact": (_) => MaterialPage(child: EnglishEntryartefact()),
  "/english-artery": (_) => MaterialPage(child: EnglishEntryartery()),
  "/english-arterial": (_) => MaterialPage(child: EnglishEntryarterial()),
  "/english-artful": (_) => MaterialPage(child: EnglishEntryartful()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM_DOPSUM_DOPSUM_DOPSUM_DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
});
