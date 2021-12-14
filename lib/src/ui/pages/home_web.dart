import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Text(
            'Bienvenue sur la terre de Fangh',
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    '''    Bienvenue sur la terre de Fangh où vous pourrez trouver l'aventure!
    Vous trouverez des outils pour faire des parties de jeux de rôle dans ''',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              TextSpan(
                text: '''l'univers de Naheulbeuk''',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Theme.of(context).colorScheme.secondaryVariant),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch('http://www.naheulbeuk.com/');
                  },
              ),
              TextSpan(
                text: '''. Cet ''',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              TextSpan(
                text: '''univers''',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Theme.of(context).colorScheme.secondaryVariant),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch('http://www.penofchaos.com/warham/donjon.htm');
                  },
              ),
              TextSpan(
                text: ''' est créé par John Lang aka ''',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              TextSpan(
                text: '''Pen Of Chaos''',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Theme.of(context).colorScheme.secondaryVariant),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch('http://www.penofchaos.com/');
                  },
              ),
              TextSpan(
                text:
                    ''' et continue d'évoluer. Je ferais en sorte d'actualiser le site en fonction des évolutions et mise à jour de POC. Une API est mis en place pour les objets, puis d'autres features viendront par la suite.''',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
