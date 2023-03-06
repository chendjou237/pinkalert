import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hicons/flutter_hicons.dart';
import 'package:intellibra/src/common/common.dart';
import 'package:intellibra/src/common/widgets/intellibra_input.dart';
import 'package:intellibra/src/common/widgets/mark.dart';
import 'package:intellibra/src/extensions/build_context.dart';
import 'package:intellibra/src/extensions/num.dart';
import 'package:pinput/pinput.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final PageController _pageController = PageController();

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
            IntellibraButton(
              action: _isLastPage ? _submitForm : _nextPage,
              text: _isLastPage ? 'Valider' : 'Continuer',
            ),
            if (_currentPageIndex != 0)
              TextButton(
                onPressed: () {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                child: const Text('Retour'),
              )
            else
              const SizedBox.shrink(),
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
            const TradeMark(),
            const Spacer(),
            // Dropdown menu for language
            Expanded(
              child: DropdownButtonFormField<String>(
                // leadingIcon: const Icon(Hicons.work_bold),
                // menuStyle: MenuStyle(),
                // trailingIcon: const Icon(Hicons.arrow_swap_vertical),
                value: 'Francais',

                decoration: const InputDecoration(
                  //  prefixIcon: Icon(Icons.language),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintText: 'Francais',
                ),
                onChanged: (language) {},
                items: ['English', 'Francais']
                    .map(
                      (lang) => DropdownMenuItem<String>(
                        value: lang,
                        child: Text(lang),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
        14.vGap,
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.scheme.secondary.withOpacity(.5),
              ),
              child: Icon(
                Hicons.profile_circle,
                size: 85,
                color: context.scheme.onPrimary.withOpacity(.75),
              ),
            ),
            Positioned(
              bottom: 10,
              right: -5,
              child: Icon(
                Icons.add_a_photo_outlined,
                size: 24,
                color: context.scheme.secondary.withOpacity(.75),
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
            'Ajouter votre photo de profil ou le logo de votre entreprise',
          ),
        ),
        14.vGap,
        Center(
          child: Text(
            'Entrez votre vrai Nom de Naissance',
            style: context.theme.textTheme.bodyLarge,
          ),
        ),
        //  4.vGap,
        IntelliInput(
          label: 'Noms de naissance',
          hint: 'Lady Bug Miraculous',
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
            const TradeMark(),
            const Spacer(),
            // Dropdown menu for language
            Expanded(
              child: DropdownButtonFormField<String>(
                // leadingIcon: const Icon(Hicons.work_bold),
                // menuStyle: MenuStyle(),
                // trailingIcon: const Icon(Hicons.arrow_swap_vertical),
                value: 'Francais',

                decoration: const InputDecoration(
                  //  prefixIcon: Icon(Icons.language),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintText: 'Francais',
                ),
                onChanged: (language) {},
                items: ['English', 'Francais']
                    .map(
                      (lang) => DropdownMenuItem<String>(
                        value: lang,
                        child: Text(lang),
                      ),
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
            color: context.scheme.primary,
          ),
        ),
        4.vGap,
        const Center(
          child: Text(
            'Entrez votre code secret',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        14.vGap,
        const Center(
          child: Pinput(),
        ),
        14.vGap,
        ListTile(
          horizontalTitleGap: 0,
          title: Text(
            'Utilisez votre empreinte comme mode de déverrouillage',
            style: context.theme.textTheme.bodySmall,
          ),
          leading: const Icon(Icons.fingerprint),
          trailing: CupertinoSwitch(
            activeColor: context.scheme.primary,
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
            const TradeMark(),
            const Spacer(),
            // Dropdown menu for language
            Expanded(
              child: DropdownButtonFormField<String>(
                // leadingIcon: const Icon(Hicons.work_bold),
                // menuStyle: MenuStyle(),
                // trailingIcon: const Icon(Hicons.arrow_swap_vertical),
                value: 'Francais',

                decoration: const InputDecoration(
                  //  prefixIcon: Icon(Icons.language),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintText: 'Francais',
                ),
                onChanged: (language) {},
                items: ['English', 'Francais']
                    .map(
                      (lang) => DropdownMenuItem<String>(
                        value: lang,
                        child: Text(lang),
                      ),
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
            color: context.scheme.primary,
          ),
        ),
        4.vGap,
        const Center(
          child: Text(
            'Verifiez votre code secret',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        14.vGap,
        const Center(
          child: Pinput(),
        ),
        14.vGap,
        ListTile(
          horizontalTitleGap: 0,
          title: Text(
            'Utilisez votre empreinte comme mode de déverrouillage',
            style: context.theme.textTheme.bodySmall,
          ),
          leading: const Icon(Icons.fingerprint),
          trailing: CupertinoSwitch(
            activeColor: context.scheme.primary,
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
