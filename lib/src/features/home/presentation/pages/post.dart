import 'package:flutter/material.dart';
import 'package:intellibra/src/extensions/build_context.dart';
import 'package:intellibra/src/extensions/num.dart';

class Post extends StatelessWidget {
  const Post({
    required this.title,
    required this.image,
    required this.description,
    super.key,
  });
  final String title;
  final String image;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: title,
              child: Container(
                height: 200,
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                    end: Alignment.bottomCenter,
                    begin: Alignment.center,
                    colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(1),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  title,
                  style: context.titleLg,
                ),
              ),
            ),
            16.vGap,
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(description, style: context.titleMd),
                  16.vGap,
                  Text(
                    '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lorem elit, ornare eu pulvinar vitae, lacinia et erat. Aenean et velit eget ex ultricies accumsan. Nulla facilisi. Vivamus sagittis ligula sit amet posuere iaculis. Fusce placerat dapibus molestie. Quisque et sollicitudin ex, in feugiat eros. Donec gravida vel elit non semper. Proin a fermentum sapien. Sed ac convallis ligula, ut ultricies leo. Nunc tincidunt nisi nec nulla viverra faucibus. Aliquam commodo ante tortor, non pellentesque nisi molestie sit amet.

Sed massa mauris, pulvinar in mollis non, consectetur id libero. Praesent ac nisl quis mauris commodo congue ultricies nec lectus. Etiam vestibulum dui dapibus, auctor orci vitae, suscipit elit. Morbi non congue magna. Maecenas sed ex eget nibh tristique consectetur id sit amet lacus. Maecenas volutpat, augue et consequat feugiat, nibh lacus tristique libero, eget blandit augue nisi at magna. Quisque convallis justo metus, ac egestas quam maximus vel. Aliquam vitae lorem facilisis ex ultrices posuere vel sed ipsum. Cras velit ex, consequat nec tellus quis, feugiat venenatis lectus. Sed vitae felis vel libero pharetra porttitor. Fusce pulvinar elementum dui, quis posuere lorem dictum vitae.

Morbi quam ex, pretium sed augue fringilla, aliquet posuere mi. Nullam commodo augue sem, sit amet semper orci mattis at. Mauris ac finibus diam. Sed imperdiet eget est sit amet vehicula. Pellentesque dapibus massa urna, nec pretium dolor semper non. Proin neque metus, cursus eu turpis eget, dapibus scelerisque turpis. Donec a ex maximus, convallis urna eget, rhoncus ex. Curabitur varius nibh vel diam vehicula dictum. Duis efficitur erat nec erat facilisis, in porttitor neque accumsan.

Morbi elementum arcu iaculis augue convallis, a eleifend odio pharetra. Vestibulum elementum velit a rutrum pulvinar. Sed ultrices purus volutpat urna consectetur, eu pharetra nibh vestibulum. Nullam venenatis blandit turpis, eu luctus justo consectetur id. Fusce viverra libero a odio vestibulum, vitae volutpat nulla fermentum. Donec fermentum hendrerit orci in lobortis. Donec eleifend ante blandit facilisis rhoncus. Duis mollis placerat dui. Proin ultricies dolor ac justo volutpat semper. Vivamus ultrices est eget pulvinar rutrum. Aliquam vel semper metus, quis aliquam ex. Praesent posuere, risus vel tempus laoreet, ex turpis placerat massa, a placerat justo ipsum et orci. Etiam eget consectetur purus, ut placerat metus. Morbi pretium sollicitudin est eget consectetur. Nulla mauris odio, pellentesque sed quam in, porta blandit nisi.

Sed vel pretium est. Praesent consectetur, nisi sit amet vulputate fringilla, urna odio tristique purus, at semper lacus leo non orci. Fusce porttitor cursus neque, id vulputate elit porttitor non. Curabitur aliquet dui nibh, at mattis augue luctus at. Proin vel odio tincidunt, vestibulum magna in, vestibulum diam. Ut congue nunc eget luctus laoreet. Ut ut odio sed magna ornare elementum a eget ante. In tincidunt, orci eget elementum mollis, tortor turpis vulputate augue, et tincidunt felis nisl vel risus. Vestibulum sit amet aliquet massa. Donec vehicula, tortor ac pretium ultrices, erat quam auctor dui, non accumsan tortor mauris eu eros.''',
                    style: context.titleMd,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
