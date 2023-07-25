import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:intellibra/src/app/assets.dart';
import 'package:intellibra/src/configs/palette.dart';
import 'package:intellibra/src/extensions/build_context.dart';
import 'package:intellibra/src/extensions/num.dart';

final _stateListener = ValueNotifier(false);

class IntellibraController extends StatelessWidget {
  const IntellibraController({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await showModalBottomSheet<void>(
          isDismissible: false,
          context: context,
          builder: (context) => const _DeviceSearch(),
        );
      },
      child: Center(
        child: ValueListenableBuilder(
          valueListenable: _stateListener,
          builder: (context, active, child) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 1250),
              curve: Curves.ease,
              height: 125,
              width: 125,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.scheme.onPrimary,
                border: Border.all(
                  width: 3.50,
                  color: active ? Colors.green : Palette.primary,
                ),
                boxShadow: !active
                    ? const [
                        BoxShadow(
                          blurRadius: 15,
                          offset: Offset(4, -4),
                          color: Palette.primary,
                        ),
                        BoxShadow(
                          blurRadius: 15,
                          offset: Offset(-4, 4),
                          color: Palette.primary,
                        )
                      ]
                    : const [
                        BoxShadow(
                            blurRadius: 15,
                            offset: Offset(4, -4),
                            color: Colors.green),
                        BoxShadow(
                            blurRadius: 15,
                            offset: Offset(-4, 4),
                            color: Colors.green)
                      ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Image.asset(
                  Assets.assetsIconsWoman,
                  height: 100,
                  width: 100,
                  //  fit: BoxFit.contain,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _DeviceSearch extends StatelessWidget {
  const _DeviceSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            14.vGap,
            Text(
              'Scan Devices',
              style: context.bodyLg.copyWith(
                color: context.scheme.primary,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            4.vGap,
            const Text('Tap on any reachable device to connect....'),
            24.vGap,
            for (int i = 0; i < 4; i++)
              ListTile(
                title: Text(
                  'Intellibra-INC9X2',
                  style: context.bodyLg.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('reachable'),
                trailing: CircularProgressIndicator(
                  color: context.scheme.primary,
                  strokeWidth: 1,
                  // valueColor:
                  //   AlwaysStoppedAnimation<Color>(context.scheme.secondary),
                ),
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: context.scheme.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    IconlyBroken.heart,
                    color: context.scheme.onPrimary,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
