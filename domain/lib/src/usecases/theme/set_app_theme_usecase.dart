import '../../../domain.dart';
import '../base_usecase.dart';

final class SetAppThemeUsecase extends FutureUseCase<SetAppThemePayload, void> {
  final ThemeRepository _themeRepository;

  const SetAppThemeUsecase({
    required ThemeRepository themeRepository,
  }) : _themeRepository = themeRepository;

  @override
  Future<void> execute(SetAppThemePayload payload) async {
    await _themeRepository.setAppTheme(payload);
  }
}
