import 'package:learn_localization/core/resources/localizer/localizer.dart';

abstract class AppState {}

class AppInitialState extends AppState {}

class AppLanguageChangedState extends AppState {
  final LocalizerData locale;

  AppLanguageChangedState(this.locale);
}
