import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intellibra/src/extensions/build_context.dart';
import 'package:intellibra/src/features/onboarding/thememode/cubit/theme_cubit.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, bool>(
      builder: (BuildContext context, bool state) {
        return Scaffold(
          //backgroundColor: context.scheme.background,
          appBar: AppBar(
            title: const Text('Intellibra Widgets'),
            actions: [
              CupertinoSwitch(
                value: state,
                activeColor: context.scheme.tertiary,
                onChanged: (theme) {
                  state == true
                      ? context.read<ThemeCubit>().reset()
                      : context.read<ThemeCubit>().toggle();
                },
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ),
        );
      },
    );
  }
}
