import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final FetchAppThemeUsecase _fetchAppThemeUsecase;
  final SetAppThemeUsecase _setAppThemeUsecase;

  ThemeBloc({
    required FetchAppThemeUsecase fetchAppThemeUsecase,
    required SetAppThemeUsecase setAppThemeUsecase,
  })  : _fetchAppThemeUsecase = fetchAppThemeUsecase,
        _setAppThemeUsecase = setAppThemeUsecase,
        super(
          const ThemeState(
            appTheme: AppTheme.lightTheme,
          ),
        ) {
    on<InitEvent>(onInitEvent);
    on<ChangeThemeEvent>(onChangeThemeEvent);

    add(const InitEvent());
  }

  Future<void> onInitEvent(
    InitEvent event,
    Emitter emit,
  ) async {
    final AppTheme appTheme = _fetchAppThemeUsecase.execute(const NoParams());
    emit(state.copyWith(appTheme));
  }

  Future<void> onChangeThemeEvent(
    ChangeThemeEvent event,
    Emitter emit,
  ) async {
    emit(state.copyWith(event.appTheme));
    await _setAppThemeUsecase.execute(event.appTheme);
  }
}
