import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// A convenience extension for accessing the [AppLocalizations] instance
/// associated with the current [BuildContext].
extension AppLocalizationsContext on BuildContext {
  /// The [AppLocalizations] instance associated
  /// with the current [BuildContext].
  AppLocalizations get l10n => AppLocalizations.of(this);
}
