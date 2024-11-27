import 'package:core_ui/core_ui.dart';

import '../../../domain.dart';

final class FetchAppThemeUsecase extends UseCase<NoParams, AppTheme> {
  final ThemeRepository _themeRepository;

  const FetchAppThemeUsecase({
    required ThemeRepository themeRepository,
  }) : _themeRepository = themeRepository;

  @override
  AppTheme execute(NoParams input) {
    return _themeRepository.fetchAppTheme;
  }
}