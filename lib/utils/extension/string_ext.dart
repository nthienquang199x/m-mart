import '../remove_diacritic.dart';

extension StringExt on String {
  String get nameAlias {
    return removeDiacritics(this).toUpperCase();
  }
}
