import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_master_naheulbeuk/src/resources/services/dices.service.dart';
import 'package:game_master_naheulbeuk/src/ui/components/background/background.dart';
import 'package:game_master_naheulbeuk/src/ui/instances/background/background.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/icons_dices.dart';

class CreateCharacterAndroid extends StatefulWidget {
  @override
  _CreateCharacterAndroidState createState() => _CreateCharacterAndroidState();
}

class _CreateCharacterAndroidState extends State<CreateCharacterAndroid>
    with SingleTickerProviderStateMixin {
  final _statisticsForm = GlobalKey<FormState>();
  final _characterForm = GlobalKey<FormState>();
  final _skillsForm = GlobalKey<FormState>();
  final _modifyForm = GlobalKey<FormState>();
  final _finalForm = GlobalKey<FormState>();
  late TabController _controller;

  //step 1
  final courageController = TextEditingController();
  final intellectController = TextEditingController();
  final charismaController = TextEditingController();
  final dexterityController = TextEditingController();
  final strengthController = TextEditingController();

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    _controller = TabController(length: 5, vsync: this);
    _controller.addListener(() {
      setState(() {});
    });
    //step1
    courageController.text = '8';
    intellectController.text = '8';
    charismaController.text = '8';
    dexterityController.text = '8';
    strengthController.text = '8';
  }

  @override
  void dispose() {
    //step 1
    courageController.dispose();
    intellectController.dispose();
    charismaController.dispose();
    dexterityController.dispose();
    strengthController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              //step 1
              Container(
                decoration: background(context, imageDice, BoxFit.contain),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height -
                            Scaffold.of(context).appBarMaxHeight! -
                            kToolbarHeight -
                            kBottomNavigationBarHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Form(
                          key: _statisticsForm,
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2, child: Text('Courage (COU)')),
                                    Expanded(
                                      child: TextFormField(
                                        controller: courageController,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        keyboardType:
                                            TextInputType.numberWithOptions(),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        decoration: InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 8 ||
                                              int.parse(value) > 20) {
                                            return 'entre 8 et 20';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 32.0),
                                        child: IconButton(
                                          icon: Icon(IconsDices.dice6),
                                          onPressed: () {
                                            int value = Dices().d6() + 7;
                                            courageController.text =
                                                value.toString();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Text('Intelligence (INT)')),
                                    Expanded(
                                      child: TextFormField(
                                        controller: intellectController,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        keyboardType:
                                            TextInputType.numberWithOptions(),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        decoration: InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 8 ||
                                              int.parse(value) > 20) {
                                            return 'entre 8 et 20';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 32.0),
                                        child: IconButton(
                                          icon: Icon(IconsDices.dice6),
                                          onPressed: () {
                                            int value = Dices().d6() + 7;
                                            intellectController.text =
                                                value.toString();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2, child: Text('Charisme (CHA)')),
                                    Expanded(
                                      child: TextFormField(
                                        controller: charismaController,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        keyboardType:
                                            TextInputType.numberWithOptions(),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        decoration: InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 8 ||
                                              int.parse(value) > 20) {
                                            return 'entre 8 et 20';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 32.0),
                                        child: IconButton(
                                          icon: Icon(IconsDices.dice6),
                                          onPressed: () {
                                            int value = Dices().d6() + 7;
                                            charismaController.text =
                                                value.toString();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2, child: Text('Adresse (AD)')),
                                    Expanded(
                                      child: TextFormField(
                                        controller: dexterityController,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        keyboardType:
                                            TextInputType.numberWithOptions(),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        decoration: InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 8 ||
                                              int.parse(value) > 20) {
                                            return 'entre 8 et 20';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 32.0),
                                        child: IconButton(
                                          icon: Icon(IconsDices.dice6),
                                          onPressed: () {
                                            int value = Dices().d6() + 7;
                                            dexterityController.text =
                                                value.toString();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2, child: Text('Force (FO)')),
                                    Expanded(
                                      child: TextFormField(
                                        controller: strengthController,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        keyboardType:
                                            TextInputType.numberWithOptions(),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        decoration: InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 8 ||
                                              int.parse(value) > 20) {
                                            return 'entre 8 et 20';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 32.0),
                                        child: IconButton(
                                          icon: Icon(IconsDices.dice6),
                                          onPressed: () {
                                            int value = Dices().d6() + 7;
                                            strengthController.text =
                                                value.toString();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: TextButton(
                                  child: SvgPicture.asset(
                                      'assets/images/dice20.svg'),
                                  onPressed: () {
                                    int courageValue = Dices().d6() + 7;
                                    int intellectValue = Dices().d6() + 7;
                                    int charismaValue = Dices().d6() + 7;
                                    int dexterityValue = Dices().d6() + 7;
                                    int strengthValue = Dices().d6() + 7;
                                    courageController.text =
                                        courageValue.toString();
                                    intellectController.text =
                                        intellectValue.toString();
                                    charismaController.text =
                                        charismaValue.toString();
                                    dexterityController.text =
                                        dexterityValue.toString();
                                    strengthController.text =
                                        strengthValue.toString();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //step 2
              Container(
                decoration: background(context, imageDice, BoxFit.contain),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height -
                            Scaffold.of(context).appBarMaxHeight! -
                            kToolbarHeight -
                            kBottomNavigationBarHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Form(
                          key: _characterForm,
                          child: Column(
                            children: [
                              TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'taper du texte';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //step 3
              Container(
                decoration: background(context, imageDice, BoxFit.contain),
                child: Form(
                  key: _skillsForm,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'taper du texte';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),

              //step 4
              Container(
                decoration: background(context, imageDice, BoxFit.contain),
                child: Form(
                  key: _modifyForm,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'taper du texte';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),

              //step 5
              Container(
                decoration: background(context, imageDice, BoxFit.contain),
                child: Form(
                  key: _finalForm,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'taper du texte';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
            controller: _controller,
          ),
        ),
        Row(
          children: [
            TextButton(
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text('Precedent'),
                ],
              ),
              onPressed: _controller.index > 0
                  ? () {
                      _controller.animateTo(_controller.index - 1);
                    }
                  : null,
            ),
            Expanded(
              child: Center(
                child: TabPageSelector(
                  controller: _controller,
                  selectedColor: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            TextButton(
              child: Row(
                children: [
                  Text('Suivant'),
                  Icon(Icons.arrow_forward),
                ],
              ),
              onPressed: _controller.index < _controller.length - 1
                  ? () {
                      if (_controller.index == 0 &&
                          _statisticsForm.currentState!.validate()) {
                        _controller.animateTo(_controller.index + 1);
                      }
                      if (_controller.index == 1 &&
                          _characterForm.currentState!.validate()) {
                        _controller.animateTo(_controller.index + 1);
                      }
                      if (_controller.index == 2 &&
                          _skillsForm.currentState!.validate()) {
                        _controller.animateTo(_controller.index + 1);
                      }
                      if (_controller.index == 3 &&
                          _modifyForm.currentState!.validate()) {
                        _controller.animateTo(_controller.index + 1);
                      }
                    }
                  : null,
            ),
          ],
        ),
      ],
    );
  }
}
