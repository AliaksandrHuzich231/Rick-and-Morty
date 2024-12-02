import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';

extension LocaleObserver on String {
  String watchTr(
    BuildContext context, {
    List<String>? args,
    Map<String, String>? namedArgs,
    String? gender,
  }) {
    context.locale;
    return this.tr(
      args: args,
      namedArgs: namedArgs,
      gender: gender,
    );
  }
}
