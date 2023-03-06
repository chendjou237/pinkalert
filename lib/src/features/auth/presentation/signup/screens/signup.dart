import 'package:akila/src/app/extensions/gap.dart';
import 'package:akila/src/app/extensions/text_style.dart';
import 'package:akila/src/app/extensions/theme.dart';
import 'package:akila/src/features/auth/widgets/akila_button.dart';
import 'package:akila/src/features/auth/widgets/akila_input.dart';
import 'package:akila/src/features/common/widgets/logo.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hicons/flutter_hicons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pinput/pinput.dart';

class CreateAccount extends ConsumerStatefulWidget {
  const CreateAccount({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CreateAccountState();
}

class _CreateAccountState extends ConsumerState<CreateAccount> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPageIndex = 0;
  bool _isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Creer un event'),
      //   actions: [
      //     TextButton(
      //       onPressed: () {
      //         context.router.pop();
      //       },
      //       child: const Text("Annuler"),
      //     ),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (pageIndex) {
                  setState(() {
                    _currentPageIndex = pageIndex;
                    _isLastPage = pageIndex == 2;
                  });
                },
                children: [
                  _buildFirstPage(),
                  _buildSecondPage(),
                  _buildThirdPage(),
                ],
              ),
            ),
            AkilaButton(
              action: _isLastPage ? _submitForm : _nextPage,
              text: _isLastPage ? 'Valider' : 'Continuer',
            ),
            _currentPageIndex != 0
                ? TextButton(
                    onPressed: () {
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Text('Retour'),
                  )
                : const SizedBox.shrink(),
            24.vGap
          ],
        ),
      ),
    );
  }

  Widget _buildFirstPage() {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        34.vGap,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Logo(),
            const Spacer(),
            // Dropdown menu for language
            Expanded(
              child: DropdownButtonFormField<String>(
                // leadingIcon: const Icon(Hicons.work_bold),
                // menuStyle: MenuStyle(),
                // trailingIcon: const Icon(Hicons.arrow_swap_vertical),
                value: "Francais",

                decoration: const InputDecoration(
                  //  prefixIcon: Icon(Icons.language),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintText: "Francais",
                ),
                onChanged: (language) {},
                items: ["English", "Francais"]
                    .map(
                      (lang) => DropdownMenuItem<String>(
                          value: lang, child: Text(lang)),
                    )
                    .toList(),
              ),
            )
          ],
        ),
        14.vGap,
        Stack(
          fit: StackFit.loose,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colorScheme.secondary.withOpacity(.5)),
              child: Icon(
                Hicons.profile_circle,
                size: 85,
                color: context.colorScheme.onPrimary.withOpacity(.75),
              ),
            ),
            Positioned(
              bottom: 10,
              right: -5,
              child: Icon(
                Icons.add_a_photo_outlined,
                size: 24,
                color: context.colorScheme.secondary.withOpacity(.75),
              ),
            ),
            // Center(child: Image.asset("assets/icons/bg.png")),
            // Positioned(
            //   top: -2,
            //   right: 127.5,
            //   child: Center(
            //     child: Image.asset(
            //       "assets/icons/add-user-image.png",
            //       // color: Colors.blue,
            //     ),
            //   ),
            // ),
          ],
        ),
        14.vGap,
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 34),
          child: Text(
              "Ajouter votre photo de profil ou le logo de votre entreprise"),
        ),
        14.vGap,
        Center(
          child: Text(
            "Entrez votre vrai Nom de Naissance",
            style: context.theme.textTheme.bodyLarge!.bold,
          ),
        ),
        //  4.vGap,
        AkilaInput(
          label: "Noms de naissance",
          hint: "Lady Bug Miraculous",
          controller: TextEditingController(),
          obscureText: false,
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }

  Widget _buildSecondPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        34.vGap,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Logo(),
            const Spacer(),
            // Dropdown menu for language
            Expanded(
              child: DropdownButtonFormField<String>(
                // leadingIcon: const Icon(Hicons.work_bold),
                // menuStyle: MenuStyle(),
                // trailingIcon: const Icon(Hicons.arrow_swap_vertical),
                value: "Francais",

                decoration: const InputDecoration(
                  //  prefixIcon: Icon(Icons.language),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintText: "Francais",
                ),
                onChanged: (language) {},
                items: ["English", "Francais"]
                    .map(
                      (lang) => DropdownMenuItem<String>(
                          value: lang, child: Text(lang)),
                    )
                    .toList(),
              ),
            )
          ],
        ),
        14.vGap,
        Center(
          child: Icon(
            Hicons.lock_1,
            size: 64,
            color: context.colorScheme.primary,
          ),
        ),
        4.vGap,
        const Center(
          child: Text(
            "Entrez votre code secret",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        14.vGap,
        const Center(
          child: Pinput(
            length: 4,
          ),
        ),
        14.vGap,
        ListTile(
          horizontalTitleGap: 0,
          title: Text(
            "Utilisez votre empreinte comme mode de déverrouillage",
            style: context.theme.textTheme.bodySmall,
          ),
          leading: const Icon(Icons.fingerprint),
          trailing: CupertinoSwitch(
            activeColor: context.colorScheme.primary,
            value: true,
            onChanged: (fingerprintAuth) {},
          ),
        ),
      ],
    );
  }

  Widget _buildThirdPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        34.vGap,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Logo(),
            const Spacer(),
            // Dropdown menu for language
            Expanded(
              child: DropdownButtonFormField<String>(
                // leadingIcon: const Icon(Hicons.work_bold),
                // menuStyle: MenuStyle(),
                // trailingIcon: const Icon(Hicons.arrow_swap_vertical),
                value: "Francais",

                decoration: const InputDecoration(
                  //  prefixIcon: Icon(Icons.language),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintText: "Francais",
                ),
                onChanged: (language) {},
                items: ["English", "Francais"]
                    .map(
                      (lang) => DropdownMenuItem<String>(
                          value: lang, child: Text(lang)),
                    )
                    .toList(),
              ),
            )
          ],
        ),
        14.vGap,
        Center(
          child: Icon(
            Hicons.lock_1,
            size: 64,
            color: context.colorScheme.primary,
          ),
        ),
        4.vGap,
        const Center(
          child: Text(
            "Verifiez votre code secret",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        14.vGap,
        const Center(
          child: Pinput(
            length: 4,
          ),
        ),
        14.vGap,
        ListTile(
          horizontalTitleGap: 0,
          title: Text(
            "Utilisez votre empreinte comme mode de déverrouillage",
            style: context.theme.textTheme.bodySmall,
          ),
          leading: const Icon(Icons.fingerprint),
          trailing: CupertinoSwitch(
            activeColor: context.colorScheme.primary,
            value: true,
            onChanged: (fingerprintAuth) {},
          ),
        ),
      ],
    );
  }

  void _nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _submitForm() {
    context.router.pushNamed('/home');
  }
}

























// import 'package:akila/src/app/extensions/texttheme.dart';
// import 'package:akila/src/app/extensions/theme.dart';
// import 'package:akila/src/features/auth/widgets/akila_button.dart';
// import 'package:akila/src/features/auth/widgets/akila_input.dart';
// import 'package:akila/src/features/common/widgets/logo.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class Signup extends ConsumerStatefulWidget {
//   const Signup({super.key});
//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _SignupState();
// }

// class _SignupState extends ConsumerState<Signup> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 14.0),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Logo(),
//                   const Spacer(),
//                   // Dropdown menu for language
//                   DropdownMenu<String>(
//                     // leadingIcon: const Icon(Hicons.work_bold),
//                     // menuStyle: MenuStyle(),
//                     // trailingIcon: const Icon(Hicons.arrow_swap_vertical),
//                     enableSearch: false,
//                     width: 50,
//                     inputDecorationTheme:
//                         const InputDecorationTheme(border: InputBorder.none),
//                     textStyle: context.bodytext
//                         .copyWith(color: context.colorScheme.primary),
//                     initialSelection: "English",
//                     onSelected: (language) {},
//                     dropdownMenuEntries: ["English", "Francais"]
//                         .map(
//                           (lang) => DropdownMenuEntry<String>(
//                               label: lang, value: lang),
//                         )
//                         .toList(),
//                   )
//                 ],
//               ),
//               const SizedBox(height: 14),
//               Text(
//                 "Creer un Compte",
//                 style: context.bodylarge,
//               ),
//               const SizedBox(height: 14),
//               Stack(
//                 fit: StackFit.loose,
//                 children: [
//                   Center(child: Image.asset("assets/icons/bg.png")),
//                   Center(
//                     child: Image.asset(
//                       "assets/icons/add-user-image.png",
//                     ),
//                   ),
//                 ],
//               ),
//               AkilaInput(
//                 label: "noms complet",
//                 hint: "Lady Bug Miraculous",
//                 controller: TextEditingController(),
//                 obscureText: false,
//                 keyboardType: TextInputType.name,
//               ),
//               AkilaInput(
//                 label: "Numero",
//                 hint: "690535759",
//                 controller: TextEditingController(),
//                 obscureText: false,
//                 prefix: Image.asset("assets/icons/flag.png"),
//                 keyboardType: TextInputType.number,
//               ),
//               AkilaInput(
//                 label: "Adresse email",
//                 hint: "lady-bug@gmail.com",
//                 controller: TextEditingController(),
//                 obscureText: false,
//                 keyboardType: TextInputType.emailAddress,
//               ),
//               AkilaInput(
//                 label: "Code secret",
//                 hint: "8113",
//                 controller: TextEditingController(),
//                 obscureText: true,
//                 keyboardType: TextInputType.number,
//               ),
//               const SizedBox(
//                 height: 24,
//               ),
//               AkilaButton(
//                 text: "Creer un compte",
//                 action: () {
//                   context.router.pushNamed('/home');
//                 },
//               )
//             ],
//           ),
//         ),
//       )),
//     );
//   }
// }

