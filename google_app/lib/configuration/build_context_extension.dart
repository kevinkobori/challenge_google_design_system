import 'package:flutter/widgets.dart' as widgets;
import 'package:google_app/google_app.dart';

extension BuildContextExtension on widgets.BuildContext {
  GoogleDesignSystem get designSystem => GoogleApp.of(this).designSystem;
  Components get component => GoogleApp.of(this).designSystem.components;
  Theme get theme => GoogleApp.of(this).designSystem.theme;
  // GoogleApp designSystem = GoogleApp.of(context).designSystem.theme.colors.backgroundColor;
}
