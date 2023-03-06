import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hicons/flutter_hicons.dart';
import 'package:intellibra/src/extensions/build_context.dart';
import 'package:intellibra/src/features/onboarding/thememode/cubit/theme_cubit.dart';

class SelfCheck extends StatelessWidget {
  const SelfCheck({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return BlocBuilder<ThemeCubit, bool>(
      builder: (BuildContext context, bool state) {
        return Scaffold(
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
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        gradient: LinearGradient(
                          colors: [
                            context.scheme.primaryContainer,
                            context.scheme.primary
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Hicons.battery_normal,
                          ),
                          Text(
                            '28%',
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        gradient: LinearGradient(
                          colors: [
                            context.scheme.primaryContainer,
                            context.scheme.primary
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Hicons.wifi_bold,
                          ),
                          Text(
                            '28%',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
