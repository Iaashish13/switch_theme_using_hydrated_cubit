import 'package:change_theme/cubit/change_theme_cubit.dart';
import 'package:change_theme/screen/change_theme_screen.dart';
import 'package:change_theme/theme/dark_theme.dart';
import 'package:change_theme/theme/light_them.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());

  runApp(BlocProvider<ChangeThemeCubit>(
    create: (context) => ChangeThemeCubit(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeThemeCubit, bool>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Switch Theme',
          theme: state ? darkTheme : lightTheme,
          home: const ChangeThemeScreen(),
        );
      },
    );
  }
}
