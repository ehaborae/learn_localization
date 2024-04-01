import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_localization/app_state.dart';
import 'package:learn_localization/core/resources/localizer/localizer.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitialState());
  LocalizerData locale = Localizer.ar;

  void changeLanguage(LocalizerData language) {
    locale = language;
    emit(AppLanguageChangedState(locale));
  }

  get toggleLanguage {
    locale = locale == Localizer.ar ? Localizer.en : Localizer.ar;
    emit(AppLanguageChangedState(locale));
  }
}
