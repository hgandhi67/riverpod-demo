extension StringsExtension on String {
  String sCap() {
    if (!isEmptyORNull) {
      return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
    } else {
      return this;
    }
  }

  String wordCap() {
    return isEmptyORNull
        ? ""
        : toLowerCase().split(' ').map((word) {
            final String leftText = (word.length > 1) ? word.substring(1, word.length) : '';
            if (word.length > 1) {
              return word[0].toUpperCase() + leftText;
            } else {
              return word.toUpperCase() + leftText;
            }
          }).join(' ');
  }

  String commaCap() {
    return toLowerCase().split(',').map((word) {
      final String leftText = (word.length > 1) ? word.substring(1, word.length) : '';
      if (word.length > 1) {
        return word[0].toUpperCase() + leftText;
      } else {
        return word.toUpperCase() + leftText;
      }
    }).join(', ');
  }

  String justifyContent() {
    String newQuery = "";
    final kList = split(" ");
    for (var element in kList) {
      if (element.removeSpaces().isNotEmpty) {
        newQuery += " $element";
      }
    }
    if (newQuery.isEmpty) {
      newQuery = this;
    }
    return newQuery.trim();
  }

  String removeSpaces() => replaceAll(RegExp(r"\s+\b|\b\s"), "");

  bool get isEmptyORNull => isEmpty || removeSpaces().isEmpty;

  int toInt() => int.tryParse(this) ?? 0;

  double toDouble() => double.tryParse(this) ?? 0.0;

  Uri toUri() => Uri.parse(this);

  /// will return count of no of lines from passed string
  int get lines => '\n'.allMatches(this).length + 1;

  String? toMap() {
    var re = RegExp(r'(?<={)(.*)(?=})');
    var match = re.firstMatch(this);
    return match?.group(0);
  }

  String forImage() {
    if (isEmptyORNull) {
      return "";
    }
    final list = split(" ");
    final firstLetter = list[0].substring(0, 1);

    if (list.length >= 2) {
      final lastLetter = list[1].substring(0, 1);
      return (firstLetter + lastLetter).toUpperCase();
    }
    return firstLetter.toUpperCase();
  }

  String get paramSymbol {
    if (contains('?')) {
      return '&';
    }
    return '?';
  }

  String substringSafe(int start, [int? end]) {
    String s = this;

    if (end != null && end > s.length) {
      return s.substring(0, s.length);
    }

    if (end != null && end < s.length) {
      return s.substring(0, end);
    }

    return s;
  }
}

bool isBlank(String? s) => s == null || s.trim().isEmpty;

bool isNotBlank(String? s) => s != null && s.trim().isNotEmpty;

extension StringsNullExt on String? {
  String get v => (this == null || this == "") ? '' : this!;

  String get NA => (this == null || this?.removeSpaces() == "") ? 'NA' : this!;
}
