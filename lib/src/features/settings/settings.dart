import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hicons/flutter_hicons.dart';
import 'package:intellibra/src/common/common.dart';
import 'package:intellibra/src/extensions/build_context.dart';
import 'package:intellibra/src/extensions/num.dart';
import 'package:intellibra/src/features/settings/widgets/action_tile.dart';
import 'package:intellibra/src/features/settings/widgets/language_dialog.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            34.vGap,
            const Center(
              child: FlutterLogo(),
            ),
            4.vGap,
            Center(
              child: Text(
                'Lady Bug Miraculous',
                style: context.theme.textTheme.bodyLarge,
              ),
            ),
            14.vGap,
            const IntellibraButton(
              text: 'Action',
            ),
            34.vGap,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Akila actions',
                    style: context.theme.textTheme.bodyMedium,
                  ),
                ),
                4.hGap,
                const Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            ActionLabel(
              label: 'Recharger mon compte AKILA',
              onTap: () {},
              icon: Icons.add,
            ),
            ActionLabel(
              icon: Hicons.refresh_1,
              label: 'Historique Transactions',
              onTap: () {},
            ),
            ActionLabel(
              icon: Icons.language,
              label: "Langue de l'application",
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => const IntelliDialog(),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Aide et Contacts',
                    style: context.theme.textTheme.bodyMedium,
                  ),
                ),
                4.hGap,
                const Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            ActionLabel(
              icon: Hicons.profile_accepted_2,
              label: 'Devenir partenaire',
              onTap: () {},
            ),
            ActionLabel(
              icon: Hicons.upload,
              label: "Partager l'application",
              onTap: () {},
            ),
            ActionLabel(
              icon: Hicons.shield_tick,
              label: 'Politique de confidentialité',
              onTap: () {},
            ),
            ActionLabel(
              icon: Hicons.work,
              label: 'Nous contacter',
              onTap: () {},
            ),
            ActionLabel(
              icon: Hicons.information_square,
              label: 'A propos',
              onTap: () {
                context.router.pushNamed('/home');
              },
            ),
            34.vGap,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                //  Image.asset(Assets.assetsIconsMascotte),
                Text(
                  'Intellibra',
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
