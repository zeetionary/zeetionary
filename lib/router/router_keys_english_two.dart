import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/router/exports_english_two.dart';

//
//
//
//

MaterialPage _blP(Widget child) => MaterialPage(child: child);

Map<String, PageBuilder> getRoutesEnglishTwo() {
  return {
    "/english-hippie": (_) => _blP(const EnglishEntryhippie()),
    "/english-hippo": (_) => _blP(const EnglishEntryhippo()),
    "/english-hippopotamus": (_) => _blP(const EnglishEntryhippopotamus()),
    "/english-hire": (_) => _blP(const EnglishEntryhire()),
    "/english-hirepurchase": (_) =>
        _blP(const EnglishEntryhirepurchase()), //////// hire purchase()),
    "/english-his": (_) => _blP(const EnglishEntryhis()),
    "/english-hiss": (_) => _blP(const EnglishEntryhiss()),
    "/english-historian": (_) => _blP(const EnglishEntryhistorian()),
    "/english-historic": (_) => _blP(const EnglishEntryhistoric()),
    "/english-historical": (_) => _blP(const EnglishEntryhistorical()),
    "/english-historically": (_) => _blP(const EnglishEntryhistorically()),
    "/english-history": (_) => _blP(const EnglishEntryhistory()),
    "/english-hit": (_) => _blP(const EnglishEntryhit()),
    "/english-hitandrun": (_) =>
        _blP(const EnglishEntryhitandrun()), //////// hit-and-run()),
    "/english-hitman": (_) => _blP(const EnglishEntryhitman()),
    "/english-hitch": (_) => _blP(const EnglishEntryhitch()),
    "/english-hitchhike": (_) => _blP(const EnglishEntryhitchhike()),
    "/english-hitchhiker": (_) => _blP(const EnglishEntryhitchhiker()),
    "/english-hitherto": (_) => _blP(const EnglishEntryhitherto()),
    "/english-hiv": (_) => _blP(const EnglishEntryhiv()), //////// HIV()),
    "/english-hive": (_) => _blP(const EnglishEntryhive()),

    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
    // "/english-DOPSUM_DOPSUM": (_) => _blP(const EnglishEntry()),
  };
}
