import 'package:change_theme/cubit/change_theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeThemeScreen extends StatelessWidget {
  const ChangeThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Switch Theme',
        ),
      ),
      body: SafeArea(child: BlocBuilder<ChangeThemeCubit, bool>(
        builder: (context, state) {
          return Center(
            child: SwitchListTile(
                subtitle: Text('Dark theme are easier on your eyes',
                    style: Theme.of(context).textTheme.bodyText2),
                title: Text(
                  'Change Theme',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                value: state,
                onChanged: (value) {
                  BlocProvider.of<ChangeThemeCubit>(context)
                      .switchTheme(isDark: value);
                }),
          );
        },
      )),
    );
  }
}
