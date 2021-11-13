// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pl';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "changeCity": MessageLookupByLibrary.simpleMessage("Zmień miasto"),
        "defaultError":
            MessageLookupByLibrary.simpleMessage("Ups. Coś poszło nie tak."),
        "getCurrentWeatherError": MessageLookupByLibrary.simpleMessage(
            "Nie udało się pobrać aktualnej pogody."),
        "hPa": MessageLookupByLibrary.simpleMessage("hPa"),
        "humidity": MessageLookupByLibrary.simpleMessage("Wilgotność"),
        "km": MessageLookupByLibrary.simpleMessage("km"),
        "percentChar": MessageLookupByLibrary.simpleMessage("%"),
        "pressure": MessageLookupByLibrary.simpleMessage("Ciśnienie"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Spróbuj ponownie"),
        "visibility": MessageLookupByLibrary.simpleMessage("Widoczność"),
        "weather": MessageLookupByLibrary.simpleMessage("Pogoda")
      };
}
