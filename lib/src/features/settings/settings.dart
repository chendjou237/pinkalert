import 'package:akila/src/app/assets.dart';
import 'package:akila/src/app/extensions/gap.dart';
import 'package:akila/src/app/extensions/text_style.dart';
import 'package:akila/src/app/extensions/theme.dart';
import 'package:akila/src/features/auth/widgets/akila_button.dart';
import 'package:akila/src/features/settings/widgets/action_tile.dart';
import 'package:akila/src/features/settings/widgets/language_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hicons/flutter_hicons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Settings extends ConsumerStatefulWidget {
  const Settings({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingsState();
}

class _SettingsState extends ConsumerState<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            34.vGap,
            Center(
              child: Image.asset(Assets.assetsImagesWomanPp),
            ),
            4.vGap,
            Center(
                child: Text(
              "Lady Bug Miraculous",
              style: context.theme.textTheme.bodyLarge!.bold,
            )),
            14.vGap,
            AkilaButton(
              text: "Modifier le profil",
              action: () {},
            ),
            34.vGap,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Akila actions",
                    style: context.theme.textTheme.bodyMedium!.bold,
                  ),
                ),
                4.hGap,
                const Expanded(
                    child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                )),
              ],
            ),
            ActionLabel(
              label: "Recharger mon compte AKILA",
              onTap: () {},
              icon: Icons.add,
            ),
            ActionLabel(
              icon: Hicons.refresh_1,
              label: "Historique Transactions",
              onTap: () {},
            ),
            ActionLabel(
              icon: Icons.language,
              label: "Langue de l'application",
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => const AkilaDialog());
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Aide et Contacts",
                    style: context.theme.textTheme.bodyMedium!.bold,
                  ),
                ),
                4.hGap,
                const Expanded(
                    child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                )),
              ],
            ),
            ActionLabel(
              icon: Hicons.profile_accepted_2,
              label: "Devenir partenaire",
              onTap: () {},
            ),
            ActionLabel(
              icon: Hicons.upload,
              label: "Partager l'application",
              onTap: () {},
            ),
            ActionLabel(
              icon: Hicons.shield_tick,
              label: "Politique de confidentialité",
              onTap: () {},
            ),
            ActionLabel(
              icon: Hicons.work,
              label: "Nous contacter",
              onTap: () {},
            ),
            ActionLabel(
              icon: Hicons.information_square,
              label: "A propos",
              onTap: () {
                context.router.pushNamed('/home/historic');
              },
            ),
            34.vGap,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.assetsIconsMascotte),
                Text(
                  "Akila",
                  style: context.theme.textTheme.bodyLarge!
                      .copyWith(color: context.colorScheme.primary),
                ),
              ],
            ),
            8.vGap
          ],
        ),
      ),
    );
  }
}
