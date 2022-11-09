import 'package:hydrated_bloc/hydrated_bloc.dart';

class ChangeThemeCubit extends HydratedCubit<bool> {
  ChangeThemeCubit() : super(false);

  Future<void> switchTheme({required bool isDark}) async {
    emit(isDark);
  }

  @override
  bool? fromJson(Map<String, dynamic> json) {
    return json['isDark'] as bool;
  }

  @override
  Map<String, dynamic>? toJson(bool state) {
    return <String, dynamic>{'isDark': state};
  }
}
