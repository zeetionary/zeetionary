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
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_DOPSUM.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_DOPSUM.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_DOPSUM.dart';
// import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_al/en_entry_DOPSUM.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_f/letters_fa/en_entry_far_afield.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_f/letters_fr/en_entry_from_afar.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_u/letters_un/en_entry_under_age.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginScreen()),
});

final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HomeScreen()),
  // English dictionary starts here
  // English dictionary starts here
  // English dictionary starts here
  // English dictionary starts here
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
  '/english-aboard': (_) => MaterialPage(child: EnglishEntryaboard()),
  '/english-abode': (_) => MaterialPage(child: EnglishEntryabode()),
  '/english-abolish': (_) => MaterialPage(child: EnglishEntryabolish()),
  '/english-abolition': (_) => MaterialPage(child: EnglishEntryabolition()),
  '/english-abominable': (_) => MaterialPage(child: EnglishEntryabominable()),
  '/english-abominably': (_) => MaterialPage(child: EnglishEntryabominably()),
  '/english-aboriginal': (_) => MaterialPage(child: EnglishEntryaboriginal()),
  '/english-aborigine': (_) => MaterialPage(child: EnglishEntryaborigine()),
  '/english-abort': (_) => MaterialPage(child: EnglishEntryabort()),
  '/english-abortion': (_) => MaterialPage(child: EnglishEntryabortion()),
  '/english-abortive': (_) => MaterialPage(child: EnglishEntryabortive()),
  '/english-abound': (_) => MaterialPage(child: EnglishEntryabound()),
  '/english-abound-in': (_) => MaterialPage(child: EnglishEntryaboundin()),
  '/english-abound-with': (_) => MaterialPage(child: EnglishEntryaboundwith()),
  '/english-about': (_) => MaterialPage(child: EnglishEntryabout()),
  '/english-about-turn': (_) => MaterialPage(child: EnglishEntryaboutturn()),
  '/english-above': (_) => MaterialPage(child: EnglishEntryabove()),
  '/english-the-above': (_) => MaterialPage(child: EnglishEntrytheabove()),
  '/english-above-all': (_) => MaterialPage(child: EnglishEntryaboveall()),
  '/english-above-below-the-fold': (_) =>
      MaterialPage(child: EnglishEntryabovebelowthefold()),
  '/english-above-beyond-suspicion': (_) =>
      MaterialPage(child: EnglishEntryabovebeyondsuspicion()),
  '/english-above-yourself': (_) =>
      MaterialPage(child: EnglishEntryaboveyourself()),
  '/english-abrasion': (_) => MaterialPage(child: EnglishEntryabrasion()),
  '/english-abrasive': (_) => MaterialPage(child: EnglishEntryabrasive()),
  '/english-abreast': (_) => MaterialPage(child: EnglishEntryabreast()),
  '/english-abridge': (_) => MaterialPage(child: EnglishEntryabridge()),
  '/english-abridgement': (_) => MaterialPage(child: EnglishEntryabridgement()),
  '/english-abroad': (_) => MaterialPage(child: EnglishEntryabroad()),
  '/english-abrupt': (_) => MaterialPage(child: EnglishEntryabrupt()),
  '/english-abruptly': (_) => MaterialPage(child: EnglishEntryabruptly()),
  '/english-abruptness': (_) => MaterialPage(child: EnglishEntryabruptness()),
  '/english-abscess': (_) => MaterialPage(child: EnglishEntryabscess()),
  '/english-abscond': (_) => MaterialPage(child: EnglishEntryabscond()),
  '/english-abseil': (_) => MaterialPage(child: EnglishEntryabseil()),
  '/english-absence': (_) => MaterialPage(child: EnglishEntryabsence()),
  '/english-absent': (_) => MaterialPage(child: EnglishEntryabsent()),
  '/english-absentee': (_) => MaterialPage(child: EnglishEntryabsentee()),
  '/english-absent-minded': (_) =>
      MaterialPage(child: EnglishEntryabsentminded()),
  '/english-absolute': (_) => MaterialPage(child: EnglishEntryabsolute()),
  '/english-absolutely': (_) => MaterialPage(child: EnglishEntryabsolutely()),
  '/english-absolute-majority': (_) =>
      MaterialPage(child: EnglishEntryabsolutemajority()),
  '/english-absolute-zero': (_) =>
      MaterialPage(child: EnglishEntryabsolutezero()),
  '/english-absolve': (_) => MaterialPage(child: EnglishEntryabsolve()),
  '/english-absorb': (_) => MaterialPage(child: EnglishEntryabsorb()),
  '/english-absorbent': (_) => MaterialPage(child: EnglishEntryabsorbent()),
  '/english-absorption': (_) => MaterialPage(child: EnglishEntryabsorption()),
  '/english-abstain': (_) => MaterialPage(child: EnglishEntryabstain()),
  '/english-abstemious': (_) => MaterialPage(child: EnglishEntryabstemious()),
  '/english-abstention': (_) => MaterialPage(child: EnglishEntryabstention()),
  '/english-abstinence': (_) => MaterialPage(child: EnglishEntryabstinence()),
  '/english-abstract': (_) => MaterialPage(child: EnglishEntryabstract()),
  '/english-absurd': (_) => MaterialPage(child: EnglishEntryabsurd()),
  '/english-absurdity': (_) => MaterialPage(child: EnglishEntryabsurdity()),
  '/english-absurdly': (_) => MaterialPage(child: EnglishEntryabsurdly()),
  '/english-abundance': (_) => MaterialPage(child: EnglishEntryabundance()),
  '/english-abundant': (_) => MaterialPage(child: EnglishEntryabundant()),
  '/english-abundantly': (_) => MaterialPage(child: EnglishEntryabundantly()),
  '/english-abuse': (_) => MaterialPage(child: EnglishEntryabuse()),
  '/english-abusive': (_) => MaterialPage(child: EnglishEntryabusive()),
  '/english-abysmal': (_) => MaterialPage(child: EnglishEntryabysmal()),
  '/english-abysmally': (_) => MaterialPage(child: EnglishEntryabysmally()),
  '/english-abyss': (_) => MaterialPage(child: EnglishEntryabyss()),
  '/english-academic': (_) => MaterialPage(child: EnglishEntryacademic()),
  '/english-academically': (_) =>
      MaterialPage(child: EnglishEntryacademically()),
  '/english-academy': (_) => MaterialPage(child: EnglishEntryacademy()),
  '/english-accede': (_) => MaterialPage(child: EnglishEntryaccede()),
  '/english-accelerate': (_) => MaterialPage(child: EnglishEntryaccelerate()),
  '/english-acceleration': (_) =>
      MaterialPage(child: EnglishEntryacceleration()),
  '/english-accelerator': (_) => MaterialPage(child: EnglishEntryaccelerator()),
  '/english-accent': (_) => MaterialPage(child: EnglishEntryaccent()),
  '/english-accentuate': (_) => MaterialPage(child: EnglishEntryaccentuate()),
  '/english-accept': (_) => MaterialPage(child: EnglishEntryaccept()),
  '/english-acceptable': (_) => MaterialPage(child: EnglishEntryacceptable()),
  '/english-acceptance': (_) => MaterialPage(child: EnglishEntryacceptance()),
  '/english-access': (_) => MaterialPage(child: EnglishEntryaccess()),
  '/english-accessible': (_) => MaterialPage(child: EnglishEntryaccessible()),
  '/english-accession': (_) => MaterialPage(child: EnglishEntryaccession()),
  '/english-accessory': (_) => MaterialPage(child: EnglishEntryaccessory()),
  '/english-accident': (_) => MaterialPage(child: EnglishEntryaccident()),
  '/english-accidental': (_) => MaterialPage(child: EnglishEntryaccidental()),
  '/english-accidentally': (_) =>
      MaterialPage(child: EnglishEntryaccidentally()),
  '/english-acclaim': (_) => MaterialPage(child: EnglishEntryacclaim()),
  '/english-acclimatize': (_) => MaterialPage(child: EnglishEntryacclimatize()),
  '/english-accolade': (_) => MaterialPage(child: EnglishEntryaccolade()),
  '/english-accommodate': (_) => MaterialPage(child: EnglishEntryaccommodate()),
  '/english-accommodating': (_) =>
      MaterialPage(child: EnglishEntryaccommodating()),
  '/english-accommodation': (_) =>
      MaterialPage(child: EnglishEntryaccommodation()),
  '/english-accompaniment': (_) =>
      MaterialPage(child: EnglishEntryaccompaniment()),
  '/english-accompanist': (_) => MaterialPage(child: EnglishEntryaccompanist()),
  '/english-accompany': (_) => MaterialPage(child: EnglishEntryaccompany()),
  '/english-accomplice': (_) => MaterialPage(child: EnglishEntryaccomplice()),
  '/english-accomplish': (_) => MaterialPage(child: EnglishEntryaccomplish()),
  '/english-accomplished': (_) =>
      MaterialPage(child: EnglishEntryaccomplished()),
  '/english-accomplishment': (_) =>
      MaterialPage(child: EnglishEntryaccomplishment()),
  '/english-accord': (_) => MaterialPage(child: EnglishEntryaccord()),
  '/english-accordingly': (_) => MaterialPage(child: EnglishEntryaccordingly()),
  '/english-according-to': (_) =>
      MaterialPage(child: EnglishEntryaccordingto()),
  '/english-accordion': (_) => MaterialPage(child: EnglishEntryaccordion()),
  '/english-accost': (_) => MaterialPage(child: EnglishEntryaccost()),
  '/english-account': (_) => MaterialPage(child: EnglishEntryaccount()),
  '/english-account-for': (_) => MaterialPage(child: EnglishEntryaccountfor()),
  '/english-accountable': (_) => MaterialPage(child: EnglishEntryaccountable()),
  '/english-accountancy': (_) => MaterialPage(child: EnglishEntryaccountancy()),
  '/english-accountant': (_) => MaterialPage(child: EnglishEntryaccountant()),
  '/english-accredited': (_) => MaterialPage(child: EnglishEntryaccredited()),
  '/english-accreditation': (_) =>
      MaterialPage(child: EnglishEntryaccreditation()),
  '/english-accrue': (_) => MaterialPage(child: EnglishEntryaccrue()),
  '/english-accumulate': (_) => MaterialPage(child: EnglishEntryaccumulate()),
  '/english-accumulation': (_) =>
      MaterialPage(child: EnglishEntryaccumulation()),
  '/english-accuracy': (_) => MaterialPage(child: EnglishEntryaccuracy()),
  '/english-accurate': (_) => MaterialPage(child: EnglishEntryaccurate()),
  '/english-accurately': (_) => MaterialPage(child: EnglishEntryaccurately()),
  '/english-accusation': (_) => MaterialPage(child: EnglishEntryaccusation()),
  '/english-accuse': (_) => MaterialPage(child: EnglishEntryaccuse()),
  '/english-the-accused': (_) => MaterialPage(child: EnglishEntrytheaccused()),
  '/english-accuser': (_) => MaterialPage(child: EnglishEntryaccuser()),
  '/english-accustom-to': (_) => MaterialPage(child: EnglishEntryaccustomto()),
  '/english-accustomed': (_) => MaterialPage(child: EnglishEntryaccustomed()),
  '/english-ace': (_) => MaterialPage(child: EnglishEntryace()),
  '/english-ache': (_) => MaterialPage(child: EnglishEntryache()),
  '/english-achieve': (_) => MaterialPage(child: EnglishEntryachieve()),
  '/english-achievement': (_) => MaterialPage(child: EnglishEntryachievement()),
  '/english-achilles-heel': (_) =>
      MaterialPage(child: EnglishEntryachillesheel()),
  '/english-acid': (_) => MaterialPage(child: EnglishEntryacid()),
  '/english-acid-rain': (_) => MaterialPage(child: EnglishEntryacidrain()),
  '/english-acid-test': (_) => MaterialPage(child: EnglishEntryacidtest()),
  '/english-acknowledge': (_) => MaterialPage(child: EnglishEntryacknowledge()),
  '/english-acknowledgement': (_) =>
      MaterialPage(child: EnglishEntryacknowledgement()),
  '/english-acne': (_) => MaterialPage(child: EnglishEntryacne()),
  '/english-acorn': (_) => MaterialPage(child: EnglishEntryacorn()),
  '/english-acoustic': (_) => MaterialPage(child: EnglishEntryacoustic()),
  '/english-acoustics': (_) => MaterialPage(child: EnglishEntryacoustics()),
  '/english-acquaint': (_) => MaterialPage(child: EnglishEntryacquaint()),
  '/english-acquaintance': (_) =>
      MaterialPage(child: EnglishEntryacquaintance()),
  '/english-acquainted': (_) => MaterialPage(child: EnglishEntryacquainted()),
  '/english-acquiesce': (_) => MaterialPage(child: EnglishEntryacquiesce()),
  '/english-acquiescence': (_) =>
      MaterialPage(child: EnglishEntryacquiescence()),
  '/english-acquire': (_) => MaterialPage(child: EnglishEntryacquire()),
  '/english-acquisition': (_) => MaterialPage(child: EnglishEntryacquisition()),
  '/english-acquisitive': (_) => MaterialPage(child: EnglishEntryacquisitive()),
  '/english-acquit': (_) => MaterialPage(child: EnglishEntryacquit()),
  '/english-acquittal': (_) => MaterialPage(child: EnglishEntryacquittal()),
  '/english-acre': (_) => MaterialPage(child: EnglishEntryacre()),
  '/english-acreage': (_) => MaterialPage(child: EnglishEntryacreage()),
  '/english-acrid': (_) => MaterialPage(child: EnglishEntryacrid()),
  '/english-acrimonious': (_) => MaterialPage(child: EnglishEntryacrimonious()),
  '/english-acrimony': (_) => MaterialPage(child: EnglishEntryacrimony()),
  '/english-acrobat': (_) => MaterialPage(child: EnglishEntryacrobat()),
  '/english-acrobatic': (_) => MaterialPage(child: EnglishEntryacrobatic()),
  '/english-acrobatics': (_) => MaterialPage(child: EnglishEntryacrobatics()),
  '/english-acronym': (_) => MaterialPage(child: EnglishEntryacronym()),
  '/english-across': (_) => MaterialPage(child: EnglishEntryacross()),
  '/english-acrylic': (_) => MaterialPage(child: EnglishEntryacrylic()),
  '/english-act': (_) => MaterialPage(child: EnglishEntryact()),
  '/english-action': (_) => MaterialPage(child: EnglishEntryaction()),
  '/english-activate': (_) => MaterialPage(child: EnglishEntryactivate()),
  '/english-active': (_) => MaterialPage(child: EnglishEntryactive()),
  '/english-actively': (_) => MaterialPage(child: EnglishEntryactively()),
  '/english-activist': (_) => MaterialPage(child: EnglishEntryactivist()),
  '/english-activity': (_) => MaterialPage(child: EnglishEntryactivity()),
  '/english-actor': (_) => MaterialPage(child: EnglishEntryactor()),
  '/english-actress': (_) => MaterialPage(child: EnglishEntryactress()),
  '/english-actual': (_) => MaterialPage(child: EnglishEntryactual()),
  '/english-actually': (_) => MaterialPage(child: EnglishEntryactually()),
  '/english-acumen': (_) => MaterialPage(child: EnglishEntryacumen()),
  '/english-acupuncture': (_) => MaterialPage(child: EnglishEntryacupuncture()),
  '/english-acute': (_) => MaterialPage(child: EnglishEntryacute()),
  '/english-acute-accent': (_) =>
      MaterialPage(child: EnglishEntryacuteaccent()),
  '/english-acute-angle': (_) => MaterialPage(child: EnglishEntryacuteangle()),
  '/english-acutely': (_) => MaterialPage(child: EnglishEntryacutely()),
  '/english-acuteness': (_) => MaterialPage(child: EnglishEntryacuteness()),
  '/english-ad': (_) => MaterialPage(child: EnglishEntryad()),
  '/english-adamant': (_) => MaterialPage(child: EnglishEntryadamant()),
  '/english-adams-apple': (_) => MaterialPage(child: EnglishEntryadamsapple()),
  '/english-adapt': (_) => MaterialPage(child: EnglishEntryadapt()),
  '/english-adaptable': (_) => MaterialPage(child: EnglishEntryadaptable()),
  '/english-adaptation': (_) => MaterialPage(child: EnglishEntryadaptation()),
  '/english-adaptor': (_) => MaterialPage(child: EnglishEntryadaptor()),
  '/english-add': (_) => MaterialPage(child: EnglishEntryadd()),
  '/english-adder': (_) => MaterialPage(child: EnglishEntryadder()),
  '/english-addict': (_) => MaterialPage(child: EnglishEntryaddict()),
  '/english-addicted': (_) => MaterialPage(child: EnglishEntryaddicted()),
  '/english-addiction': (_) => MaterialPage(child: EnglishEntryaddiction()),
  '/english-addictive': (_) => MaterialPage(child: EnglishEntryaddictive()),
  '/english-addition': (_) => MaterialPage(child: EnglishEntryaddition()),
  '/english-additional': (_) => MaterialPage(child: EnglishEntryadditional()),
  '/english-additionally': (_) =>
      MaterialPage(child: EnglishEntryadditionally()),
  '/english-additive': (_) => MaterialPage(child: EnglishEntryadditive()),
  '/english-address': (_) => MaterialPage(child: EnglishEntryaddress()),
  '/english-adept': (_) => MaterialPage(child: EnglishEntryadept()),
  '/english-adequate': (_) => MaterialPage(child: EnglishEntryadequate()),
  '/english-adequately': (_) => MaterialPage(child: EnglishEntryadequately()),
  '/english-adhere': (_) => MaterialPage(child: EnglishEntryadhere()),
  '/english-adhere-to': (_) => MaterialPage(child: EnglishEntryadhereto()),
  '/english-adherence': (_) => MaterialPage(child: EnglishEntryadherence()),
  '/english-adherent': (_) => MaterialPage(child: EnglishEntryadherent()),
  '/english-adhesion': (_) => MaterialPage(child: EnglishEntryadhesion()),
  '/english-adhesive': (_) => MaterialPage(child: EnglishEntryadhesive()),
  '/english-ad-hoc': (_) => MaterialPage(child: EnglishEntryadhoc()),
  '/english-adjacent': (_) => MaterialPage(child: EnglishEntryadjacent()),
  '/english-adjectival': (_) => MaterialPage(child: EnglishEntryadjectival()),
  '/english-adjective': (_) => MaterialPage(child: EnglishEntryadjective()),
  '/english-adjoin': (_) => MaterialPage(child: EnglishEntryadjoin()),
  '/english-adjourn': (_) => MaterialPage(child: EnglishEntryadjourn()),
  '/english-adjournment': (_) => MaterialPage(child: EnglishEntryadjournment()),
  '/english-adjudicate': (_) => MaterialPage(child: EnglishEntryadjudicate()),
  '/english-adjudication': (_) =>
      MaterialPage(child: EnglishEntryadjudication()),
  '/english-adjudicator': (_) => MaterialPage(child: EnglishEntryadjudicator()),
  '/english-adjunct': (_) => MaterialPage(child: EnglishEntryadjunct()),
  '/english-adjust': (_) => MaterialPage(child: EnglishEntryadjust()),
  '/english-adjustable': (_) => MaterialPage(child: EnglishEntryadjustable()),
  '/english-adjustment': (_) => MaterialPage(child: EnglishEntryadjustment()),
  '/english-ad-lib': (_) => MaterialPage(child: EnglishEntryadlib()),
  '/english-administer': (_) => MaterialPage(child: EnglishEntryadminister()),
  '/english-administration': (_) =>
      MaterialPage(child: EnglishEntryadministration()),
  '/english-administrative': (_) =>
      MaterialPage(child: EnglishEntryadministrative()),
  '/english-administrator': (_) =>
      MaterialPage(child: EnglishEntryadministrator()),
  '/english-admirable': (_) => MaterialPage(child: EnglishEntryadmirable()),
  '/english-admirably': (_) => MaterialPage(child: EnglishEntryadmirably()),
  '/english-admiral': (_) => MaterialPage(child: EnglishEntryadmiral()),
  '/english-admiration': (_) => MaterialPage(child: EnglishEntryadmiration()),
  '/english-admire': (_) => MaterialPage(child: EnglishEntryadmire()),
  '/english-admirer': (_) => MaterialPage(child: EnglishEntryadmirer()),
  '/english-admiring': (_) => MaterialPage(child: EnglishEntryadmiring()),
  '/english-admissible': (_) => MaterialPage(child: EnglishEntryadmissible()),
  '/english-admission': (_) => MaterialPage(child: EnglishEntryadmission()),
  '/english-admit': (_) => MaterialPage(child: EnglishEntryadmit()),
  '/english-admittance': (_) => MaterialPage(child: EnglishEntryadmittance()),
  '/english-admittedly': (_) => MaterialPage(child: EnglishEntryadmittedly()),
  '/english-admonish': (_) => MaterialPage(child: EnglishEntryadmonish()),
  '/english-ad-nauseam': (_) => MaterialPage(child: EnglishEntryadnauseam()),
  '/english-adolescence': (_) => MaterialPage(child: EnglishEntryadolescence()),
  '/english-adolescent': (_) => MaterialPage(child: EnglishEntryadolescent()),
  '/english-adopt': (_) => MaterialPage(child: EnglishEntryadopt()),
  '/english-adoption': (_) => MaterialPage(child: EnglishEntryadoption()),
  '/english-adoptive': (_) => MaterialPage(child: EnglishEntryadoptive()),
  '/english-adorable': (_) => MaterialPage(child: EnglishEntryadorable()),
  '/english-adoration': (_) => MaterialPage(child: EnglishEntryadoration()),
  '/english-adore': (_) => MaterialPage(child: EnglishEntryadore()),
  '/english-adorn': (_) => MaterialPage(child: EnglishEntryadorn()),
  '/english-adornment': (_) => MaterialPage(child: EnglishEntryadornment()),
  '/english-adrenaline': (_) => MaterialPage(child: EnglishEntryadrenaline()),
  '/english-adrift': (_) => MaterialPage(child: EnglishEntryadrift()),
  '/english-adulation': (_) => MaterialPage(child: EnglishEntryadulation()),
  '/english-adult': (_) => MaterialPage(child: EnglishEntryadult()),
  '/english-adulterate': (_) => MaterialPage(child: EnglishEntryadulterate()),
  '/english-adulterer': (_) => MaterialPage(child: EnglishEntryadulterer()),
  '/english-adulterous': (_) => MaterialPage(child: EnglishEntryadulterous()),
  '/english-adultery': (_) => MaterialPage(child: EnglishEntryadultery()),
  '/english-adulthood': (_) => MaterialPage(child: EnglishEntryadulthood()),
  '/english-advance': (_) => MaterialPage(child: EnglishEntryadvance()),
  '/english-advanced': (_) => MaterialPage(child: EnglishEntryadvanced()),
  '/english-advancement': (_) => MaterialPage(child: EnglishEntryadvancement()),
  '/english-advantage': (_) => MaterialPage(child: EnglishEntryadvantage()),
  '/english-advantageous': (_) =>
      MaterialPage(child: EnglishEntryadvantageous()),
  '/english-advent': (_) => MaterialPage(child: EnglishEntryadvent()),
  '/english-adventure': (_) => MaterialPage(child: EnglishEntryadventure()),
  '/english-adventurer': (_) => MaterialPage(child: EnglishEntryadventurer()),
  '/english-adventurous': (_) => MaterialPage(child: EnglishEntryadventurous()),
  '/english-adverb': (_) => MaterialPage(child: EnglishEntryadverb()),
  '/english-adverbial': (_) => MaterialPage(child: EnglishEntryadverbial()),
  '/english-adversary': (_) => MaterialPage(child: EnglishEntryadversary()),
  '/english-adverse': (_) => MaterialPage(child: EnglishEntryadverse()),
  '/english-adversely': (_) => MaterialPage(child: EnglishEntryadversely()),
  '/english-adversity': (_) => MaterialPage(child: EnglishEntryadversity()),
  '/english-advert': (_) => MaterialPage(child: EnglishEntryadvert()),
  '/english-advertise': (_) => MaterialPage(child: EnglishEntryadvertise()),
  '/english-advertisement': (_) =>
      MaterialPage(child: EnglishEntryadvertisement()),
  '/english-advertiser': (_) => MaterialPage(child: EnglishEntryadvertiser()),
  '/english-advertising': (_) => MaterialPage(child: EnglishEntryadvertising()),
  '/english-advice': (_) => MaterialPage(child: EnglishEntryadvice()),
  '/english-advisable': (_) => MaterialPage(child: EnglishEntryadvisable()),
  '/english-advise': (_) => MaterialPage(child: EnglishEntryadvise()),
  '/english-adviser': (_) => MaterialPage(child: EnglishEntryadviser()),
  '/english-advisory': (_) => MaterialPage(child: EnglishEntryadvisory()),
  '/english-advocate': (_) => MaterialPage(child: EnglishEntryadvocate()),
  '/english-aerial': (_) => MaterialPage(child: EnglishEntryaerial()),
  '/english-aerobatics': (_) => MaterialPage(child: EnglishEntryaerobatics()),
  '/english-aerobics': (_) => MaterialPage(child: EnglishEntryaerobics()),
  '/english-aerodynamic': (_) => MaterialPage(child: EnglishEntryaerodynamic()),
  '/english-aerodynamics': (_) =>
      MaterialPage(child: EnglishEntryaerodynamics()),
  '/english-aeronautics': (_) => MaterialPage(child: EnglishEntryaeronautics()),
  '/english-aeroplane': (_) => MaterialPage(child: EnglishEntryaeroplane()),
  '/english-aerosol': (_) => MaterialPage(child: EnglishEntryaerosol()),
  '/english-aerospace': (_) => MaterialPage(child: EnglishEntryaerospace()),
  '/english-aesthetic': (_) => MaterialPage(child: EnglishEntryaesthetic()),
  '/english-aesthetically': (_) =>
      MaterialPage(child: EnglishEntryaesthetically()),
  '/english-affable': (_) => MaterialPage(child: EnglishEntryaffable()),
  '/english-affably': (_) => MaterialPage(child: EnglishEntryaffably()),
  '/english-affair': (_) => MaterialPage(child: EnglishEntryaffair()),
  '/english-affect': (_) => MaterialPage(child: EnglishEntryaffect()),
  '/english-affectation': (_) => MaterialPage(child: EnglishEntryaffectation()),
  '/english-affected': (_) => MaterialPage(child: EnglishEntryaffected()),
  '/english-affection': (_) => MaterialPage(child: EnglishEntryaffection()),
  '/english-affectionate': (_) =>
      MaterialPage(child: EnglishEntryaffectionate()),
  '/english-affectionately': (_) =>
      MaterialPage(child: EnglishEntryaffectionately()),
  '/english-affidavit': (_) => MaterialPage(child: EnglishEntryaffidavit()),
  '/english-affiliate': (_) => MaterialPage(child: EnglishEntryaffiliate()),
  '/english-affiliation': (_) => MaterialPage(child: EnglishEntryaffiliation()),
  '/english-affinity': (_) => MaterialPage(child: EnglishEntryaffinity()),
  '/english-affirm': (_) => MaterialPage(child: EnglishEntryaffirm()),
  '/english-affirmation': (_) => MaterialPage(child: EnglishEntryaffirmation()),
  '/english-affirmative': (_) => MaterialPage(child: EnglishEntryaffirmative()),
  '/english-affix': (_) => MaterialPage(child: EnglishEntryaffix()),
  '/english-afflict': (_) => MaterialPage(child: EnglishEntryafflict()),
  '/english-affliction': (_) => MaterialPage(child: EnglishEntryaffliction()),
  '/english-affluence': (_) => MaterialPage(child: EnglishEntryaffluence()),
  '/english-affluent': (_) => MaterialPage(child: EnglishEntryaffluent()),
  '/english-afford': (_) => MaterialPage(child: EnglishEntryafford()),
  '/english-affront': (_) => MaterialPage(child: EnglishEntryaffront()),
  '/english-afloat': (_) => MaterialPage(child: EnglishEntryafloat()),
  '/english-afoot': (_) => MaterialPage(child: EnglishEntryafoot()),
  '/english-aforementioned': (_) =>
      MaterialPage(child: EnglishEntryaforementioned()),
  '/english-afraid': (_) => MaterialPage(child: EnglishEntryafraid()),
  '/english-afresh': (_) => MaterialPage(child: EnglishEntryafresh()),
  '/english-after': (_) => MaterialPage(child: EnglishEntryafter()),
  '/english-aftereffect': (_) => MaterialPage(child: EnglishEntryaftereffect()),
  '/english-aftermath': (_) => MaterialPage(child: EnglishEntryaftermath()),
  '/english-afternoon': (_) => MaterialPage(child: EnglishEntryafternoon()),
  '/english-afterthought': (_) =>
      MaterialPage(child: EnglishEntryafterthought()),
  '/english-afterwards': (_) => MaterialPage(child: EnglishEntryafterwards()),
  '/english-again': (_) => MaterialPage(child: EnglishEntryagain()),
  '/english-against': (_) => MaterialPage(child: EnglishEntryagainst()),
  '/english-age': (_) => MaterialPage(child: EnglishEntryage()),
  '/english-aged': (_) => MaterialPage(child: EnglishEntryaged()),
  '/english-age-group': (_) => MaterialPage(child: EnglishEntryagegroup()),
  '/english-ageing': (_) => MaterialPage(child: EnglishEntryageing()),
  '/english-ageism': (_) => MaterialPage(child: EnglishEntryageism()),
  '/english-ageist': (_) => MaterialPage(child: EnglishEntryageist()),
  '/english-age-limit': (_) => MaterialPage(child: EnglishEntryagelimit()),
  '/english-agency': (_) => MaterialPage(child: EnglishEntryagency()),
  '/english-agenda': (_) => MaterialPage(child: EnglishEntryagenda()),
  '/english-agent': (_) => MaterialPage(child: EnglishEntryagent()),
  '/english-age-old': (_) => MaterialPage(child: EnglishEntryageold()),
  '/english-aggravate': (_) => MaterialPage(child: EnglishEntryaggravate()),
  '/english-aggravation': (_) => MaterialPage(child: EnglishEntryaggravation()),
  '/english-aggregate': (_) => MaterialPage(child: EnglishEntryaggregate()),
  '/english-aggression': (_) => MaterialPage(child: EnglishEntryaggression()),
  '/english-aggressive': (_) => MaterialPage(child: EnglishEntryaggressive()),
  '/english-aggressively': (_) =>
      MaterialPage(child: EnglishEntryaggressively()),
  '/english-aggressiveness': (_) =>
      MaterialPage(child: EnglishEntryaggressiveness()),
  '/english-aggressor': (_) => MaterialPage(child: EnglishEntryaggressor()),
  '/english-aggrieved': (_) => MaterialPage(child: EnglishEntryaggrieved()),
  '/english-aghast': (_) => MaterialPage(child: EnglishEntryaghast()),
  '/english-agile': (_) => MaterialPage(child: EnglishEntryagile()),
  '/english-agility': (_) => MaterialPage(child: EnglishEntryagility()),
  '/english-aging': (_) => MaterialPage(child: EnglishEntryaging()),
  '/english-agitate': (_) => MaterialPage(child: EnglishEntryagitate()),
  '/english-agitation': (_) => MaterialPage(child: EnglishEntryagitation()),
  '/english-agitator': (_) => MaterialPage(child: EnglishEntryagitator()),
  '/english-aglow': (_) => MaterialPage(child: EnglishEntryaglow()),
  '/english-agm': (_) => MaterialPage(child: EnglishEntryagm()),
  '/english-agnostic': (_) => MaterialPage(child: EnglishEntryagnostic()),
  '/english-agonized': (_) => MaterialPage(child: EnglishEntryagonized()),
  '/english-agonizing': (_) => MaterialPage(child: EnglishEntryagonizing()),
  '/english-agony': (_) => MaterialPage(child: EnglishEntryagony()),
  '/english-agony-aunt': (_) => MaterialPage(child: EnglishEntryagonyaunt()),
  '/english-agoraphobia': (_) => MaterialPage(child: EnglishEntryagoraphobia()),
  '/english-agoraphobic': (_) => MaterialPage(child: EnglishEntryagoraphobic()),
  '/english-agrarian': (_) => MaterialPage(child: EnglishEntryagrarian()),
  '/english-agree': (_) => MaterialPage(child: EnglishEntryagree()),
  '/english-agreeable': (_) => MaterialPage(child: EnglishEntryagreeable()),
  '/english-agreeably': (_) => MaterialPage(child: EnglishEntryagreeably()),
  '/english-agreement': (_) => MaterialPage(child: EnglishEntryagreement()),
  '/english-agriculture': (_) => MaterialPage(child: EnglishEntryagriculture()),
  '/english-agricultural': (_) =>
      MaterialPage(child: EnglishEntryagricultural()),
  '/english-agritourism': (_) => MaterialPage(child: EnglishEntryagritourism()),
  '/english-agrochemical': (_) =>
      MaterialPage(child: EnglishEntryagrochemical()),
  '/english-agronomist': (_) => MaterialPage(child: EnglishEntryagronomist()),
  '/english-agronomy': (_) => MaterialPage(child: EnglishEntryagronomy()),
  '/english-aground': (_) => MaterialPage(child: EnglishEntryaground()),
  '/english-ahead': (_) => MaterialPage(child: EnglishEntryahead()),
  '/english-ahead-of': (_) => MaterialPage(child: EnglishEntryaheadof()),
  '/english-ai': (_) => MaterialPage(child: EnglishEntryai()),
  '/english-aid': (_) => MaterialPage(child: EnglishEntryaid()),
  '/english-aide': (_) => MaterialPage(child: EnglishEntryaide()),
  '/english-aids': (_) => MaterialPage(child: EnglishEntryaids()),
  '/english-ailing': (_) => MaterialPage(child: EnglishEntryailing()),
  '/english-ailment': (_) => MaterialPage(child: EnglishEntryailment()),
  '/english-aim': (_) => MaterialPage(child: EnglishEntryaim()),
  '/english-aimless': (_) => MaterialPage(child: EnglishEntryaimless()),
  '/english-aimlessly': (_) => MaterialPage(child: EnglishEntryaimlessly()),
  "/english-ain't": (_) => MaterialPage(child: EnglishEntryaint()),
  '/english-air': (_) => MaterialPage(child: EnglishEntryair()),
  '/english-airbag': (_) => MaterialPage(child: EnglishEntryairbag()),
  '/english-airborne': (_) => MaterialPage(child: EnglishEntryairborne()),
  '/english-air-conditioner': (_) =>
      MaterialPage(child: EnglishEntryairconditioner()),
  '/english-air-conditioned': (_) =>
      MaterialPage(child: EnglishEntryairconditioned()),
  '/english-aircraft': (_) => MaterialPage(child: EnglishEntryaircraft()),
  '/english-aircraft-carrier': (_) =>
      MaterialPage(child: EnglishEntryaircraftcarrier()),
  '/english-airfield': (_) => MaterialPage(child: EnglishEntryairfield()),
  '/english-air-force': (_) => MaterialPage(child: EnglishEntryairforce()),
  '/english-air-hostess': (_) => MaterialPage(child: EnglishEntryairhostess()),
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
  // "/english-DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // "/english-DOPSUM": (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  '/english-come-of-age': (_) => MaterialPage(child: EnglishEntrycomeofage()),
  '/english-far-afield': (_) => MaterialPage(child: EnglishEntryfarafield()),
  '/english-from-afar': (_) => MaterialPage(child: EnglishEntryafar()),
  '/english-under-age': (_) => MaterialPage(child: EnglishEntryunderage()),
  // '/english-DOPSUM': (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // '/english-DOPSUM': (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // '/english-DOPSUM': (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // '/english-DOPSUM': (_) => MaterialPage(child: EnglishEntryDOPSUM()),
  // '/english-DOPSUM': (_) => MaterialPage(child: EnglishEntryDOPSUM()),
});
